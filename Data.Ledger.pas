unit Data.Ledger;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util,
  FireDAC.Comp.Script,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLite;

type
  TLedgerModule = class(TDataModule)
    LedgerData: TFDQuery;
    TotalData: TFDQuery;
    DataSource1: TDataSource;
    SQLiteDriverLinq: TFDPhysSQLiteDriverLink;
    SQLiteConn: TFDConnection;
    SQLiteScripts: TFDScript;
    IDField: TFDAutoIncField;
    DateField: TDateTimeField;
    DescriptionField: TWideMemoField;
    AmountField: TCurrencyField;
    TotalAmount: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure RefreshTotal(DataSet: TDataSet);
    procedure SQLiteConnBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure AddTransaction(const ADate: TDateTime;
      const ADescription: string; const AAmount: Currency);
    procedure GetCurrentTransaction(var ADate: TDateTime;
      var ADescription: string; var AAmount: Currency);
    procedure ModifyCurrentTransaction(const ADate: TDateTime;
      const ADescription: string; const AAmount: Currency);
  end;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses System.IOUtils, Vcl.Dialogs, System.UITypes;

procedure TLedgerModule.AddTransaction(const ADate: TDateTime;
  const ADescription: string; const AAmount: Currency);
begin
  LedgerData.InsertRecord([nil, Adate, ADescription, AAmount]);
  LedgerData.Refresh;
end;

procedure TLedgerModule.DataModuleCreate(Sender: TObject);
begin
  try
    try
      LedgerData.Active := true;
    except
      on E: ESQLiteNativeException do
      begin
        // Try to create the table
        SQLiteScripts.ExecuteAll;
        LedgerData.Active := true;
      end;
    end;
    TotalData.Active := True;
  except on E: Exception do
    MessageDlg('Error opening the database: ' +
      E.Message , mtError, [mbOk], 0, mbOk);
  end;
end;

procedure TLedgerModule.GetCurrentTransaction(var ADate: TDateTime;
  var ADescription: string; var AAmount: Currency);
begin
  ADate := DateField.Value;
  ADescription := DescriptionField.Value;
  AAmount := AmountField.Value;
end;

procedure TLedgerModule.ModifyCurrentTransaction(const ADate: TDateTime;
  const ADescription: string; const AAmount: Currency);
begin
  LedgerData.Edit;
  DateField.Value := ADate;
  DescriptionField.Value := ADescription;
  AmountField.Value := AAmount;
  LedgerData.Post;
end;

procedure TLedgerModule.RefreshTotal(DataSet: TDataSet);
begin
  TotalData.Refresh;
end;

procedure TLedgerModule.SQLiteConnBeforeConnect(Sender: TObject);
var
  LDatabase: string;
begin
  LDatabase := TPath.Combine(TPath.GetDocumentsPath, 'LittleLedger.sdb');

  SQLiteConn.Params.Database := LDatabase;
end;

end.
