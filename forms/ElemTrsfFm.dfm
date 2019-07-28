inherited ElemTrsfForm: TElemTrsfForm
  Left = 359
  Top = 28
  Height = 594
  Caption = 'Elements - Transfers'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 69
      Height = 13
      Caption = 'Service City'
      Transparent = True
    end
    object Label2: TLabel
      Left = 230
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Agent'
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
    object cxCityLCMB: TcxLookupComboBox
      Left = 82
      Top = 15
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 132
    end
    object cxAgentLCMB: TcxLookupComboBox
      Left = 268
      Top = 14
      Properties.DropDownWidth = 550
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          Width = 400
          FieldName = 'Organisation'
        end
        item
          Width = 150
          FieldName = 'City'
        end>
      Properties.ListSource = AgentDs
      Properties.OnEditValueChanged = cxAgentLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 269
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
      TabOrder = 2
      Width = 130
    end
  end
  inherited Panel2: TPanel
    Top = 519
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'ElemServices_id'
    end
  end
  inherited Panel3: TPanel
    Height = 478
    inherited cxPageControl1: TcxPageControl
      Height = 476
      ClientRectBottom = 470
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Transfers'
        inherited cxGrid1: TcxGrid
          Height = 444
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'ElemServices_id'
            object cxGrid1DBBandedTableView1ElemServices_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemServices_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Services_id: TcxGridDBBandedColumn
              Caption = 'Service'
              DataBinding.FieldName = 'Services_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Services_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Description'
                end>
              Properties.ListSource = ServicesDs
              Width = 477
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AgentAddressBook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AgentAddressBook_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wef'
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Quoted: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Quoted'
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ElemServices es'#13#10'WHERE es.AgentAddressbook_id = :A' +
      'ddressbook_id'#13#10'AND es.Wef = :Wef'#13#10'AND es.SightSeeing = 0'#13#10'AND EX' +
      'ISTS (SELECT * FROM Services s'#13#10'  WHERE es.Services_id = s.Servi' +
      'ces_id'#13#10'        AND s.Cities_id = :Cities_id)'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsElemServices_id: TIntegerField
      FieldName = 'ElemServices_id'
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
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Top = 527
  end
  object CitiesSds: TSQLDataSet
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
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 112
    Top = 24
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 128
    Top = 24
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object CitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 152
    Top = 24
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT cs.Addressbook_id, a.Organisation, a.City, cs.Ci' +
      'ties_id'#13#10'FROM CostServices cs'#13#10'LEFT JOIN Addressbook a ON cs.Add' +
      'ressbook_id = a.Addressbook_id'#13#10'WHERE cs.Cities_id = :Cities_id'#13 +
      #10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 8
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 320
    Top = 8
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 336
    Top = 8
    object IntegerField4: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField6: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object StringField7: TStringField
      FieldName = 'City'
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 352
    Top = 8
  end
  object ServicesSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT cs.Services_id, s.Description, cs.Addressbook_id' +
      #13#10'FROM CostServices cs'#13#10'LEFT JOIN Services s ON cs.Services_id =' +
      ' s.Services_id'#13#10'WHERE cs.Addressbook_id = :Addressbook_id'#13#10'ORDER' +
      ' BY s.Description'
    DataSource = AgentDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 136
  end
  object ServicesDsp: TDataSetProvider
    DataSet = ServicesSds
    Left = 696
    Top = 136
  end
  object ServicesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = AgentDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServicesDsp'
    Left = 712
    Top = 136
    object ServicesCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object ServicesCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServicesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object ServicesDs: TDataSource
    DataSet = ServicesCds
    Left = 728
    Top = 136
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Wef'#13#10'FROM ElemServices'#13#10'WHERE AgentAddressbook_i' +
      'd = :Addressbook_id'#13#10'ORDER BY Wef DESC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
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
end
