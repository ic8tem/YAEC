@echo off
setlocal
cd /d "%~dp0"
echo.
echo  YAEC - Yet Another EME Calc - build with the C# compiler included in Windows
echo.
set "CSC=%WINDIR%\Microsoft.NET\Framework64\v4.0.30319\csc.exe"
if not exist "%CSC%" set "CSC=%WINDIR%\Microsoft.NET\Framework\v4.0.30319\csc.exe"
if not exist "%CSC%" (
  echo  ERROR: csc.exe of .NET Framework 4 not found.
  echo  It is already present on Windows 10/11; on older systems install .NET Framework 4.8.
  pause
  exit /b 1
)
set "ICONA="
if exist "YAEC.ico" set "ICONA=/win32icon:YAEC.ico"
"%CSC%" /nologo /target:winexe /optimize+ /codepage:65001 /out:YAEC.exe /win32manifest:YAEC.manifest %ICONA% /r:System.dll /r:System.Drawing.dll /r:System.Windows.Forms.dll /r:System.Web.Extensions.dll /r:System.Security.dll /r:System.IO.Compression.dll /r:System.IO.Compression.FileSystem.dll YAEC.cs
if errorlevel 1 (
  echo.
  echo  BUILD ERROR: copy the messages above and send them to me.
  pause
  exit /b 1
)
echo.
echo  Done: YAEC.exe created in this folder.
echo.
echo  The manual is inside the program (Aiuto - MANUALE D'USO APPROFONDITO).
echo.
if exist "YAEC.iss" (
  echo  Optional: to build an installer, open YAEC.iss with Inno Setup ^(free, jrsoftware.org^) and press Compile.
  echo.
)
echo  Starting the program...
start "" "%~dp0YAEC.exe"
timeout /t 3 >nul
