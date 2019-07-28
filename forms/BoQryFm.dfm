object BoQryForm: TBoQryForm
  Left = 458
  Top = 20
  Width = 525
  Height = 565
  Caption = 'Parameters'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 517
    Height = 480
    Align = alClient
    TabOrder = 0
    object ToursPnl: TcxGroupBox
      Left = 1
      Top = 320
      Align = alBottom
      TabOrder = 0
      Height = 53
      Width = 515
      object Label5: TcxLabel
        Left = 220
        Top = 25
        Caption = 'Departure Date'
        Transparent = True
      end
      object TourCodeChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'Tour Code'
        TabOrder = 0
        Transparent = True
        Width = 84
      end
      object TourCodeLookUpCmb: TDBLookupComboBox
        Left = 110
        Top = 20
        Width = 105
        Height = 21
        KeyField = 'TourCodes_id'
        ListField = 'TourCode'
        ListSource = TourCodeDS
        TabOrder = 1
      end
      object DepDtTCdLookUpCmb: TDBLookupComboBox
        Left = 310
        Top = 20
        Width = 105
        Height = 21
        KeyField = 'TourDepartureDates_id'
        ListField = 'TourDate'
        ListSource = DepDtDS
        TabOrder = 2
      end
      object ShowTourCodesChk: TcxCheckBox
        Left = 424
        Top = 25
        Caption = 'Show All'
        TabOrder = 3
        Transparent = True
        Width = 78
      end
    end
    object CityPnl: TcxGroupBox
      Left = 1
      Top = 214
      Align = alBottom
      TabOrder = 1
      Height = 53
      Width = 515
      object CityChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'City'
        TabOrder = 0
        Transparent = True
        Width = 47
      end
      object CityLookUpCmb: TDBLookupComboBox
        Left = 110
        Top = 20
        Width = 250
        Height = 21
        KeyField = 'Cities_id'
        ListField = 'City'
        ListSource = CityDS
        TabOrder = 1
      end
    end
    object OrgPnl: TcxGroupBox
      Left = 1
      Top = 267
      Align = alBottom
      TabOrder = 2
      Height = 53
      Width = 515
      object OrgChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'Organisation'
        TabOrder = 0
        Transparent = True
        Width = 97
      end
      object OrgLookUpCmb: TDBLookupComboBox
        Left = 110
        Top = 20
        Width = 250
        Height = 21
        KeyField = 'AddressBook_id'
        ListField = 'Organisation'
        ListSource = OrgDS
        TabOrder = 1
      end
    end
    object MastersPnl: TcxGroupBox
      Left = 1
      Top = 373
      Align = alBottom
      TabOrder = 3
      Height = 53
      Width = 515
      object Label6: TcxLabel
        Left = 220
        Top = 25
        Caption = 'Departure Date'
        Transparent = True
      end
      object TourFamChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'Tour Family'
        TabOrder = 0
        Transparent = True
        Width = 91
      end
      object TourFamLookUpCmb: TDBLookupComboBox
        Left = 110
        Top = 20
        Width = 105
        Height = 21
        KeyField = 'Masters_id'
        ListField = 'MasterCode'
        ListSource = MasterDS
        TabOrder = 1
      end
      object DepDtTFamLookUpCmb: TDBLookupComboBox
        Left = 310
        Top = 20
        Width = 105
        Height = 21
        KeyField = 'Masters_id'
        ListField = 'TourDate'
        ListSource = MasterDepdtDS
        TabOrder = 2
      end
      object ShowAllTourFamChk: TcxCheckBox
        Left = 424
        Top = 25
        Caption = 'Show All'
        TabOrder = 3
        Transparent = True
        Width = 78
      end
    end
    object MonthYrPnl: TcxGroupBox
      Left = 1
      Top = 426
      Align = alBottom
      TabOrder = 4
      Height = 53
      Width = 515
      object Label3: TcxLabel
        Left = 110
        Top = 25
        Caption = 'From'
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 350
        Top = 25
        Caption = 'Year'
        Transparent = True
      end
      object MonthChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'Month'
        TabOrder = 0
        Transparent = True
        Width = 60
      end
      object YearEdit: TMaskEdit
        Left = 380
        Top = 21
        Width = 130
        Height = 21
        TabOrder = 1
        Text = 'YearEdit'
      end
      object MonthCmb: TComboBox
        Left = 145
        Top = 21
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        Text = 'MonthCmb'
        Items.Strings = (
          'JAN'
          'FEB'
          'MAR'
          'APR'
          'MAY'
          'JUN'
          'JUL'
          'AUG'
          'SEP'
          'OCT'
          'NOV'
          'DEC')
      end
    end
    object DivisionPnl: TcxGroupBox
      Left = 1
      Top = 161
      Align = alBottom
      TabOrder = 5
      Height = 53
      Width = 515
      object DivisionChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'Division'
        TabOrder = 0
        Transparent = True
        Width = 71
      end
      object DivisionLookUpCmb: TDBLookupComboBox
        Left = 110
        Top = 20
        Width = 250
        Height = 21
        KeyField = 'Divisions_id'
        ListField = 'Division'
        ListSource = DivsionDS
        TabOrder = 1
      end
    end
    object OfficePnl: TcxGroupBox
      Left = 1
      Top = 108
      Align = alBottom
      TabOrder = 6
      Height = 53
      Width = 515
      object OfficeChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'Office'
        TabOrder = 0
        Transparent = True
        Width = 61
      end
      object OfficeLookUpCmb: TDBLookupComboBox
        Left = 110
        Top = 20
        Width = 250
        Height = 21
        KeyField = 'Offices_id'
        ListField = 'Offices'
        ListSource = OfficeDS
        TabOrder = 1
      end
    end
    object CompanyPnl: TcxGroupBox
      Left = 1
      Top = 55
      Align = alBottom
      TabOrder = 7
      Height = 53
      Width = 515
      object CompanyChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'Company'
        TabOrder = 0
        Transparent = True
        Width = 97
      end
      object CompLookUpCmb: TDBLookupComboBox
        Left = 110
        Top = 20
        Width = 250
        Height = 21
        KeyField = 'Companies_id'
        ListField = 'Name'
        ListSource = CompDS
        TabOrder = 1
      end
    end
    object DateRangePnl: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 8
      Height = 54
      Width = 515
      object Label1: TcxLabel
        Left = 110
        Top = 27
        Caption = 'From'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 355
        Top = 27
        Caption = 'To'
        Transparent = True
      end
      object DateChk: TcxCheckBox
        Left = 15
        Top = 25
        Caption = 'Date'
        TabOrder = 0
        Transparent = True
        Width = 52
      end
      object FromDateEdit: TDateTimePicker
        Left = 145
        Top = 23
        Width = 130
        Height = 21
        Date = 38543.426688657400000000
        Time = 38543.426688657400000000
        TabOrder = 1
      end
      object ToDateEdit: TDateTimePicker
        Left = 380
        Top = 23
        Width = 130
        Height = 21
        Date = 38543.426700011570000000
        Time = 38543.426700011570000000
        TabOrder = 2
      end
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 480
    Width = 517
    Height = 51
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 328
      Top = 12
      Width = 90
      Height = 30
      Caption = '&Cancel'
      TabOrder = 0
      Kind = bkCancel
    end
    object BitBtn1: TBitBtn
      Left = 136
      Top = 12
      Width = 90
      Height = 30
      Caption = '&OK'
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
  object CompDS: TDataSource
    DataSet = CompCDS
    Left = 422
    Top = 69
  end
  object CompQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Companies_id, Name FROM Companies'
      'ORDER BY Name')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 88
  end
  object CompCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CompDSP'
    Left = 440
    Top = 64
    object CompCDSCompanies_id: TIntegerField
      FieldName = 'Companies_id'
    end
    object CompCDSName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object CompDSP: TDataSetProvider
    DataSet = CompQry
    Left = 440
    Top = 88
  end
  object OfficeCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OfficeDSP'
    Left = 440
    Top = 119
    object OfficeCDSOffices_id: TIntegerField
      FieldName = 'Offices_id'
    end
    object OfficeCDSOffices: TStringField
      FieldName = 'Offices'
      Size = 50
    end
  end
  object OfficeDS: TDataSource
    DataSet = OfficeCDS
    Left = 422
    Top = 124
  end
  object OfficeQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Offices_id, Offices FROM Offices'
      'ORDER BY Offices')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 143
  end
  object OfficeDSP: TDataSetProvider
    DataSet = OfficeQry
    Left = 440
    Top = 143
  end
  object DivsionCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DivsionDSP'
    Left = 440
    Top = 174
    object DivsionCDSDivisions_id: TIntegerField
      FieldName = 'Divisions_id'
    end
    object DivsionCDSDivision: TStringField
      FieldName = 'Division'
    end
  end
  object DivsionDS: TDataSource
    DataSet = DivsionCDS
    Left = 422
    Top = 179
  end
  object DivsionQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Divisions_id, Division FROM Divisions'
      'ORDER BY Division')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 198
  end
  object DivsionDSP: TDataSetProvider
    DataSet = DivsionQry
    Left = 440
    Top = 198
  end
  object CityCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CityDSP'
    Left = 440
    Top = 221
    object CityCDSCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CityCDSCityCode: TStringField
      FieldName = 'CityCode'
      FixedChar = True
      Size = 4
    end
    object CityCDSCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CityDS: TDataSource
    DataSet = CityCDS
    Left = 422
    Top = 226
  end
  object CityQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Cities_id, CityCode, City FROM Cities'
      'ORDER BY City')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 245
  end
  object CityDSP: TDataSetProvider
    DataSet = CityQry
    Left = 440
    Top = 245
  end
  object OrgCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OrgDSP'
    Left = 440
    Top = 280
    object OrgCDSAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object OrgCDSOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object OrgDS: TDataSource
    DataSet = OrgCDS
    Left = 422
    Top = 285
  end
  object OrgQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT AddressBook_id, Organisation '
      'FROM AddressBook '
      'ORDER BY Organisation '
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 304
  end
  object OrgDSP: TDataSetProvider
    DataSet = OrgQry
    Left = 440
    Top = 304
  end
  object DepDtCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'TourCodes_id'
    MasterFields = 'TourCodes_id'
    MasterSource = TourCodeDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'DepDtDSP'
    Left = 483
    Top = 331
    object DepDtCDSTourDepartureDates_id: TIntegerField
      FieldName = 'TourDepartureDates_id'
    end
    object DepDtCDSTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
    end
    object DepDtCDSTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
  end
  object DepDtDS: TDataSource
    DataSet = DepDtCDS
    Left = 481
    Top = 336
  end
  object DepDtQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT TourDepartureDates_id, TourDate, TourCodes_id '
      'FROM TourDepartureDates'
      'ORDER BY TourDate')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 483
    Top = 355
  end
  object DepDtDSP: TDataSetProvider
    DataSet = DepDtQry
    Left = 483
    Top = 355
  end
  object MasterDepdtCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'Masters_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'MasterDepdtDSP'
    Left = 483
    Top = 387
    object MasterDepdtCDSMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object MasterDepdtCDSTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
    end
  end
  object MasterDepdtDS: TDataSource
    DataSet = MasterDepdtCDS
    Left = 465
    Top = 392
  end
  object MasterDepdtQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Masters_id, TourDate FROM MasterDepartureDates'
      'ORDER BY TourDate')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 467
    Top = 411
  end
  object MasterDepdtDSP: TDataSetProvider
    DataSet = MasterDepdtQry
    Left = 483
    Top = 411
  end
  object MasterDS: TDataSource
    DataSet = MasterCDS
    Left = 235
    Top = 392
  end
  object MasterCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDSP'
    Left = 253
    Top = 387
    object MasterCDSMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object MasterCDSMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object MasterCDSName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object MasterQRY: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Masters_id, MasterCode, Name FROM Masters'
      'ORDER BY MasterCode')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 237
    Top = 411
  end
  object MasterDSP: TDataSetProvider
    DataSet = MasterQRY
    Left = 253
    Top = 411
  end
  object TourCodeDS: TDataSource
    DataSet = TourCodeCDS
    Left = 219
    Top = 336
  end
  object TourCodeQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT TourCodes_id, TourCode FROM TourCodes'
      'ORDER BY TourCode')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 221
    Top = 355
  end
  object TourCodeCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDSP'
    Left = 237
    Top = 331
    object TourCodeCDSTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCDSTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
  end
  object TourCodeDSP: TDataSetProvider
    DataSet = TourCodeQry
    Left = 237
    Top = 355
  end
end
