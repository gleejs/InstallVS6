$srvName="ServerName"
netsh advfirewall set allprofiles state off
$instDIR="\\$srvName\Deploymentshare$\Applications\VS6.0\Setup"
$dotProg="$instDIR\Setup\Acmsetup.exe"
$dotArgs=" /T $INSTDIR\Setup\Exact.stf /S $INSTDIR /n'Exact' /o'Exact' /qn1"
regedit /S $instDIR\key.dat
start-process $dotProg "$dotArgs" -wait
$instDIR="\\$srvName\Deploymentshare$\Applications\VS6.0"
$dotProg="$instDIR\sp6\acmsetup.exe"
$dotARGS=" /T $INSTDIR\sp6\sp698ent.stf /qn1"
start-process $dotProg "$dotArgs" -wait




New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force
