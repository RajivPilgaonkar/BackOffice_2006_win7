object AddrCategorySearchForm: TAddrCategorySearchForm
  Left = 259
  Top = 119
  Width = 967
  Height = 527
  Caption = 'AddrCategorySearch'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 951
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label2: TcxLabel
      Left = 16
      Top = 12
      Caption = 'Category'
      Transparent = True
    end
    object cxAddrrCategoryLCMB: TcxLookupComboBox
      Left = 82
      Top = 11
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'categories_id'
      Properties.ListColumns = <
        item
          FieldName = 'description'
        end>
      Properties.ListSource = CategoriesDS
      TabOrder = 0
      OnKeyPress = cxAddrrCategoryLCMBKeyPress
      Width = 207
    end
    object cxButton1: TcxButton
      Left = 304
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Filter'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton4: TcxButton
      Left = 848
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 2
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object cxGridAddr: TcxGrid
    Left = 0
    Top = 41
    Width = 951
    Height = 448
    Align = alClient
    TabOrder = 1
    object cxGridAddrDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = AddrCatSearchDS
      DataController.KeyFieldNames = 'Addressbook_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsView.Indicator = True
      Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
      Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
      object cxGridAddrDBTableView1City: TcxGridDBColumn
        DataBinding.FieldName = 'City'
        Width = 150
      end
      object cxGridAddrDBTableView1Organisation: TcxGridDBColumn
        DataBinding.FieldName = 'Organisation'
        Width = 332
      end
      object cxGridAddrDBTableView1Address: TcxGridDBColumn
        DataBinding.FieldName = 'Address'
        PropertiesClassName = 'TcxMemoProperties'
        Visible = False
        Width = 200
      end
      object cxGridAddrDBTableView1Contact: TcxGridDBColumn
        DataBinding.FieldName = 'Contact'
        Visible = False
        Width = 100
      end
      object cxGridAddrDBTableView1Email: TcxGridDBColumn
        DataBinding.FieldName = 'email'
        PropertiesClassName = 'TcxMemoProperties'
        Visible = False
        Width = 100
      end
      object cxGridAddrDBTableView1Fax: TcxGridDBColumn
        DataBinding.FieldName = 'Fax'
        Visible = False
        Width = 100
      end
      object cxGridAddrDBTableView1PAN: TcxGridDBColumn
        DataBinding.FieldName = 'PAN'
        Visible = False
        Width = 100
      end
      object cxGridAddrDBTableView1Phone: TcxGridDBColumn
        DataBinding.FieldName = 'Phone'
        PropertiesClassName = 'TcxMemoProperties'
        Visible = False
        Width = 100
      end
      object cxGridAddrDBTableView1WWW: TcxGridDBColumn
        DataBinding.FieldName = 'www'
        Visible = False
        Width = 100
      end
      object cxGridAddrDBTableView1PostalCode: TcxGridDBColumn
        Caption = 'Postal Code'
        DataBinding.FieldName = 'PostalCode'
        Visible = False
      end
      object cxGridAddrDBTableView1State: TcxGridDBColumn
        DataBinding.FieldName = 'State'
        Visible = False
        Width = 110
      end
      object cxGridAddrDBTableView1org_mobile: TcxGridDBColumn
        Caption = 'Mobile'
        DataBinding.FieldName = 'org_mobile'
        Visible = False
        Width = 150
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridAddrDBTableView1
    end
  end
  object CategoriesSds: TSQLDataSet
    CommandText = 'select * from Categories'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 176
    Top = 3
  end
  object CategoriesDsp: TDataSetProvider
    DataSet = CategoriesSds
    Left = 192
    Top = 3
  end
  object CategoriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CategoriesDsp'
    Left = 208
    Top = 3
    object CategoriesCdscategory: TStringField
      FieldName = 'category'
      Size = 5
    end
    object CategoriesCdsdescription: TStringField
      FieldName = 'description'
      Size = 30
    end
    object CategoriesCdscategories_id: TIntegerField
      FieldName = 'categories_id'
    end
  end
  object CategoriesDS: TDataSource
    DataSet = CategoriesCds
    Left = 224
    Top = 3
  end
  object AddrCatSearchSds: TSQLDataSet
    CommandText = 
      'select f.*, a.Address, a.Phone, a.Fax, a.PAN, a.email, a.www, s.' +
      'State, a.org_mobile '#13#10'    from dbo.fn_Addressbook (2, '#39#39#39' + x_Ca' +
      'tegory + '#39#39#39') f '#13#10'    LEFT JOIN Addressbook a ON f.Addressbook_i' +
      'd = a.Addressbook_id '#13#10'    LEFT JOIN Cities c ON f.Cities_id = c' +
      '.Cities_id'#13#10'    LEFT JOIN States s ON s.States_id = c.States_id'#13 +
      #10'    ORDER BY f.City, f.Organisation'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 32
    Top = 160
  end
  object AddrCatSearchDsp: TDataSetProvider
    DataSet = AddrCatSearchSds
    Left = 56
    Top = 160
  end
  object AddrCatSearchCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AddrCatSearchDsp'
    Left = 72
    Top = 160
    object AddrCatSearchCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AddrCatSearchCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AddrCatSearchCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AddrCatSearchCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AddrCatSearchCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
    object AddrCatSearchCdsAddress: TStringField
      FieldName = 'Address'
      Size = 250
    end
    object AddrCatSearchCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object AddrCatSearchCdsFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object AddrCatSearchCdsPAN: TStringField
      FieldName = 'PAN'
      Size = 15
    end
    object AddrCatSearchCdsemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object AddrCatSearchCdswww: TStringField
      FieldName = 'www'
      Size = 100
    end
    object AddrCatSearchCdsPostalCode: TStringField
      FieldName = 'PostalCode'
      Size = 10
    end
    object AddrCatSearchCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object AddrCatSearchCdsorg_mobile: TStringField
      FieldName = 'org_mobile'
      Size = 100
    end
  end
  object AddrCatSearchDS: TDataSource
    DataSet = AddrCatSearchCds
    Left = 88
    Top = 160
  end
  object SaveDialog: TSaveDialog
    Left = 651
    Top = 49
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 684
    Top = 49
    object dxComponentPrinterLink1: TdxGridReportLink
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 39368.707159826390000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 872
    Top = 32
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExpandAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpandAll1Click
    end
    object CollapseAll1: TMenuItem
      Caption = 'Collapse All'
      OnClick = CollapseAll1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ListAddressesWordFormat1: TMenuItem
      Caption = 'List Addresses (Word Format)'
      OnClick = ListAddressesWordFormat1Click
    end
  end
end
