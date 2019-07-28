inherited ElemTrainForm: TElemTrainForm
  Left = 344
  Top = 30
  Height = 594
  Caption = 'Elements - Trains'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 47
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object Label3: TLabel
      Left = 552
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 718
      Top = 13
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 278
      Top = 16
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object cxFromCityLCMB: TcxLookupComboBox
      Left = 70
      Top = 15
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = FromCitiesDs
      Properties.OnEditValueChanged = cxFromCityLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 191
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 581
      Top = 14
      Properties.KeyFieldNames = 'Wef'
      Properties.ListColumns = <
        item
          FieldName = 'Wef'
        end>
      Properties.ListSource = WefDS
      TabOrder = 1
      Width = 130
    end
    object cxToCityLCMB: TcxLookupComboBox
      Left = 329
      Top = 15
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = FromCitiesDs
      Properties.OnEditValueChanged = cxToCityLCMBPropertiesEditValueChanged
      TabOrder = 2
      Width = 191
    end
  end
  inherited Panel2: TPanel
    Top = 515
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'ElemTickets_id'
    end
    inherited cxButtonUtilities: TcxButton
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Top = 47
    Height = 468
    inherited cxPageControl1: TcxPageControl
      Height = 466
      ClientRectBottom = 460
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Trains'
        inherited cxGrid1: TcxGrid
          Height = 434
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'ElemTickets_id'
            object cxGrid1DBBandedTableView1ElemTickets_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemTickets_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Tickets_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Tickets_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1From_Cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'From_Cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1To_Cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'To_Cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1From_TrainStations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'From_TrainStations_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1To_TrainStations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'To_TrainStations_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FlightNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FlightNo'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TrainNo: TcxGridDBBandedColumn
              Caption = 'Train No'
              DataBinding.FieldName = 'TrainNo'
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Class_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Class_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wef'
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Trains_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Trains_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Ac_cc_cost: TcxGridDBBandedColumn
              Caption = 'CC'
              DataBinding.FieldName = 'ac_cc_cost'
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Ac_2t_cost: TcxGridDBBandedColumn
              Caption = '2T'
              DataBinding.FieldName = 'ac_2t_cost'
              Width = 58
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Ac_3t_cost: TcxGridDBBandedColumn
              Caption = '3T'
              DataBinding.FieldName = 'ac_3t_cost'
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'Currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Currency'
                end>
              Properties.ListSource = CurrenciesDs
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Timings: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Timings'
              Width = 130
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Overnight: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Overnight'
              Width = 89
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Quoted: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Quoted'
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ElemTickets'#13#10'WHERE Tickets_id = 2'#13#10'AND From_Cities' +
      '_id = :From_Cities_id'#13#10'AND To_Cities_id = :To_Cities_id'#13#10'AND Wef' +
      ' = :Wef'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'From_Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'To_Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Wef'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsElemTickets_id: TIntegerField
      FieldName = 'ElemTickets_id'
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
      DisplayFormat = '#,##0.00'
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
    object MasterCdsOvernight: TBooleanField
      FieldName = 'Overnight'
    end
    object MasterCdsac_cc_cost: TFMTBCDField
      FieldName = 'ac_cc_cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsac_2t_cost: TFMTBCDField
      FieldName = 'ac_2t_cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsac_3t_cost: TFMTBCDField
      FieldName = 'ac_3t_cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 113
    Top = 487
  end
  object FromCitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City, State, Country'#13#10'FROM Cities c '#13#10'LEFT JOI' +
      'N States s ON c.States_id = s.States_id'#13#10'LEFT JOIN Countries ON ' +
      'c.Countries_id = Countries.Countries_id'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 96
    Top = 24
  end
  object FromCitiesDsp: TDataSetProvider
    DataSet = FromCitiesSds
    Left = 112
    Top = 24
  end
  object FromCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FromCitiesDsp'
    Left = 128
    Top = 24
    object FromCitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object FromCitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object FromCitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object FromCitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object FromCitiesDs: TDataSource
    DataSet = FromCitiesCds
    Left = 152
    Top = 24
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT cs.Addressbook_id, cst.Vehicles_id, v.Vehicle, v' +
      '.Pax'#13#10'FROM CostServicesTransport cst'#13#10'     INNER JOIN CostServic' +
      'es cs ON cst.CostService_id = cs.CostServices_id'#13#10'LEFT JOIN Vehi' +
      'cles v ON cst.Vehicles_id = v.Vehicles_id'#13#10'WHERE cs.Addressbook_' +
      'id = :Addressbook_id'#13#10'ORDER BY v.Vehicle'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 672
    Top = 200
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 688
    Top = 200
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    PacketRecords = 0
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 704
    Top = 200
    object VehicleCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object VehicleCdsPax: TIntegerField
      FieldName = 'Pax'
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 720
    Top = 200
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'SELECT Currencies_id, Currency FROM Currencies'#13#10'ORDER BY Currenc' +
      'y'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 248
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    Left = 672
    Top = 251
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    Left = 696
    Top = 248
    object CurrenciesCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrenciesCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrenciesDs: TDataSource
    DataSet = CurrenciesCds
    Left = 720
    Top = 248
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Wef'#13#10'FROM ElemTickets'#13#10'WHERE From_Cities_id = :F' +
      'rom_Cities_id'#13#10'AND To_Cities_id = :To_Cities_id'#13#10'ORDER BY Wef DE' +
      'SC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'From_Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'To_Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 616
    Top = 27
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 632
    Top = 27
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 648
    Top = 27
    object WefCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 664
    Top = 27
  end
  object ToCitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City, State, Country'#13#10'FROM Cities c '#13#10'LEFT JOI' +
      'N States s ON c.States_id = s.States_id'#13#10'LEFT JOIN Countries ON ' +
      'c.Countries_id = Countries.Countries_id'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
    Top = 24
  end
  object ToCitiesDsp: TDataSetProvider
    DataSet = ToCitiesSds
    Left = 368
    Top = 24
  end
  object ToCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ToCitiesDsp'
    Left = 384
    Top = 24
    object IntegerField1: TIntegerField
      FieldName = 'cities_id'
    end
    object StringField1: TStringField
      FieldName = 'city'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'country'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object ToCitiesDs: TDataSource
    DataSet = ToCitiesCds
    Left = 408
    Top = 24
  end
end
