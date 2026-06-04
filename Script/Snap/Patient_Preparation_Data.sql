/* CREATE TABLE */

DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_Patient_Preparation') IS NOT NULL DROP TABLE #temp_Patient_Preparation

CREATE TABLE #temp_Patient_Preparation(
PRETREATMENT_CD VARCHAR(100),
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
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"10"', '"No preparation"', '"No preparation"', '"No preparation"', '"No preparation"', '""', '""', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"20"', '"Gascon drop 20 mg/mL"', '"Gascon drop 20 mg/mL"', '"Gascon drop 20 mg/mL"', '"Gascon drop 20 mg/mL"', '""', '""', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"30"', '"Sodium bicarbonate (Internal use)"', '"Sodium bicarbonate (Internal use)"', '"Sodium bicarbonate (Internal use)"', '"Sodium bicarbonate (Internal use)"', '""', '""', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"40"', '"Pronase MS 20', '000u / 0.5 g/capsule"', '"Pronase MS 20', '000u / 0.5 g/capsule"', '"Pronase MS 20', '000u / 0.5 g/capsule"', '"Pronase MS 20', '000u / 0.5 g/capsule"', '""', '""', '""', '"1"', '"40"', '""', '""', '""'
);

/* INSERT QUERY NO: 5 */
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"50"', '"Nauzelin 10 mg"', '"Nauzelin 10 mg"', '"Nauzelin 10 mg"', '"Nauzelin 10 mg"', '""', '""', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 6 */
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"60"', '"Preparation"', '"Preparation"', '"Preparation"', '"Preparation"', '""', '""', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 7 */
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"70"', '"Premedication"', '"Premedication"', '"Premedication"', '"Premedication"', '""', '""', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 8 */
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"80"', '"Antithrombotic therapy"', '"Antithrombotic therapy"', '"Antithrombotic therapy"', '"Antithrombotic therapy"', '""', '""', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 9 */
INSERT INTO #temp_Patient_Preparation(PRETREATMENT_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"90"', '"Preparation of lower gastrointestinal tract"', '"Preparation of lower gastrointestinal tract"', '"Preparation of lower gastrointestinal tract"', '"Preparation of lower gastrointestinal tract"', '""', '""', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""', '""'
);


INSERT INTO PATIENT_PREPARATION(PATIENT_PREPARATION_UID,PATIENT_PREPARATION_NAME,SHORT_NAME,DISPLAY_NAME,ORG_ID)
SELECT CONCAT('PP',REPLACE(PRETREATMENT_CD, '"', '')) as CLINICAL_DIAGNOSIS_UID,REPLACE([NAME], '"', '') as CLINICAL_DIAGNOSIS_NAME,REPLACE(DISP_NAME, '"', '')as SHORT_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,@ORG_ID as ORG_ID FROM #temp_Patient_Preparation
