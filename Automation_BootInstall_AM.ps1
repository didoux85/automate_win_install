Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
#Add Crypto pour installer Chocolateyr
reg add HKLM\SOFTWARE\Microsoft\.NETFramework\v4.0.30319 /v SchUseStrongCrypto /t REG_DWORD /d 1 /reg:64
reg add HKLM\SOFTWARE\Microsoft\.NETFramework\v4.0.30319 /v SchUseStrongCrypto /t REG_DWORD /d 1 /reg:32
#Install package Chocolatey
Install-PackageProvider chocolatey
#Ajout de la source Chocolatey
Set-PackageSource -name chocolatey -trusted
set string $message
#Recherche package pour installaton
$name = Read-host -Prompt 'Nom du Logiciel'
$cPackage = Find-Package -Name *$name* -Source chocolatey
#Retour du resultat
Write-Host $cPackage.name
#Installation de paquet par défaut
Install-Package -Name adobereader,GoogleChrome,Firefox,office2019proplus,7zip,malwarebytes,ccleaner -Source chocolatey
