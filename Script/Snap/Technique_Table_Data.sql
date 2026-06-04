
DECLARE @ORG_ID INT
SET @ORG_ID=1

/* CREATE TABLE */
IF OBJECT_ID('tempdb..#temp_TECHNIQUE') IS NOT NULL DROP TABLE #temp_TECHNIQUE

CREATE TABLE #temp_TECHNIQUE(
TECH_CD VARCHAR(100),
TECH_CLS_CD VARCHAR(100),
NAME VARCHAR(100),
OMITTED_NAME VARCHAR(100),
CHOOSE_NAME VARCHAR(100),
DISP_NAME VARCHAR(100),
KANA_NAME VARCHAR(100),
EN_NAME VARCHAR(100),
FREQUENCY VARCHAR(100),
UPPER_LIMIT VARCHAR(100),
LOWER_LIMIT VARCHAR(100),
UNIT_CD VARCHAR(100),
BAR_CODE VARCHAR(100),
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
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"10"', '"10"', '"ERCP (Endoscopic retrograde cholangiopancreatography)"', '"ERCP (Endoscopic retrograde cholangiopancreatography)"', '"ERCP (Endoscopic retrograde cholangiopancreatography)"', '"ERCP (Endoscopic retrograde cholangiopancreatography)"', '"ERCP (Endoscopic retrograde cholangiopancreatography)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"10"', '"7J0099"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 2 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"20"', '"10"', '"Insertion of ileus tube"', '"Insertion of ileus tube"', '"Insertion of ileus tube"', '"Insertion of ileus tube"', '"Insertion of ileus tube"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"20"', '"7J0119"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 3 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"30"', '"10"', '"Gastroduodenal endoscope"', '"Gastroduodenal endoscope"', '"Gastroduodenal endoscope"', '"Gastroduodenal endoscope"', '"Gastroduodenal endoscope"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"30"', '"7J0005"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 4 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"40"', '"10"', '"Percutaneous endoscopic gastrostomy"', '"Percutaneous endoscopic gastrostomy"', '"Percutaneous endoscopic gastrostomy"', '"Percutaneous endoscopic gastrostomy"', '"Percutaneous endoscopic gastrostomy"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"40"', '"7K0021"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 5 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"50"', '"10"', '"Percutaneous abdominal abscess drainage"', '"Percutaneous abdominal abscess drainage"', '"Percutaneous abdominal abscess drainage"', '"Percutaneous abdominal abscess drainage"', '"Percutaneous abdominal abscess drainage"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"50"', '"7J0136"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 6 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"60"', '"10"', '"Small intestine (Capsule endoscope)"', '"Small intestine (Capsule endoscope)"', '"Small intestine (Capsule endoscope)"', '"Small intestine (Capsule endoscope)"', '"Small intestine (Capsule endoscope)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"60"', '"7J0102"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 7 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"70"', '"10"', '"Small intestine (Other)"', '"Small intestine (Other)"', '"Small intestine (Other)"', '"Small intestine (Other)"', '"Small intestine (Other)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"70"', '"7J0103"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 8 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"80"', '"10"', '"Enteroscope"', '"Enteroscope"', '"Enteroscope"', '"Enteroscope"', '"Enteroscope"', '""', '"1"', '"1"', '"0"', '""', '""', '"1"', '"80"', '"7J0007"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 9 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"90"', '"10"', '"Enteroscope (double balloon)"', '"Enteroscope (double balloon)"', '"Enteroscope (double balloon)"', '"Enteroscope (double balloon)"', '"Enteroscope (double balloon)"', '""', '"1"', '"1"', '"0"', '""', '""', '"1"', '"90"', '"7J0101"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 10 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"100"', '"10"', '"Endoscope of esophagus', ' stomach and duodenum"', '"Endoscope of esophagus', ' stomach and duodenum"', '"Endoscope of esophagus', ' stomach and duodenum"', '"Endoscope of esophagus', ' stomach and duodenum"', '"Endoscope of esophagus', ' stomach and duodenum"', '""', '"1"', '"100"', '"1"', '""', '""', '"0"', '"100"', '"7J0001"', '""'
);

/* INSERT QUERY NO: 11 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"110"', '"10"', '"Esophagoscope"', '"Esophagoscope"', '"Esophagoscope"', '"Esophagoscope"', '"Esophagoscope"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"110"', '"7J0003"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 12 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"120"', '"10"', '"Colonoscope (Sigmoid colon)"', '"Colonoscope (Sigmoid colon)"', '"Colonoscope (Sigmoid colon)"', '"Colonoscope (Sigmoid colon)"', '"Colonoscope (Sigmoid colon)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"120"', '"7J0011"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 13 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"130"', '"10"', '"Colonoscope (Descending colon and transverse colons)"', '"Colonoscope (Descending colon and transverse colons)"', '"Colonoscope (Descending colon and transverse colons)"', '"Colonoscope (Descending colon and transverse colons)"', '"Colonoscope (Descending colon and transverse colons)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"130"', '"7J0010"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 14 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"140"', '"10"', '"Colonoscope (Transverse and descending colons)"', '"Colonoscope (Transverse and descending colons)"', '"Colonoscope (Transverse and descending colons)"', '"Colonoscope (Transverse and descending colons)"', '"Colonoscope (Transverse and descending colons)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"140"', '"7J0009"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 15 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"150"', '"10"', '"Colonoscope (Rectum)"', '"Colonoscope (Rectum)"', '"Colonoscope (Rectum)"', '"Colonoscope (Rectum)"', '"Colonoscope (Rectum)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"150"', '"7J0012"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 16 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"170"', '"10"', '"Biliary tract endoscope"', '"Biliary tract endoscope"', '"Biliary tract endoscope"', '"Biliary tract endoscope"', '"Biliary tract endoscope"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"170"', '"7J0046"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 17 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"180"', '"10"', '"Endoscopic submucosal dissection of malignant gastroduodenal tum"', '"Endoscopic submucosal dissection of malignant gastroduodenal tum"', '"Endoscopic submucosal dissection of malignant gastroduodenal tum"', '"Endoscopic submucosal dissection of malignant gastroduodenal tum"', '"Endoscopic submucosal dissection of malignant gastroduodenal tum"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"180"', '"7K0023"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 18 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"190"', '"10"', '"Endoscopic excision of other gastroduodenal polyp/mucosa"', '"Endoscopic excision of other gastroduodenal polyp/mucosa"', '"Endoscopic excision of other gastroduodenal polyp/mucosa"', '"Endoscopic excision of other gastroduodenal polyp/mucosa"', '"Endoscopic excision of other gastroduodenal polyp/mucosa"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"190"', '"7J0109"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 19 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"200"', '"10"', '"Endoscopic excision of malignant gastroduodenal tumor/polyp"', '"Endoscopic excision of malignant gastroduodenal tumor/polyp"', '"Endoscopic excision of malignant gastroduodenal tumor/polyp"', '"Endoscopic excision of malignant gastroduodenal tumor/polyp"', '"Endoscopic excision of malignant gastroduodenal tumor/polyp"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"200"', '"7J0110"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 20 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"210"', '"10"', '"Endoscopic excision of early-stage malignant gastroduodenal tumo"', '"Endoscopic excision of early-stage malignant gastroduodenal tumo"', '"Endoscopic excision of early-stage malignant gastroduodenal tumo"', '"Endoscopic excision of early-stage malignant gastroduodenal tumo"', '"Endoscopic excision of early-stage malignant gastroduodenal tumo"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"210"', '"7J0111"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 21 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"220"', '"10"', '"Endoscopic dilation of gastroduodenal stenosis"', '"Endoscopic dilation of gastroduodenal stenosis"', '"Endoscopic dilation of gastroduodenal stenosis"', '"Endoscopic dilation of gastroduodenal stenosis"', '"Endoscopic dilation of gastroduodenal stenosis"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"220"', '"7J0112"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 22 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"230"', '"10"', '"Endoscopic excision of polyp and mucosa in colon (2cm or larger)"', '"Endoscopic excision of polyp and mucosa in colon (2cm or larger)"', '"Endoscopic excision of polyp and mucosa in colon (2cm or larger)"', '"Endoscopic excision of polyp and mucosa in colon (2cm or larger)"', '"Endoscopic excision of polyp and mucosa in colon (2cm or larger)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"230"', '"7J0116"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 23 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"240"', '"10"', '"Endoscopic excision of polyp and mucosa in colon (Less than 2cm)"', '"Endoscopic excision of polyp and mucosa in colon (Less than 2cm)"', '"Endoscopic excision of polyp and mucosa in colon (Less than 2cm)"', '"Endoscopic excision of polyp and mucosa in colon (Less than 2cm)"', '"Endoscopic excision of polyp and mucosa in colon (Less than 2cm)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"240"', '"7J0115"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 24 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"250"', '"10"', '"Endoscopic extraction of foreign body in colon"', '"Endoscopic extraction of foreign body in colon"', '"Endoscopic extraction of foreign body in colon"', '"Endoscopic extraction of foreign body in colon"', '"Endoscopic extraction of foreign body in colon"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"250"', '"7K0187"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 25 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"260"', '"10"', '"Endoscopic dilation of stenosis in small intestine and colon"', '"Endoscopic dilation of stenosis in small intestine and colon"', '"Endoscopic dilation of stenosis in small intestine and colon"', '"Endoscopic dilation of stenosis in small intestine and colon"', '"Endoscopic dilation of stenosis in small intestine and colon"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"260"', '"7J0113"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 26 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"270"', '"10"', '"Endoscopic hemostasis of small intestine and colon"', '"Endoscopic hemostasis of small intestine and colon"', '"Endoscopic hemostasis of small intestine and colon"', '"Endoscopic hemostasis of small intestine and colon"', '"Endoscopic hemostasis of small intestine and colon"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"270"', '"7J0114"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 27 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"280"', '"10"', '"Endoscopic hemostasis of gastrointestinal tract"', '"Endoscopic hemostasis of gastrointestinal tract"', '"Endoscopic hemostasis of gastrointestinal tract"', '"Endoscopic hemostasis of gastrointestinal tract"', '"Endoscopic hemostasis of gastrointestinal tract"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"280"', '"7J0108"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 28 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"290"', '"10"', '"Endoscopic placement of esophageal stent"', '"Endoscopic placement of esophageal stent"', '"Endoscopic placement of esophageal stent"', '"Endoscopic placement of esophageal stent"', '"Endoscopic placement of esophageal stent"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"290"', '"7J0105"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 29 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"300"', '"10"', '"Endoscopic submucosal dissection of malignant tumor in esophagus"', '"Endoscopic submucosal dissection of malignant tumor in esophagus"', '"Endoscopic submucosal dissection of malignant tumor in esophagus"', '"Endoscopic submucosal dissection of malignant tumor in esophagus"', '"Endoscopic submucosal dissection of malignant tumor in esophagus"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"300"', '"7A0009"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 30 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"310"', '"10"', '"Endoscopic extraction of foreign body in esophagus"', '"Endoscopic extraction of foreign body in esophagus"', '"Endoscopic extraction of foreign body in esophagus"', '"Endoscopic extraction of foreign body in esophagus"', '"Endoscopic extraction of foreign body in esophagus"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"310"', '"7J0106"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 31 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"320"', '"10"', '"Endoscopic extraction of foreign body in esophagus and stomach"', '"Endoscopic extraction of foreign body in esophagus and stomach"', '"Endoscopic extraction of foreign body in esophagus and stomach"', '"Endoscopic extraction of foreign body in esophagus and stomach"', '"Endoscopic extraction of foreign body in esophagus and stomach"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"320"', '"7J0107"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 32 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"330"', '"10"', '"Endoscopic dilation of esophageal stenosis "', '"Endoscopic dilation of esophageal stenosis "', '"Endoscopic dilation of esophageal stenosis "', '"Endoscopic dilation of esophageal stenosis "', '"Endoscopic dilation of esophageal stenosis "', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"330"', '"7J0104"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 33 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"340"', '"10"', '"Endoscope large intestinal polypectomy (2cm or larger)"', '"Endoscope large intestinal polypectomy (2cm or larger)"', '"Endoscope large intestinal polypectomy (2cm or larger)"', '"Endoscope large intestinal polypectomy (2cm or larger)"', '"Endoscope large intestinal polypectomy (2cm or larger)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"340"', '"7J0118"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 34 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"350"', '"10"', '"Endoscope large intestinal polypectomy (Less than 2cm)"', '"Endoscope large intestinal polypectomy (Less than 2cm)"', '"Endoscope large intestinal polypectomy (Less than 2cm)"', '"Endoscope large intestinal polypectomy (Less than 2cm)"', '"Endoscope large intestinal polypectomy (Less than 2cm)"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"350"', '"7J0117"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 35 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"360"', '"10"', '"Endoscopic submucosal dissection of malignant tumor in large int"', '"Endoscopic submucosal dissection of malignant tumor in large int"', '"Endoscopic submucosal dissection of malignant tumor in large int"', '"Endoscopic submucosal dissection of malignant tumor in large int"', '"Endoscopic submucosal dissection of malignant tumor in large int"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"360"', '"7K0038"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 36 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"370"', '"10"', '"Endoscopic removal of foreign body in rectum"', '"Endoscopic removal of foreign body in rectum"', '"Endoscopic removal of foreign body in rectum"', '"Endoscopic removal of foreign body in rectum"', '"Endoscopic removal of foreign body in rectum"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"370"', '"7K0043"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 37 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"380"', '"30"', '"Ultrasound endoscopy-guided fine needle biopsy"', '"Ultrasound endoscopy-guided fine needle biopsy"', '"Ultrasound endoscopy-guided fine needle biopsy"', '"Ultrasound endoscopy-guided fine needle biopsy"', '"Ultrasound endoscopy-guided fine needle biopsy"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"380"', '"7J9001"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 38 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"390"', '"30"', '"Endoscopic biopsy 1 Organ"', '"Endoscopic biopsy 1 Organ"', '"Endoscopic biopsy 1 Organ"', '"Endoscopic biopsy 1 Organ"', '"Endoscopic biopsy 1 Organ"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"390"', '"307145"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 39 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"400"', '"30"', '"Endoscopic biopsy 2 Organ"', '"Endoscopic biopsy 2 Organ"', '"Endoscopic biopsy 2 Organ"', '"Endoscopic biopsy 2 Organ"', '"Endoscopic biopsy 2 Organ"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"400"', '"307146"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 40 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"410"', '"30"', '"Endoscopic biopsy 3 Organ"', '"Endoscopic biopsy 3 Organ"', '"Endoscopic biopsy 3 Organ"', '"Endoscopic biopsy 3 Organ"', '"Endoscopic biopsy 3 Organ"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"410"', '"307147"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 41 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"420"', '"30"', '"Addition by narrowband imaging"', '"Addition by narrowband imaging"', '"Addition by narrowband imaging"', '"Addition by narrowband imaging"', '"Addition by narrowband imaging"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"420"', '"307196"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 42 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"430"', '"30"', '"Addition by cholangiopancreatography"', '"Addition by cholangiopancreatography"', '"Addition by cholangiopancreatography"', '"Addition by cholangiopancreatography"', '"Addition by cholangiopancreatography"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"430"', '"307197"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 43 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"440"', '"30"', '"Addition by ultrasound endoscope"', '"Addition by ultrasound endoscope"', '"Addition by ultrasound endoscope"', '"Addition by ultrasound endoscope"', '"Addition by ultrasound endoscope"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"440"', '"307076"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 44 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"450"', '"30"', '"Addition by Indian ink injection into mucosa"', '"Addition by Indian ink injection into mucosa"', '"Addition by Indian ink injection into mucosa"', '"Addition by Indian ink injection into mucosa"', '"Addition by Indian ink injection into mucosa"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"450"', '"307077"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 45 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"460"', '"30"', '"SpO2"', '"SpO2"', '"SpO2"', '"SpO2"', '"SpO2"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"460"', '"307141"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 46 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"470"', '"30"', '"Helico check"', '"Helico check"', '"Helico check"', '"Helico check"', '"Helico check"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"470"', '"307139"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 47 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"480"', '"30"', '"Sonscious sedation"', '"Sonscious sedation"', '"Sonscious sedation"', '"Sonscious sedation"', '"Sonscious sedation"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"480"', '"307140"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 48 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"490"', '"10"', '"Endoscopic injection sclerotherapy of esophagogastric varices"', '"Endoscopic injection sclerotherapy of esophagogastric varices"', '"Endoscopic injection sclerotherapy of esophagogastric varices"', '"Endoscopic injection sclerotherapy of esophagogastric varices"', '"Endoscopic injection sclerotherapy of esophagogastric varices"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"490"', '"7K0006"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 49 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"500"', '"10"', '"Ligation of esophagogastric varices"', '"Ligation of esophagogastric varices"', '"Ligation of esophagogastric varices"', '"Ligation of esophagogastric varices"', '"Ligation of esophagogastric varices"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"500"', '"7K0007"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 50 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"510"', '"30"', '"Replacement of gastrostomy catheter"', '"Replacement of gastrostomy catheter"', '"Replacement of gastrostomy catheter"', '"Replacement of gastrostomy catheter"', '"Replacement of gastrostomy catheter"', '""', '"1"', '"100"', '"1"', '""', '""', '"1"', '"510"', '"7K0213"', '""', '""', '""', '""', '""', '""'
);

/* INSERT QUERY NO: 51 */
INSERT INTO #temp_TECHNIQUE(TECH_CD, TECH_CLS_CD, NAME, OMITTED_NAME, CHOOSE_NAME, DISP_NAME, KANA_NAME, EN_NAME, FREQUENCY, UPPER_LIMIT, LOWER_LIMIT, UNIT_CD, BAR_CODE, VISIBLE_FLAG, LIST_NUM, FOREIGN_CD, DELETE_DATE, REG_NAME, REGIST_DATE, MOD_NAME, UPDATE_DATE, TIME_STAMP)
VALUES
(
'"520"', '"30"', '"Addition by ultrasound endoscope"', '"Addition by ultrasound endoscope"', '"Addition by ultrasound endoscope"', '"Addition by ultrasound endoscope"', '"Addition by ultrasound endoscope"', '""', '"1"', '"100"', '"1"', '""', '""', '"0"', '"9999"', '"307199"', '""', '""', '""', '""', '""', '""'
);


INSERT INTO  TECHNIQUE (TECHNIQUE_UID,TECHNIQUE_NAME,DISPLAY_NAME, DISPLAY_RANK,ORG_ID) 
SELECT CONCAT('H',REPLACE(TECH_CD, '"', ''))as TECHNIQUE_UID ,REPLACE([NAME], '"', '')as TECHNIQUE_NAME,REPLACE(DISP_NAME, '"', '') as DISPLAY_NAME,1 as DISPLAY_RANK, @ORG_ID as ORG_ID FROM #temp_TECHNIQUE

	

