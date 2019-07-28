inherited WebTransferForm: TWebTransferForm
  Left = 534
  Top = 0
  Width = 693
  Height = 671
  Caption = 'Transfer Tables to Web'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 506
    Width = 677
    inherited CustomMasterCxGrid: TcxGrid
      Width = 671
      Height = 485
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OptionsCustomize.ColumnSorting = False
        Styles.Background = nil
        Styles.ContentEven = nil
        Styles.ContentOdd = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1WebTransferTables_id: TcxGridDBColumn
          Caption = 'Web Transfer Tables Id'
          DataBinding.FieldName = 'WebTransferTables_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
        end
        object CustomMasterCxGridDBTableView1TableName: TcxGridDBColumn
          Caption = 'Table Name'
          DataBinding.FieldName = 'TableName'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Name'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = SysTablesDs
          SortIndex = 1
          SortOrder = soAscending
          Width = 310
        end
        object CustomMasterCxGridDBTableView1WebTableTypes_id: TcxGridDBColumn
          Caption = 'Type'
          DataBinding.FieldName = 'WebTableTypes_id'
          Options.Filtering = False
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 139
        end
        object CustomMasterCxGridDBTableView1Active: TcxGridDBColumn
          DataBinding.FieldName = 'Active'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Sorting = False
          Width = 111
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 547
    Width = 677
    Height = 86
    inherited KeyIdDbText: TDBText
      Left = 696
      Top = 40
    end
    inherited SearchLbl: TcxLabel
      Left = 543
      Top = 41
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Left = 592
      Top = 36
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 516
      Top = 59
      Width = 116
    end
    object cxExportFile: TcxButton
      Left = 4
      Top = 4
      Width = 165
      Height = 25
      Caption = '1. Create export file (local)'
      TabOrder = 3
      OnClick = cxExportFileClick
    end
    object cxImportFile: TcxButton
      Left = 187
      Top = 5
      Width = 182
      Height = 25
      Caption = '3. Create Import File (Remote)'
      TabOrder = 4
      OnClick = cxImportFileClick
    end
    object cxExportData: TcxButton
      Left = 6
      Top = 31
      Width = 163
      Height = 25
      Caption = '2. Export Data (Local)'
      TabOrder = 5
      OnClick = cxExportDataClick
    end
    object cxImportData: TcxButton
      Left = 187
      Top = 59
      Width = 182
      Height = 25
      Caption = '5. Import Data (Remote)'
      TabOrder = 6
      OnClick = cxImportDataClick
    end
    object cxChangeBCPOption: TcxButton
      Left = 509
      Top = 3
      Width = 124
      Height = 25
      Caption = 'Change BCP Options'
      TabOrder = 7
      OnClick = cxChangeBCPOptionClick
    end
    object cxButton1: TcxButton
      Left = 187
      Top = 32
      Width = 182
      Height = 25
      Caption = '4. Delete Data (Remote)'
      TabOrder = 8
      OnClick = cxButton1Click
    end
    object cxUsServerCkb: TcxCheckBox
      Left = 8
      Top = 64
      Caption = 'US Server'
      State = cbsChecked
      TabOrder = 9
      OnClick = cxUsServerCkbClick
      Width = 121
    end
    object cxTrsfDataButton: TcxButton
      Left = 389
      Top = 5
      Width = 103
      Height = 25
      Caption = '6. Trsf to Live'
      TabOrder = 10
      OnClick = cxTrsfDataButtonClick
    end
  end
  inherited Panel2: TPanel
    Width = 677
    object cxLabel1: TcxLabel
      Left = 8
      Top = 11
      Caption = 'Type'
      Transparent = True
    end
    object cxTypeLcmb: TcxLookupComboBox
      Left = 72
      Top = 9
      Properties.DropDownWidth = 50
      Properties.KeyFieldNames = 'Type'
      Properties.ListColumns = <
        item
          FieldName = 'Type'
        end>
      Properties.ListSource = TypeDs
      Properties.OnCloseUp = cxTypeLcmbPropertiesCloseUp
      Properties.OnEditValueChanged = cxTypeLcmbPropertiesEditValueChanged
      TabOrder = 1
      Width = 145
    end
    object cxSelectAll: TcxButton
      Left = 360
      Top = 8
      Width = 98
      Height = 22
      Caption = '&Select  All'
      TabOrder = 2
      OnClick = cxSelectAllClick
    end
    object cxDeSelectAll: TcxButton
      Left = 464
      Top = 8
      Width = 98
      Height = 22
      Caption = '&De-Select All'
      TabOrder = 3
      OnClick = cxDeSelectAllClick
    end
    object cxButton2: TcxButton
      Left = 576
      Top = 8
      Width = 98
      Height = 22
      Caption = 'SQLite'
      TabOrder = 4
      OnClick = cxButton2Click
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM WebTransferTables '#13#10'ORDER BY WebTableTypes_id, Ord' +
      'erNo'#13#10
    CommandType = ctQuery
    Left = 336
    Top = 224
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 368
    Top = 224
  end
  inherited MasterDS: TDataSource
    Left = 432
    Top = 224
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 400
    Top = 224
    object MasterCdsWebTransferTables_id: TIntegerField
      FieldName = 'WebTransferTables_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsTableName: TStringField
      FieldName = 'TableName'
      Size = 100
    end
    object MasterCdsActive: TBooleanField
      FieldName = 'Active'
    end
    object MasterCdsWebTableTypes_id: TIntegerField
      FieldName = 'WebTableTypes_id'
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  object SysTablesSds: TSQLDataSet
    CommandText = 
      'SELECT lower([Name]) AS Name FROM sysobjects'#13#10'WHERE xtype = '#39'U'#39#13 +
      #10'ORDER BY name'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
    Top = 144
  end
  object SysTablesDsp: TDataSetProvider
    DataSet = SysTablesSds
    Left = 384
    Top = 144
  end
  object SysTablesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SysTablesDsp'
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    Left = 416
    Top = 144
    object SysTablesCdsName: TStringField
      FieldName = 'Name'
      Size = 128
    end
  end
  object SysTablesDs: TDataSource
    DataSet = SysTablesCds
    Left = 448
    Top = 144
  end
  object TypeSds: TSQLDataSet
    CommandText = 
      'SELECT 1 Type '#13#10'UNION SELECT 2 '#13#10'UNION SELECT 3'#13#10'UNION SELECT 4'#13 +
      #10'UNION SELECT NULL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 248
    Top = 8
  end
  object TypeDsp: TDataSetProvider
    DataSet = TypeSds
    Left = 280
    Top = 8
  end
  object TypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TypeDsp'
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    Left = 312
    Top = 8
    object TypeCdsType: TIntegerField
      FieldName = 'Type'
    end
  end
  object TypeDs: TDataSource
    DataSet = TypeCds
    Left = 344
    Top = 8
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 152
    Top = 200
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13828073
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16770790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object RemoteSqlConnection: TSQLConnection
    ConnectionName = 'Jadoo_2006_Connection'
    DriverName = 'SQLServer'
    GetDriverFunc = 'getSQLDriverSQLServer'
    LibraryName = 'dbexpsda.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=SQLServer'
      'BlobSize=-1'
      'HostName=LAPTOP\SQL_SERVER_2K'
      'DataBase=Jadoo_2006'
      'User_Name=sa'
      'Password=')
    VendorLib = 'sqloledb.dll'
    Left = 48
    Top = 160
  end
end
