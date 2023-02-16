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
  Details,
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
    DataId: TFDAutoIncField;
    TransactionDate: TDateTimeField;
    Description: TWideMemoField;
    LedgerDataAmount: TCurrencyField;
    TotalAmount: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure LedgerDataNewRecord(DataSet: TDataSet);
    procedure RefreshTotal(DataSet: TDataSet);
    procedure SQLiteConnBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure AddTransaction(const ADetail :TDetailFields);
    function GetCurrentTransaction: TDetailFields;
    procedure ModifyCurrentTransaction(const ADetailFields: TDetailFields);
  end;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses System.IOUtils, Vcl.Dialogs, System.UITypes;

procedure TLedgerModule.AddTransaction(const ADetail: TDetailFields);
begin
{  LedgerData.Insert;
  LedgerDataDESCRIPTION.AsString := Adetail.Descritpion;
  LedgerDataTRANSACTIONDATE.AsDateTime := Adetail.TransactionDate;
  LedgerDataAMOUNT.AsCurrency := ADetail.Amount;
  LedgerData.Post;}
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

function TLedgerModule.GetCurrentTransaction: TDetailFields;
begin
{  Result.Descritpion := LedgerDataDESCRIPTION.AsString;
  Result.TransactionDate := LedgerDataTRANSACTIONDATE.AsDateTime;
  Result.Amount := LedgerDataAMOUNT.AsCurrency;}
end;

procedure TLedgerModule.LedgerDataNewRecord(DataSet: TDataSet);
begin
//  LedgerDataTRANSACTIONDATE.AsDateTime := Now;
end;

procedure TLedgerModule.ModifyCurrentTransaction(
  const ADetailFields: TDetailFields);
begin
{  LedgerData.Edit;
  LedgerDataDESCRIPTION.AsString := ADetailFields.Descritpion;
  LedgerDataTRANSACTIONDATE.AsDateTime := ADetailFields.TransactionDate;
  LedgerDataAMOUNT.AsCurrency := ADetailFields.Amount;
  LedgerData.Post;}
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
