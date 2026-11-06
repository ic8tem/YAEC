; YAEC - Yet Another EME Calc 1.0.1 - a cura di Costantino IC8TEM
; Script per Inno Setup (gratuito, https://jrsoftware.org). Su GitHub lo compila il flusso di lavoro
; .github/workflows/build.yml; a mano: dopo compila.bat aprilo con Inno Setup e premi Compile.
; I dati del programma restano nella sottocartella "data" accanto a YAEC.exe:
; per questo l'installazione va nella cartella dell'utente, dove si può scrivere.

#ifndef MyAppVersion
  #define MyAppVersion "1.2.1"
#endif

[Setup]
AppId={{8B762778-8818-488A-9AAD-441548593608}
AppName=YAEC - Yet Another EME Calc
AppVersion={#MyAppVersion}
AppVerName=YAEC - Yet Another EME Calc {#MyAppVersion}
AppPublisher=Costantino IC8TEM
AppPublisherURL=https://github.com/ic8tem/YAEC
AppSupportURL=https://www.qrz.com/db/ic8tem
DefaultDirName={userdocs}\YAEC
DefaultGroupName=YAEC
PrivilegesRequired=lowest
OutputDir=.
OutputBaseFilename=YAEC-{#MyAppVersion}-Setup
SetupIconFile=YAEC.ico
UninstallDisplayIcon={app}\YAEC.exe
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
LicenseFile=LICENZA.txt

[Languages]
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Dirs]
Name: "{app}\data"; Flags: uninsneveruninstall

[Files]
Source: "YAEC.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "YAEC.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "LICENZA.txt"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\YAEC - Yet Another EME Calc"; Filename: "{app}\YAEC.exe"
Name: "{group}\{cm:UninstallProgram,YAEC}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\YAEC"; Filename: "{app}\YAEC.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\YAEC.exe"; Description: "{cm:LaunchProgram,YAEC}"; Flags: nowait postinstall skipifsilent
