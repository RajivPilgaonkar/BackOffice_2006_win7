object ReportParamForm: TReportParamForm
  Left = 154
  Top = 139
  Width = 706
  Height = 446
  Caption = 'Report Parameters'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxDateRangeCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'Date Range'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxFromDateLabel: TcxLabel
      Left = 168
      Top = 9
      Caption = 'From Date'
      Transparent = True
    end
    object cxFromDateEdit: TcxDateEdit
      Left = 240
      Top = 8
      TabOrder = 2
      Width = 121
    end
    object cxToDateLabel: TcxLabel
      Left = 384
      Top = 9
      Caption = 'To Date'
      Transparent = True
    end
    object cxToDateEdit: TcxDateEdit
      Left = 456
      Top = 8
      TabOrder = 4
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 1
    object cxCompanyCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'Company'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxCompanyLCMB: TcxLookupComboBox
      Left = 168
      Top = 8
      Properties.KeyFieldNames = 'Companies_id'
      Properties.ListColumns = <
        item
          FieldName = 'Company'
        end>
      Properties.ListSource = CompaniesDs
      Properties.OnEditValueChanged = cxCompanyLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 409
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 246
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 2
    object cxMonthCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'Month'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxMonthsLCMB: TcxLookupComboBox
      Left = 168
      Top = 8
      Properties.KeyFieldNames = 'Months_id'
      Properties.ListColumns = <
        item
          FieldName = 'MonthName'
        end>
      Properties.ListSource = MonthsDs
      Properties.OnEditValueChanged = cxMonthsLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 225
    end
    object cxLabelYear: TcxLabel
      Left = 464
      Top = 9
      Caption = 'Year'
      Transparent = True
    end
    object cxYearEdit: TcxTextEdit
      Left = 510
      Top = 8
      TabOrder = 3
      Width = 65
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 123
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 3
    object cxDivisionCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'Division'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxDivisionLCMB: TcxLookupComboBox
      Left = 168
      Top = 8
      Properties.KeyFieldNames = 'Divisions_id'
      Properties.ListColumns = <
        item
          FieldName = 'Division'
        end>
      Properties.ListSource = DivisionsDs
      Properties.OnEditValueChanged = cxDivisionLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 409
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 82
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 4
    object cxOfficeCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'Office'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxOfficeLCMB: TcxLookupComboBox
      Left = 168
      Top = 8
      Properties.DropDownWidth = 550
      Properties.KeyFieldNames = 'Customers_id'
      Properties.ListColumns = <
        item
          MinWidth = 450
          FieldName = 'Customer'
        end
        item
          MinWidth = 100
          FieldName = 'PlantCustNo'
        end>
      Properties.ListSource = OrgDs
      Properties.OnEditValueChanged = cxOfficeLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 409
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 164
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 5
    object cxCityCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'City'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 168
      Top = 8
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          Width = 200
          FieldName = 'City'
        end
        item
          Width = 200
          FieldName = 'State'
        end>
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 409
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 205
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 6
    object cxOrganisationCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'Organisation'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxOrganisationLCMB: TcxLookupComboBox
      Left = 168
      Top = 8
      Properties.KeyFieldNames = 'AccountTypes_id'
      Properties.ListColumns = <
        item
          FieldName = 'AccountType'
        end>
      Properties.OnEditValueChanged = cxOrganisationLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 409
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 287
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 7
    object cxUserCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'User'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxUserLCMB: TcxLookupComboBox
      Left = 168
      Top = 8
      Properties.KeyFieldNames = 'AdmUsers_id'
      Properties.ListColumns = <
        item
          FieldName = 'Username'
        end>
      Properties.ListSource = UserDs
      Properties.OnEditValueChanged = cxUserLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 409
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 328
    Width = 698
    Height = 41
    Align = alTop
    TabOrder = 8
    object cxNumberRangeCkb: TcxCheckBox
      Left = 8
      Top = 9
      Caption = 'Number Range'
      TabOrder = 0
      Transparent = True
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 168
      Top = 9
      Caption = 'From '
      Transparent = True
    end
    object cxFromTextEdit: TcxTextEdit
      Left = 216
      Top = 8
      TabOrder = 2
      Width = 65
    end
    object cxLabel6: TcxLabel
      Left = 304
      Top = 9
      Caption = 'To'
      Transparent = True
    end
    object cxToTextEdit: TcxTextEdit
      Left = 336
      Top = 8
      TabOrder = 4
      Width = 65
    end
  end
  object Panel12: TPanel
    Left = 0
    Top = 369
    Width = 698
    Height = 43
    Align = alClient
    TabOrder = 9
    object cxButtonOK: TcxButton
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = cxButtonOKClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object cxButtonCancel: TcxButton
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object CompaniesSds: TSQLDataSet
    CommandText = 
      'SELECT Companies_id, Name As Company FROM Companies'#13#10'WHERE Compa' +
      'nies_id > 0'#13#10'ORDER BY Companies_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 592
    Top = 49
  end
  object CompaniesDsp: TDataSetProvider
    DataSet = CompaniesSds
    Left = 616
    Top = 49
  end
  object CompaniesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CompaniesDsp'
    Left = 632
    Top = 49
    object CompaniesCdsCompanies_id: TIntegerField
      FieldName = 'Companies_id'
    end
    object CompaniesCdsCompany: TStringField
      FieldName = 'Company'
      Size = 50
    end
  end
  object CompaniesDs: TDataSource
    DataSet = CompaniesCds
    Left = 656
    Top = 49
  end
  object MonthsSds: TSQLDataSet
    CommandText = 'SELECT Months_id, MonthName FROM Months'#13#10'ORDER BY Months_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 254
  end
  object MonthsDsp: TDataSetProvider
    DataSet = MonthsSds
    Left = 224
    Top = 254
  end
  object MonthsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MonthsDsp'
    Left = 240
    Top = 254
    object MonthsCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
    end
    object MonthsCdsMonthName: TStringField
      FieldName = 'MonthName'
    end
  end
  object MonthsDs: TDataSource
    DataSet = MonthsCds
    Left = 256
    Top = 254
  end
  object OfficesSds: TSQLDataSet
    CommandText = 
      'SELECT Offices_id, Offices, Companies_id'#13#10'FROM Offices'#13#10'WHERE Co' +
      'mpanies_id = :Companies_id'#13#10'ORDER BY Offices'#13#10#13#10
    DataSource = CompaniesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Companies_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 592
    Top = 86
  end
  object OfficesDsp: TDataSetProvider
    DataSet = OfficesSds
    Left = 616
    Top = 86
  end
  object OfficesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Companies_id'
    MasterFields = 'Companies_id'
    MasterSource = CompaniesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'OfficesDsp'
    Left = 632
    Top = 86
    object OfficesCdsOffices_id: TIntegerField
      FieldName = 'Offices_id'
    end
    object OfficesCdsOffices: TStringField
      FieldName = 'Offices'
      Size = 50
    end
    object OfficesCdsCompanies_id: TIntegerField
      FieldName = 'Companies_id'
    end
  end
  object OfficesDs: TDataSource
    DataSet = OfficesCds
    Left = 656
    Top = 86
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Cities_id, c.City, s.State'#13#10'FROM Cities c'#13#10'LEFT JOIN St' +
      'ates s ON c.States_id = s.States_id'#13#10'ORDER BY City'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 592
    Top = 166
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 616
    Top = 166
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 632
    Top = 166
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object CitiesCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 656
    Top = 166
  end
  object DivisionsSds: TSQLDataSet
    CommandText = 
      'SELECT Divisions_id, Division, Companies_id'#13#10'FROM Divisions'#13#10'WHE' +
      'RE Companies_id = :Companies_id'#13#10'ORDER BY Division'#13#10#13#10
    DataSource = CompaniesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Companies_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 592
    Top = 126
  end
  object DivisionsDsp: TDataSetProvider
    DataSet = DivisionsSds
    Left = 616
    Top = 126
  end
  object DivisionsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Companies_id'
    MasterFields = 'Companies_id'
    MasterSource = CompaniesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'DivisionsDsp'
    Left = 632
    Top = 126
    object DivisionsCdsDivisions_id: TIntegerField
      FieldName = 'Divisions_id'
    end
    object DivisionsCdsDivision: TStringField
      FieldName = 'Division'
    end
    object DivisionsCdsCompanies_id: TIntegerField
      FieldName = 'Companies_id'
    end
  end
  object DivisionsDs: TDataSource
    DataSet = DivisionsCds
    Left = 656
    Top = 126
  end
  object OrgSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM dbo.fn_addressbook(2,'#39'H'#39')'#13#10'WHERE Cities_id = :Citi' +
      'es_id'#13#10'ORDER BY Organisation'
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 592
    Top = 206
  end
  object OrgDsp: TDataSetProvider
    DataSet = OrgSds
    Left = 616
    Top = 206
  end
  object OrgCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'OrgDsp'
    Left = 632
    Top = 206
    object OrgCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object OrgCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object OrgCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object OrgCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object OrgCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
    object OrgCdsPostalCode: TStringField
      FieldName = 'PostalCode'
      Size = 10
    end
  end
  object OrgDs: TDataSource
    DataSet = OrgCds
    Left = 656
    Top = 206
  end
  object UserSds: TSQLDataSet
    CommandText = 
      'SELECT AdmUsers_id, Username, uid'#13#10'FROM AdmUsers'#13#10'ORDER BY Usern' +
      'ame'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 592
    Top = 294
  end
  object UserDsp: TDataSetProvider
    DataSet = UserSds
    Left = 616
    Top = 294
  end
  object UserCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UserDsp'
    Left = 632
    Top = 294
    object UserCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object UserCdsUsername: TStringField
      FieldName = 'Username'
      Size = 10
    end
    object UserCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
  end
  object UserDs: TDataSource
    DataSet = UserCds
    Left = 656
    Top = 294
  end
end
