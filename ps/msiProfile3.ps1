#msiProfile.ps1 -Profile1
#UAC must be disabled
#Opens minimized MSI Afterburner in tray
$Parms="-m -Profile3"
$Command = "C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe"
$Prms=$Parms.Split()
&"$Command"$Prms