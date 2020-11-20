Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
reg add HKLM\SOFTWARE\Microsoft\.NETFramework\v4.0.30319 /v SchUseStrongCrypto /t REG_DWORD /d 1 /reg:64
reg add HKLM\SOFTWARE\Microsoft\.NETFramework\v4.0.30319 /v SchUseStrongCrypto /t REG_DWORD /d 1 /reg:32
Install-PackageProvider chocolatey
Set-PackageSource -name chocolatey -trusted
set string $message
$name = Read-host -Prompt 'Nom du Logiciel'
$message = Find-Package -Name *$name* -Source chocolatey
Write-Host $message.name
#Install-Package -Name adobereader,GoogleChrome,Firefox,office2019proplus, -Source chocolatey

