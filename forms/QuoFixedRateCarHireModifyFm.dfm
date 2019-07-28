inherited QuoFixedRateCarHireModifyForm: TQuoFixedRateCarHireModifyForm
  Left = 300
  Top = 33
  Width = 882
  Caption = 'Car Hire'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Caption = 'Services'
    Width = 874
    inherited CustomMasterCxGrid: TcxGrid
      Width = 868
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'QuoFixedRatesCars_id'
        OptionsData.Deleting = False
        Styles.Background = nil
        Styles.ContentEven = nil
        Styles.ContentOdd = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1QuoFixedRatesCars_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoFixedRatesCars_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1ServiceCities_id: TcxGridDBColumn
          DataBinding.FieldName = 'ServiceCities_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn
          DataBinding.FieldName = 'Wef'
          Width = 106
        end
        object CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn
          DataBinding.FieldName = 'Wet'
          Width = 122
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
          Width = 205
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
    Width = 874
    inherited KeyIdDbText: TDBText
      Left = 720
      DataField = 'QuoFixedRatesCars_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 792
    end
  end
  inherited Panel2: TPanel
    Width = 874
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 69
      Height = 13
      Caption = 'Service City'
      Transparent = True
    end
    object Label2: TLabel
      Left = 312
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label3: TLabel
      Left = 708
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 92
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
    object cxAgentLCMB: TcxLookupComboBox
      Left = 361
      Top = 14
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          MinWidth = 350
          FieldName = 'Organisation'
        end
        item
          MinWidth = 150
          FieldName = 'City'
        end>
      Properties.ListSource = AgentDS
      Properties.OnEditValueChanged = cxServiceLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 268
    end
    object cxDateEdit: TcxDateEdit
      Left = 740
      Top = 14
      Properties.OnEditValueChanged = cxDateEditPropertiesEditValueChanged
      TabOrder = 2
      Width = 121
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoFixedRatesCars'#13#10'WHERE ServiceCities_id = :Citie' +
      's_id'#13#10'AND Addressbook_id = :Addressbook_id'#13#10'AND Wef >= :Wef'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
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
    object MasterCdsQuoFixedRatesCars_id: TIntegerField
      FieldName = 'QuoFixedRatesCars_id'
    end
    object MasterCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCdsServiceCities_id: TIntegerField
      FieldName = 'ServiceCities_id'
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object MasterCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
  end
  object AgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'A'#39')'#13#10'ORDER BY Organisation'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 448
    Top = 8
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 464
    Top = 8
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 480
    Top = 8
    object IntegerField4: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField6: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField7: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 496
    Top = 8
  end
end
