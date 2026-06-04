/* CREATE TABLE */
DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_Cheif_Complain') IS NOT NULL DROP TABLE #temp_Cheif_Complain

CREATE TABLE #temp_Cheif_Complain(
COMPLAINT_CD VARCHAR(100),
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
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"10"', '"1"', '"Choked feeling in the esophagus"', '"Choked feeling in the esophagus"', '"Choked feeling in the esophagus"', '"Choked feeling in the esophagus"', '""', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"20"', '"1"', '"Dysphagia"', '"Dysphagia"', '"Dysphagia"', '"Dysphagia"', '""', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"30"', '"1"', '"Heartburn"', '"Heartburn"', '"Heartburn"', '"Heartburn"', '""', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"40"', '"1"', '"Choked feeling in chest"', '"Choked feeling in chest"', '"Choked feeling in chest"', '"Choked feeling in chest"', '""', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 5 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"50"', '"1"', '"Vomiturition"', '"Vomiturition"', '"Vomiturition"', '"Vomiturition"', '""', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 6 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"60"', '"1"', '"Vomiting/Nausea"', '"Vomiting/Nausea"', '"Vomiting/Nausea"', '"Vomiting/Nausea"', '""', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 7 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"70"', '"1"', '"Epigastric pain"', '"Epigastric pain"', '"Epigastric pain"', '"Epigastric pain"', '""', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 8 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"80"', '"1"', '"Epigastric discomfort"', '"Epigastric discomfort"', '"Epigastric discomfort"', '"Epigastric discomfort"', '""', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 9 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"90"', '"1"', '"Pain in upper abdomen"', '"Pain in upper abdomen"', '"Pain in upper abdomen"', '"Pain in upper abdomen"', '""', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 10 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"100"', '"1"', '"Upper abdominal discomfort"', '"Upper abdominal discomfort"', '"Upper abdominal discomfort"', '"Upper abdominal discomfort"', '""', '""', '"1"', '"100"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 11 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"110"', '"1"', '"Hypogastric pain"', '"Hypogastric pain"', '"Hypogastric pain"', '"Hypogastric pain"', '""', '""', '"1"', '"110"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 12 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"120"', '"1"', '"Abdominal pain"', '"Abdominal pain"', '"Abdominal pain"', '"Abdominal pain"', '""', '""', '"1"', '"120"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 13 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"130"', '"1"', '"Abdominal discomfort"', '"Abdominal discomfort"', '"Abdominal discomfort"', '"Abdominal discomfort"', '""', '""', '"1"', '"130"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 14 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"140"', '"1"', '"Abdominal distention"', '"Abdominal distention"', '"Abdominal distention"', '"Abdominal distention"', '""', '""', '"1"', '"140"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 15 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"150"', '"1"', '"Anorexia"', '"Anorexia"', '"Anorexia"', '"Anorexia"', '""', '""', '"1"', '"150"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 16 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"160"', '"1"', '"Abdominal tumor"', '"Abdominal tumor"', '"Abdominal tumor"', '"Abdominal tumor"', '""', '""', '"1"', '"160"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 17 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"170"', '"1"', '"Anemia"', '"Anemia"', '"Anemia"', '"Anemia"', '""', '""', '"1"', '"170"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 18 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"180"', '"1"', '"Hemoptysis"', '"Hemoptysis"', '"Hemoptysis"', '"Hemoptysis"', '""', '""', '"1"', '"180"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 19 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"190"', '"1"', '"Hematemesis"', '"Hematemesis"', '"Hematemesis"', '"Hematemesis"', '""', '""', '"1"', '"190"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 20 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"200"', '"1"', '"Melaena"', '"Melaena"', '"Melaena"', '"Melaena"', '""', '""', '"1"', '"200"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 21 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"210"', '"1"', '"Diarrhea"', '"Diarrhea"', '"Diarrhea"', '"Diarrhea"', '""', '""', '"1"', '"210"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 22 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"220"', '"1"', '"Black stool"', '"Black stool"', '"Black stool"', '"Black stool"', '""', '""', '"1"', '"220"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 23 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"230"', '"1"', '"Tarry stool"', '"Tarry stool"', '"Tarry stool"', '"Tarry stool"', '""', '""', '"1"', '"230"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 24 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"240"', '"1"', '"Bloody stool"', '"Bloody stool"', '"Bloody stool"', '"Bloody stool"', '""', '""', '"1"', '"240"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 25 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"250"', '"1"', '"Constipation"', '"Constipation"', '"Constipation"', '"Constipation"', '""', '""', '"1"', '"250"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 26 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"260"', '"1"', '"Proctorrhagia"', '"Proctorrhagia"', '"Proctorrhagia"', '"Proctorrhagia"', '""', '""', '"1"', '"260"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 27 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"270"', '"1"', '"Lower bleeding"', '"Lower bleeding"', '"Lower bleeding"', '"Lower bleeding"', '""', '""', '"1"', '"270"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 28 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"280"', '"1"', '"Faecal occult blood positive"', '"Faecal occult blood positive"', '"Faecal occult blood positive"', '"Faecal occult blood positive"', '""', '""', '"1"', '"280"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 29 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"290"', '"1"', '"Weight loss"', '"Weight loss"', '"Weight loss"', '"Weight loss"', '""', '""', '"1"', '"290"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 30 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"300"', '"1"', '"Fervescence"', '"Fervescence"', '"Fervescence"', '"Fervescence"', '""', '""', '"1"', '"300"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 31 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"310"', '"1"', '"Foreign body"', '"Foreign body"', '"Foreign body"', '"Foreign body"', '""', '""', '"1"', '"310"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 32 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"320"', '"1"', '"Injury"', '"Injury"', '"Injury"', '"Injury"', '""', '""', '"1"', '"320"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 33 */
INSERT INTO #temp_Cheif_Complain(COMPLAINT_CD, STUDY_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"330"', '"1"', '"Other"', '"Other"', '"Other"', '"Other"', '""', '""', '"1"', '"330"', '""', '""', '""', '""', '""', '""'
);

INSERT INTO CHEIF_COMPLAINT(CHEIF_COMPLAINT_UID,CHEIF_COMPLAINT_NAME,SHORT_NAME,DISPLAY_NAME,ORG_ID)
SELECT CONCAT('CP',REPLACE(COMPLAINT_CD, '"', '')) as CLINICAL_DIAGNOSIS_UID,REPLACE([NAME], '"', '') as CLINICAL_DIAGNOSIS_NAME,REPLACE(DISP_NAME, '"', '')as SHORT_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,@ORG_ID as ORG_ID FROM #temp_Cheif_Complain

