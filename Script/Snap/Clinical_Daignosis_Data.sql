
DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_Clinical_daignosis') IS NOT NULL DROP TABLE #temp_Clinical_daignosis

/* CREATE TABLE */
CREATE TABLE #temp_Clinical_daignosis(
CLI_DIAG_CD VARCHAR(100),
NAME VARCHAR(100),
OMITTED_NAME VARCHAR(100),
CHOOSE_NAME VARCHAR(100),
DISP_NAME VARCHAR(100),
KANA_NAME VARCHAR(100),
EN_NAME VARCHAR(100),
VISIBLE_FLAG VARCHAR(100),
LIST_NUM VARCHAR(100),
DELETE_DATE VARCHAR(100),
REG_NAME VARCHAR(100),
REGIST_DATE VARCHAR(100),
MOD_NAME VARCHAR(100),
UPDATE_DATE VARCHAR(100),
TIME_STAMP VARCHAR(100)
);

/* INSERT QUERY NO: 1 */
INSERT INTO #temp_Clinical_daignosis(CLI_DIAG_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"10"', '"Insomnia"', '"Insomnia"', '"Insomnia"', '"Insomnia"', '""', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_Clinical_daignosis(CLI_DIAG_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"20"', '"Mitral insufficiency"', '"Mitral insufficiency"', '"Mitral insufficiency"', '"Mitral insufficiency"', '""', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_Clinical_daignosis(CLI_DIAG_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"30"', '"Gastric ulcer"', '"Gastric ulcer"', '"Gastric ulcer"', '"Gastric ulcer"', '""', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_Clinical_daignosis(CLI_DIAG_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"40"', '"Typhoid fever"', '"Typhoid fever"', '"Typhoid fever"', '"Typhoid fever"', '""', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 5 */
INSERT INTO #temp_Clinical_daignosis(CLI_DIAG_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"50"', '"God only knows diseases"', '"God only knows diseases"', '"God only knows diseases"', '"God only knows diseases"', '""', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 6 */
INSERT INTO #temp_Clinical_daignosis(CLI_DIAG_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"60"', '"Small intestinal tumor"', '"Small intestinal tumor"', '"Small intestinal tumor"', '"Small intestinal tumor"', '""', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""'
);

INSERT INTO CLINICAL_DIAGNOSIS(CLINICAL_DIAGNOSIS_UID,CLINICAL_DIAGNOSIS_NAME,SHORT_NAME,DISPLAY_NAME,ORG_ID)
SELECT CONCAT('CD',REPLACE(CLI_DIAG_CD, '"', '')) as CLINICAL_DIAGNOSIS_UID,REPLACE(NAME, '"', '') as CLINICAL_DIAGNOSIS_NAME,REPLACE(DISP_NAME, '"', '')as SHORT_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,@ORG_ID as ORG_ID FROM #temp_Clinical_daignosis



