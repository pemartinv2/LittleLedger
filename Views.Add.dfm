inherited AddTransactionForm: TAddTransactionForm
  BorderStyle = bsDialog
  Caption = 'Add new transaction'
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  inherited AmountEdit: TNumberBox
    TabOrder = 2
  end
  inherited RelativePanel1: TRelativePanel
    TabOrder = 3
    ExplicitLeft = 0
    ExplicitTop = 198
    ExplicitWidth = 284
    inherited OkButton: TButton
      Default = True
    end
    inherited CancelButton: TButton
      Cancel = True
    end
  end
end
