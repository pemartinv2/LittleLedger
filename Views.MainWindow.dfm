object MainWindow: TMainWindow
  Left = 0
  Top = 0
  Caption = 'Little Ledger'
  ClientHeight = 673
  ClientWidth = 829
  Color = clBtnFace
  Constraints.MinWidth = 723
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object CommandsPanel: TPanel
    Left = 0
    Top = 0
    Width = 829
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 825
    object AddNewTransaction: TButton
      Left = 16
      Top = 9
      Width = 129
      Height = 25
      Caption = 'Add new transaction...'
      TabOrder = 0
      OnClick = AddNewTransactionClick
    end
  end
  object BottomPanel: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 630
    Width = 823
    Height = 40
    Align = alBottom
    BevelEdges = []
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 629
    ExplicitWidth = 819
    object TotalAmount: TLabel
      Left = 760
      Top = 0
      Width = 63
      Height = 40
      Align = alRight
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 32
    end
  end
  object TransactionList: TControlList
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 823
    Height = 580
    Align = alClient
    ItemMargins.Left = 0
    ItemMargins.Top = 0
    ItemMargins.Right = 0
    ItemMargins.Bottom = 0
    ParentColor = False
    TabOrder = 2
    ExplicitWidth = 819
    ExplicitHeight = 579
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 27
      Height = 15
      Caption = 'Date:'
    end
    object TransactionDateLabel: TLabel
      Left = 88
      Top = 8
      Width = 112
      Height = 15
      Caption = 'TransactionDateLabel'
    end
    object Label2: TLabel
      Left = 11
      Top = 29
      Width = 63
      Height = 15
      Caption = 'Description:'
    end
    object DescriptionLabel: TLabel
      Left = 88
      Top = 29
      Width = 88
      Height = 15
      Caption = 'DescriptionLabel'
    end
    object Label3: TLabel
      Left = 352
      Top = 8
      Width = 47
      Height = 15
      Caption = 'Amount:'
    end
    object AmountLabel: TLabel
      Left = 352
      Top = 29
      Width = 72
      Height = 15
      Caption = 'AmountLabel'
    end
    object EditButton: TControlListButton
      Left = 448
      Top = 16
      Width = 33
      Height = 25
      Caption = 'Edit'
      LinkHotColor = clHighlight
      OnClick = EditButtonClick
    end
    object DeleteButton: TControlListButton
      Left = 487
      Top = 16
      Width = 42
      Height = 25
      Caption = 'Delete'
      LinkHotColor = clHighlight
      OnClick = DeleteButtonClick
    end
  end
  object TransactionBinding: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 52
    Top = 589
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = TotalAmountSource
      FieldName = 'Total(Amount)'
      Component = TotalAmount
      CustomFormat = 'Format('#39'Total: %%m'#39', Self.AsFloat)'
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = LedgerDataSource
      FieldName = 'TransactionDate'
      Component = TransactionDateLabel
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = LedgerDataSource
      FieldName = 'Description'
      Component = DescriptionLabel
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = LedgerDataSource
      FieldName = 'Amount'
      Component = AmountLabel
      ComponentProperty = 'Caption'
    end
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = LedgerDataSource
      GridControl = TransactionList
      Columns = <>
    end
  end
  object TotalAmountSource: TBindSourceDB
    DataSet = LedgerModule.TotalData
    ScopeMappings = <>
    Left = 184
    Top = 584
  end
  object LedgerDataSource: TBindSourceDB
    DataSet = LedgerModule.LedgerData
    ScopeMappings = <>
    Left = 304
    Top = 584
  end
end
