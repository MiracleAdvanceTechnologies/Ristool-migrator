using System;
using System.IO;
using System.Reflection;


public static class LogWriter
{
    private static string m_exePath = string.Empty;
   
    public static void LogWrite(string logMessage)
    {
        m_exePath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
        string log_file = m_exePath+"\\log\\"+DateTime.Now.Year + "" + DateTime.Now.Month + "" + DateTime.Now.Day + "_log.txt";
        if (!File.Exists(log_file))
        {
            using (StreamWriter sw = File.CreateText(log_file))
            {
                sw.WriteLine("Log File Created");
            }
        }
        try
        {
            using (StreamWriter w = File.AppendText(log_file))
            {
                Log(logMessage, w);
            }
        }
        catch (Exception ex)
        {
        }
    }

    public static void Log(string logMessage, StreamWriter txtWriter)
    {
        try
        {
            txtWriter.Write("\r\nLog Entry : ");
            txtWriter.WriteLine("{0} {1}", DateTime.Now.ToLongTimeString(),
                DateTime.Now.ToLongDateString());
            txtWriter.WriteLine("  :");
            txtWriter.WriteLine("  :{0}", logMessage);
            txtWriter.WriteLine("-------------------------------");
        }
        catch (Exception ex)
        {
        }
    }
}