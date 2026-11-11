; YAEC - Yet Another EME Calc 1.0.1 - a cura di Costantino IC8TEM
; Script per Inno Setup (gratuito, https://jrsoftware.org). Su GitHub lo compila il flusso di lavoro
; .github/workflows/build.yml; a mano: dopo compila.bat aprilo con Inno Setup e premi Compile.
; I dati del programma restano nella sottocartella "data" accanto a YAEC.exe:
; per questo l'installazione va nella cartella dell'utente, dove si può scrivere.

#ifndef MyAppVersion
  #define MyAppVersion "1.8"
#endif
; versione a 32 bit: ISCC /DExeDir=x86 /DSuffisso=-32bit YAEC.iss
#ifndef ExeDir
  #define ExeDir "."
#endif
#ifndef Suffisso
  #define Suffisso ""
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
OutputBaseFilename=YAEC-{#MyAppVersion}-Setup{#Suffisso}
SetupIconFile=YAEC.ico
UninstallDisplayIcon={app}\YAEC.exe
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
LicenseFile=LICENZA.txt
ShowLanguageDialog=auto

[Languages]
; la licenza si mostra nella lingua di Windows quando l'installatore la conosce, altrimenti in inglese
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"; LicenseFile: "LICENZA.txt"
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "lingue\LICENSE_en.txt"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"; LicenseFile: "lingue\LICENSE_de.txt"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"; LicenseFile: "lingue\LICENSE_fr.txt"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"; LicenseFile: "lingue\LICENSE_es.txt"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"; LicenseFile: "lingue\LICENSE_pt.txt"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"; LicenseFile: "lingue\LICENSE_nl.txt"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"; LicenseFile: "lingue\LICENSE_nb.txt"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"; LicenseFile: "lingue\LICENSE_da.txt"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"; LicenseFile: "lingue\LICENSE_he.txt"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"; LicenseFile: "lingue\LICENSE_ja.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "lingue\LICENSE_ru.txt"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"; LicenseFile: "lingue\LICENSE_uk.txt"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"; LicenseFile: "lingue\LICENSE_tr.txt"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Dirs]
Name: "{app}\data"; Flags: uninsneveruninstall

[Files]
Source: "{#ExeDir}\YAEC.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "YAEC.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.txt"; DestDir: "{app}"; Flags: ignoreversion isreadme
Source: "LICENZA.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "lingue\*.txt"; DestDir: "{app}\lingue"; Flags: ignoreversion

[Icons]
Name: "{group}\YAEC - Yet Another EME Calc"; Filename: "{app}\YAEC.exe"
Name: "{group}\{cm:UninstallProgram,YAEC}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\YAEC"; Filename: "{app}\YAEC.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\YAEC.exe"; Description: "{cm:LaunchProgram,YAEC}"; Flags: nowait postinstall skipifsilent
