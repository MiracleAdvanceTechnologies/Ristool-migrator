CREATE OR REPLACE FUNCTION public.fnhos_earningwithservicetypeline(p_start_date date, p_end_date date, p_org_id bigint)
 RETURNS TABLE("CATEGORY" text, "SERIES" text, "VALUE" bigint)
 LANGUAGE sql
AS $function$
SELECT "CATEGORY", "SERIES", sum("VALUE")AS "VALUE" FROM (
SELECT 
"RIS_ORDER"."ORDER_ID",
to_char("RIS_EXAMRESULT"."FINALIZED_ON", 'YYYY') AS "YEAR",
to_char("RIS_EXAMRESULT"."FINALIZED_ON", 'MM') AS "MONTH",
to_char("RIS_EXAMRESULT"."FINALIZED_ON", 'DD Mon') AS "CATEGORY",
"RIS_SERVICETYPE"."SERVICE_TYPE_TEXT" AS "SERIES",
("RIS_ORDERDTL"."RATE") AS "VALUE"
FROM 
"RIS_ORDER"
JOIN "RIS_ORDERDTL" 	ON "RIS_ORDER"."ORDER_ID" = "RIS_ORDERDTL"."ORDER_ID"
JOIN "RIS_EXAMRESULT"	ON "RIS_ORDERDTL"."ORDER_ID" = "RIS_EXAMRESULT"."ORDER_ID"
JOIN "RIS_EXAM"     	ON "RIS_ORDERDTL"."EXAM_ID" = "RIS_EXAM"."EXAM_ID"
JOIN "RIS_SERVICETYPE"  ON "RIS_SERVICETYPE"."SERVICE_TYPE_ID" = "RIS_ORDERDTL"."SERVICE_TYPE"
WHERE "RIS_ORDERDTL"."STATUS"= 'F' 
AND "RIS_ORDER"."ORG_ID" = p_org_id
AND ("RIS_EXAMRESULT"."FINALIZED_ON"::date between p_start_date and p_end_date)
UNION 
SELECT 0 AS "ORDER_ID","YEAR","MONTH","CATEGORY", "SERIES", 0 AS "VALUE"  FROM 
(SELECT
to_char((generate_series(p_start_date, p_end_date, '1 day'::interval)), 'YYYY')AS "YEAR",
to_char((generate_series(p_start_date, p_end_date, '1 day'::interval)), 'MM')AS "MONTH",
to_char((generate_series(p_start_date, p_end_date, '1 day'::interval)), 'DD Mon')AS "CATEGORY" )  AS main
JOIN (SELECT "SERVICE_TYPE_TEXT" AS "SERIES" FROM "RIS_SERVICETYPE") AS "SERVICE" ON (1=1) 
) AS main GROUP BY "YEAR","MONTH","CATEGORY", "SERIES"
ORDER BY "YEAR","MONTH","CATEGORY", "SERIES"
$function$
;
