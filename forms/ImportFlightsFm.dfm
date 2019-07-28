inherited ImportFlightsForm: TImportFlightsForm
  Left = 209
  Top = 106
  Width = 799
  Height = 598
  Caption = 'Import Flights'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 478
    Width = 783
    inherited CustomMasterCxGrid: TcxGrid
      Width = 777
      Height = 457
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        DataController.KeyFieldNames = 'flights_id'
        OptionsBehavior.CellHints = True
        OptionsData.Appending = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.OnGetContentStyle = CustomMasterCxGridDBTableView1StylesGetContentStyle
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1flights_id: TcxGridDBColumn
          DataBinding.FieldName = 'flights_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          VisibleForCustomization = False
        end
        object CustomMasterCxGridDBTableView1flightcode: TcxGridDBColumn
          Caption = 'Flight No'
          DataBinding.FieldName = 'flightcode'
          Options.Editing = False
          Options.Grouping = False
          Width = 74
        end
        object CustomMasterCxGridDBTableView1flightsource: TcxGridDBColumn
          Caption = 'Source'
          DataBinding.FieldName = 'flightsource'
          Options.Editing = False
          Options.Grouping = False
          Width = 135
        end
        object CustomMasterCxGridDBTableView1flightstarttime: TcxGridDBColumn
          Caption = 'ETD'
          DataBinding.FieldName = 'flightstarttime'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 76
        end
        object CustomMasterCxGridDBTableView1flightdestination: TcxGridDBColumn
          Caption = 'Destination'
          DataBinding.FieldName = 'flightdestination'
          Options.Editing = False
          Options.Grouping = False
          Width = 139
        end
        object CustomMasterCxGridDBTableView1flightendtime: TcxGridDBColumn
          Caption = 'ETA'
          DataBinding.FieldName = 'flightendtime'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 66
        end
        object CustomMasterCxGridDBTableView1flightairline: TcxGridDBColumn
          Caption = 'Airline'
          DataBinding.FieldName = 'flightairline'
          Options.Editing = False
          Options.Grouping = False
          Width = 119
        end
        object CustomMasterCxGridDBTableView1Sch: TcxGridDBColumn
          Caption = 'Schedule'
          DataBinding.FieldName = 'Sch'
          Width = 80
        end
        object CustomMasterCxGridDBTableView1ErrorNo: TcxGridDBColumn
          Caption = 'Error No'
          DataBinding.FieldName = 'ErrorNo'
          Options.Editing = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1ErrorDesc: TcxGridDBColumn
          Caption = 'Error Desc'
          DataBinding.FieldName = 'ErrorDesc'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 201
        end
        object CustomMasterCxGridDBTableView1Wef: TcxGridDBColumn
          Caption = 'Wef'
          DataBinding.FieldName = 'wef'
          Width = 100
        end
        object CustomMasterCxGridDBTableView1Wet: TcxGridDBColumn
          Caption = 'Wet'
          DataBinding.FieldName = 'wet'
          Width = 100
        end
        object CustomMasterCxGridDBTableView1SpecialCode: TcxGridDBColumn
          Caption = 'Special Code'
          DataBinding.FieldName = 'SpecialCode'
          Visible = False
          Options.Editing = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1FlightVia: TcxGridDBColumn
          Caption = 'Flight Via'
          DataBinding.FieldName = 'flightvia'
          Width = 100
        end
        object CustomMasterCxGridDBTableView1FlightStops: TcxGridDBColumn
          Caption = 'Flight Stops'
          DataBinding.FieldName = 'flightstops'
          Visible = False
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 519
    Width = 783
    inherited KeyIdDbText: TDBText
      Left = 604
      Top = 13
      Width = 69
      Height = 16
      DataField = 'flights_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 683
      Width = 70
    end
    object cxButtonErrors: TcxButton
      Left = 179
      Top = 8
      Width = 110
      Height = 25
      Caption = 'Check for Errors'
      TabOrder = 3
      OnClick = cxButtonErrorsClick
    end
    object cxButton1: TcxButton
      Left = 315
      Top = 8
      Width = 182
      Height = 25
      Caption = 'Import into Live Database'
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 5
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDownButton
    end
  end
  inherited Panel2: TPanel
    Width = 783
    object FlightCompanyLCMB: TcxLookupComboBox
      Left = 55
      Top = 12
      Properties.KeyFieldNames = 'FlightCompanies_id'
      Properties.ListColumns = <
        item
          FieldName = 'FlightCompany'
        end>
      Properties.ListSource = FlightCompanyDs
      Properties.OnEditValueChanged = FlightCompanyLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 282
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 13
      Caption = 'Carrier'
      Transparent = True
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT z.*, Sch = dbo.[f_DaysToStr](z.FlightRunsOn) '#13#10'FROM zz_fl' +
      'ights z '#13#10'WHERE z.FlightCompanies_id = :FlightCompanies_id'
    CommandType = ctQuery
    DataSource = FlightCompanyDs
    Params = <
      item
        DataType = ftInteger
        Name = 'FlightCompanies_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'FlightCompanies_id'
    MasterFields = 'FlightCompanies_id'
    MasterSource = FlightCompanyDs
    PacketRecords = 0
    object MasterCdsflights_id: TIntegerField
      FieldName = 'flights_id'
    end
    object MasterCdsflightcode: TStringField
      FieldName = 'flightcode'
      Size = 12
    end
    object MasterCdsflightsource: TStringField
      FieldName = 'flightsource'
      Size = 32
    end
    object MasterCdsflightstarttime: TStringField
      FieldName = 'flightstarttime'
      Size = 16
    end
    object MasterCdsflightdestination: TStringField
      FieldName = 'flightdestination'
      Size = 32
    end
    object MasterCdsflightendtime: TStringField
      FieldName = 'flightendtime'
      Size = 16
    end
    object MasterCdsflightairline: TStringField
      FieldName = 'flightairline'
      Size = 64
    end
    object MasterCdsErrorNo: TIntegerField
      FieldName = 'ErrorNo'
    end
    object MasterCdsErrorDesc: TStringField
      FieldName = 'ErrorDesc'
      Size = 200
    end
    object MasterCdsflightwef: TStringField
      FieldName = 'flightwef'
      Size = 32
    end
    object MasterCdsflightwet: TStringField
      FieldName = 'flightwet'
      Size = 32
    end
    object MasterCdsflightrunson: TIntegerField
      FieldName = 'flightrunson'
    end
    object MasterCdsSpecialCode: TIntegerField
      FieldName = 'SpecialCode'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
    end
    object MasterCdsFlightCompanies_id: TIntegerField
      FieldName = 'FlightCompanies_id'
    end
    object MasterCdsSch: TStringField
      FieldName = 'Sch'
      Size = 30
    end
    object MasterCdsflightvia: TStringField
      FieldName = 'flightvia'
      Size = 128
    end
    object MasterCdsflightstops: TIntegerField
      FieldName = 'flightstops'
    end
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 648
    Top = 24
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12320733
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16766935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13559807
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 12320767
    end
  end
  object SaveDialog: TSaveDialog
    Left = 179
    Top = 433
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 212
    Top = 433
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
      ReportDocument.CreationDate = 39255.608278530090000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 48
    Top = 432
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
    object ImportFromExcel1: TMenuItem
      Caption = 'Import From Excel '
      object Kingfisher1: TMenuItem
        Caption = 'Kingfisher'
        OnClick = Kingfisher1Click
      end
      object JetAirways1: TMenuItem
        Caption = 'Jet Airways'
        OnClick = JetAirways1Click
      end
      object SiceJet1: TMenuItem
        Caption = 'Spice Jet'
        OnClick = SiceJet1Click
      end
      object Indigo1: TMenuItem
        Caption = 'Indigo (text)'
        OnClick = Indigo1Click
      end
      object GOAir1: TMenuItem
        Caption = 'Go Air'
        OnClick = GOAir1Click
      end
      object IndianAirlines1: TMenuItem
        Caption = 'Indian Airlines'
        OnClick = IndianAirlines1Click
      end
      object IndigoExcel1: TMenuItem
        Caption = 'Indigo (Excel)'
        OnClick = IndigoExcel1Click
      end
      object AirIndiaExcel1: TMenuItem
        Caption = 'Air India (Excel)'
        OnClick = AirIndiaExcel1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object IgnoreCities1: TMenuItem
      Caption = 'Ignore Cities'
      OnClick = IgnoreCities1Click
    end
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
    Left = 368
    Top = 256
  end
  object OpenDialog: TOpenDialog
    Left = 248
    Top = 248
  end
  object FlightCompanySds: TSQLDataSet
    CommandText = 'SELECT * FROM FlightCompanies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 272
    Top = 16
  end
  object FlightCompanyDsp: TDataSetProvider
    DataSet = FlightCompanySds
    Left = 304
    Top = 16
  end
  object FlightCompanyDs: TDataSource
    DataSet = FlightCompanyCds
    Left = 344
    Top = 16
  end
  object FlightCompanyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FlightCompanyDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 376
    Top = 16
    object FlightCompanyCdsFlightCompanies_id: TIntegerField
      FieldName = 'FlightCompanies_id'
    end
    object FlightCompanyCdsFlightCompany: TStringField
      FieldName = 'FlightCompany'
      Size = 100
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 209
    object MenuItem1: TMenuItem
      Caption = 'Ignore Source City'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Ignore Destination City'
      OnClick = MenuItem2Click
    end
  end
end
