inherited AddTransactionForm: TAddTransactionForm
  Caption = 'AddTransactionForm'
  ClientWidth = 632
  Position = poMainFormCenter
  OnCreate = FormCreate
  ExplicitHeight = 300
  PixelsPerInch = 144
  TextHeight = 25
  inherited RelativePanel1: TRelativePanel
    Width = 632
    inherited CancelButton: TButton
      Left = 513
    end
    inherited SaveButton: TButton
      Left = 391
    end
  end
end
