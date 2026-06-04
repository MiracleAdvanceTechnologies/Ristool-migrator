/* CREATE TABLE */
DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_Nursing_Class') IS NOT NULL DROP TABLE #temp_Nursing_Class

CREATE TABLE #temp_Nursing_Class(
NURSE_DIV VARCHAR(100),
NAME VARCHAR(100),
OMITTED_NAME VARCHAR(100),
CHOOSE_NAME VARCHAR(100),
DISP_NAME VARCHAR(100),
KANA_NAME VARCHAR(100),
EN_NAME VARCHAR(100),
CLS_CD VARCHAR(100),
VISIBLE_FLAG VARCHAR(100),
LIST_NUM VARCHAR(100),
FOREIGN_CD VARCHAR(100),
DELETE_DATE VARCHAR(100),
REG_NAME VARCHAR(100),
REGIST_DATE VARCHAR(100),
MOD_NAME VARCHAR(100),
UPDATE_DATE VARCHAR(100),
TIME_STAMP VARCHAR(100)
);

/* INSERT QUERY NO: 1 */
INSERT INTO #temp_Nursing_Class(NURSE_DIV, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"10"', '"Requires constant nursing"', '"Requires constant nursing"', '"Requires constant nursing"', '"Requires constant nursing"', '""', '""', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_Nursing_Class(NURSE_DIV, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"20"', '"Requires periodic nursing"', '"Requires periodic nursing"', '"Requires periodic nursing"', '"Requires periodic nursing"', '""', '""', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_Nursing_Class(NURSE_DIV, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"30"', '"Requires occasional nursing"', '"Requires occasional nursing"', '"Requires occasional nursing"', '"Requires occasional nursing"', '""', '""', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_Nursing_Class(NURSE_DIV, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"40"', '"Unknown"', '"Unknown"', '"Unknown"', '"Unknown"', '""', '""', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);


INSERT INTO NURSING_CLASS(NURSING_CLASS_UID,NURSING_CLASS_NAME,SHORT_NAME,DISPLAY_NAME,ORG_ID)
SELECT CONCAT('N',REPLACE(NURSE_DIV, '"', '')) as CLINICAL_DIAGNOSIS_UID,REPLACE([NAME], '"', '') as CLINICAL_DIAGNOSIS_NAME,REPLACE(DISP_NAME, '"', '')as SHORT_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,@ORG_ID as ORG_ID FROM #temp_Nursing_Class
