object LedgerModule: TLedgerModule
  OnCreate = DataModuleCreate
  Height = 383
  Width = 676
  object LedgerData: TFDQuery
    AfterInsert = RefreshTotal
    AfterEdit = RefreshTotal
    AfterPost = RefreshTotal
    AfterDelete = RefreshTotal
    AfterRefresh = RefreshTotal
    Connection = SQLiteConn
    SQL.Strings = (
      'Select * From Transactions '
      'Order by TransactionDate Desc')
    Left = 69
    Top = 144
    object IDField: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object DateField: TDateTimeField
      DisplayLabel = 'Transaction Date'
      FieldName = 'TransactionDate'
      Origin = 'TransactionDate'
    end
    object DescriptionField: TWideMemoField
      FieldName = 'Description'
      Origin = 'Description'
      BlobType = ftWideMemo
    end
    object AmountField: TCurrencyField
      FieldName = 'Amount'
      Origin = 'Amount'
    end
  end
  object TotalData: TFDQuery
    Connection = SQLiteConn
    SQL.Strings = (
      'Select Total(Amount) from Transactions ')
    Left = 69
    Top = 229
    object TotalAmount: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total(Amount)'
      Origin = '"Total(Amount)"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = LedgerData
    Left = 72
    Top = 304
  end
  object SQLiteDriverLinq: TFDPhysSQLiteDriverLink
    EngineLinkage = slStatic
    Left = 512
    Top = 24
  end
  object SQLiteConn: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      'Database=C:\Users\pemar\OneDrive\Documents\LittleLedger.sdb'
      'DriverID=SQLite')
    ConnectedStoredUsage = []
    LoginPrompt = False
    BeforeConnect = SQLiteConnBeforeConnect
    Left = 384
    Top = 24
  end
  object SQLiteScripts: TFDScript
    SQLScripts = <
      item
        Name = 'CreateTable'
        SQL.Strings = (
          'CREATE TABLE Transactions ('
          '    Id              INTEGER  PRIMARY KEY AUTOINCREMENT'
          '                             NOT NULL,'
          '    TransactionDate DATETIME NOT NULL,'
          '    Description     TEXT     NOT NULL,'
          '    Amount          CURRENCY NOT NULL'
          ');')
      end>
    Connection = SQLiteConn
    Params = <>
    Macros = <>
    Left = 512
    Top = 88
  end
end
