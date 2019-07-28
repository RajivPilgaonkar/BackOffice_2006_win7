inherited ToursForm: TToursForm
  Width = 676
  Height = 531
  Caption = 'Tours Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited CustomMasterGridGroupBox: TGroupBox
    Top = 94
    Width = 659
    Caption = ' Tours '
    inherited CustomMasterDBGrid: TDBGrid
      Left = 8
      Width = 641
      Columns = <
        item
          Expanded = False
          FieldName = 'tourcodes_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tourcode'
          Title.Caption = 'Tour Code'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tour'
          Title.Caption = 'Tour'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fit'
          PickList.Strings = (
            'Y'
            'N')
          Title.Caption = 'Fit'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'noofdays'
          Title.Caption = 'Total Days'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CityLookUp'
          Title.Caption = 'City'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AgentLookUp'
          Title.Caption = 'Transfer Agent'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HotelLookUp'
          Title.Caption = 'Arrival Hotel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'agent_addressbook_id'
          Title.Caption = 'Transfer Agent'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'hotel_addressbook_id'
          Title.Caption = 'Arrival Hotel'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tailormade'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'singleconstituent'
          PickList.Strings = (
            'Y'
            'N')
          Title.Caption = 'Single Constituent'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'active'
          PickList.Strings = (
            '')
          Title.Caption = 'Active'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'cities_id'
          Title.Caption = 'Arrival City'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'itinerary_en'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'factfinder_en'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'travelstyles_id'
          Visible = False
        end>
    end
    inherited CloseBtn: TBitBtn
      Left = 578
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 668
    Height = 81
    Align = alTop
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 161
      Height = 65
      TabOrder = 0
      object GroupFitOpt: TRadioButton
        Left = 8
        Top = 16
        Width = 121
        Height = 17
        Caption = 'Group/FIT'
        TabOrder = 0
        OnClick = GroupFitOptClick
      end
      object TailorMadeOpt: TRadioButton
        Left = 7
        Top = 40
        Width = 121
        Height = 17
        Caption = 'Tailor Made'
        TabOrder = 1
        OnClick = TailorMadeOptClick
      end
    end
    object ActiveChk: TCheckBox
      Left = 184
      Top = 25
      Width = 134
      Height = 16
      Caption = 'Display Active Only'
      TabOrder = 1
      OnClick = ActiveChkClick
    end
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 341
    Top = 183
  end
  inherited MasterDS: TDataSource
    Left = 309
    Top = 151
  end
  inherited MasterCDS: TClientDataSet
    Filtered = True
    IndexFieldNames = 'TourCode;Tour'
    Left = 344
    Top = 151
    object MasterCDStourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCDStourcode: TStringField
      FieldName = 'tourcode'
      FixedChar = True
      Size = 10
    end
    object MasterCDStour: TStringField
      DisplayWidth = 50
      FieldName = 'tour'
      FixedChar = True
      Size = 50
    end
    object MasterCDSfit: TBooleanField
      DisplayWidth = 5
      FieldName = 'fit'
      DisplayValues = 'Y;N'
    end
    object MasterCDSnoofdays: TIntegerField
      Alignment = taCenter
      FieldName = 'noofdays'
    end
    object MasterCDSagent_addressbook_id: TIntegerField
      FieldName = 'agent_addressbook_id'
    end
    object MasterCDShotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object MasterCDStailormade: TBooleanField
      FieldName = 'tailormade'
    end
    object MasterCDSsingleconstituent: TBooleanField
      FieldName = 'singleconstituent'
      DisplayValues = 'Y;N'
    end
    object MasterCDSactive: TBooleanField
      FieldName = 'active'
      ReadOnly = True
      DisplayValues = 'Y;N'
    end
    object MasterCDScities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCDSitinerary_en: TMemoField
      FieldName = 'itinerary_en'
      BlobType = ftMemo
    end
    object MasterCDSfactfinder_en: TMemoField
      FieldName = 'factfinder_en'
      BlobType = ftMemo
    end
    object MasterCDStravelstyles_id: TIntegerField
      FieldName = 'travelstyles_id'
    end
    object MasterCDSAgentLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookUp'
      LookupDataSet = AgentCDS
      LookupKeyFields = 'AddressBook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'agent_addressbook_id'
      Size = 50
      Lookup = True
    end
    object MasterCDSHotelLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookUp'
      LookupDataSet = HotelCDS
      LookupKeyFields = 'AddressBook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'hotel_addressbook_id'
      Size = 40
      Lookup = True
    end
    object MasterCDSCityLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'CityLookUp'
      LookupDataSet = CitiesCDS
      LookupKeyFields = 'Cities_id'
      LookupResultField = 'City'
      KeyFields = 'cities_id'
      Size = 50
      Lookup = True
    end
  end
  inherited MasterSQLTable: TSQLTable
    TableName = 'TourCodes'
    Left = 309
    Top = 183
  end
  object HotelQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT AddressBook_id, Organisation '
      'FROM AddressBook ORDER BY Organisation')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 256
  end
  object CitiesQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Cities_id, City FROM Cities ORDER BY City')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 320
    object CitiesQryCities_id: TIntegerField
      FieldName = 'Cities_id'
      Required = True
    end
    object CitiesQryCity: TStringField
      FieldName = 'City'
      FixedChar = True
      Size = 50
    end
  end
  object HotelDSP: TDataSetProvider
    DataSet = HotelQry
    Left = 360
    Top = 256
  end
  object CitiesDSP: TDataSetProvider
    DataSet = CitiesQry
    Left = 352
    Top = 320
  end
  object HotelCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDSP'
    Left = 360
    Top = 232
    object HotelCDSAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object HotelCDSOrganisation: TStringField
      FieldName = 'Organisation'
      FixedChar = True
      Size = 60
    end
  end
  object CitiesCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDSP'
    Left = 352
    Top = 296
    object CitiesCDSCities_id: TIntegerField
      FieldName = 'Cities_id'
      Required = True
    end
    object CitiesCDSCity: TStringField
      FieldName = 'City'
      FixedChar = True
      Size = 50
    end
  end
  object AgentCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDSP'
    Left = 264
    Top = 232
    object IntegerField1: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object StringField1: TStringField
      FieldName = 'Organisation'
      FixedChar = True
      Size = 60
    end
  end
  object AgentDSP: TDataSetProvider
    DataSet = AgentQry
    Left = 264
    Top = 256
  end
  object AgentQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT AddressBook_id, Organisation '
      'FROM AddressBook ORDER BY Organisation')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 232
    Top = 256
  end
end
