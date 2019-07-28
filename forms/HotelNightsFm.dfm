object HotelNightsForm: THotelNightsForm
  Left = 92
  Top = 73
  Width = 1135
  Height = 620
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 39
    Align = alTop
    TabOrder = 0
    object cxButton4: TcxButton
      Left = 331
      Top = 7
      Width = 41
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = cxButton4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object cxButton5: TcxButton
      Left = 379
      Top = 7
      Width = 41
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cxButton5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
    end
    object cxButton3: TcxButton
      Left = 465
      Top = 7
      Width = 113
      Height = 25
      Caption = 'Refresh'
      TabOrder = 2
      OnClick = cxButton3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 12
      Caption = 'From'
    end
    object cxFromDate: TcxDateEdit
      Left = 39
      Top = 10
      Style.Color = 16777192
      TabOrder = 4
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 168
      Top = 12
      Caption = 'To'
    end
    object cxToDate: TcxDateEdit
      Left = 191
      Top = 10
      Style.Color = 16777192
      TabOrder = 6
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 541
    Width = 1119
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 20
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxButton2: TcxButton
      Left = 952
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 39
    Width = 1119
    Height = 502
    ActivePage = TabSheetNights
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 496
    ClientRectLeft = 3
    ClientRectRight = 1113
    ClientRectTop = 26
    object TabSheetNights: TcxTabSheet
      Caption = 'Nights'
      ImageIndex = 0
      object cxGridHotelNights: TcxGrid
        Left = 0
        Top = 0
        Width = 1110
        Height = 470
        Align = alClient
        TabOrder = 0
        object cxGridHotelNightsDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = HotelNightsDs
          DataController.KeyFieldNames = 'city;PrincipalAgent;Hotel;RoomType'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Bands = <
            item
              Width = 796
            end>
          object cxGridHotelNightsDBBandedTableView1city: TcxGridDBBandedColumn
            Caption = 'City'
            DataBinding.FieldName = 'city'
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridHotelNightsDBBandedTableView1PrincipalAgent: TcxGridDBBandedColumn
            Caption = 'Principal Agent'
            DataBinding.FieldName = 'PrincipalAgent'
            Width = 234
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridHotelNightsDBBandedTableView1Hotel: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Hotel'
            Width = 301
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridHotelNightsDBBandedTableView1roomtype: TcxGridDBBandedColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'roomtype'
            Width = 159
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridHotelNightsDBBandedTableView1Nights: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Nights'
            Width = 43
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridHotelNightsLevel1: TcxGridLevel
          GridView = cxGridHotelNightsDBBandedTableView1
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 440
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
    object BankListings1: TMenuItem
      Caption = 'Hotels v/s Principal Agents (Excel)'
      OnClick = BankListings1Click
    end
  end
  object HotelNightsSds: TSQLDataSet
    CommandText = 'exec p_HotelNights '#39'01/01/2013'#39', '#39'12/31/2013'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 224
  end
  object HotelNightsDsp: TDataSetProvider
    DataSet = HotelNightsSds
    Left = 536
    Top = 224
  end
  object HotelNightsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelNightsDsp'
    Left = 568
    Top = 224
    object HotelNightsCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object HotelNightsCdsPrincipalAgent: TStringField
      FieldName = 'PrincipalAgent'
      Size = 60
    end
    object HotelNightsCdsHotel: TStringField
      FieldName = 'Hotel'
      Size = 60
    end
    object HotelNightsCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object HotelNightsCdsNights: TIntegerField
      FieldName = 'Nights'
    end
  end
  object HotelNightsDs: TDataSource
    DataSet = HotelNightsCds
    Left = 600
    Top = 224
  end
  object SaveDialog: TSaveDialog
    Left = 147
    Top = 441
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 180
    Top = 441
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
      ReportDocument.CreationDate = 41669.550202025460000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object scExcelExport: TscExcelExport
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
    Left = 280
    Top = 440
  end
end
