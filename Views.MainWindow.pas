unit Views.MainWindow;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Vcl.DBCGrids,
  Vcl.ExtCtrls,
  Data.Ledger,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  Vcl.Mask,
  Vcl.ComCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ButtonGroup,
  Vcl.CategoryButtons,
  Data.Bind.EngExt,
  Vcl.Bind.DBEngExt,
  Vcl.Bind.Grid,
  System.Rtti,
  System.Bindings.Outputs,
  Vcl.Bind.Editors,
  Data.Bind.Components,
  Data.Bind.Grid,
  Data.Bind.DBScope,
  Data.Bind.Controls,
  Vcl.Buttons,
  Vcl.Bind.Navigator,
  Vcl.Bind.ControlList,
  Vcl.ControlList;

type
  TMainWindow = class(TForm)
    CommandsPanel: TPanel;
    BottomPanel: TPanel;
    AddNewTransaction: TButton;
    TotalAmount: TLabel;
    TransactionList: TControlList;
    TransactionBinding: TBindingsList;
    TotalAmountSource: TBindSourceDB;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    Label1: TLabel;
    TransactionDateLabel: TLabel;
    Label2: TLabel;
    DescriptionLabel: TLabel;
    Label3: TLabel;
    AmountLabel: TLabel;
    LedgerDataSource: TBindSourceDB;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkPropertyToFieldCaption3: TLinkPropertyToField;
    LinkPropertyToFieldCaption4: TLinkPropertyToField;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    EditButton: TControlListButton;
    DeleteButton: TControlListButton;
    procedure AddNewTransactionClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LedgerModule: TLedgerModule;

    constructor Create(AOwner: TComponent); override;
  end;

var
  MainWindow: TMainWindow;

implementation

{$R *.dfm}

uses
  Views.Add, Views.EditForm, System.UITypes;


procedure TMainWindow.AddNewTransactionClick(Sender: TObject);
var
  LAddForm: TAddTransactionForm;
begin
  LAddForm := TAddTransactionForm.Create(Self);
  try
    if LAddForm.ShowModal = mrOk then
    begin
      LedgerModule.AddTransaction(LAddForm.TransactionDate,
        LAddForm.Description, LAddForm.Amount);
    end;
  finally
    LAddForm.Free;
  end;
end;

constructor TMainWindow.Create(AOwner: TComponent);
begin
  inherited;
  LedgerModule := TLedgerModule.Create(Self);
end;

procedure TMainWindow.DeleteButtonClick(Sender: TObject);
begin
  if MessageDlg('Are you sure to delete this entry?', TMsgDlgType.mtConfirmation,
    [mbYes,mbNo], 0) = mrYes then
  begin
    LedgerModule.LedgerData.Delete;
  end;
end;

procedure TMainWindow.EditButtonClick(Sender: TObject);
var
  LEditForm: TEditTransaction;
begin
  LEditForm := TEditTransaction.Create(Self);
  try
    LEditForm.Description := LedgerModule.DescriptionField.Value;
    LEditForm.TransactionDate := LedgerModule.DateField.Value;
    LEditForm.Amount := LedgerModule.AmountField.Value;

    if LEditForm.ShowModal = mrOK then
    begin
      LedgerModule.ModifyCurrentTransaction(LEditForm.TransactionDate,
        LEditForm.Description, LEditForm.Amount);
    end;
  finally
    LEditForm.Free;
  end;
end;

end.
