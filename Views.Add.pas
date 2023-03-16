unit Views.Add;

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
  Views.DetailBase,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.WinXCtrls,
  Vcl.NumberBox,
  Vcl.ComCtrls;

type
  TAddTransactionForm = class(TDetailBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddTransactionForm: TAddTransactionForm;

implementation

{$R *.dfm}

procedure TAddTransactionForm.FormCreate(Sender: TObject);
begin
  inherited;
  TransactionDate := Now;
end;

end.
