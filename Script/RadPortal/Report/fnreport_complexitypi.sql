CREATE OR REPLACE FUNCTION public.fnreport_complexitypi(p_start_date date, p_end_date date, p_org_id text, p_user_id bigint)
 RETURNS TABLE("COMPLEX_RATING" text, "VALUE" bigint)
 LANGUAGE sql
AS $function$
SELECT "COMPLEX_RATING"::TEXT AS COMPLEX_RATING, count(*) AS "VALUE" FROM (
SELECT 
"COMPLEX_RATING"
FROM "RIS_ORDERDTL" 
JOIN "RIS_EXAMRESULT" ON ("RIS_ORDERDTL"."ORDER_ID" = "RIS_EXAMRESULT"."ORDER_ID")
WHERE 
(p_org_id IS null or ("RIS_ORDERDTL"."ORG_ID" = ANY(SELECT(regexp_split_to_table(p_org_id, ','))::INTEGER)))  --1,2,3
AND ("RIS_EXAMRESULT"."FINALIZED_BY" = p_user_id OR p_user_id IS NULL)
AND ("RIS_ORDERDTL"."CREATED_ON"::date BETWEEN p_start_date and p_end_date)
AND ("RIS_ORDERDTL"."STATUS" = 'F')
AND ("COMPLEX_RATING" IS NOT NULL)
) AS main GROUP BY "COMPLEX_RATING"
$function$
;

--SELECT * FROM fnreport_complexitypi('2023-03-01', '2023-03-27', null)