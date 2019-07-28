object Custom_CostAcc_Form: TCustom_CostAcc_Form
  Left = 104
  Top = 40
  Width = 1097
  Height = 723
  Caption = 'Custom_CostAcc_Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 514
    Width = 1081
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 401
    Width = 1081
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 223
    Width = 1081
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1081
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 576
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 758
      Top = 4
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 8
      Caption = 'City'
      Transparent = True
    end
    object cxCityLcmb: TcxLookupComboBox
      Left = 37
      Top = 6
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Width = 150
          FieldName = 'city'
        end
        item
          Width = 150
          FieldName = 'state'
        end>
      Style.Color = clWindow
      TabOrder = 1
      Width = 150
    end
    object cxLabel2: TcxLabel
      Left = 204
      Top = 8
      Caption = 'Hotel'
      Transparent = True
    end
    object cxHotelLcmb: TcxLookupComboBox
      Left = 241
      Top = 6
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = HotelDs
      Properties.ValidateOnEnter = False
      EditValue = 0
      Style.Color = clWhite
      TabOrder = 3
      Width = 312
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 605
      Top = 6
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      TabOrder = 4
      Width = 148
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 637
    Width = 1081
    Height = 48
    Align = alBottom
    TabOrder = 1
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      Kind = cxbkDropDownButton
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 423
      Top = 8
      Width = 260
      Height = 33
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDs
      TabOrder = 1
    end
    object cxDBLabelKeyId_Master: TcxDBLabel
      Left = 823
      Top = 3
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
    object cxDBLabelKeyId_Detail2: TcxDBLabel
      Left = 824
      Top = 19
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 62
    end
    object cxButtonClose: TcxButton
      Left = 1003
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 4
      OnClick = cxButtonCloseClick
    end
    object cxDBLabelKeyId_Detail1: TcxDBLabel
      Left = 903
      Top = 3
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 517
    Width = 1081
    Height = 120
    Align = alBottom
    TabOrder = 2
    object cxPageControl4: TcxPageControl
      Left = 1
      Top = 1
      Width = 1079
      Height = 118
      ActivePage = cxTabSheetCalc
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 112
      ClientRectLeft = 3
      ClientRectRight = 1073
      ClientRectTop = 26
      object cxTabSheetCalc: TcxTabSheet
        Caption = 'Cost Calculator'
        ImageIndex = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 404
    Width = 1081
    Height = 110
    Align = alBottom
    TabOrder = 3
    object cxPageControl3: TcxPageControl
      Left = 1
      Top = 1
      Width = 1079
      Height = 108
      ActivePage = cxTabSheet3
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 102
      ClientRectLeft = 3
      ClientRectRight = 1073
      ClientRectTop = 26
      object cxTabSheet3: TcxTabSheet
        Caption = 'Meal Costs'
        ImageIndex = 0
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 1081
    Height = 190
    Align = alTop
    TabOrder = 4
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1079
      Height = 138
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 132
      ClientRectLeft = 3
      ClientRectRight = 1073
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Seasons'
        ImageIndex = 0
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 139
      Width = 1079
      Height = 50
      Align = alBottom
      TabOrder = 1
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 226
    Width = 1081
    Height = 175
    Align = alClient
    TabOrder = 5
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 1079
      Height = 173
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 167
      ClientRectLeft = 3
      ClientRectRight = 1073
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Hotel Tariffs'
        ImageIndex = 0
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 36
    Top = 596
    object CopyTrains1: TMenuItem
      Caption = 'Search By Categories'
    end
  end
  object Detail1Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM HotelTariffsIndia'#13#10'WHERE Seasons_id = :Seasons_id'#13 +
      #10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'seasons_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 522
    Top = 24
  end
  object Detail1Dsp: TDataSetProvider
    DataSet = Detail1Sds
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 24
  end
  object Detail1Cds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'seasons_id'
    MasterFields = 'seasons_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail1Dsp'
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    AfterDelete = Detail1CdsAfterDelete
    Left = 561
    Top = 24
    object Detail1Cdshoteltariffs_id: TIntegerField
      FieldName = 'hoteltariffs_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsseasons_id: TIntegerField
      FieldName = 'seasons_id'
    end
    object Detail1Cdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object Detail1Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail1Cdscurrencies_pt_id: TIntegerField
      FieldName = 'currencies_pt_id'
    end
    object Detail1Cdscost_single: TBCDField
      FieldName = 'cost_single'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscost_single_pt: TBCDField
      FieldName = 'cost_single_pt'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscost_single_ac: TBCDField
      FieldName = 'cost_single_ac'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscost_single_ac_pt: TBCDField
      FieldName = 'cost_single_ac_pt'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscost_double: TBCDField
      FieldName = 'cost_double'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscost_double_pt: TBCDField
      FieldName = 'cost_double_pt'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscost_double_ac: TBCDField
      FieldName = 'cost_double_ac'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscost_double_ac_pt: TBCDField
      FieldName = 'cost_double_ac_pt'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsnett: TBooleanField
      FieldName = 'nett'
    end
    object Detail1Cdsnett_pt: TBooleanField
      FieldName = 'nett_pt'
    end
    object Detail1Cdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object Detail1Cdsmealplans_pt_id: TIntegerField
      FieldName = 'mealplans_pt_id'
    end
    object Detail1Cdsfreetransfer: TBooleanField
      FieldName = 'freetransfer'
    end
    object Detail1Cdsextrabed: TBCDField
      FieldName = 'extrabed'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsextrabed_pt: TBCDField
      FieldName = 'extrabed_pt'
      Precision = 10
      Size = 2
    end
  end
  object Detail1Ds: TDataSource
    DataSet = Detail1Cds
    Left = 583
    Top = 24
  end
  object Detail2Sds: TSQLDataSet
    CommandText = 'SELECT * FROM MealCostsIndia'#13#10'WHERE Seasons_id = :Seasons_id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'seasons_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 24
  end
  object Detail2Dsp: TDataSetProvider
    DataSet = Detail2Sds
    UpdateMode = upWhereKeyOnly
    Left = 702
    Top = 24
  end
  object Detail2Cds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'seasons_id'
    MasterFields = 'seasons_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail2Dsp'
    BeforeInsert = Detail2CdsBeforeInsert
    BeforeEdit = Detail2CdsBeforeEdit
    BeforePost = Detail2CdsBeforePost
    AfterPost = Detail2CdsAfterPost
    BeforeDelete = Detail2CdsBeforeDelete
    AfterDelete = Detail2CdsAfterDelete
    Left = 719
    Top = 24
    object Detail2Cdsmealcosts_id: TIntegerField
      FieldName = 'mealcosts_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail2Cdsseasons_id: TIntegerField
      FieldName = 'seasons_id'
    end
    object Detail2Cdsbreakfast: TBCDField
      FieldName = 'breakfast'
      Precision = 10
      Size = 2
    end
    object Detail2Cdsbreakfast_pt: TBCDField
      FieldName = 'breakfast_pt'
      Precision = 10
      Size = 2
    end
    object Detail2Cdslunch: TBCDField
      FieldName = 'lunch'
      Precision = 10
      Size = 2
    end
    object Detail2Cdslunch_pt: TBCDField
      FieldName = 'lunch_pt'
      Precision = 10
      Size = 2
    end
    object Detail2Cdsdinner: TBCDField
      FieldName = 'dinner'
      Precision = 10
      Size = 2
    end
    object Detail2Cdsdinner_pt: TBCDField
      FieldName = 'dinner_pt'
      Precision = 10
      Size = 2
    end
    object Detail2Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail2Cdscurrencies_pt_id: TIntegerField
      FieldName = 'currencies_pt_id'
    end
  end
  object Detail2Ds: TDataSource
    DataSet = Detail2Cds
    Left = 741
    Top = 24
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook(2,'#39'H'#39') '#13#10'WHERE Cities_id = :Cities_' +
      'id'
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
    Left = 267
    Top = 3
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 279
    Top = 3
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 300
    Top = 3
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object HotelCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 314
    Top = 3
  end
  object WefSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT DISTINCT Addressbook_id, FromDate As Wef'#13#10'FROM Seasons'#13#10'W' +
      'HERE Addressbook_id = :Addressbook_id'#13#10'ORDER BY FromDate DESC'
    DataSource = HotelDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 624
    Top = 3
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 640
    Top = 3
  end
  object WefCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'WefDsp'
    Left = 656
    Top = 3
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object WefCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 672
    Top = 3
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state'#13#10'from cities c '#13#10'left join states ' +
      's on c.states_id = s.states_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 72
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 88
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 104
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 120
  end
  object MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM Seasons'#13#10'WHERE Addressbook_id = :Addressbook_id'#13#10'A' +
      'ND FromDate = :Wef'#13#10
    MaxBlobSize = -1
    Params = <
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
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 216
    Top = 32
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 238
    Top = 32
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 263
    Top = 32
    object IntegerField1: TIntegerField
      FieldName = 'seasons_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'addressbook_id'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'fromdate'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'todate'
    end
    object BCDField1: TBCDField
      FieldName = 'frompax'
      Precision = 10
      Size = 2
    end
    object BCDField2: TBCDField
      FieldName = 'to_pax'
      Precision = 10
      Size = 2
    end
    object BooleanField1: TBooleanField
      FieldName = 'git'
    end
    object BCDField3: TBCDField
      FieldName = 'servicecharges'
      Precision = 10
      Size = 2
    end
    object BCDField4: TBCDField
      FieldName = 'tac'
      Precision = 10
      Size = 2
    end
    object BCDField5: TBCDField
      FieldName = 'tac_pt'
      Precision = 10
      Size = 2
    end
    object BooleanField2: TBooleanField
      FieldName = 'taconmealplan'
    end
    object BooleanField3: TBooleanField
      FieldName = 'taconmealplan_pt'
    end
    object BooleanField4: TBooleanField
      FieldName = 'servicechargesonplan'
    end
    object BooleanField5: TBooleanField
      FieldName = 'closed'
    end
    object BCDField6: TBCDField
      FieldName = 'tl_discount'
      Precision = 10
      Size = 2
    end
    object IntegerField3: TIntegerField
      FieldName = 'tl_discountabove'
    end
    object IntegerField4: TIntegerField
      FieldName = 'tl_freeabove'
    end
    object BooleanField6: TBooleanField
      FieldName = 'tl_halfdouble'
    end
    object BCDField7: TBCDField
      FieldName = 'extrabedcost'
      Precision = 10
      Size = 2
    end
    object IntegerField5: TIntegerField
      FieldName = 'policyonescorts_id'
    end
    object IntegerField6: TIntegerField
      FieldName = 'dayoftheweek'
    end
    object BCDField8: TBCDField
      FieldName = 'extrabedpercentage'
      Precision = 10
      Size = 2
    end
    object BCDField9: TBCDField
      FieldName = 'luxtax'
      Precision = 10
      Size = 2
    end
    object BooleanField7: TBooleanField
      FieldName = 'luxtaxonpt'
    end
    object BCDField10: TBCDField
      FieldName = 'exptax'
      Precision = 10
      Size = 2
    end
    object BCDField11: TBCDField
      FieldName = 'salestax'
      Precision = 10
      Size = 2
    end
    object BooleanField8: TBooleanField
      FieldName = 'salestaxinclusive'
    end
    object IntegerField7: TIntegerField
      FieldName = 'default_roomtypes_id'
    end
    object BooleanField9: TBooleanField
      FieldName = 'default_ac'
    end
    object BooleanField10: TBooleanField
      FieldName = 'exptax_notapplicable'
    end
    object BooleanField11: TBooleanField
      FieldName = 'salestaxinclusive_pt'
    end
    object BooleanField12: TBooleanField
      FieldName = 'SpecialPeriod'
    end
    object MemoField1: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
    end
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 0
      Calculated = True
    end
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 285
    Top = 32
  end
end
