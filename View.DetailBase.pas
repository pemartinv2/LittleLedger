unit View.DetailBase;

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
  Vcl.WinXPickers,
  Details;

type
  TDetailForm = class(TForm)
    Label1: TLabel;
    DescriptionEdit: TEdit;
    Label2: TLabel;
    DateEdit: TDatePicker;
    AmountLabel: TLabel;
    AmountEdit: TNumberBox;
    RelativePanel1: TRelativePanel;
    CancelButton: TButton;
    SaveButton: TButton;
  private
    { Private declarations }
    function GetCurrentEditFields: TDetailFields;
    procedure SetCurrentEditFields(const Value: TDetailFields);
  public
    { Public declarations }
    property CurrentEditFields: TDetailFields read GetCurrentEditFields
      write SetCurrentEditFields;
  end;


implementation

{$R *.dfm}

{ TDetailEdit }


{ TDetailForm }

function TDetailForm.GetCurrentEditFields: TDetailFields;
begin
  Result.Descritpion := DescriptionEdit.Text;
  Result.TransactionDate := DateEdit.Date;
  Result.Amount := AmountEdit.ValueCurrency;
end;


procedure TDetailForm.SetCurrentEditFields(const Value: TDetailFields);
begin
  DescriptionEdit.Text := Value.Descritpion;
  DateEdit.Date := Value.TransactionDate;
  AmountEdit.ValueCurrency := Value.Amount;
end;


end.
