/* CREATE TABLE */
DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_Known_Disese') IS NOT NULL DROP TABLE #temp_Known_Disese


CREATE TABLE #temp_Known_Disese(
DISEASE_CD VARCHAR(100),
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
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"10"', '"Liver dysfunction"', '"Liver dysfunction"', '"Liver dysfunction"', '"Liver dysfunction"', '""', '""', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"20"', '"Renal dysfunction"', '"Renal dysfunction"', '"Renal dysfunction"', '"Renal dysfunction"', '""', '""', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"30"', '"Bronchial asthma"', '"Bronchial asthma"', '"Bronchial asthma"', '"Bronchial asthma"', '""', '""', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"40"', '"Lung disease"', '"Lung disease"', '"Lung disease"', '"Lung disease"', '""', '""', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 5 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"50"', '"Heart disease"', '"Heart disease"', '"Heart disease"', '"Heart disease"', '""', '""', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 6 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"60"', '"Hypertension"', '"Hypertension"', '"Hypertension"', '"Hypertension"', '""', '""', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 7 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"70"', '"Diabetes"', '"Diabetes"', '"Diabetes"', '"Diabetes"', '""', '""', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 8 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"80"', '"Bleeding tendency"', '"Bleeding tendency"', '"Bleeding tendency"', '"Bleeding tendency"', '""', '""', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 9 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"90"', '"Prostatic hypertrophy"', '"Prostatic hypertrophy"', '"Prostatic hypertrophy"', '"Prostatic hypertrophy"', '""', '""', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 10 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"100"', '"Glaucoma"', '"Glaucoma"', '"Glaucoma"', '"Glaucoma"', '""', '""', '""', '"1"', '"100"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 11 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"110"', '"Respiratory failure"', '"Respiratory failure"', '"Respiratory failure"', '"Respiratory failure"', '""', '""', '""', '"1"', '"110"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 12 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"120"', '"Medicine hypersensitivity"', '"Medicine hypersensitivity"', '"Medicine hypersensitivity"', '"Medicine hypersensitivity"', '""', '""', '""', '"1"', '"120"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 13 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"130"', '"Underlying disease"', '"Underlying disease"', '"Underlying disease"', '"Underlying disease"', '""', '""', '""', '"1"', '"130"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 14 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"140"', '"Past history of gastric excision"', '"Past history of gastric excision"', '"Past history of gastric excision"', '"Past history of gastric excision"', '""', '""', '""', '"1"', '"140"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 15 */
INSERT INTO #temp_Known_Disese(DISEASE_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"150"', '"With/Without intestinal occlusion"', '"With/Without intestinal occlusion"', '"With/Without intestinal occlusion"', '"With/Without intestinal occlusion"', '""', '""', '""', '"1"', '"150"', '""', '""', '""', '""', '""', '""', '""'
);


INSERT INTO  KNOWN_DISEASE (KNOWN_DISEASE_UID,KNOWN_DISEASE_NAME,DISPLAY_NAME, DISPLAY_RANK,ORG_ID) 
SELECT CONCAT('D',REPLACE(DISEASE_CD, '"', ''))as TECHNIQUE_UID ,REPLACE([NAME], '"', '')as TECHNIQUE_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,1 as DISPLAY_RANK, @ORG_ID as ORG_ID FROM #temp_Known_Disese

