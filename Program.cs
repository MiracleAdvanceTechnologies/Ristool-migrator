using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json;
using System.Text.RegularExpressions;
using System.Threading;
using RisTool;

Console.OutputEncoding = Encoding.UTF8;
Console.InputEncoding = Encoding.UTF8;

// ─────────────────────────────────────────────
//  Helper
// ─────────────────────────────────────────────
static string Prompt(string label)
{
    string? input;
    do
    {
        Console.Write($"  {label}: ");
        input = Console.ReadLine()?.Trim();
        if (string.IsNullOrEmpty(input))
            Console.WriteLine($"  [!] Please Put {label}");
    }
    while (string.IsNullOrEmpty(input));
    return input;
}

//static int PromptInt(string label)
//{
//    while (true)
//    {
//        Console.Write($"  {label}: ");
//        string? input = Console.ReadLine()?.Trim();
//        if (int.TryParse(input, out int val))
//            return val;
//        Console.WriteLine($"  [!] Please put number");
//    }
//}

// ─────────────────────────────────────────────
//  ทำความสะอาด HTML
// ─────────────────────────────────────────────
static string CleanHtml(string html)
{
    html = Regex.Replace(html, @"<div[^>]*>.*?</div>", "",
           RegexOptions.Singleline | RegexOptions.IgnoreCase);
    html = Regex.Replace(html, @"<font[^>]*>(.*?)</font>", "$1",
           RegexOptions.Singleline | RegexOptions.IgnoreCase);
    html = Regex.Replace(html, @"<br[^>]*/?>", "\n",
           RegexOptions.IgnoreCase);
    html = Regex.Replace(html, @"<[^>]+>", "",
           RegexOptions.IgnoreCase);
    html = Regex.Replace(html, @"[ \t]+\n", "\n");
    html = Regex.Replace(html, @"\n[ \t]+\n", "\n\n");
    html = Regex.Replace(html, @"\n{3,}", "\n\n");
    return html.Trim();
}

// ─────────────────────────────────────────────
//  แปลง HTML → resultFinding array
// ─────────────────────────────────────────────
static List<object> ConvertHtmlToResultFinding(string html)
{
    var result = new List<object>();
    if (string.IsNullOrWhiteSpace(html)) return result;

    bool isNewFormat = Regex.IsMatch(html, @"<span[^>]*>", RegexOptions.IgnoreCase);

    if (isNewFormat)
    {
        var pMatch = Regex.Match(html, @"<p[^>]*>(.*?)</p>",
            RegexOptions.Singleline | RegexOptions.IgnoreCase);
        string inner = pMatch.Success ? pMatch.Groups[1].Value : html;

        var tokenPattern = new Regex(
            @"(<br\s*/?>)|(<span[^>]*>(.*?)</span>)",
            RegexOptions.Singleline | RegexOptions.IgnoreCase);

        int pendingNewlines = 0;
        void FlushNewlines()
        {
            if (pendingNewlines > 0)
            {
                result.Add(new { insert = new string('\n', Math.Min(pendingNewlines, 2)) });
                pendingNewlines = 0;
            }
        }

        foreach (Match m in tokenPattern.Matches(inner))
        {
            if (m.Groups[1].Success) { pendingNewlines++; }
            else if (m.Groups[2].Success)
            {
                FlushNewlines();
                string spanTag = m.Groups[2].Value;
                string text = System.Net.WebUtility.HtmlDecode(m.Groups[3].Value).Replace('\u00A0', ' ');
                string font = "Microsoft Sans Serif";
                var fontMatch = Regex.Match(spanTag, @"font-family\s*:\s*([^;""']+)", RegexOptions.IgnoreCase);
                if (fontMatch.Success) font = fontMatch.Groups[1].Value.Trim();
                if (!string.IsNullOrWhiteSpace(text))
                    result.Add(new { insert = text, attributes = new { size = 14, font } });
            }
        }
        FlushNewlines();
    }
    else
    {
        string cleanText = CleanHtml(html);
        string[] lines = cleanText.Split('\n');
        string font = "Microsoft Sans Serif";
        int pendingNewlines = 0;
        void FlushNewlines()
        {
            if (pendingNewlines > 0)
            {
                result.Add(new { insert = new string('\n', Math.Min(pendingNewlines, 2)) });
                pendingNewlines = 0;
            }
        }

        foreach (string rawLine in lines)
        {
            string line = rawLine.Trim();
            if (string.IsNullOrEmpty(line)) { pendingNewlines++; }
            else
            {
                FlushNewlines();
                result.Add(new { insert = line, attributes = new { size = 14, font } });
                pendingNewlines = 1;
            }
        }
        FlushNewlines();
    }

    return result;
}

// ─────────────────────────────────────────────
//  Serialize JSON
// ─────────────────────────────────────────────
static string SerializeWithCustomFormat(string accessionNo, List<object> resultFinding)
{
    var sb = new StringBuilder();
    sb.AppendLine("{");
    sb.AppendLine($"\"accessionNo\":\"{accessionNo}\",");
    sb.AppendLine("\"resultHistory\":null,");
    sb.AppendLine("\"resultTechnique\":null,");
    sb.Append("\"resultFinding\":[");
    for (int i = 0; i < resultFinding.Count; i++)
    {
        sb.Append("\n" + JsonSerializer.Serialize(resultFinding[i]));
        if (i < resultFinding.Count - 1) sb.Append(",");
    }
    sb.AppendLine("],");
    sb.AppendLine("\"resultImpression\":null,");
    sb.Append("\"resultRecommendatation\":null}");
    return sb.ToString();
}

// ─────────────────────────────────────────────
//  Process
// ─────────────────────────────────────────────
static void ProcessData(List<tranPk1> dataList, Func<string, string, int> updateFn, int delayMs, int delayperrecord, int delayMsper)
{
    int success = 0, failed = 0, count = 0;
    foreach (var data in dataList)
    {
        count++;
        try
        {
            if (string.IsNullOrWhiteSpace(data.HTML_TEXT))
            {
                Console.WriteLine($"[WARN] {data.Key} → HTML (NULL/EMPTY)");
                failed++;
                continue;
            }
            string cleanHtml = CleanHtml(data.HTML_TEXT);
            var finding = ConvertHtmlToResultFinding(cleanHtml);
            string jsonText = SerializeWithCustomFormat(data.Key, finding);
            int rows = updateFn(data.Key, jsonText);

            if (rows > 0) { Console.WriteLine($"[OK] {data.Key} → Success"); success++; }
            else { Console.WriteLine($"[WARN] {data.Key} → Not found"); failed++; }
        }
        catch (Exception ex) { Console.WriteLine($"[ERROR] {data.Key} → {ex.Message}"); failed++; }

        if (delayMs > 0) Thread.Sleep(delayMs);
        if (delayperrecord > 0 && count % delayperrecord == 0)
        {
            Console.WriteLine($"Sleep {delayMsper} ms after {delayperrecord} records");
            Thread.Sleep(delayMsper);
        }
    }

        PrintSummary(success, failed);

}

static void ProcessData2(List<tranPk2> dataList, Func<string, string, string, int> updateFn, int delayMs, int delayperrecord, int delayMsper)
{
    int success = 0, failed = 0, count = 0;
    foreach (var data in dataList)
    {
        count++;
        try
        {
            if (string.IsNullOrWhiteSpace(data.HTML_TEXT))
            {
                Console.WriteLine($"[WARN] {data.Key1} → HTML (NULL/EMPTY)");
                failed++;
                continue;
            }
            string cleanHtml = CleanHtml(data.HTML_TEXT);
            var finding = ConvertHtmlToResultFinding(cleanHtml);
            string jsonText = SerializeWithCustomFormat(data.Key1, finding);
            int rows = updateFn(data.Key1, data.Key2, jsonText);

            if (rows > 0) { Console.WriteLine($"[OK] {data.Key1} || {data.Key2} → Success"); success++; }
            else { Console.WriteLine($"[WARN] {data.Key1} || {data.Key2} → Not found"); failed++; }
        }
        catch (Exception ex) { Console.WriteLine($"[ERROR] {data.Key1} || {data.Key2} → {ex.Message}"); failed++; }

        if (delayMs > 0) Thread.Sleep(delayMs);
        if (delayperrecord > 0 && count % delayperrecord == 0)
        {
            Console.WriteLine($"Sleep {delayMsper} ms after {delayperrecord} records");
            Thread.Sleep(delayMsper);
        }
    }
    PrintSummary(success, failed);
}

//static void ProcessIsActive(
//    DatabaseHelper db,
//    string tableName,
//    string keyColumn,
//    string? keyColunm2,
//    string changeColumn,
//    int orgId,
//    int delayMs, int delayperrecord, int delayMsper)
//{
//    Console.WriteLine($"\n→ Pull Data [{tableName}]...\n");

//    List<IsActiveRecord> records;
//    try { records = db.GetIsActiveRecords(tableName, keyColumn, keyColunm2, orgId, changeColumn); }
//    catch (Exception ex) { Console.WriteLine($"[ERROR] Can't Pull: {ex.Message}"); return; }

//    if (records.Count == 0) { Console.WriteLine("  Not found data"); return; }
//    Console.WriteLine($"  Found {records.Count} records\n");

//    int success = 0, failed = 0, skipped = 0, count = 0; ;

//    foreach (var rec in records)
//    {
//        count++;
//        string? newValue = rec.CHANGE switch
//        {
//            "0" => "N",
//            "1" => "Y",
//            _ => null
//        };

//        if (newValue == null)
//        {
//            Console.WriteLine($"[SKIP] {rec.KEY_VALUE} → Change='{rec.CHANGE}' (Not 0/1)");
//            skipped++;
//            continue;
//        }

//        try
//        {
//            int rows = db.UpdateIsActive(tableName, keyColumn, rec.KEY_VALUE, newValue, changeColumn);
//            if (rows > 0) { Console.WriteLine($"[OK] {rec.KEY_VALUE} → '{rec.CHANGE}' → '{newValue}'"); success++; }
//            else { Console.WriteLine($"[WARN] {rec.KEY_VALUE} → Not found"); failed++; }
//        }
//        catch (Exception ex)
//        {
//            Console.WriteLine($"[ERROR] {rec.KEY_VALUE} → {ex.Message}");
//            failed++;
//        }

//        if (delayMs > 0) Thread.Sleep(delayMs);
//        if (delayperrecord > 0 && count % delayperrecord == 0)
//        {
//            Console.WriteLine($"Sleep {delayMsper} ms after {delayperrecord} records");
//            Thread.Sleep(delayMsper);
//        }
//    }

//    Console.WriteLine("\n====================================");
//    Console.WriteLine($"  [OK]   Success : {success}");
//    Console.WriteLine($"  [SKIP] Skipped : {skipped}");
//    Console.WriteLine($"  [ERR]  Fail    : {failed}");
//    Console.WriteLine("====================================");
//}


static void ConvertActive(
    DatabaseHelper db,
    string tableName,
    //string keyColumn,
    //string? keyColunm2,
    string[] keyColumns,
    string changeColumn,
    int orgId,
    int delayMs, int delayperrecord, int delayMsper)
{
    db.ConvertIsActive(tableName,keyColumns,changeColumn,orgId,delayMs,delayperrecord,delayMsper);
}


static void PrintSummary(int success, int failed)
{

        Console.WriteLine("\n====================================");
        Console.WriteLine($"  [OK]  Success : {success}");
        Console.WriteLine($"  [ERR] Fail    : {failed}");
        Console.WriteLine("====================================");

}

// ─────────────────────────────────────────────
//  MAIN
// ─────────────────────────────────────────────
Console.WriteLine("====================================");
Console.WriteLine("  RisTool — Convert ResultText JSON ");
Console.WriteLine("====================================\n");

Console.WriteLine("[ Database Connection ]\n");

string connectionString = "";
if (args.Length > 0 && !string.IsNullOrWhiteSpace(args[0]))
{
    connectionString = args[0];
    Console.WriteLine("  [OK] Loaded connection string from argument\n");
}
else
{
    connectionString = Prompt("connectionString  ");
}

int ORG_ID = 1;


DatabaseHelper db;
try { db = new DatabaseHelper(connectionString); }
catch (Exception ex)
{
    Console.WriteLine($"\n[ERROR] Can't connect DB : {ex.Message}");
    Console.WriteLine("\nPress Enter to close...");
    Console.ReadLine();
    return;
}

// delay เริ่มต้น (ms)
int delayPerRecordMs = 0;
int batchDelayMs = 0;
int batchSize = 0;

// ── Loop เมนู ──
while (true)
{
    string delayDisplay = delayPerRecordMs == 0 ? "Not set yet" : $"{delayPerRecordMs} ms";
    string delayperDisplay = batchDelayMs == 0 ? "Not set yet" : $"{batchDelayMs} ms";
    string delayperrecordDidplay = batchSize == 0 ? "Not set yet" : $"{batchSize} record";

    Console.WriteLine("\n====================================");
    Console.WriteLine("  Main menu");
    Console.WriteLine("====================================");
    Console.WriteLine($"  [1] Convert Table (EXAMRESULT + NOTE + TEMPLATE)  ← default");
    Console.WriteLine($"  [2] RIS_EXAMRESULT          (RESULT_FINDING_HTML → RESULT_TEXT_JSON)");
    Console.WriteLine($"  [3] RIS_EXAMRESULTNOTE      (NOTE_TEXT_HTML      → NOTE_TEXT_JSON)");
    Console.WriteLine($"  [4] RIS_EXAMRESULTTEMPLATE  (TEMPLATE_TEXT_HTML  → TEMPLATE_TEXT_JSON)");
    Console.WriteLine($"  [5] Convert  0→N / 1→Y  (Define Table by you)");
    Console.WriteLine($"  [6] Setup delay (per record: {delayDisplay}, batch: {delayperDisplay} every {delayperrecordDidplay}");
    Console.WriteLine($"  [7] Exit");
    Console.Write("\nselect (press Enter = 1): ");

    string? choice = Console.ReadLine()?.Trim();
    if (string.IsNullOrEmpty(choice)) choice = "1"; // default

    if (choice == "7")
    {
        Console.WriteLine("\nBye!");
        break;
    }

    if (choice == "6")
    {
        Console.WriteLine($"\n  delay : {delayDisplay}");
        Console.Write("  new delay  (ms, 0 = not delay): ");
        string? d = Console.ReadLine()?.Trim();
        if (int.TryParse(d, out int newDelay) && newDelay >= 0)
        {
            delayPerRecordMs = newDelay;
            Console.WriteLine($"  [OK] Delay {delayPerRecordMs} ms per record");
        }
        else
        {
            Console.WriteLine("  [!] Incorrect value. No change.");
        }

        Console.WriteLine($"\n  delay per record: {delayperDisplay} delay per {delayperrecordDidplay}");
        Console.Write("  Batch delay (ms, 0 = no delay): ");
        string? n = Console.ReadLine()?.Trim();
        Console.Write("  Batch size (records, 0 = no delay): ");
        string? e = Console.ReadLine()?.Trim();

        if (int.TryParse(n, out int newDelayper) && newDelayper >= 0)
        {
            batchDelayMs = newDelayper;
            Console.WriteLine($"  [OK] Delay {batchDelayMs} ms");
        }
        else
        {
            Console.WriteLine("  [!] Incorrect value. No change.");
        }

        if (int.TryParse(e, out int newRecord) && newRecord >= 0)
        {
            batchSize = newRecord;
            Console.WriteLine($"  [OK] Record {batchSize} ");
        }
        else
        {
            Console.WriteLine("  [!] Incorrect value. No change.");
        }
        continue;


    }

    if (choice == "5")
    {
        Console.WriteLine("\n[ Convert 0→N / 1→Y ]\n");

        string tableName = Prompt("Table Name     ");
        string changeColumn = Prompt("Change Column  ");

        // ถามจำนวน PK ก่อน
        Console.Write("  จำนวน Primary Key (1 หรือ 2): ");
        string? pkCount = Console.ReadLine()?.Trim();

        string[] keyColumns;
        if (pkCount == "2")
        {
            string pk1 = Prompt("Primary Key Col 1");
            string pk2 = Prompt("Primary Key Col 2");
            keyColumns = new[] { pk1, pk2 };
        }
        else
        {
            string pk1 = Prompt("Primary Key Col");
            keyColumns = new[] { pk1 };
        }

        Console.WriteLine($"\n  → Table      : {tableName}");
        Console.WriteLine($"  → PK         : {string.Join(", ", keyColumns)}");
        Console.WriteLine($"  → Change Col : {changeColumn}");
        Console.Write("\n  Confirm? (Y/N): ");
        string? confirm = Console.ReadLine()?.Trim().ToUpper();
        if (confirm == "N") { Console.WriteLine("  cancel"); continue; }

        db.ConvertIsActive(tableName, keyColumns, changeColumn, ORG_ID,
                           delayPerRecordMs, batchSize, batchDelayMs);
        continue;
    }

    if (choice != "1" && choice != "2" && choice != "3" && choice != "4")
    {
        Console.WriteLine("\n[ERROR] please select 1-7");
        continue;
    }

    try
    {
        // แปลงทุก Table
        if (choice == "1")
        {
            // EXAMRESULT
            Console.WriteLine("\n→ [1/3] RIS_EXAMRESULT...\n");
            var list1 = db.GetDataFromExamResult(ORG_ID);
            if (list1.Count == 0) Console.WriteLine("  Not found data or Colunm is already convert");
            else { Console.WriteLine($"  Found {list1.Count} records\n"); ProcessData(list1, db.UpdateExamResult, delayPerRecordMs, batchSize, batchDelayMs); }

            // EXAMRESULTNOTE
            Console.WriteLine("\n→ [2/3] RIS_EXAMRESULTNOTE...\n");
            var list2 = db.GetDataFromExamResultNote(ORG_ID);
            if (list2.Count == 0) Console.WriteLine("  Not found data or Colunm is already convert");
            else { Console.WriteLine($"  Found {list2.Count} records\n"); ProcessData2(list2, db.UpdateExamResultNote, delayPerRecordMs, batchSize, batchDelayMs); }

            // EXAMRESULTTEMPLATE
            Console.WriteLine("\n→ [3/3] RIS_EXAMRESULTTEMPLATE...\n");
            var list3 = db.GetDataFromExamResultTemplate(ORG_ID);
            if (list3.Count == 0) Console.WriteLine("  Not found data or Colunm is already convert");
            else { Console.WriteLine($"  Found {list3.Count} records\n"); ProcessData(list3, db.UpdateExamResultTemplate, delayPerRecordMs, batchSize, batchDelayMs); }
        }
        else if (choice == "2")
        {
            Console.WriteLine("\n→ RIS_EXAMRESULT...\n");
            var list = db.GetDataFromExamResult(ORG_ID);
            if (list.Count == 0) { Console.WriteLine("Not found data"); continue; }
            Console.WriteLine($"Found {list.Count} records\n");
            ProcessData(list, db.UpdateExamResult, delayPerRecordMs, batchSize, batchDelayMs);
        }
        else if (choice == "3")
        {
            Console.WriteLine("\n→ RIS_EXAMRESULTNOTE...\n");
            var list = db.GetDataFromExamResultNote(ORG_ID);
            if (list.Count == 0) { Console.WriteLine("Not found data"); continue; }
            Console.WriteLine($"Found {list.Count} records\n");
            ProcessData2(list, db.UpdateExamResultNote, delayPerRecordMs, batchSize, batchDelayMs);
        }
        else if (choice == "4")
        {
            Console.WriteLine("\n→ RIS_EXAMRESULTTEMPLATE...\n");
            var list = db.GetDataFromExamResultTemplate(ORG_ID);
            if (list.Count == 0) { Console.WriteLine("Not found data"); continue; }
            Console.WriteLine($"Found {list.Count} records\n");
            ProcessData(list, db.UpdateExamResultTemplate, delayPerRecordMs, batchSize, batchDelayMs);
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine($"\n[ERROR] {ex.Message}");
    }
}