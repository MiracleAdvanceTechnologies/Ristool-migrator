/* CREATE TABLE */
DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_Study_Region') IS NOT NULL DROP TABLE #temp_Study_Region


CREATE TABLE #temp_Study_Region(
STUDY_PART_CD VARCHAR(100),
STUDY_ITEM_CD VARCHAR(100),
NAME VARCHAR(100),
OMITTED_NAME VARCHAR(100),
CHOOSE_NAME VARCHAR(100),
DISP_NAME VARCHAR(100),
KANA_NAME VARCHAR(100),
EN_NAME VARCHAR(100),
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
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202100010"', '"20210"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202200010"', '"20220"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202300010"', '"20230"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400010"', '"20240"', '"Larynx"', '"Larynx"', '"Larynx"', '"Larynx"', '"Larynx"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 5 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202500010"', '"20250"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 6 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202600010"', '"20260"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 7 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212100010"', '"21210"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 8 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212200010"', '"21220"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 9 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212300010"', '"21230"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 10 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400010"', '"21240"', '"Larynx"', '"Larynx"', '"Larynx"', '"Larynx"', '"Larynx"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 11 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222100010"', '"22210"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 12 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222200010"', '"22220"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 13 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222300010"', '"22230"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 14 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400010"', '"22240"', '"Larynx"', '"Larynx"', '"Larynx"', '"Larynx"', '"Larynx"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 15 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222500010"', '"22250"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 16 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600010"', '"22260"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 17 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232100010"', '"23210"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 18 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232200010"', '"23220"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 19 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232300010"', '"23230"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 20 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400010"', '"23240"', '"Larynx"', '"Larynx"', '"Larynx"', '"Larynx"', '"Larynx"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 21 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242100010"', '"24210"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '"Nasal cavity"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 22 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242200010"', '"24220"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"10"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 23 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202100020"', '"20210"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 24 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202200020"', '"20220"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 25 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202300020"', '"20230"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 26 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400020"', '"20240"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 27 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202500020"', '"20250"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 28 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202600020"', '"20260"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 29 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212100020"', '"21210"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 30 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212200020"', '"21220"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 31 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212300020"', '"21230"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 32 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400020"', '"21240"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 33 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222100020"', '"22210"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 34 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222200020"', '"22220"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 35 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222300020"', '"22230"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 36 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400020"', '"22240"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 37 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600020"', '"22260"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 38 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232100020"', '"23210"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 39 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232200020"', '"23220"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 40 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232300020"', '"23230"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 41 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400020"', '"23240"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 42 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242100020"', '"24210"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '"Oral cavity"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 43 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242200020"', '"24220"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 44 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242400010"', '"24240"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '"Vocal cords"', '""', '"1"', '"20"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 45 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202100030"', '"20210"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 46 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202300030"', '"20230"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 47 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400030"', '"20240"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 48 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202500030"', '"20250"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 49 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202600030"', '"20260"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 50 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212100030"', '"21210"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 51 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212300030"', '"21230"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 52 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400030"', '"21240"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 53 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222100030"', '"22210"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 54 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222300030"', '"22230"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 55 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400030"', '"22240"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 56 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600030"', '"22260"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 57 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232100030"', '"23210"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 58 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232300030"', '"23230"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 59 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400030"', '"23240"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 60 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242100030"', '"24210"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '"Pharynx"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 61 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242400020"', '"24240"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '"Trachea"', '""', '"1"', '"30"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 62 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202100040"', '"20210"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 63 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202300040"', '"20230"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 64 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400040"', '"20240"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 65 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202600040"', '"20260"', '"Small and large intestines"', '"Small and large intestines"', '"Small and large intestines"', '"Small and large intestines"', '"Small and large intestines"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 66 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212100040"', '"21210"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 67 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212300040"', '"21230"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 68 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400040"', '"21240"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 69 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222100040"', '"22210"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 70 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222300040"', '"22230"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 71 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400040"', '"22240"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 72 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600040"', '"22260"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 73 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232100040"', '"23210"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 74 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232300040"', '"23230"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 75 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400040"', '"23240"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 76 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242100040"', '"24210"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '"Esophagus"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 77 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242400030"', '"24240"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '"Bifurcation of trachea"', '""', '"1"', '"40"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 78 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202100050"', '"20210"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 79 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202300050"', '"20230"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 80 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400050"', '"20240"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 81 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202600050"', '"20260"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 82 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212100050"', '"21210"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 83 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212300050"', '"21230"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 84 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400050"', '"21240"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 85 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222100050"', '"22210"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 86 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222300050"', '"22230"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 87 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400050"', '"22240"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 88 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600050"', '"22260"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 89 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232100050"', '"23210"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 90 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232300050"', '"23230"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 91 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400050"', '"23240"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 92 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242100050"', '"24210"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '"Stomach"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 93 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242400040"', '"24240"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '"Right main bronchus"', '""', '"1"', '"50"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 94 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202100060"', '"20210"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 95 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202300060"', '"20230"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 96 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400060"', '"20240"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 97 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202600060"', '"20260"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 98 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212100060"', '"21210"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 99 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212300060"', '"21230"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 100 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400060"', '"21240"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 101 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222100060"', '"22210"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 102 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222300060"', '"22230"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 103 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400060"', '"22240"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 104 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600060"', '"22260"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '"Large intestine"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 105 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232100060"', '"23210"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 106 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232300060"', '"23230"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 107 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400060"', '"23240"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 108 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242100060"', '"24210"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '"Duodenum"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 109 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242400050"', '"24240"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '"Right bronchus"', '""', '"1"', '"60"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 110 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202100070"', '"20210"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 111 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400070"', '"20240"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 112 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202600070"', '"20260"', '"Pancreas"', '"Pancreas"', '"Pancreas"', '"Pancreas"', '"Pancreas"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 113 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212100070"', '"21210"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 114 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400070"', '"21240"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 115 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222100070"', '"22210"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 116 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400070"', '"22240"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 117 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600070"', '"22260"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '"Biliary tract"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 118 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232100070"', '"23210"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 119 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400070"', '"23240"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 120 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242100070"', '"24210"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '"Small intestine"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 121 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242400060"', '"24240"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '"Left main bronchus"', '""', '"1"', '"70"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 122 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400080"', '"20240"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 123 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400080"', '"21240"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 124 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400080"', '"22240"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 125 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600080"', '"22260"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '"Cholecyst"', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 126 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400080"', '"23240"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 127 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242400070"', '"24240"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '"Left bronchus"', '""', '"1"', '"80"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 128 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"202400090"', '"20240"', '"All"', '"All"', '"All"', '"All"', '"All"', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 129 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"212400090"', '"21240"', '"All"', '"All"', '"All"', '"All"', '"All"', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 130 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222400090"', '"22240"', '"All"', '"All"', '"All"', '"All"', '"All"', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 131 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600090"', '"22260"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '"Bile duct"', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 132 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"232400090"', '"23240"', '"All"', '"All"', '"All"', '"All"', '"All"', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 133 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"242400080"', '"24240"', '"All"', '"All"', '"All"', '"All"', '"All"', '""', '"1"', '"90"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 134 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600100"', '"22260"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '"Papilla in bile duct"', '""', '"1"', '"100"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 135 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600110"', '"22260"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '"Pancreatic"', '""', '"1"', '"110"', '""', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 136 */
INSERT INTO #temp_Study_Region(STUDY_PART_CD, STUDY_ITEM_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"222600120"', '"22260"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '"Pancreatic duct"', '""', '"1"', '"120"', '""', '""', '""', '""', '""', '""', '""'
);


INSERT INTO STUDY_REGION(STUDY_REGION_UID,STUDY_REGION_NAME,SHORT_NAME,DISPLAY_NAME,ORG_ID)
SELECT CONCAT('SR',REPLACE(STUDY_PART_CD, '"', '')) as CLINICAL_DIAGNOSIS_UID,REPLACE([NAME], '"', '') as CLINICAL_DIAGNOSIS_NAME,REPLACE(DISP_NAME, '"', '')as SHORT_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,@ORG_ID as ORG_ID FROM #temp_Study_Region


