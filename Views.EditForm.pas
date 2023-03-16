unit Views.EditForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Views.DetailBase, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.NumberBox, Vcl.ComCtrls;

type
  TEditTransaction = class(TDetailBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditTransaction: TEditTransaction;

implementation

{$R *.dfm}

end.
