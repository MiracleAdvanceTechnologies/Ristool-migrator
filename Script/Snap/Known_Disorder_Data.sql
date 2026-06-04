/* CREATE TABLE */

DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_Known_DisOrder') IS NOT NULL DROP TABLE #temp_Known_DisOrder

CREATE TABLE #temp_Known_DisOrder(
DISORDER_CD VARCHAR(100),
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
INSERT INTO #temp_Known_DisOrder(DISORDER_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"10"', '"Extremities disorder flag"', '"Extremities disorder flag"', '"Extremities disorder flag"', '"Extremities disorder flag"', '""', '""', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_Known_DisOrder(DISORDER_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"20"', '"Vision impairment flag"', '"Vision impairment flag"', '"Vision impairment flag"', '"Vision impairment flag"', '""', '""', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_Known_DisOrder(DISORDER_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"30"', '"Hearing impairment flag"', '"Hearing impairment flag"', '"Hearing impairment flag"', '"Hearing impairment flag"', '""', '""', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_Known_DisOrder(DISORDER_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"40"', '"Language impairment flag"', '"Language impairment flag"', '"Language impairment flag"', '"Language impairment flag"', '""', '""', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 5 */
INSERT INTO #temp_Known_DisOrder(DISORDER_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"50"', '"Excretion impairment flag"', '"Excretion impairment flag"', '"Excretion impairment flag"', '"Excretion impairment flag"', '""', '""', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 6 */
INSERT INTO #temp_Known_DisOrder(DISORDER_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, CLS_CD, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"60"', '"Pacemaker"', '"Pacemaker"', '"Pacemaker"', '"Pacemaker"', '""', '""', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);


INSERT INTO  KNOWN_DISORDER(KNOWN_DISORDER_UID,KNOWN_DISORDER_NAME,DISPLAY_NAME, DISPLAY_RANK,ORG_ID) 
SELECT CONCAT('DO',REPLACE(DISORDER_CD, '"', ''))as TECHNIQUE_UID ,REPLACE([NAME], '"', '')as TECHNIQUE_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,1 as DISPLAY_RANK, @ORG_ID as ORG_ID FROM #temp_Known_DisOrder

