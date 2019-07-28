object HotelFutureBookForm: THotelFutureBookForm
  Left = 116
  Top = 184
  Width = 1052
  Height = 480
  Caption = 'Future Bookings'
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
    Width = 1036
    Height = 33
    Align = alTop
    TabOrder = 0
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
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLcmbPropertiesEditValueChanged
      Style.Color = 15334910
      TabOrder = 1
      Width = 150
    end
    object cxLabel2: TcxLabel
      Left = 206
      Top = 8
      Caption = 'Hotel'
      Transparent = True
    end
    object cxHotelLcmb: TcxLookupComboBox
      Left = 243
      Top = 6
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = HotelDs
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = cxHotelLcmbPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 15334910
      TabOrder = 3
      Width = 312
    end
    object cxLabel3: TcxLabel
      Left = 581
      Top = 8
      Caption = 'From'
      Transparent = True
    end
    object cxFromDateEdit: TcxDateEdit
      Left = 620
      Top = 6
      Properties.OnEditValueChanged = cxFromDateEditPropertiesEditValueChanged
      TabOrder = 5
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 765
      Top = 8
      Caption = 'To'
      Transparent = True
    end
    object cxToDateEdit: TcxDateEdit
      Left = 804
      Top = 6
      Properties.OnEditValueChanged = cxToDateEditPropertiesEditValueChanged
      TabOrder = 7
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 394
    Width = 1036
    Height = 48
    Align = alBottom
    TabOrder = 1
    object cxButtonClose: TcxButton
      Left = 931
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButtonCloseClick
    end
    object cxUtilities: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 1036
    Height = 361
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = AccDs
      DataController.KeyFieldNames = 'QuoAccommodation_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentEven = cxStyleBlue
      Styles.ContentOdd = cxStyleGreen
      object cxGrid1DBTableView1QuoAccommodation_id: TcxGridDBColumn
        DataBinding.FieldName = 'QuoAccommodation_id'
        Visible = False
      end
      object cxGrid1DBTableView1Quotations_id: TcxGridDBColumn
        DataBinding.FieldName = 'Quotations_id'
        Visible = False
      end
      object cxGrid1DBTableView1TourCode: TcxGridDBColumn
        Caption = 'Tour Code'
        DataBinding.FieldName = 'TourCode'
      end
      object cxGrid1DBTableView1organisation: TcxGridDBColumn
        DataBinding.FieldName = 'organisation'
        Visible = False
      end
      object cxGrid1DBTableView1PaxName: TcxGridDBColumn
        Caption = 'Pax'
        DataBinding.FieldName = 'PaxName'
        Width = 243
      end
      object cxGrid1DBTableView1NumPax: TcxGridDBColumn
        Caption = 'Num Pax'
        DataBinding.FieldName = 'NumPax'
        Width = 66
      end
      object cxGrid1DBTableView1Singles: TcxGridDBColumn
        DataBinding.FieldName = 'Singles'
        Width = 60
      end
      object cxGrid1DBTableView1Doubles: TcxGridDBColumn
        DataBinding.FieldName = 'Doubles'
        Width = 63
      end
      object cxGrid1DBTableView1Twins: TcxGridDBColumn
        DataBinding.FieldName = 'Twins'
        Width = 63
      end
      object cxGrid1DBTableView1Triples: TcxGridDBColumn
        DataBinding.FieldName = 'Triples'
        Width = 57
      end
      object cxGrid1DBTableView1DateIn: TcxGridDBColumn
        Caption = 'Date In'
        DataBinding.FieldName = 'DateIn'
        SortIndex = 0
        SortOrder = soAscending
        Width = 97
      end
      object cxGrid1DBTableView1DateOut: TcxGridDBColumn
        Caption = 'Date Out'
        DataBinding.FieldName = 'DateOut'
        SortIndex = 1
        SortOrder = soAscending
        Width = 113
      end
      object cxGrid1DBTableView1roomtype: TcxGridDBColumn
        Caption = 'Room Type'
        DataBinding.FieldName = 'roomtype'
        Width = 83
      end
      object cxGrid1DBTableView1Nights: TcxGridDBColumn
        DataBinding.FieldName = 'Nights'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
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
    Left = 347
    Top = 11
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 359
    Top = 11
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 380
    Top = 11
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
    Left = 394
    Top = 11
  end
  object AccSds: TSQLDataSet
    CommandText = 
      'exec [p_HotelFutureBookings] :x_Addressbook_id, :x_FromDate, :x_' +
      'ToDate'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'x_Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'x_FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'x_ToDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 136
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    Left = 696
    Top = 136
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccDsp'
    Left = 712
    Top = 137
    object AccCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object AccCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object AccCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object AccCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object AccCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object AccCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object AccCdsSingles: TIntegerField
      FieldName = 'Singles'
    end
    object AccCdsDoubles: TIntegerField
      FieldName = 'Doubles'
    end
    object AccCdsTriples: TIntegerField
      FieldName = 'Triples'
    end
    object AccCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object AccCdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
    end
    object AccCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object AccCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object AccCdsTwins: TIntegerField
      FieldName = 'Twins'
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 728
    Top = 139
  end
  object SaveDialog: TSaveDialog
    Left = 451
    Top = 145
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 484
    Top = 145
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
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 312
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 664
    Top = 16
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
      AssignedValues = [svColor, svFont]
      Color = 12320767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8947967
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleGrey: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14079702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
end
