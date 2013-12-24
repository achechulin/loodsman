program TestLoodsman;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

{$R *.RES}

uses
  FastMM4 in '..\..\System\FastMM4.pas',
  FastMM4Messages in '..\..\System\FastMM4Messages.pas',
  ActiveX,
  ComObj,
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  TestConnection in 'TestConnection.pas',
  TestTypes in 'TestTypes.pas',
  TestResources in 'TestResources.pas',
  TestDataSet in 'TestDataSet.pas',
  TestConfig in 'TestConfig.pas';

begin
  ReportMemoryLeaksOnShutdown := True;
  OleCheck(CoInitializeSecurity(nil, -1, nil, nil, 1, 4, nil, 0, nil));
  Application.Initialize;
  if IsConsole then
    with TextTestRunner.RunRegisteredTests do
      Free
  else
    GUITestRunner.RunRegisteredTests;
end.

