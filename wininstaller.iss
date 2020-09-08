[Setup]
AppName=ddt4all
AppVersion=1.0
DefaultDirName={pf}\ddt4all
DefaultGroupName=ddt4all
SetupIconFile=icons\obd.ico
OutputBaseFilename=ddt4all-installer

[Files]
Source: "*.py"; DestDir: "{app}"
Source: "README.md"; DestDir: "{app}"
Source: "crcmod\*"; DestDir: "{app}\crcmod"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "Python27\*"; DestDir: "{app}\Python27"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "ddtplugins\*"; DestDir: "{app}\ddtplugins"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "icons\*"; DestDir: "{app}\icons"; Flags: ignoreversion recursesubdirs
Source: "json\*"; DestDir: "{app}\json"; Flags: ignoreversion recursesubdirs
Source: "importlib\*"; DestDir: "{app}\importlib"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "locale\*"; DestDir: "{app}\locale"; Flags: ignoreversion recursesubdirs
Source: "serial\*"; DestDir: "{app}\serial"; Flags: ignoreversion recursesubdirs; Excludes: "*.pyc"
Source: "DDT4ALL.BAT"; DestDir: "{app}"; AfterInstall: AfterMyProgInstall('{cm:AfterMyProgInstall}', ExpandConstant('{app}'))
; Uncheck the line below to package ecu db
; Source: "ecu.zip"; DestDir: "{app}";

[Code]
procedure AfterMyProgInstall(S: String; P: String);
begin
    MsgBox(S + P, mbInformation, MB_OK);
end;

[Dirs]
Name: "{app}"; Permissions: users-full
Name: "{app}\logs"; Permissions: users-full
Name: "{app}\json"; Permissions: users-full
Name: "{app}\vehicles"; Permissions: users-full

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}";GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Icons]
Name: "{group}\ddt4all"; Filename: "{app}\Python27\python.exe"; Parameters: """{app}\ddt4all.py"""; WorkingDir: "{app}"; IconFilename: "{app}\icons\obd.ico"
Name: "{userdesktop}\ddt4all"; Filename: "{app}\Python27\python.exe"; Parameters: """{app}\ddt4all.py"""; WorkingDir: "{app}"; IconFilename: "{app}\icons\obd.ico"; Tasks: desktopicon

[CustomMessages]
en.AfterMyProgInstall=Do not forget to install database to 
it.AfterMyProgInstall=Non dimenticare di installare il database in 
fr.AfterMyProgInstall=Pensez a installer une base de donnée dans
ru.AfterMyProgInstall=Не забудьте установить базу данных в

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"; 
Name: "de"; MessagesFile: "compiler:Languages\German.isl"; 
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"; 
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"; 
Name: "hu"; MessagesFile: "compiler:Languages\Hungarian.isl"; 
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"; 
Name: "nl"; MessagesFile: "compiler:Languages\Dutch.isl"; 
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl"; 
Name: "pt"; MessagesFile: "compiler:Languages\Portuguese.isl"; 
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"; 
Name: "sr"; MessagesFile: "compiler:Languages\SerbianLatin.isl"; 
