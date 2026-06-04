CREATE OR REPLACE FUNCTION public.fn_doctorname(user_id bigint)
 RETURNS TABLE("DOCTORNAME" text)
 LANGUAGE sql
AS $function$
select
(CASE 
WHEN "DOCTOR_NAME_FORMAT" = '[[T]] [[F]] [[L]]' THEN ("CTITLE" || ' ' || "CFNAME" || ' ' || "CLNAME")
WHEN "DOCTOR_NAME_FORMAT" = '[[T]] [[L]] [[F]]' THEN ("CTITLE" || ' ' || "CLNAME" || ' ' || "CFNAME")
WHEN "DOCTOR_NAME_FORMAT" = '[[F]] [[T]] [[L]]' THEN ("CFNAME" || ' ' || "CTITLE" || ' ' || "CLNAME")
WHEN "DOCTOR_NAME_FORMAT" = '[[F]] [[L]] [[T]]' THEN ("CFNAME" || ' ' || "CLNAME" || ' ' || "CTITLE")
WHEN "DOCTOR_NAME_FORMAT" = '[[L]] [[T]] [[F]]' THEN ("CLNAME" || ' ' || "CTITLE" || ' ' || "CFNAME")
WHEN "DOCTOR_NAME_FORMAT" = '[[L]] [[F]] [[T]]' THEN ("CLNAME" || ' ' || "CFNAME" || ' ' || "CTITLE")
ELSE ("CTITLE" || ' ' || "CFNAME" || ' ' || "CLNAME")
END) AS "DOCTORNAME"
from 
(
SELECT 
coalesce((CASE WHEN "GBL_ENV"."DOCTOR_NAME_LANG" = 'E' THEN "TITLE_ENG" ELSE "TITLE_NLS" END),'')  "CTITLE",
coalesce((CASE WHEN "GBL_ENV"."DOCTOR_NAME_LANG" = 'E' THEN "FNAME_ENG" ELSE "FNAME_NLS" END),'')  "CFNAME",
coalesce((CASE WHEN "GBL_ENV"."DOCTOR_NAME_LANG" = 'E' THEN "LNAME_ENG" ELSE "LNAME_NLS" END),'')  "CLNAME",
"GBL_ENV"."DOCTOR_NAME_FORMAT",
"HR_USER".* 
FROM "HR_USER" 
join "GBL_ENV" on ("GBL_ENV"."ORG_ID" = "HR_USER"."ORG_ID")
WHERE "HR_USER"."IS_ACTIVE" = TRUE
)"HR_USER"
WHERE "USER_ID" = user_id 
$function$
;
