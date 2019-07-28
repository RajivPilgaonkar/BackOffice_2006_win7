object VoucherListForm: TVoucherListForm
  Left = 234
  Top = 18
  Width = 956
  Height = 694
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
    Width = 940
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxButton4: TcxButton
      Left = 848
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 13
      Caption = 'From Date'
      Transparent = True
    end
    object cxFromDateEdit: TcxDateEdit
      Left = 77
      Top = 12
      Properties.OnEditValueChanged = cxFromDateEditPropertiesEditValueChanged
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 224
      Top = 12
      Caption = 'To Date'
      Transparent = True
    end
    object cxToDateEdit: TcxDateEdit
      Left = 282
      Top = 11
      Properties.OnEditValueChanged = cxToDateEditPropertiesEditValueChanged
      TabOrder = 4
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Generate'
      TabOrder = 5
      OnClick = cxButton1Click
    end
  end
  object cxGridFit: TcxGrid
    Left = 0
    Top = 41
    Width = 940
    Height = 574
    Align = alClient
    TabOrder = 1
    object cxGridFitDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = MasterDS
      DataController.KeyFieldNames = 'Vouchers_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.Indicator = True
      object cxGridFitDBTableView1Vouchers_id: TcxGridDBColumn
        DataBinding.FieldName = 'Vouchers_id'
        Visible = False
        Options.Editing = False
      end
      object cxGridFitDBTableView1VoucherNo: TcxGridDBColumn
        Caption = 'Voucher No'
        DataBinding.FieldName = 'VoucherNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Width = 46
      end
      object cxGridFitDBTableView1VoucherDate: TcxGridDBColumn
        Caption = 'Voucher Date'
        DataBinding.FieldName = 'VoucherDate'
        Width = 58
      end
      object cxGridFitDBTableView1Mastertourcode: TcxGridDBColumn
        DataBinding.FieldName = 'Mastertourcode'
        Visible = False
        Width = 114
      end
      object cxGridFitDBTableView1TourRef: TcxGridDBColumn
        Caption = 'Tour Ref'
        DataBinding.FieldName = 'TourRef'
        Width = 51
      end
      object cxGridFitDBTableView1Description: TcxGridDBColumn
        DataBinding.FieldName = 'Description'
        Width = 247
      end
      object cxGridFitDBTableView1TourLeader: TcxGridDBColumn
        Caption = 'Tour Leader'
        DataBinding.FieldName = 'TourLeader'
        Width = 75
      end
      object cxGridFitDBTableView1Organisation: TcxGridDBColumn
        DataBinding.FieldName = 'Organisation'
        Width = 194
      end
      object cxGridFitDBTableView1phone: TcxGridDBColumn
        Caption = 'Phone'
        DataBinding.FieldName = 'phone'
        Width = 126
      end
      object cxGridFitDBTableView1org_mobile: TcxGridDBColumn
        Caption = 'Mobile'
        DataBinding.FieldName = 'org_mobile'
        Width = 129
      end
    end
    object cxGridFitLevel1: TcxGridLevel
      GridView = cxGridFitDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 615
    Width = 940
    Height = 41
    Align = alBottom
    TabOrder = 2
    object CloseBtn: TcxButton
      Left = 857
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 
      'SELECT Vouchers_id, VoucherNo, VoucherDate, Mastertourcode, Desc' +
      'ription, TourRef, TourLeader, A.Organisation, '#13#10#39'('#39' + COALESCE(a' +
      '.areacode,'#39#39') + '#39') '#39' + a.phone AS phone, a.org_mobile'#13#10'         ' +
      '   FROM Vouchers v '#13#10'LEFT JOIN Addressbook a ON v.Addressbook_id' +
      ' = a.Addressbook_id '#13#10'            WHERE voucherdate between :Fro' +
      'mDate AND :ToDate'#13#10'            ORDER BY VoucherDate DESC'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 32
    Top = 160
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    Left = 56
    Top = 160
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    Left = 72
    Top = 160
    object MasterCdsVouchers_id: TIntegerField
      FieldName = 'Vouchers_id'
    end
    object MasterCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
    object MasterCdsVoucherDate: TSQLTimeStampField
      FieldName = 'VoucherDate'
    end
    object MasterCdsMastertourcode: TStringField
      FieldName = 'Mastertourcode'
      Size = 10
    end
    object MasterCdsDescription: TStringField
      FieldName = 'Description'
      Size = 250
    end
    object MasterCdsTourRef: TStringField
      FieldName = 'TourRef'
      Size = 10
    end
    object MasterCdsTourLeader: TStringField
      FieldName = 'TourLeader'
      Size = 50
    end
    object MasterCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object MasterCdsphone: TStringField
      FieldName = 'phone'
      Size = 100
    end
    object MasterCdsorg_mobile: TStringField
      FieldName = 'org_mobile'
      Size = 100
    end
  end
  object MasterDS: TDataSource
    DataSet = MasterCds
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
      PrinterPage.Margins.Right = 200
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
    Top = 40
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
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 608
    Top = 8
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13828073
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16770790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleDarkRed: TcxStyle
      AssignedValues = [svColor]
      Color = 5592575
    end
  end
end
