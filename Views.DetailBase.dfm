object DetailBase: TDetailBase
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'DetailBase'
  ClientHeight = 239
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 27
    Height = 15
    Caption = 'Date:'
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 63
    Height = 15
    Caption = 'Description:'
  end
  object Label3: TLabel
    Left = 16
    Top = 128
    Width = 47
    Height = 15
    Caption = 'Amount:'
  end
  object DescriptionEdit: TEdit
    Left = 16
    Top = 93
    Width = 249
    Height = 23
    TabOrder = 1
  end
  object DateTimeEdit: TDateTimePicker
    Left = 16
    Top = 32
    Width = 249
    Height = 23
    Date = 44978.000000000000000000
    Time = 0.893666516203666100
    TabOrder = 0
  end
  object AmountEdit: TNumberBox
    Left = 16
    Top = 149
    Width = 249
    Height = 23
    Mode = nbmCurrency
    TabOrder = 2
  end
  object RelativePanel1: TRelativePanel
    AlignWithMargins = True
    Left = 3
    Top = 195
    Width = 278
    Height = 41
    ControlCollection = <
      item
        Control = OkButton
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
        LeftOf = CancelButton
      end
      item
        Control = CancelButton
        AlignBottomWithPanel = False
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = True
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = False
      end>
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitLeft = 0
    ExplicitTop = 197
    ExplicitWidth = 280
    DesignSize = (
      278
      41)
    object OkButton: TButton
      AlignWithMargins = True
      Left = 119
      Top = 8
      Width = 75
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Anchors = []
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object CancelButton: TButton
      AlignWithMargins = True
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Margins.Top = 0
      Margins.Bottom = 0
      Anchors = []
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
