inherited ElemCityGroupsForm: TElemCityGroupsForm
  Left = 195
  Top = 7
  Height = 594
  Caption = 'Elements - City Groups'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 43
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 22
      Height = 13
      Caption = 'City'
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
      Left = 42
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
      DataBinding.DataField = 'ElemCityGroups_id'
    end
  end
  inherited Panel3: TPanel
    Top = 43
    Height = 476
    inherited cxPageControl1: TcxPageControl
      Height = 474
      ClientRectBottom = 468
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Sightseeing'
        inherited cxGrid1: TcxGrid
          Height = 442
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'ElemCityGroups_id'
            object cxGrid1DBBandedTableView1ElemCars_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemCars_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AddressBook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AddressBook_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wef'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wet: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wet'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CarHireGroup: TcxGridDBBandedColumn
              Caption = 'Sector'
              DataBinding.FieldName = 'CarHireGroup'
              Width = 354
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Quoted: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Quoted'
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ElemCityGroups ec'#13#10'WHERE ec.Addressbook_id = :Addr' +
      'essbook_id'#13#10'AND ec.Wef = :Wef'#13#10
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
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsElemCityGroups_id: TIntegerField
      FieldName = 'ElemCityGroups_id'
    end
    object MasterCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object MasterCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
    end
    object MasterCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
    object MasterCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
    object MasterCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object MasterCdsSector: TStringField
      FieldName = 'Sector'
      Size = 100
    end
    object MasterCdsCarHireGroup: TStringField
      FieldName = 'CarHireGroup'
      Size = 200
    end
  end
  inherited PopupMenu1: TPopupMenu
    Top = 503
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
      'SELECT DISTINCT ch.Addressbook_id, a.Organisation, a.City, a.Cit' +
      'ies_id'#13#10'FROM CarHireGroupCosts ch'#13#10'LEFT JOIN Addressbook a ON ch' +
      '.Addressbook_id = a.Addressbook_id'#13#10'WHERE a.Cities_id = :Cities_' +
      'id'#13#10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Cities_id'
        ParamType = ptInput
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
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Wef'#13#10'FROM CarHireGroupCosts'#13#10'WHERE Addressbook_i' +
      'd = :Addressbook_id'#13#10'ORDER BY Wef DESC'#13#10
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
  object CodeSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT q.QuotationRef, q.PaxName'#13#10'  FROM Quotations q'#13#10 +
      ' WHERE q.Trial = 3'#13#10'   AND EXISTS (SELECT * FROM QuoLines ql '#13#10' ' +
      '                         WHERE q.Quotations_id = ql.Quotations_i' +
      'd '#13#10'                                AND ql.DriveTypes_id = 3)'#13#10'O' +
      'RDER BY q.QuotationRef'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 280
  end
  object CodeDsp: TDataSetProvider
    DataSet = CodeSds
    Left = 600
    Top = 280
  end
  object CodeCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QuotationRef'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PaxName'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CodeDsp'
    StoreDefs = True
    Left = 624
    Top = 280
    object CodeCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
    object CodeCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
  end
  object CodeDs: TDataSource
    DataSet = CodeCds
    Left = 648
    Top = 280
  end
end
