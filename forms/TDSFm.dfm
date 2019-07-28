inherited TDSForm: TTDSForm
  Left = 46
  Top = 79
  Height = 622
  Caption = 'TDSForm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    TabOrder = 2
    object UtilitiesBtn: TcxButton
      Left = 10
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Utilities'
      TabOrder = 0
      DropDownMenu = UtilitiesPopup
      Kind = cxbkDropDown
    end
    object ReportsBtn: TcxButton
      Left = 126
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Reports'
      TabOrder = 1
      DropDownMenu = ReportsPopup
      Kind = cxbkDropDown
    end
  end
  inherited Panel2: TPanel
    Top = 543
    object CloseBtn: TcxButton
      Left = 832
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Close'
      TabOrder = 0
      OnClick = CloseBtnClick
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 41
    Width = 922
    Height = 502
    Align = alClient
    Color = 15451300
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 29
      Align = alTop
      Caption = ' TDS '
      TabOrder = 1
      Height = 95
      Width = 920
      object Label1: TLabel
        Left = 9
        Top = 23
        Width = 106
        Height = 13
        Caption = 'Certificate Number'
        Transparent = True
      end
      object Label2: TLabel
        Left = 9
        Top = 47
        Width = 72
        Height = 13
        Caption = 'Organisation'
        Transparent = True
      end
      object Label3: TLabel
        Left = 9
        Top = 71
        Width = 68
        Height = 13
        Caption = 'Year/Month'
        Transparent = True
      end
      object Label4: TLabel
        Left = 425
        Top = 23
        Width = 28
        Height = 13
        Caption = 'Date'
        Transparent = True
      end
      object Label5: TLabel
        Left = 425
        Top = 47
        Width = 51
        Height = 13
        Caption = 'Category'
        Transparent = True
      end
      object CertificateNoEdit: TcxDBTextEdit
        Left = 124
        Top = 21
        DataBinding.DataField = 'certno'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 130
      end
      object CategoryLCmb: TcxDBLookupComboBox
        Left = 491
        Top = 43
        DataBinding.DataField = 'tdscategories_id'
        DataBinding.DataSource = MasterDS
        Properties.KeyFieldNames = 'TDSCategories_id'
        Properties.ListColumns = <
          item
            FieldName = 'Description'
          end>
        Properties.ListSource = TdsCategoriesDs
        Style.Color = 16247513
        TabOrder = 3
        Width = 262
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 424
        Top = 69
        Width = 299
        Height = 25
        Buttons.PriorPage.Visible = False
        Buttons.NextPage.Visible = False
        Buttons.Refresh.Visible = True
        Buttons.SaveBookmark.Visible = True
        Buttons.GotoBookmark.Visible = True
        Buttons.Filter.Visible = True
        DataSource = MasterDS
        TabOrder = 4
      end
      object DateEdit: TcxDBDateEdit
        Left = 492
        Top = 20
        DataBinding.DataField = 'date'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        OnExit = DateEditExit
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 124
        Top = 45
        DataBinding.DataField = 'addressbook_id'
        DataBinding.DataSource = MasterDS
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'addressbook_id'
        Properties.ListColumns = <
          item
            MinWidth = 200
            FieldName = 'Organisation'
          end
          item
            MinWidth = 100
            FieldName = 'City'
          end>
        Properties.ListSource = PartyDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 290
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 124
        Top = 69
        DataBinding.DataField = 'month'
        DataBinding.DataSource = MasterDS
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'Months_id'
        Properties.ListColumns = <
          item
            FieldName = 'MonthName'
          end>
        Properties.ListSource = MonthDS
        Style.Color = 16247513
        TabOrder = 5
        Width = 129
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 260
        Top = 69
        DataBinding.DataField = 'yearref'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 6
        Width = 61
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 124
      Align = alTop
      Caption = ' TDS Details '
      TabOrder = 2
      Height = 311
      Width = 920
      object TdsDetailGrid: TcxGrid
        Left = 3
        Top = 18
        Width = 914
        Height = 290
        Align = alClient
        TabOrder = 0
        object TdsDetailGridDBTableView1: TcxGridDBTableView
          OnDblClick = TdsDetailGridDBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Detail1DS
          DataController.KeyFieldNames = 'tdsdetails_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object TdsDetailGridDBTableView1datepaid: TcxGridDBColumn
            Caption = 'Payment Date'
            DataBinding.FieldName = 'datepaid'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 105
          end
          object TdsDetailGridDBTableView1amountpaid: TcxGridDBColumn
            Caption = 'Amount Paid'
            DataBinding.FieldName = 'amountpaid'
            Options.Filtering = False
            Options.Grouping = False
            Width = 115
          end
          object TdsDetailGridDBTableView1amountdeducted: TcxGridDBColumn
            Caption = 'TDS Deducted'
            DataBinding.FieldName = 'amountdeducted'
            Options.Filtering = False
            Options.Grouping = False
            Width = 114
          end
          object TdsDetailGridDBTableView1rate: TcxGridDBColumn
            Caption = 'Rate(% Tax)'
            DataBinding.FieldName = 'rate'
            Options.Filtering = False
            Options.Grouping = False
            Width = 95
          end
          object TdsDetailGridDBTableView1datecredited: TcxGridDBColumn
            Caption = 'Date Credited'
            DataBinding.FieldName = 'datecredited'
            Options.Filtering = False
            Options.Grouping = False
            Width = 111
          end
          object TdsDetailGridDBTableView1branch: TcxGridDBColumn
            Caption = 'Branch'
            DataBinding.FieldName = 'branch'
            Options.Filtering = False
            Options.Grouping = False
            Width = 343
          end
        end
        object TdsDetailGridLevel1: TcxGridLevel
          GridView = TdsDetailGridDBTableView1
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 920
      Height = 28
      Align = alTop
      Color = 15451300
      TabOrder = 0
      object DBText1: TDBText
        Left = 16
        Top = 6
        Width = 265
        Height = 17
        DataField = 'CompanyName'
        DataSource = MasterDS
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 1
      Top = 435
      Align = alTop
      Caption = 'Search'
      TabOrder = 3
      Height = 67
      Width = 920
      object cxGroupBox4: TcxGroupBox
        Left = 443
        Top = 18
        Align = alLeft
        TabOrder = 1
        Height = 46
        Width = 482
        object Label10: TLabel
          Left = 8
          Top = 25
          Width = 72
          Height = 13
          Caption = 'Organisation'
          Transparent = True
        end
        object OrgSrchEdit: TcxTextEdit
          Left = 88
          Top = 21
          Style.Color = 16247513
          TabOrder = 0
          OnKeyPress = OrgSrchEditKeyPress
          Width = 358
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 3
        Top = 18
        Align = alLeft
        TabOrder = 0
        Height = 46
        Width = 440
        object Label7: TLabel
          Left = 12
          Top = 25
          Width = 55
          Height = 13
          Caption = 'Year Ref.'
          Transparent = True
        end
        object Label8: TLabel
          Left = 179
          Top = 25
          Width = 83
          Height = 13
          Caption = 'Certificate No.'
          Transparent = True
        end
        object YearSrchEdit: TcxTextEdit
          Left = 74
          Top = 22
          Style.Color = 16247513
          TabOrder = 0
          OnKeyPress = YearSrchEditKeyPress
          Width = 76
        end
        object CertSrchEdit: TcxTextEdit
          Left = 278
          Top = 22
          Style.Color = 16247513
          TabOrder = 1
          OnKeyPress = CertSrchEditKeyPress
          Width = 134
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'tds'
    CommandType = ctTable
    Left = 240
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    Left = 272
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 304
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    Active = True
    AfterInsert = MasterCdsAfterInsert
    Left = 336
    Top = 8
    object MasterCdstds_id: TIntegerField
      FieldName = 'tds_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdscertno: TIntegerField
      FieldName = 'certno'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsdate: TSQLTimeStampField
      FieldName = 'date'
    end
    object MasterCdstdscategories_id: TIntegerField
      FieldName = 'tdscategories_id'
    end
    object MasterCdsmonth: TIntegerField
      FieldName = 'month'
    end
    object MasterCdsyearref: TIntegerField
      FieldName = 'yearref'
    end
    object MasterCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object MasterCdsCompanyName: TStringField
      FieldKind = fkLookup
      FieldName = 'CompanyName'
      LookupDataSet = BackOfficeDataModule.CompanyCds
      LookupKeyFields = 'companies_id'
      LookupResultField = 'name'
      KeyFields = 'companies_id'
      Size = 80
      Lookup = True
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'tdsdetails'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'tds_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 384
    Top = 8
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 416
    Top = 8
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 448
    Top = 8
  end
  inherited Detail1Cds: TClientDataSet
    Active = True
    IndexFieldNames = 'tds_id'
    MasterFields = 'tds_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 480
    Top = 8
    object Detail1Cdstdsdetails_id: TIntegerField
      FieldName = 'tdsdetails_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdstds_id: TIntegerField
      FieldName = 'tds_id'
    end
    object Detail1Cdsdatepaid: TSQLTimeStampField
      FieldName = 'datepaid'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object Detail1Cdsamountpaid: TBCDField
      FieldName = 'amountpaid'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsamountdeducted: TBCDField
      FieldName = 'amountdeducted'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsrate: TBCDField
      FieldName = 'rate'
      DisplayFormat = '#,##0.00'
      Precision = 4
      Size = 2
    end
    object Detail1Cdsdatecredited: TSQLTimeStampField
      FieldName = 'datecredited'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object Detail1Cdsbranch: TStringField
      FieldName = 'branch'
      Size = 50
    end
  end
  object TdsCategoriesSds: TSQLDataSet
    CommandText = 
      'SELECT TDSCategories_id, Description FROM TDSCategories'#13#10'ORDER B' +
      'Y Description'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 760
    Top = 104
  end
  object TdsCategoriesDsp: TDataSetProvider
    DataSet = TdsCategoriesSds
    Left = 787
    Top = 104
  end
  object TdsCategoriesDs: TDataSource
    DataSet = TdsCategoriesCds
    Left = 814
    Top = 104
  end
  object TdsCategoriesCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'TdsCategoriesDsp'
    Left = 842
    Top = 104
    object TdsCategoriesCdsTDSCategories_id: TIntegerField
      FieldName = 'TDSCategories_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TdsCategoriesCdsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object UtilitiesPopup: TPopupMenu
    Left = 89
    Top = 6
    object GenerateCertificatesformonth1: TMenuItem
      Caption = 'Generate Certificates for month'
      OnClick = GenerateCertificatesformonth1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DeleteCetificatesforthemonth1: TMenuItem
      Caption = 'Delete Cetificates for the month'
      OnClick = DeleteCetificatesforthemonth1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Filter1: TMenuItem
      Caption = 'Filter'
      OnClick = Filter1Click
    end
  end
  object ReportsPopup: TPopupMenu
    Left = 205
    Top = 7
    object DSCertificate1: TMenuItem
      Caption = 'TDS Certificate'
      OnClick = DSCertificate1Click
    end
    object Statement1: TMenuItem
      Caption = 'Statement'
      OnClick = Statement1Click
    end
    object Summary1: TMenuItem
      Caption = 'Summary'
      OnClick = Summary1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N194JReportProfessionalFees1: TMenuItem
      Caption = '194J Report (Professional Fees)'
      OnClick = N194JReportProfessionalFees1Click
    end
    object Form26CAnnualReport1: TMenuItem
      Caption = 'Form 26C (Annual Report)'
      OnClick = Form26CAnnualReport1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object DSReturnExcel1: TMenuItem
      Caption = 'TDS Statement (Excel)'
      OnClick = DSReturnExcel1Click
    end
    object DSStatementNewExcel1: TMenuItem
      Caption = 'TDS Statement (New) (Excel)'
      OnClick = DSStatementNewExcel1Click
    end
  end
  object PartySds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_Addressbook(3,'#39#39') order by organisation, ci' +
      'ty'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 265
    Top = 104
  end
  object PartyDsp: TDataSetProvider
    DataSet = PartySds
    Left = 289
    Top = 104
  end
  object PartyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PartyDsp'
    Left = 312
    Top = 103
    object PartyCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object PartyCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object PartyCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object PartyCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object PartyCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object PartyDS: TDataSource
    DataSet = PartyCds
    Left = 329
    Top = 104
  end
  object MonthSds: TSQLDataSet
    CommandText = 'select * from Months'#13#10'order by Months_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 305
    Top = 144
  end
  object MonthDsp: TDataSetProvider
    DataSet = MonthSds
    Left = 329
    Top = 144
  end
  object MonthCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MonthDsp'
    Left = 352
    Top = 143
    object MonthCdsMonths_id: TIntegerField
      FieldName = 'Months_id'
    end
    object MonthCdsMonthName: TStringField
      FieldName = 'MonthName'
    end
    object MonthCdsMonthShortName: TStringField
      FieldName = 'MonthShortName'
      Size = 4
    end
  end
  object MonthDS: TDataSource
    DataSet = MonthCds
    Left = 369
    Top = 144
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -11
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = -11
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 584
    Top = 16
  end
end
