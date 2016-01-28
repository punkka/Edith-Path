; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppVersion "2.0.0-alpha"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{58462437-D461-42CD-BB81-F3A5EC42E37A}

AppName=Edith Path
AppVersion={#MyAppVersion}

AppPublisher=punkka
DefaultDirName={pf}\Edith Path
DisableDirPage=yes
DefaultGroupName=Edith Path
DisableProgramGroupPage=yes
LicenseFile=..\..\..\LICENSE
OutputDir=..\..\install
OutputBaseFilename=Edith_Path_ia32_setup_{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\..\release\Edith-path-win32-ia32\Edith-path.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\d3dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\libGLESv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\msvcr120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\msvcp120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\node.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\vccorlib120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\xinput1_3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\icudtl.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\natives_blob.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\snapshot_blob.bin"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\content_resources_200_percent.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\content_shell.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\ui_resources_200_percent.pak"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\bin\edith-path.exe"; DestDir: "{app}\bin\"; Flags: ignoreversion
Source: "..\..\bin\edith-path.exe.manifest"; DestDir: "{app}\bin\"; Flags: ignoreversion
Source: "..\..\release\Edith-path-win32-ia32\resources\*"; Excludes: "release.js"; DestDir: "{app}\resources\"; Flags: ignoreversion recursesubdirs
Source: "..\..\release\Edith-path-win32-ia32\locales\*"; DestDir: "{app}\locales\"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Edith Path"; Filename: "{app}\Edith-Path.exe"
Name: "{commondesktop}\Edith Path"; Filename: "{app}\Edith-Path.exe"; Tasks: desktopicon

[Registry]
Root: HKCR; Subkey: "Directory\shell\Add to Path"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "Directory\shell\Add to Path\command"; Flags: uninsdeletekey; ValueType: string; ValueName: ""; ValueData: "{app}\Edith-Path.exe %1"
Root: HKCR; Subkey: "Directory\Background\shell\Add to Path"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "Directory\Background\shell\Add to Path\command"; Flags: uninsdeletekey; ValueType: string; ValueName: ""; ValueData: "{app}\Edith-Path.exe %V"
