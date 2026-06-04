using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Net.Sockets;
using System.IO.Ports;
using SerialPortLib;
using System.Threading;
using Clifton.Tools.Xml;
using System.IO;
using System.Windows.Forms;
using System.Reflection;

namespace EnvisionTrigger
{
    public partial class Service1 : ServiceBase
    {
        static string soh = char.ConvertFromUtf32(1);
        static string stx = char.ConvertFromUtf32(2);
        static string etx = char.ConvertFromUtf32(3);
        static string eot = char.ConvertFromUtf32(4);
        static string enq = char.ConvertFromUtf32(5);
        static string ack = char.ConvertFromUtf32(6);
        static string nack = char.ConvertFromUtf32(21);
        static string etb = char.ConvertFromUtf32(23);
        static string lf = char.ConvertFromUtf32(10);
        static string cr = char.ConvertFromUtf32(13);
        
        SerialPortInput serialPort;
        XmlDatabase _db;
        
        public Service1()
        {
            InitializeComponent();
                      
            _db = new XmlDatabase();
            serialPort = new SerialPortInput();
            serialPort.MessageReceived += SerialPort_MessageReceived;
            serialPort.ConnectionStatusChanged += SerialPort_ConnectionStatusChanged;
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
        }

        protected override void OnStart(string[] args)
        {
            StartService();
        }

        protected override void OnStop()
        {
            serialPort.Disconnect();           
        }

        private void EnvisionSendKey()
        {
            string m_exePath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            LogWriter.LogWrite(m_exePath + "\\EnvisionSendKeys.exe");
            ProcessStartInfo myProcessStartInfo = new ProcessStartInfo(m_exePath+ "\\EnvisionSendKeys.exe");
           // myProcessStartInfo.WindowStyle = ProcessWindowStyle.Hidden;
            //myProcessStartInfo.CreateNoWindow = true;
            // make sure we can read the output from stdout 
            myProcessStartInfo.UseShellExecute = false;
            myProcessStartInfo.RedirectStandardOutput = true;

            // start python app with 3 arguments  
            // 1st arguments is pointer to itself,  
            // 2nd and 3rd are actual arguments we want to send 
            myProcessStartInfo.Arguments = "c";

            Process myProcess = new Process();
            // assign start information to the process 
            myProcess.StartInfo = myProcessStartInfo;

            Console.WriteLine("Calling script with arguments");

            // start the process 
            myProcess.Start();

            StreamReader myStreamReader = myProcess.StandardOutput;
            string myString = myStreamReader.ReadLine();

            /*if you need to read multiple lines, you might use: 
                string myString = myStreamReader.ReadToEnd() */

            // wait exit signal from the app we called and then close it. 
            myProcess.WaitForExit();
            myProcess.Close();

        }

        private void StartService()
        {
            try
            {
                string path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)+"\\Settings.xml";

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

                //Console.WriteLine("NET HOST: " +netHost);
                //Console.WriteLine("NET PORT: " + dt.Rows[0]["PORT"].ToString());
                LogWriter.LogWrite("PORT NAME: " + dt.Rows[0]["PORT"].ToString());
                LogWriter.LogWrite("BAUD RATE: " + dt.Rows[0]["BAUD_RATE"].ToString());
                LogWriter.LogWrite("DATA BIT: " + dt.Rows[0]["DATA_BIT"].ToString());
                LogWriter.LogWrite("PARITY: " + dt.Rows[0]["PARITY"].ToString());
                LogWriter.LogWrite("STOP_BIT: " + dt.Rows[0]["STOP_BIT"].ToString());



                serialPort.SetPort(port,
                    int.Parse(baud),
                    (StopBits)Enum.Parse(typeof(StopBits), stopbit),
                    (Parity)Enum.Parse(typeof(Parity), parity)
                    );

                serialPort.Connect();
                Console.WriteLine("Running....");
                LogWriter.LogWrite("Service Running....");               


            }
            catch (Exception err)
            {
                Console.WriteLine(err.ToString());
                LogWriter.LogWrite("Error : "+err.ToString());
            }
        }

        private void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            Exception err = (Exception)e.ExceptionObject;
            LogWriter.LogWrite("Error : "+err);
            return;

        }

        private void SerialPort_ConnectionStatusChanged(object sender, ConnectionStatusChangedEventArgs args)
        {
            Console.WriteLine("Connected = {0}", args.Connected);
            LogWriter.LogWrite("Connected : "+ args.Connected);
        }

        private void SerialPort_MessageReceived(object sender, MessageReceivedEventArgs args)
        {
            //Thread.Sleep(100);
            try
            {
                byte[] bytesdata = args.Data;

                var readed_data = System.Text.Encoding.Default.GetString(bytesdata);
                Console.WriteLine("Trigger : " + readed_data);
                LogWriter.LogWrite("Trigger : " + readed_data);

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
                    serialPort.SendMessage(byte_ack);
                    Console.WriteLine("Image Capture Request Received");
                    LogWriter.LogWrite("Image Capture Request Received");
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

                if (readed == "")
                {
                    Console.WriteLine("Patient Request");
                    string patMsg = stx + "P000000000000000M1988-10-050000000000000000000100000000000000000002Endoscopy00000000000comment0000000000000                 0" + etx;
                    //serialPort.SendMessage(patMsg);
                    Console.WriteLine("Sent PatInfo");
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
