using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using System.Linq;       
using System.Threading;   

namespace RisTool;

public class tranPk1
{
    public string Key { get; set; } = "";
    public string HTML_TEXT    { get; set; } = "";
}

public class tranPk2
{
    public string Key1 { get; set; } = "";
    public string Key2 { get; set; } = "";
    public string HTML_TEXT { get; set; } = "";
}

//public class IsActiveRecord
//{
//    public string KEY_VALUE { get; set; } = "";
//    public string KEY_VALUE2 { get; set; } = "";
//    public string CHANGE { get; set; } = "";
//}


public class DatabaseHelper
{
    private readonly string _connectionString;

    public DatabaseHelper(string connectionString)
    {
        _connectionString = connectionString;
    }

    // ── RIS_EXAMRESULT ──
    public List<tranPk1> GetDataFromExamResult(int orgId)
    {
        var list = new List<tranPk1>();

        using var conn = new SqlConnection(_connectionString);
        conn.Open();

        string sql = @"
            SELECT ACCESSION_NO, RESULT_TEXT_HTML
            FROM RIS_EXAMRESULT
            WHERE ORG_ID = @ORG_ID AND RESULT_TEXT_JSON IS NULL";

        using var cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@ORG_ID", orgId);

        using var reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            list.Add(new tranPk1
            {
                Key = reader["ACCESSION_NO"]?.ToString()        ?? "",
                HTML_TEXT    = reader["RESULT_TEXT_HTML"]?.ToString() ?? ""
            });
        }

        return list;
    }

    public int UpdateExamResult(string key, string jsonText)
    {
        using var conn = new SqlConnection(_connectionString);
        conn.Open();

        string sql = @"
            UPDATE RIS_EXAMRESULT
            SET RESULT_TEXT_JSON = @json
            WHERE ACCESSION_NO = @accessionNo";

        using var cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@json",        jsonText);
        cmd.Parameters.AddWithValue("@accessionNo", key);

        return cmd.ExecuteNonQuery();
    }

    // ── RIS_EXAMRESULTNOTE ──
    public List<tranPk2> GetDataFromExamResultNote(int orgId)
    {
        var list = new List<tranPk2>();

        using var conn = new SqlConnection(_connectionString);
        conn.Open();

        string sql = @"
            SELECT ACCESSION_NO, NOTE_TEXT_HTML,NOTE_NO
            FROM RIS_EXAMRESULTNOTE
            WHERE ORG_ID = @ORG_ID AND NOTE_TEXT_JSON IS NULL";

        using var cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@ORG_ID", orgId);

        using var reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            list.Add(new tranPk2
            {
                Key1 = reader["ACCESSION_NO"]?.ToString()   ?? "",
                Key2 = reader["NOTE_NO"]?.ToString() ?? "",
                HTML_TEXT    = reader["NOTE_TEXT_HTML"]?.ToString() ?? ""
            });
        }

        return list;
    }

    public int UpdateExamResultNote(string key,string key2, string jsonText)
    {
        using var conn = new SqlConnection(_connectionString);
        conn.Open();

        string sql = @"
            UPDATE RIS_EXAMRESULTNOTE
            SET NOTE_TEXT_JSON = @json
            WHERE ACCESSION_NO = @accessionNo AND NOTE_NO = @noteNo";

        using var cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@json",        jsonText);
        cmd.Parameters.AddWithValue("@accessionNo", key);
        cmd.Parameters.AddWithValue("@noteNo", key2);

        return cmd.ExecuteNonQuery();
    }

    // ── RIS_EXAMRESULTTEMPLATE ──
    public List<tranPk1> GetDataFromExamResultTemplate(int orgId)
    {
        var list = new List<tranPk1>();

        using var conn = new SqlConnection(_connectionString);
        conn.Open();

        string sql = @"
            SELECT TEMPLATE_ID, TEMPLATE_TEXT_HTML
            FROM RIS_EXAMRESULTTEMPLATE
            WHERE ORG_ID = @ORG_ID AND TEMPLATE_TEXT_JSON IS NULL";

        using var cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@ORG_ID", orgId);

        using var reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            list.Add(new tranPk1
            {
                Key = reader["TEMPLATE_ID"]?.ToString() ?? "",
                HTML_TEXT = reader["TEMPLATE_TEXT_HTML"]?.ToString() ?? ""
            });
        }

        return list;
    }

    public int UpdateExamResultTemplate(string key, string jsonText)
    {
        using var conn = new SqlConnection(_connectionString);
        conn.Open();

        string sql = @"
            UPDATE RIS_EXAMRESULTTEMPLATE
            SET TEMPLATE_TEXT_JSON = @json
            WHERE TEMPLATE_ID = @templateId";

        using var cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@json", jsonText);
        cmd.Parameters.AddWithValue("@templateId", key);

        return cmd.ExecuteNonQuery();
    }

    //public List<IsActiveRecord> GetIsActiveRecords(string tableName, string keyColumn, int orgId ,string changeColumn)
    //{
    //    var list = new List<IsActiveRecord>();

    //    using var conn = new SqlConnection(_connectionString);
    //    conn.Open();

    //    string sql = $"SELECT [{keyColumn}], [{changeColumn}] FROM [{tableName}] WHERE ORG_ID = @ORG_ID";

    //    using var cmd = new SqlCommand(sql, conn);
    //    cmd.Parameters.AddWithValue("@ORG_ID", orgId);

    //    using var reader = cmd.ExecuteReader();
    //    while (reader.Read())
    //    {
    //        list.Add(new IsActiveRecord
    //        {
    //            KEY_VALUE = reader[keyColumn]?.ToString() ?? "",
    //            CHANGE = reader[changeColumn]?.ToString() ?? ""
    //        });
    //    }

    //    return list;
    //}

    //public List<IsActiveRecord> GetIsActiveRecords(
    //string tableName,
    //string keyColumn,
    //string? keyColumn2,
    //int orgId,
    //string changeColumn)
    //{
    //    var list = new List<IsActiveRecord>();

    //    using var conn = new SqlConnection(_connectionString);
    //    conn.Open();

    //    string selectCols = string.IsNullOrEmpty(keyColumn2)
    //        ? $"[{keyColumn}], [{changeColumn}]"
    //        : $"[{keyColumn}], [{keyColumn2}], [{changeColumn}]";

    //    string sql = $@"
    //    SELECT {selectCols}
    //    FROM [{tableName}]
    //    WHERE ORG_ID = @ORG_ID
    //    AND [{changeColumn}] NOT IN ('Y', 'N')
    //    AND [{changeColumn}] IS NOT NULL";

    //    using var cmd = new SqlCommand(sql, conn);
    //    cmd.Parameters.AddWithValue("@ORG_ID", orgId);

    //    using var reader = cmd.ExecuteReader();
    //    while (reader.Read())
    //    {
    //        list.Add(new IsActiveRecord
    //        {
    //            KEY_VALUE = reader[keyColumn]?.ToString() ?? "",
    //            KEY_VALUE2 = string.IsNullOrEmpty(keyColumn2) ? "" : reader[keyColumn2]?.ToString() ?? "",
    //            CHANGE = reader[changeColumn]?.ToString() ?? ""
    //        });
    //    }

    //    return list;
    //}

    //public int UpdateIsActive(string tableName, string keyColumn, string keyValue, string newValue , string changeColumn)
    //{
    //    using var conn = new SqlConnection(_connectionString);
    //    conn.Open();

    //    string sql = $"UPDATE [{tableName}] SET [{changeColumn}] = @newValue WHERE [{keyColumn}] = @keyValue";

    //    using var cmd = new SqlCommand(sql, conn);
    //    cmd.Parameters.AddWithValue("@newValue", newValue);
    //    cmd.Parameters.AddWithValue("@keyValue", keyValue);

    //    return cmd.ExecuteNonQuery();
    //}

    public int UpdateIsActive(string tableName, string changeColumn, string newValue)
    {
        using var conn = new SqlConnection(_connectionString);
        conn.Open();

        string sql = $"UPDATE [{tableName}] SET [{changeColumn}] = @newValue";

        using var cmd = new SqlCommand(sql, conn);
        cmd.Parameters.AddWithValue("@newValue", newValue);

        return cmd.ExecuteNonQuery();
    }

    //public void ConvertIsActive(string tableName, string changeColumn)
    //{
    //    using var conn = new SqlConnection(_connectionString);
    //    conn.Open();

    //    string sql = $@"
    //    UPDATE [{tableName}] SET [{changeColumn}] = 'N' WHERE [{changeColumn}] = '0';
    //    UPDATE [{tableName}] SET [{changeColumn}] = 'Y' WHERE [{changeColumn}] = '1';";

    //    using var cmd = new SqlCommand(sql, conn);
    //    cmd.ExecuteNonQuery();
    //}

    public (int success, int skipped, int fail) ConvertIsActive(
      string tableName,
      string[] keyColumns,
      string changeColumn,
      int orgId,
      int delayMs,
      int delayperrecord,
      int delayMsper)
    {
        int success = 0, skipped = 0, fail = 0, i = 1, count = 0;
        string selectCols = string.Join(", ", keyColumns.Select(k => $"[{k}]"));
        string sqlSelect = $@"
        SELECT {selectCols}, [{changeColumn}]
        FROM [{tableName}]
        WHERE ORG_ID = @ORG_ID
        AND [{changeColumn}] NOT IN ('Y', 'N')
        AND [{changeColumn}] IS NOT NULL";

        //using var cmdSelect = new SqlCommand(sqlSelect, conn);
        //cmdSelect.Parameters.AddWithValue("@ORG_ID", orgId);

        //var rows = new List<(string[] keys, string val)>();
        //using (var conn = new SqlConnection(_connectionString))
        //{
        //    conn.Open();
        //    using var cmdSelect = new SqlCommand(sqlSelect, conn);
        //    cmdSelect.Parameters.AddWithValue("@ORG_ID", orgId);
        //    using var reader = cmdSelect.ExecuteReader();
        //    while (reader.Read())
        //    {
        //        rows.Add((
        //            keyColumns.Select(k => reader[k]?.ToString() ?? "").ToArray(),
        //            reader[changeColumn]?.ToString() ?? ""
        //        ));
        //    }
        //}

        var rows = new List<(string[] keys, string val)>();
        using (var conn = new SqlConnection(_connectionString))
        {
            conn.Open();
            using (var cmdSelect = new SqlCommand(sqlSelect, conn))
            {
                cmdSelect.Parameters.AddWithValue("@ORG_ID", orgId);
                using (var reader = cmdSelect.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        rows.Add((
                            keyColumns.Select(k => reader[k]?.ToString() ?? "").ToArray(),
                            reader[changeColumn]?.ToString() ?? ""
                        ));
                    }
                }
            }
        }

        foreach (var row in rows)
        {
            count++;
            string keyDisplay = string.Join(" | ", row.keys);
            if (row.val == "0" || row.val == "1")
            {
                string newVal = row.val == "1" ? "Y" : "N";

                string whereClause = string.Join(" AND ",
                    keyColumns.Select((k, idx) => $"[{k}] = @key{idx}"));

                string sqlUpdate = $@"
                UPDATE [{tableName}]
                SET [{changeColumn}] = @newVal
                WHERE {whereClause} AND ORG_ID = @ORG_ID";

                using (var conn = new SqlConnection(_connectionString))
                {
                    conn.Open();
                    using (var cmdUpdate = new SqlCommand(sqlUpdate, conn))
                    {
                        cmdUpdate.Parameters.AddWithValue("@newVal", newVal);
                        for (int idx = 0; idx < keyColumns.Length; idx++)
                            cmdUpdate.Parameters.AddWithValue($"@key{idx}", row.keys[idx]);
                        cmdUpdate.Parameters.AddWithValue("@ORG_ID", orgId);
                        cmdUpdate.ExecuteNonQuery();
                    }
                }

                Console.WriteLine($"{i++} : {keyDisplay} → Success ({row.val} → {newVal})");
                success++;
            }
            else
            {
                Console.WriteLine($"{i++} : {keyDisplay} → Fail (value = '{row.val}')");
                fail++;
            }

            if (delayMs > 0) Thread.Sleep(delayMs);


            if (delayperrecord > 0 && count % delayperrecord == 0)
            {
                Console.WriteLine($"  Sleep {delayMsper} ms after {delayperrecord} records");
                Thread.Sleep(delayMsper);
            }
        }
        if (success != 0 && fail != 0)
        {
            Console.WriteLine($"\n=== Summary ===");
            Console.WriteLine($"Success : {success}");
            Console.WriteLine($"Fail    : {fail}");
        }
        else { 
            Console.WriteLine("\nColunm is Already Y And N");
        
        }
            // ดูค่าจริงใน DB
            //var debugAll = new List<(string[] keys, string val)>();
            //string sqlDebug = $@"
            //SELECT {selectCols}, [{changeColumn}]
            //FROM [{tableName}]
            //WHERE ORG_ID = @ORG_ID";

            //using var cmdDebug = new SqlCommand(sqlDebug, conn);
            //cmdDebug.Parameters.AddWithValue("@ORG_ID", orgId);
            //using (var reader2 = cmdDebug.ExecuteReader())
            //{
            //    while (reader2.Read())
            //    {
            //        Console.WriteLine($"  RAW: key={reader2[keyColumns[0]]} | val='{reader2[changeColumn]}'");
            //    }
            //}
            return (success, skipped, fail);
    }
}
