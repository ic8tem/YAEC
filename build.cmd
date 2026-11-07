@echo off
rem YAEC - compilazione non interattiva (usata da GitHub Actions; a mano usa compila.bat)
setlocal
cd /d "%~dp0"
set "CSC=%WINDIR%\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
if not exist "%CSC%" set "CSC=%WINDIR%\Microsoft.NET\Framework\v4.0.30319\csc.exe"
rem argomenti facoltativi: piattaforma (anycpu predefinita, x86 per la versione a 32 bit) e file di uscita
set "PIATT=%~1"
if "%PIATT%"=="" set "PIATT=anycpu"
set "USCITA=%~2"
if "%USCITA%"=="" set "USCITA=YAEC.exe"
"%CSC%" /nologo /target:winexe /optimize+ /platform:%PIATT% /codepage:65001 /out:"%USCITA%" /win32manifest:YAEC.manifest /win32icon:YAEC.ico /r:System.dll /r:System.Drawing.dll /r:System.Windows.Forms.dll /r:System.Web.Extensions.dll /r:System.Security.dll /r:System.IO.Compression.dll /r:System.IO.Compression.FileSystem.dll YAEC.cs
exit /b %errorlevel%
