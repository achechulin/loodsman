library Project2;

{$R 'PluginIcon.res' 'PluginIcon.rc'}
{$R *.res}
{$E pgi}

uses
  SysUtils,
  Windows,
  LoodsmanPlugin in 'LoodsmanPlugin.pas',
  PluginFunctions in 'PluginFunctions.pas',
  LinkedObjects in 'LinkedObjects.pas' {LinkedObjectsDialog},
  FindObjects in 'FindObjects.pas' {FindObjectsDialog};

exports InitUserDLLCom, PgiCheckMenuItemCom, ProjectList, LinkedFast, FindObj {, GetPluginInfo};

begin
end.
