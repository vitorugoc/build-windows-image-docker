Installing 'C:\Users\CONTAI~1\AppData\Local\Temp\ndp48-x86-x64-allos-enu.exe' - this may take awhile with no output.
.NET Framework 4.8 was installed, but a reboot is required. 
 Please reboot the system and try to install/upgrade Chocolatey again.
At C:\Users\ContainerAdministrator\AppData\Local\Temp\chocolatey\chocoInstall\t
ools\chocolateysetup.psm1:815 char:11
+           throw ".NET Framework 4.8 was installed, but a reboot is re ...
+           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : OperationStopped: (.NET Framework ...ocolatey ag 
   ain.:String) [], RuntimeException
    + FullyQualifiedErrorId : .NET Framework 4.8 was installed, but a reboot i 
   s required. 
 Please reboot the system and try to install/upgrade Chocolatey again.
 
The command 'cmd /S /C powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"' returned a non-zero code: 1
