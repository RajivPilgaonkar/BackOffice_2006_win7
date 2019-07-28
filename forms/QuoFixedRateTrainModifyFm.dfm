inherited QuoFixedRateTrainModifyForm: TQuoFixedRateTrainModifyForm
  Left = 415
  Top = -19
  Width = 926
  Caption = 'Trains'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Caption = 'Services'
    Width = 918
    inherited CustomMasterCxGrid: TcxGrid
      Width = 912
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'QuoFixedRatesTickets_id'
        OptionsData.Deleting = False
        Styles.Background = nil
        Styles.ContentEven = nil
        Styles.ContentOdd = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1QuoFixedRatesTickets_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoFixedRatesTickets_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn
          DataBinding.FieldName = 'Wef'
          Width = 106
        end
        object CustomMasterCxGridDBTableView1Class_id: TcxGridDBColumn
          Caption = 'Class'
          DataBinding.FieldName = 'Class_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'class_id'
          Properties.ListColumns = <
            item
              FieldName = 'code'
            end>
          Properties.ListSource = ClassDs
          Width = 118
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
    Width = 918
    inherited KeyIdDbText: TDBText
      Left = 760
      DataField = 'QuoFixedRatesTickets_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 832
    end
  end
  inherited Panel2: TPanel
    Width = 918
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object Label2: TLabel
      Left = 434
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Train'
      Transparent = True
    end
    object Label3: TLabel
      Left = 757
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object Label4: TLabel
      Left = 217
      Top = 17
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object cxFromCityLCMB: TcxLookupComboBox
      Left = 68
      Top = 15
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = cxFromCityLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 136
    end
    object cxTrainLCMB: TcxLookupComboBox
      Left = 475
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'TrainNo'
      Properties.ListColumns = <
        item
          MinWidth = 100
          FieldName = 'TrainNo'
        end
        item
          MinWidth = 300
          FieldName = 'TrainName'
        end>
      Properties.ListSource = TrainDs
      Properties.OnEditValueChanged = cxTrainLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 212
    end
    object cxDateEdit: TcxDateEdit
      Left = 789
      Top = 14
      Properties.OnEditValueChanged = cxDateEditPropertiesEditValueChanged
      TabOrder = 2
      Width = 108
    end
    object cxToCityLCMB: TcxLookupComboBox
      Left = 268
      Top = 15
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = cxToCityLCMBPropertiesEditValueChanged
      TabOrder = 3
      Width = 136
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoFixedRatesTickets'#13#10'WHERE Tickets_id = 2'#13#10'AND Fr' +
      'om_Cities_id = :FromCities_id'#13#10'AND To_Cities_id = :ToCities_id'#13#10 +
      'AND TrainNo = :TrainNo'#13#10'AND Wef >= :Wef'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'FromCities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ToCities_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TrainNo'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
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
    object MasterCdsQuoFixedRatesTickets_id: TIntegerField
      FieldName = 'QuoFixedRatesTickets_id'
    end
    object MasterCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object MasterCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object MasterCdsTo_Cities_id: TIntegerField
      FieldName = 'To_Cities_id'
    end
    object MasterCdsFrom_TrainStations_id: TIntegerField
      FieldName = 'From_TrainStations_id'
    end
    object MasterCdsTo_TrainStations_id: TIntegerField
      FieldName = 'To_TrainStations_id'
    end
    object MasterCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
    end
    object MasterCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object MasterCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object MasterCdsTrains_id: TIntegerField
      FieldName = 'Trains_id'
    end
    object MasterCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object MasterCdsTimings: TStringField
      FieldName = 'Timings'
      Size = 30
    end
  end
  object TrainSds: TSQLDataSet
    CommandText = 
      'SELECT MAX(t.Trains_id) AS Trains_id, t.TrainNo, t.TrainName '#13#10'F' +
      'ROM Trains t'#13#10'   LEFT JOIN TrainDetails td1 ON t.Trains_id = td1' +
      '.Trains_id'#13#10'   LEFT JOIN TrainDetails td2 ON t.Trains_id = td2.T' +
      'rains_id'#13#10'WHERE td1.kms < td2.kms'#13#10'AND td1.Cities_id = :FromCiti' +
      'es_id'#13#10'AND td2.Cities_id = :ToCities_id'#13#10'AND t.Wef >= :Wef'#13#10'GROU' +
      'P BY t.TrainNo, t.TrainName'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FromCities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ToCities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 552
    Top = 24
  end
  object TrainDsp: TDataSetProvider
    DataSet = TrainSds
    Left = 568
    Top = 24
  end
  object TrainCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainDsp'
    Left = 584
    Top = 24
    object TrainCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      FixedChar = True
      Size = 10
    end
    object TrainCdsTrainName: TStringField
      FieldName = 'TrainName'
      Size = 100
    end
    object TrainCdsTrains_id: TIntegerField
      FieldName = 'Trains_id'
    end
  end
  object TrainDs: TDataSource
    DataSet = TrainCds
    Left = 600
    Top = 24
  end
  object ClassSds: TSQLDataSet
    CommandText = 'SELECT * FROM Class WHERE Tickets_id = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 96
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 496
    Top = 96
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 512
    Top = 96
    object ClassCdsclass_id: TIntegerField
      FieldName = 'class_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdscode: TStringField
      FieldName = 'code'
      Size = 5
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object ClassCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 528
    Top = 96
  end
end
