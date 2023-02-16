object TransactionDetailFrame: TTransactionDetailFrame
  Left = 0
  Top = 0
  Width = 701
  Height = 225
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  TabOrder = 0
  PixelsPerInch = 144
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 90
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Description'
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 41
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Date:'
  end
  object Label3: TLabel
    Left = 24
    Top = 107
    Width = 69
    Height = 25
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Amount:'
  end
  object DescriptionEdit: TEdit
    Left = 124
    Top = 21
    Width = 537
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
  end
  object DateEdit: TCalendarPicker
    Left = 124
    Top = 64
    Width = 210
    Height = 33
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -30
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -45
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -36
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'select a date'
  end
  object AmountEdit: TNumberBox
    Left = 124
    Top = 107
    Width = 210
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
    Top = 163
    Width = 701
    Height = 62
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
        AlignVerticalCenterWithPanel = True
      end
      item
        Control = Button1
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
    ExplicitLeft = 456
    ExplicitTop = 708
    ExplicitWidth = 278
    DesignSize = (
      701
      62)
    object CancelButton: TButton
      AlignWithMargins = True
      Left = 582
      Top = 11
      Width = 113
      Height = 38
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = []
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 0
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 459
      Top = 12
      Width = 113
      Height = 38
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Anchors = []
      Caption = 'Save'
      Default = True
      TabOrder = 1
    end
  end
end
