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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetupMainScreen;
  public
    { Public declarations }
    LedgerModule: TLedgerModule;

    constructor Create(AOwner: TComponent); override;
  end;

var
  MainWindow: TMainWindow;

implementation

{$R *.dfm}


constructor TMainWindow.Create(AOwner: TComponent);
begin
  inherited;
  LedgerModule := TLedgerModule.Create(Self);
end;

procedure TMainWindow.FormCreate(Sender: TObject);
begin
  SetupMainScreen;
end;

procedure TMainWindow.SetupMainScreen;
begin

end;

end.
