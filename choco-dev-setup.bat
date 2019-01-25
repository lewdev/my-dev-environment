@echo off
:: Open "Command Prompt" as Administrator

:: Copy-paste into commandline one by one or run this script

:: Installs chocolately
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"


:: "-y" automatically confirms "yes" to all
choco install jdk8 -y
choco install googlechrome -y
choco install nodejs -y
choco install yarn -y
choco install visualstudiocode -y
choco install vlc -y
choco install notepadplusplus -y
choco install git -y
choco install 7zip -y
choco install winscp -y
choco install sumatrapdf -y
choco install irfanview -y
choco install unxutils -y
choco install foobar2000 -y
 
:: For reference, updates all packages
::cup all -y
