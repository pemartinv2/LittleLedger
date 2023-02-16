unit View.AddTransaction;

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
  View.DetailBase,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.WinXCtrls,
  Vcl.NumberBox,
  Vcl.WinXPickers;

type
  TAddTransactionForm = class(TDetailForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TAddTransactionForm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption := 'Add new transaction';
end;

end.
