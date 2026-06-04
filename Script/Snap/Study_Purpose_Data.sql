DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_Study_Purpose') IS NOT NULL DROP TABLE #temp_Study_Purpose
/* CREATE TABLE */
CREATE TABLE #temp_Study_Purpose(
STUDY_PUR_CD VARCHAR(100),
STUDY_CLS_CD VARCHAR(100),
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
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"10"', '"2"', '"Screening"', '"Screening"', '"Screening"', '"Screening"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"100"', '"2"', '"Marking"', '"Marking"', '"Marking"', '"Marking"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"110"', '"2"', '"Luminal observation only"', '"Luminal observation only"', '"Luminal observation only"', '"Luminal observation only"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"120"', '"2"', '"Suspected tuberculosis"', '"Suspected tuberculosis"', '"Suspected tuberculosis"', '"Suspected tuberculosis"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 5 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"130"', '"2"', '"Thoracic observation only"', '"Thoracic observation only"', '"Thoracic observation only"', '"Thoracic observation only"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 6 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"140"', '"2"', '"Treatment "', '"Treatment "', '"Treatment "', '"Treatment "', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 7 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"150"', '"2"', '"Other"', '"Other"', '"Other"', '"Other"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 8 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"20"', '"2"', '"Closer study required after medical examination"', '"Closer study required after medical examination"', '"Closer study required after medical examination"', '"Closer study required after medical examination"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 9 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"30"', '"2"', '"Symptomatic consultation"', '"Symptomatic consultation"', '"Symptomatic consultation"', '"Symptomatic consultation"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 10 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"40"', '"2"', '"Health screening"', '"Health screening"', '"Health screening"', '"Health screening"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 11 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"50"', '"2"', '"Follow-up"', '"Follow-up"', '"Follow-up"', '"Follow-up"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 12 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"60"', '"2"', '"Progress"', '"Progress"', '"Progress"', '"Progress"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 13 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"70"', '"2"', '"Preoperative study"', '"Preoperative study"', '"Preoperative study"', '"Preoperative study"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 14 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"80"', '"2"', '"Postoperative follow-up"', '"Postoperative follow-up"', '"Postoperative follow-up"', '"Postoperative follow-up"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 15 */
INSERT INTO #temp_Study_Purpose(STUDY_PUR_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"90"', '"2"', '"Lesion biopsy"', '"Lesion biopsy"', '"Lesion biopsy"', '"Lesion biopsy"', '""', '""', '"1"', '""', '""', '""', '""', '""', '""', '""'
);


INSERT INTO STUDY_PURPOSE(STUDY_PURPOSE_UID,STUDY_PURPOSE_NAME,SHORT_NAME,DISPLAY_NAME,ORG_ID)
SELECT CONCAT('SP',REPLACE(STUDY_PUR_CD, '"', '')) as CLINICAL_DIAGNOSIS_UID,REPLACE([NAME], '"', '') as CLINICAL_DIAGNOSIS_NAME,REPLACE(DISP_NAME, '"', '')as SHORT_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,@ORG_ID as ORG_ID FROM #temp_Study_Purpose

