object DetailForm: TDetailForm
  Left = 0
  Top = 0
  ActiveControl = DescriptionEdit
  BorderStyle = bsDialog
  Caption = 'DetailForm'
  ClientHeight = 246
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 144
  TextHeight = 25
  object Label1: TLabel
    Left = 24
    Top = 36
    Width = 94
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Description:'
  end
  object Label2: TLabel
    Left = 24
    Top = 71
    Width = 41
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Date:'
  end
  object AmountLabel: TLabel
    Left = 24
    Top = 132
    Width = 69
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Amount:'
  end
  object DescriptionEdit: TEdit
    Left = 128
    Top = 33
    Width = 462
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
  end
  object DateEdit: TDatePicker
    Left = 128
    Top = 77
    Width = 225
    Height = 41
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Date = 44780.000000000000000000
    DateFormat = 'yyyy/mm/dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 1
  end
  object AmountEdit: TNumberBox
    Left = 129
    Top = 128
    Width = 182
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Mode = nbmCurrency
    TabOrder = 2
    SpinButtonOptions.ButtonWidth = 26
  end
  object RelativePanel1: TRelativePanel
    Left = 0
    Top = 183
    Width = 622
    Height = 63
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ControlCollection = <
      item
        Control = CancelButton
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = True
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end
      item
        Control = SaveButton
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        LeftOf = CancelButton
      end>
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      622
      63)
    object CancelButton: TButton
      AlignWithMargins = True
      Left = 503
      Top = 12
      Width = 113
      Height = 38
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = []
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object SaveButton: TButton
      AlignWithMargins = True
      Left = 381
      Top = 12
      Width = 112
      Height = 38
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = []
      Caption = 'Save'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
  end
end
