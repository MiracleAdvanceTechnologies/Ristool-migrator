using Clifton.Tools.Xml;
using SerialPortLib;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;

namespace EnvisionTrigger
{
    public partial class DeviceInfo : Form
    {
        static string soh = char.ConvertFromUtf32(1);
        static string stx = char.ConvertFromUtf32(2);
        static string etx = char.ConvertFromUtf32(3);
        static string eot = char.ConvertFromUtf32(4);
        static string enq = char.ConvertFromUtf32(5);
        static string ack = char.ConvertFromUtf32(6);
        static string nack = char.ConvertFromUtf32(15);
        static string etb = char.ConvertFromUtf32(23);
        static string lf = char.ConvertFromUtf32(10);
        static string cr = char.ConvertFromUtf32(13);
        static string ready = char.ConvertFromUtf32(52);
        static string img = char.ConvertFromUtf32(47);
        static string zero = char.ConvertFromUtf32(30);
        static string one = char.ConvertFromUtf32(31);

        private static XmlDatabase _db;
        private static SerialPortInput serialPort;
        private static string done = "no";

        string OutPutResult = "";
        public DeviceInfo()
        {
            InitializeComponent();
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            ShowSettings();
           // ShowDeviceSettings();
        }

        private void ShowSettings()
        {
            string FilePath = Application.StartupPath + "\\Settings.xml";

            DataSet ds = new DataSet();
            DataTable dtable = new DataTable();
            // ds.ReadXml(Server.MapPath("~/XML/ProjectList.xml"));
            ds.ReadXml(FilePath);


            // DataView dvPrograms;
            // dvPrograms = ds.Tables[0].DefaultView;

            dtable = ds.Tables[0];
            textBox1.Text = (dtable.Rows[0]["PORT"].ToString());
            textBox2.Text = (dtable.Rows[0]["BAUD_RATE"].ToString());
            textBox3.Text = (dtable.Rows[0]["DATA_BIT"].ToString());
            textBox4.Text = (dtable.Rows[0]["PARITY"].ToString());
            textBox5.Text = (dtable.Rows[0]["STOP_BIT"].ToString());
        }

        private void ShowDeviceSettings()
        {
            try
            {
                // string path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + "\\Settings.xml";

                string path = Application.StartupPath + "\\Settings.xml";

                _db.FileName = path;
                _db.RootName = "Configurations";
                _db.Load();
                string[] fields;
                fields = new string[]
                {
                    "ID",
                    "PORT",
                    "BAUD_RATE",
                    "DATA_BIT",
                    "PARITY",
                    "STOP_BIT",
                    "NET_HOST",
                    "NET_PORT",
                    "REFRESH_TIME"
                };
                DataTable dt = _db.Query("Configuration", "@ID='1'", fields);
                string port = dt.Rows[0]["PORT"].ToString();
                string baud = dt.Rows[0]["BAUD_RATE"].ToString();
                string databit = dt.Rows[0]["DATA_BIT"].ToString();
                string parity = dt.Rows[0]["PARITY"].ToString();
                string stopbit = dt.Rows[0]["STOP_BIT"].ToString();

                textBox1.Text = port;
                textBox2.Text = baud;
                textBox3.Text = databit;
                textBox4.Text = parity;
                textBox5.Text = stopbit;

                //Console.WriteLine("NET HOST: " +netHost);
                //Console.WriteLine("NET PORT: " + dt.Rows[0]["PORT"].ToString());
               /* LogWriter.LogWrite("PORT NAME: " + dt.Rows[0]["PORT"].ToString());
                LogWriter.LogWrite("BAUD RATE: " + dt.Rows[0]["BAUD_RATE"].ToString());
                LogWriter.LogWrite("DATA BIT: " + dt.Rows[0]["DATA_BIT"].ToString());
                LogWriter.LogWrite("PARITY: " + dt.Rows[0]["PARITY"].ToString());
                LogWriter.LogWrite("STOP_BIT: " + dt.Rows[0]["STOP_BIT"].ToString()); */



               /* serialPort.SetPort(port,
                    int.Parse(baud),
                    (StopBits)Enum.Parse(typeof(StopBits), stopbit),
                    (Parity)Enum.Parse(typeof(Parity), parity)
                    );

                serialPort.Connect();
                Console.WriteLine("Running....");
                LogWriter.LogWrite("Service Running...."); */


            }
            catch (Exception err)
            {
                Console.WriteLine(err.ToString());
                LogWriter.LogWrite("Error : " + err.ToString());
            }  
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            SaveData();
        }

        private void SaveData()
        {
            string FilePath = Application.StartupPath + "\\AshimSettings.xml";
            // Create a new file in C:\\ dir
            XmlTextWriter textWriter = new XmlTextWriter(FilePath, null);
            // Opens the document
            textWriter.WriteStartDocument();
            // Write comments
            textWriter.WriteComment("First Comment XmlTextWriter Sample Example");
            textWriter.WriteComment("myXmlFile.xml in root dir");
            // Write first element
            textWriter.WriteStartElement("Student");
            textWriter.WriteStartElement("r", "RECORD", "urn:record");
            // Write next element
            textWriter.WriteStartElement("Name", "");
            textWriter.WriteString("Student PQR");
            textWriter.WriteEndElement();
            // Write one more element
            textWriter.WriteStartElement("Address", "");
            textWriter.WriteString("Colony STU");
            textWriter.WriteEndElement();
            // WriteChars
            char[] ch = new char[3];
            ch[0] = 'a';
            ch[1] = 'r';
            ch[2] = 'c';
            textWriter.WriteStartElement("Char XYZ");
            textWriter.WriteChars(ch, 0, ch.Length);
            textWriter.WriteEndElement();
            // Ends the document.
            textWriter.WriteEndDocument();
            // close writer
            textWriter.Close();
        }

        private void DeviceInfo_Load(object sender, EventArgs e)
        {
            serialPort = new SerialPortInput();
            serialPort.MessageReceived += SerialPort_MessageReceived;
            serialPort.ConnectionStatusChanged += SerialPort_ConnectionStatusChanged;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;

            listBox1.Items.Add("How are you");
        }


        private static void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            Exception err = (Exception)e.ExceptionObject;
            LogWriter.LogWrite("Error : " + err);
            return;

        }

        private static void SerialPort_ConnectionStatusChanged(object sender, ConnectionStatusChangedEventArgs args)
        {
            Console.WriteLine("Connected = {0}", args.Connected);
            LogWriter.LogWrite("Connected : " + args.Connected);
        }

        private static void SerialPort_MessageReceived(object sender, MessageReceivedEventArgs args)
        {
            //Thread.Sleep(100);
            try
            {
                byte[] bytesdata = args.Data;

                var readed_data = System.Text.Encoding.Default.GetString(bytesdata);
                Console.WriteLine("Trigger : " + readed_data);
                OutPutResult = ("Trigger : " + readed_data);

                //var str = readed_data;
                // ascii = Encoding.UTF8.GetBytes(str);
                //str = Encoding.UTF8.GetString(ascii);

                //byte[] bytes = System.Text.Encoding.Default.GetBytes(str);

                //var readed = System.Text.Encoding.Default.GetString(bytes);
                var readed = readed_data;


                Console.WriteLine("Received Command : " + readed);
                if ((readed.Trim() == "C") || (readed.Trim() == "C") || (readed == "C") || (readed == "        ") || (readed.Trim() == ""))
                {
                    var byte_ack = System.Text.Encoding.UTF8.GetBytes(ack);
                    bool flgack = serialPort.SendMessage(byte_ack);
                    LogWriter.LogWrite("Image Capture Responsed by ACK");
                    bool flgimg = false;
                    done = "yes";
                    if (flgack)
                    {
                        flgimg = serialPort.SendMessage(System.Text.Encoding.UTF8.GetBytes(stx + "G001" + etx));
                        LogWriter.LogWrite("Image Capture Responsed by IMGNO");
                    }
                    Thread.Sleep(100);
                    //if (flgimg)
                    //{
                    //    serialPort.SendMessage(System.Text.Encoding.UTF8.GetBytes(stx + ready + etx));
                    //    LogWriter.LogWrite("Image Capture Response by  Ready");
                    //}
                    ////Console.WriteLine("Image Capture Request Received");
                    //LogWriter.LogWrite("Image Capture Request Received");
                    //serialPort.SendMessage(System.Text.Encoding.UTF8.GetBytes(nack));
                    //LogWriter.LogWrite("sent nak2");
                    SendKeys.SendWait("%{C}");

                }

                //if ((readed.Trim() == "C") || (readed.Trim() == "C") || (readed == "C"))
                //{
                //    Console.WriteLine("Image Capture Request Sent");
                //    SendKeys.SendWait("^{C}");
                //}

                if (readed == "V1")
                {
                    var byte_ack = System.Text.Encoding.UTF8.GetBytes(ack);
                    serialPort.SendMessage(byte_ack);
                    Console.WriteLine("Video Start Request Sent");
                    LogWriter.LogWrite("Video Start Request Received");
                    SendKeys.SendWait("%{R}");

                }
                //SendKeys.SendWait("^{R}");
                //if ((readed.Trim() == "V1") || (readed.Trim() == "V0") || (readed == "V1") || (readed == "V0"))
                //{
                //    Console.WriteLine("Video Record Request Sent");
                //    SendKeys.SendWait("%{R}");
                //}

                if (readed == "V0")
                {
                    var byte_ack = System.Text.Encoding.UTF8.GetBytes(ack);
                    serialPort.SendMessage(byte_ack);
                    Console.WriteLine("Video Stop Request Sent");
                    LogWriter.LogWrite("Video Stop Request Received");
                    SendKeys.SendWait("%{S}");

                }

                if ((readed == "I") || (readed == "I") || (readed == "I"))
                {

                    var byte_ack = System.Text.Encoding.UTF8.GetBytes(ack);
                    serialPort.SendMessage(byte_ack);
                    string modeMsg = stx + "M0" + etx;
                    //serialPort.SendMessage(modeMsg);

                    Console.WriteLine("Sent Mode");
                    //Thread.Sleep(2000);
                    //sp.Write(patMsg);
                    //Console.WriteLine("Sent PatInfo");
                }

                if (readed == ack)
                {
                    if (done == "yes")
                    {
                        done = "no";
                        serialPort.SendMessage(System.Text.Encoding.UTF8.GetBytes(stx + "R" + etx));
                        LogWriter.LogWrite("Responsed By Ready MSG");
                    }
                }

                //System.Text.Encoding encoding = System.Text.Encoding.GetEncoding(874);
                //byte[] getBytesTest = encoding.GetBytes(str);
                //string getCharsTest = new string(encoding.GetChars(getBytesTest));
                //File.AppendAllText("d:\\endonext.txt", readed + "\r\n");

                //Console.WriteLine("Received Data = " + readed);


                //ACK();
                //Eval(str);


            }
            catch (Exception err)
            {
                Console.WriteLine(err.ToString());
                LogWriter.LogWrite("Error : " + err.ToString());
            }
            finally
            {
                Console.WriteLine("Continue...");
            }
        }
    }
}
