program LittleLedger;

uses
  Vcl.Forms,
  Views.MainWindow in 'Views.MainWindow.pas' {MainWindow},
  Data.Ledger in 'Data.Ledger.pas' {LedgerModule: TDataModule};

{$R *.res}

begin
  {$ifdef DEBUG}
    ReportMemoryLeaksOnShutdown := true;
  {$endif}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainWindow, MainWindow);
  Application.Run;
end.
