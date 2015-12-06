program TREAD;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  { you can add units after this }
   frmMain, model, mediators, views, observer;
{$R *.res}

var
  MainForm : TMainForm;

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  MainForm := TMainForm.Create(nil);
  MainForm.Show;
  Application.Run;
end.

