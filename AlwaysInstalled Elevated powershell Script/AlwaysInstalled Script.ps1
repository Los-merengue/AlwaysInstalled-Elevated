$RegistryPath = "HKCU:\Software\Policies\Microsoft\Windows\Installer"
$Parent_Registry = "HKCU:\Software\Policies\Microsoft\Windows"
$Name = "Installer"
$Key_Name = "AlwaysInstallElevated"
$Value = 0x1
if (!(Test-Path $RegistryPath)){
    New-Item -Path $Parent_Registry -Name $Name -Force
    New-ItemProperty -Path $RegistryPath -Name $Key_Name -PropertyType Dword -Value $Value -Force}
else{
    New-ItemProperty -Path $RegistryPath -Name $Key_Name -PropertyType Dword -Value $Value -Force
}
