 update "PMR_RPT_ICD10" set "ICD10_ID"=bbb.newid
 from 
 (
SELECT DISTINCT oldid, newid FROM (
SELECT oldd."ICD10_ID" AS oldid,
neww."ICD10_ID" AS newid
FROM (
SELECT * FROM "PMS_ICD10" WHERE "ICD10_ID" > 129) AS neww
JOIN (
SELECT * FROM "PMS_ICD10" WHERE "ICD10_ID" < 130) oldd 
--ON (trim(lower(neww."ICD10_TEXT"))=trim(lower(oldd."ICD10_TEXT")) )
ON (neww."ICD10_UID" = trim(REPLACE(oldd."ICD10_UID",'.','')) AND (trim(lower(neww."ICD10_TEXT"))=trim(lower(oldd."ICD10_TEXT")) ))
UNION all
SELECT oldd."ICD10_ID" AS oldid,
neww."ICD10_ID" AS newid
FROM (
SELECT * FROM "PMS_ICD10" WHERE "ICD10_ID" > 129) AS neww
JOIN (
SELECT * FROM "PMS_ICD10" WHERE "ICD10_ID" < 130) oldd 
--ON (trim(lower(neww."ICD10_TEXT"))=trim(lower(oldd."ICD10_TEXT")) )
ON (neww."ICD10_UID" != trim(REPLACE(oldd."ICD10_UID",'.','')) AND (trim(lower(neww."ICD10_TEXT"))=trim(lower(oldd."ICD10_TEXT")) ))
UNION all
SELECT oldd."ICD10_ID" AS oldid,
neww."ICD10_ID" AS newid

FROM (
SELECT * FROM "PMS_ICD10" WHERE "ICD10_ID" > 129) AS neww
JOIN (
SELECT * FROM "PMS_ICD10" WHERE "ICD10_ID" < 130) oldd 
--ON (trim(lower(neww."ICD10_TEXT"))=trim(lower(oldd."ICD10_TEXT")) )
ON (neww."ICD10_UID" = trim(REPLACE(oldd."ICD10_UID",'.','')) AND (trim(lower(neww."ICD10_TEXT"))!=trim(lower(oldd."ICD10_TEXT")) ))
)bbb
 ) bbb
 where "PMR_RPT_ICD10"."ICD10_ID" =bbb.oldid;

---Some
UPDATE "PMR_RPT_ICD10" SET "ICD10_ID"  = 4519 WHERE "ICD10_ID" = 17;
UPDATE "PMR_RPT_ICD10" SET "ICD10_ID"  = 4537 WHERE "ICD10_ID" = 19;
UPDATE "PMR_RPT_ICD10" SET "ICD10_ID"  = 1519 WHERE "ICD10_ID" = 127;