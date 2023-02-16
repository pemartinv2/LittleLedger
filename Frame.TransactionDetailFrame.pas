unit Frame.TransactionDetailFrame;

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
  Vcl.WinXCalendars;

type
  TTransactionDetail = record
    Description: string;
    TransactionDate: TDateTime;
    Amount: Currency;
  end;

  TTransactionDetailFrame = class(TFrame)
    Label1: TLabel;
    DescriptionEdit: TEdit;
    Label2: TLabel;
    DateEdit: TCalendarPicker;
    Label3: TLabel;
    AmountEdit: TNumberBox;
    RelativePanel1: TRelativePanel;
    CancelButton: TButton;
    Button1: TButton;
  private
    { Private declarations }
    FTransactionDetail: TTransactionDetail;
    function GetTransactionDetail: TTransactionDetail;
    procedure SetTransactionDetail(const Value: TTransactionDetail);
    procedure SetupFields;
    procedure GetFields;
  public
    { Public declarations }
    property TransactionDetail: TTransactionDetail read GetTransactionDetail
      write SetTransactionDetail;
  end;

implementation

{$R *.dfm}

{ TTransactionDetailFrame }

procedure TTransactionDetailFrame.GetFields;
begin
  FTransactionDetail.Description:= DescriptionEdit.Text;
  FTransactionDetail.TransactionDate:= DateEdit.Date;
  FTransactionDetail.Amount:= AmountEdit.ValueCurrency;
end;

procedure TTransactionDetailFrame.SetupFields;
begin
  DescriptionEdit.Text:= FTransactionDetail.Description;
  DateEdit.Date := FTransactionDetail.TransactionDate;
  AmountEdit.ValueCurrency:= FTransactionDetail.Amount;
end;

function TTransactionDetailFrame.GetTransactionDetail: TTransactionDetail;
begin
  GetFields;
  Result:= FTransactionDetail;
end;

procedure TTransactionDetailFrame.SetTransactionDetail(
  const Value: TTransactionDetail);
begin
  FTransactionDetail:= Value;
  SetupFields;
end;

end.
