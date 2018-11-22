; Script generated by the Inno Setup Script Wizard.

#define AppName "Delta"
#define AppVersion "0.6.0"
#define AppPublisher "Project: Delta"
#define AppUrl "https://deltaproject.github.io"
#define AppExecutable "Delta.exe"

[Setup]
AppId={{B5D21F9C-9887-4E2E-9699-5EE1DC0F1C28}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppUrl}
AppSupportURL={#AppUrl}
AppUpdatesURL={#AppUrl}
DefaultDirName={localappdata}\{#AppName}
DisableDirPage=yes
DefaultGroupName={#AppName}
DisableProgramGroupPage=yes
OutputDir=output
OutputBaseFilename=DeltaSetup-{#AppVersion}
SetupIconFile=input\resources\app\img\icons\icon@64px.ico
Compression=lzma
SolidCompression=yes
PrivilegesRequired=lowest
DisableWelcomePage=no

[Languages]
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
; Source: "input\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExecutable}"; IconFilename: "{app}\resources\app\img\icons\icon@64px.ico"
Name: "{commondesktop}\{#AppName}"; Filename: "{app}\{#AppExecutable}"; IconFilename: "{app}\resources\app\img\icons\icon@64px.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExecutable}"; Description: "{cm:LaunchProgram,{#StringChange(AppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

