CREATE OR REPLACE FUNCTION fn_appointmentstatus (status text)
RETURNS TABLE ("STATUS" TEXT)
LANGUAGE SQL 
AS
$$
SELECT 
CASE WHEN status = 'S' THEN 'Scheduled'
WHEN status = 'R' THEN 'Reporting'
WHEN status = 'D' THEN 'Draft'
WHEN status = 'I' THEN 'Imaging'
WHEN status = 'A' THEN 'Arrived'
ELSE '' END AS "STATUS"
$$
;