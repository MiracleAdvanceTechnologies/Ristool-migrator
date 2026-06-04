using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Linq;
using System.ServiceProcess;
using System.Threading.Tasks;

namespace EnvisionTrigger
{
    [RunInstaller(true)]
    public partial class Installer1 : System.Configuration.Install.Installer
    {
        public Installer1()
        {
            InitializeComponent();
            //ServiceInstaller si = new ServiceInstaller();
            //ServiceProcessInstaller spi = new ServiceProcessInstaller();

            //si.ServiceName = "EnvisionTrigger1"; // this must match the ServiceName specified in WindowsService1.
            //si.DisplayName = "Envision Next Trigger"; // this will be displayed in the Services Manager.
            //si.Description = "Receives Endoscopy Trigger Commands from Modalities.";
            //si.StartType = System.ServiceProcess.ServiceStartMode.Automatic;

            //this.Installers.Add(si);

            //spi.Account = System.ServiceProcess.ServiceAccount.LocalSystem; // run under the system account.

            //spi.Password = null;
            //spi.Username = null;
            //this.Installers.Add(spi);
            this.AfterInstall += new InstallEventHandler(Installer1_AfterInstall);
        }

        void Installer1_AfterInstall(object sender, InstallEventArgs e)
        {
            string path = System.Reflection.Assembly.GetExecutingAssembly().Location;

            //path = path.Replace("EnvisionDicomRouterService.exe", @"ConfigGUI\EnvisionRouter.exe");
            System.Diagnostics.Process.Start(path);
        }
    }
}
