CREATE OR REPLACE FUNCTION public.fn_patientname(patient_id bigint)
 RETURNS TABLE("PATIENT_NAME" text)
 LANGUAGE sql
AS $function$
SELECT 
(CASE 
WHEN "PATIENT_NAME_FORMAT" = '[[T]] [[F]] [[L]]' THEN ("CTITLE" || ' ' || "CFNAME" || ' ' || "CLNAME")
WHEN "PATIENT_NAME_FORMAT" = '[[T]] [[L]] [[F]]' THEN ("CTITLE" || ' ' || "CLNAME" || ' ' || "CFNAME")
WHEN "PATIENT_NAME_FORMAT" = '[[F]] [[T]] [[L]]' THEN ("CFNAME" || ' ' || "CTITLE" || ' ' || "CLNAME")
WHEN "PATIENT_NAME_FORMAT" = '[[F]] [[L]] [[T]]' THEN ("CFNAME" || ' ' || "CLNAME" || ' ' || "CTITLE")
WHEN "PATIENT_NAME_FORMAT" = '[[L]] [[T]] [[F]]' THEN ("CLNAME" || ' ' || "CTITLE" || ' ' || "CFNAME")
WHEN "PATIENT_NAME_FORMAT" = '[[L]] [[F]] [[T]]' THEN ("CLNAME" || ' ' || "CFNAME" || ' ' || "CTITLE")
ELSE ("CTITLE" || ' ' || "CFNAME" || ' ' || "CLNAME")
END) AS "PATIENT_NAME"
from 
(
select 
coalesce((CASE WHEN "GBL_ENV"."PATIENT_NAME_LANG"  = 'E' THEN "TITLE" ELSE "TITLE" END),'')  "CTITLE",
coalesce((CASE WHEN "GBL_ENV"."PATIENT_NAME_LANG"  = 'E' THEN "FNAME" ELSE "FNAME_LNS" END),'')  "CFNAME",
coalesce((CASE WHEN "GBL_ENV"."PATIENT_NAME_LANG"  = 'E' THEN "LNAME" ELSE "LNAME_LNS" END),'')  "CLNAME",
"GBL_ENV"."PATIENT_NAME_FORMAT",
"PMS_PATIENT".* 
from "PMS_PATIENT"
join "GBL_ENV" on ("GBL_ENV"."ORG_ID" = "PMS_PATIENT"."ORG_ID")
)"PMS_PATIENT" WHERE "PATIENT_ID" = patient_id
$function$
;
