inherited QuoFixedRateTrsfModifyForm: TQuoFixedRateTrsfModifyForm
  Left = 406
  Top = 114
  Caption = 'Transfers'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Caption = 'Services'
    inherited CustomMasterCxGrid: TcxGrid
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'QuoFixedRatesServices_id'
        OptionsData.Deleting = False
        Styles.Background = nil
        Styles.ContentEven = nil
        Styles.ContentOdd = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1QuoFixedRatesServices_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoFixedRatesServices_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Services_id: TcxGridDBColumn
          DataBinding.FieldName = 'Services_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn
          DataBinding.FieldName = 'Wef'
          Width = 106
        end
        object CustomMasterCxGridDBTableView1AgentAddressBook_id: TcxGridDBColumn
          Caption = 'Agent'
          DataBinding.FieldName = 'AgentAddressBook_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = BackOfficeDataModule.AgentDS
          Width = 237
        end
        object CustomMasterCxGridDBTableView1SightSeeing: TcxGridDBColumn
          DataBinding.FieldName = 'SightSeeing'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Vehicles_id: TcxGridDBColumn
          Caption = 'Vehicle'
          DataBinding.FieldName = 'Vehicles_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Vehicles_id'
          Properties.ListColumns = <
            item
              FieldName = 'Vehicle'
            end>
          Properties.ListSource = BackOfficeDataModule.VehicleDS
          Width = 125
        end
        object CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn
          DataBinding.FieldName = 'Cost'
        end
        object CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'Currencies_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currencycode'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
        end
      end
    end
  end
  inherited Panel1: TPanel
    inherited KeyIdDbText: TDBText
      DataField = 'QuoFixedRatesServices_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
  end
  inherited Panel2: TPanel
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label2: TLabel
      Left = 232
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Service'
      Transparent = True
    end
    object Label3: TLabel
      Left = 588
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 36
      Top = 15
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 173
    end
    object cxServiceLCMB: TcxLookupComboBox
      Left = 281
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'Services_id'
      Properties.ListColumns = <
        item
          FieldName = 'Description'
        end>
      Properties.ListSource = TrsfDs
      Properties.OnEditValueChanged = cxServiceLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 268
    end
    object cxDateEdit: TcxDateEdit
      Left = 620
      Top = 14
      Properties.OnEditValueChanged = cxDateEditPropertiesEditValueChanged
      TabOrder = 2
      Width = 121
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoFixedRatesServices'#13#10'WHERE Services_id = :Servic' +
      'es_id'#13#10'AND Wef >= :Wef'#13#10'AND SightSeeing = 0'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Services_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
    Top = 112
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 72
    Top = 112
  end
  inherited MasterDS: TDataSource
    Left = 96
    Top = 112
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 112
    Top = 112
    object MasterCdsQuoFixedRatesServices_id: TIntegerField
      FieldName = 'QuoFixedRatesServices_id'
    end
    object MasterCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object MasterCdsAgentAddressBook_id: TIntegerField
      FieldName = 'AgentAddressBook_id'
    end
    object MasterCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object MasterCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
  end
  object TrsfSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, Services_id, [Description]'#13#10'FROM Services'#13#10'WHE' +
      'RE Cities_id = :Cities_id'#13#10'AND Transfer = 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 8
  end
  object TrsfDsp: TDataSetProvider
    DataSet = TrsfSds
    Left = 320
    Top = 8
  end
  object TrsfCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrsfDsp'
    Left = 336
    Top = 8
    object TrsfCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object TrsfCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object TrsfCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
  end
  object TrsfDs: TDataSource
    DataSet = TrsfCds
    Left = 352
    Top = 8
  end
end
