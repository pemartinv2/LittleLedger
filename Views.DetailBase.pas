unit Views.DetailBase;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.WinXCtrls,
  Vcl.NumberBox,
  Vcl.ComCtrls;

type
  TDetailBase = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DescriptionEdit: TEdit;
    DateTimeEdit: TDateTimePicker;
    Label3: TLabel;
    AmountEdit: TNumberBox;
    RelativePanel1: TRelativePanel;
    OkButton: TButton;
    CancelButton: TButton;
  private
    function GetAmount: Currency;
    function GetDescription: string;
    function GetTransactionDate: TDateTime;
    procedure SetAmount(const Value: Currency);
    procedure SetDescription(const Value: string);
    procedure SetTransactionDate(const Value: TDateTime);
    { Private declarations }
  public
    { Public declarations }
    property TransactionDate: TDateTime read GetTransactionDate
      write SetTransactionDate;
    property Description: string read GetDescription write SetDescription;
    property Amount: Currency read GetAmount write SetAmount;
  end;

var
  DetailBase: TDetailBase;

implementation

{$R *.dfm}

{ TDetailBase }

function TDetailBase.GetAmount: Currency;
begin
  Result := AmountEdit.Value;
end;

function TDetailBase.GetDescription: string;
begin
  Result := DescriptionEdit.Text;
end;

function TDetailBase.GetTransactionDate: TDateTime;
begin
  Result := DateTimeEdit.DateTime;
end;

procedure TDetailBase.SetAmount(const Value: Currency);
begin
  AmountEdit.Value := Value;
end;

procedure TDetailBase.SetDescription(const Value: string);
begin
  DescriptionEdit.Text := Value;
end;

procedure TDetailBase.SetTransactionDate(const Value: TDateTime);
begin
  DateTimeEdit.DateTime := Value;
end;

end.
