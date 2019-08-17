object BookingDetailsForm: TBookingDetailsForm
  Left = 10
  Top = 88
  Width = 962
  Height = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 32
      Top = 8
      Caption = 'Tour Code'
      Transparent = True
    end
    object cxDBLabel1: TcxDBLabel
      Left = 104
      Top = 8
      DataBinding.DataField = 'MasterCode'
      DataBinding.DataSource = BookingDetailsDS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 81
    end
    object cxLabel2: TcxLabel
      Left = 192
      Top = 8
      Caption = 'Tour Date'
      Transparent = True
    end
    object cxDBLabel2: TcxDBLabel
      Left = 264
      Top = 8
      DataBinding.DataField = 'MasterDepDate'
      DataBinding.DataSource = BookingDetailsDS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 89
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 486
    Width = 946
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 871
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButton1Click
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 946
    Height = 445
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = BookingDetailsDS
      DataController.KeyFieldNames = 'BookingDetails_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
      Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
      object cxGrid1DBTableView1DBCancelledOn: TcxGridDBColumn
        Caption = 'Cancelled On'
        DataBinding.FieldName = 'CancelledOn'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
      end
      object cxGrid1DBTableView1TL_Calc: TcxGridDBColumn
        Caption = 'TL'
        DataBinding.FieldName = 'TL_Calc'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Options.Grouping = False
        SortIndex = 0
        SortOrder = soDescending
      end
      object cxGrid1DBTableView1TTL_Calc: TcxGridDBColumn
        Caption = 'TTL'
        DataBinding.FieldName = 'TTL_Calc'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Options.Filtering = False
        Options.Grouping = False
        SortIndex = 1
        SortOrder = soDescending
      end
      object cxGrid1DBTableView1PaxName: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'PaxName'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.Grouping = False
        SortIndex = 2
        SortOrder = soAscending
        Width = 150
      end
      object cxGrid1DBTableView1RefLookup: TcxGridDBColumn
        Caption = 'Ref'
        DataBinding.FieldName = 'RefLookup'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Options.Grouping = False
        Width = 60
      end
      object cxGrid1DBTableView1Male: TcxGridDBColumn
        Caption = 'Sex'
        DataBinding.FieldName = 'Male'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownRows = 2
        Properties.Items.Strings = (
          'Mr.'
          'Ms.')
        Options.Filtering = False
        Options.Grouping = False
        Width = 38
      end
      object cxGrid1DBTableView1SingleSupplement: TcxGridDBColumn
        Caption = 'SS'
        DataBinding.FieldName = 'SingleSupplement'
        Options.Filtering = False
        Options.Grouping = False
        Width = 33
      end
      object cxGrid1DBTableView1LocalPayment: TcxGridDBColumn
        Caption = 'LP'
        DataBinding.FieldName = 'LocalPayment'
        Options.Filtering = False
        Options.Grouping = False
        Width = 33
      end
      object cxGrid1DBTableView1LocalPaymentTypes_id: TcxGridDBColumn
        Caption = 'LP Type'
        DataBinding.FieldName = 'LocalPaymentTypes_id'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'LocalPaymentTypes_id'
        Properties.ListColumns = <
          item
            FieldName = 'LocalPayment'
          end>
        Properties.ListSource = BackOfficeDataModule.LocalPaymentTypeDS
        Options.Filtering = False
        Options.Grouping = False
        Width = 102
      end
      object cxGrid1DBTableView1LocalPaymentAmount: TcxGridDBColumn
        Caption = 'LP Amount'
        DataBinding.FieldName = 'LocalPaymentAmount'
        Options.Filtering = False
        Options.Grouping = False
        Width = 75
      end
      object cxGrid1DBTableView1ShareWithBookingsClients_id: TcxGridDBColumn
        Caption = 'Share With'
        DataBinding.FieldName = 'ShareWithBookingsClients_id'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ClearKey = 46
        Properties.DropDownWidth = 250
        Properties.KeyFieldNames = 'BookingsClients_id'
        Properties.ListColumns = <
          item
            MinWidth = 150
            FieldName = 'Name'
          end
          item
            MinWidth = 100
            FieldName = 'Male'
          end>
        Properties.ListSource = PaxListDS
        Options.Filtering = False
        Options.Grouping = False
        Width = 103
      end
      object cxGrid1DBTableView1TourCode: TcxGridDBColumn
        Caption = 'Tour Code'
        DataBinding.FieldName = 'TourCode'
        Width = 76
      end
      object cxGrid1DBTableView1TourDate: TcxGridDBColumn
        Caption = 'Tour Date'
        DataBinding.FieldName = 'TourDate'
        Width = 68
      end
      object cxGrid1DBTableView1LeadPaxOrder: TcxGridDBColumn
        Caption = 'Lead Pax Order'
        DataBinding.FieldName = 'LeadPaxOrder'
        Options.Filtering = False
        Options.Grouping = False
      end
      object cxGrid1DBTableView1Remarks: TcxGridDBColumn
        DataBinding.FieldName = 'Remarks'
        Options.Filtering = False
        Options.Grouping = False
        Width = 234
      end
      object cxGrid1DBTableView1Country: TcxGridDBColumn
        Caption = 'Country'
        DataBinding.FieldName = 'CountryLookup'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 91
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object BookingDetailsSds: TSQLDataSet
    CommandText = 'BookingDetails'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 272
    Top = 112
  end
  object BookingDetailsDsp: TDataSetProvider
    DataSet = BookingDetailsSds
    Left = 288
    Top = 112
  end
  object BookingDetailsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BookingDetailsDsp'
    BeforeEdit = BookingDetailsCdsBeforeEdit
    BeforePost = BookingDetailsCdsBeforePost
    AfterPost = BookingDetailsCdsAfterPost
    BeforeDelete = BookingDetailsCdsBeforeDelete
    OnCalcFields = BookingDetailsCdsCalcFields
    Left = 304
    Top = 112
    object BookingDetailsCdsBookingDetails_id: TIntegerField
      FieldName = 'BookingDetails_id'
    end
    object BookingDetailsCdsBookingsClients_id: TIntegerField
      FieldName = 'BookingsClients_id'
    end
    object BookingDetailsCdsBookingsTours_id: TIntegerField
      FieldName = 'BookingsTours_id'
    end
    object BookingDetailsCdsSingleSupplement: TBooleanField
      FieldName = 'SingleSupplement'
    end
    object BookingDetailsCdsLocalPayment: TBooleanField
      FieldName = 'LocalPayment'
    end
    object BookingDetailsCdsLocalPaymentTypes_id: TIntegerField
      FieldName = 'LocalPaymentTypes_id'
    end
    object BookingDetailsCdsShareWithBookingsClients_id: TIntegerField
      FieldName = 'ShareWithBookingsClients_id'
    end
    object BookingDetailsCdsLocalPaymentAmount: TFMTBCDField
      FieldName = 'LocalPaymentAmount'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object BookingDetailsCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 100
    end
    object BookingDetailsCdsPaxName: TStringField
      FieldKind = fkLookup
      FieldName = 'PaxName'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'Name'
      KeyFields = 'BookingsClients_id'
      Lookup = True
    end
    object BookingDetailsCdsMale: TBooleanField
      FieldKind = fkLookup
      FieldName = 'Male'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'Male'
      KeyFields = 'BookingsClients_id'
      DisplayValues = 'Mr.;Ms.'
      Lookup = True
    end
    object BookingDetailsCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 5
    end
    object BookingDetailsCdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object BookingDetailsCdsRefLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RefLookup'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'Reference'
      KeyFields = 'BookingsClients_id'
      Size = 50
      Lookup = True
    end
    object BookingDetailsCdsTL_Calc: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TL_Calc'
      Calculated = True
    end
    object BookingDetailsCdsTTL_Calc: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TTL_Calc'
      Calculated = True
    end
    object BookingDetailsCdsMasterCode: TStringField
      FieldName = 'MasterCode'
      Size = 5
    end
    object BookingDetailsCdsMasterDepDate: TSQLTimeStampField
      FieldName = 'MasterDepDate'
    end
    object BookingDetailsCdsCancelledOn: TDateField
      FieldKind = fkLookup
      FieldName = 'CancelledOn'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'CancelledOn'
      KeyFields = 'BookingsClients_id'
      Lookup = True
    end
    object BookingDetailsCdsLeadPaxOrder: TIntegerField
      FieldName = 'LeadPaxOrder'
    end
    object BookingDetailsCdsCountryLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CountryLookup'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'CountryLookup'
      KeyFields = 'BookingsClients_id'
      Size = 30
      Lookup = True
    end
  end
  object BookingDetailsDS: TDataSource
    DataSet = BookingDetailsCds
    Left = 320
    Top = 112
  end
  object PaxListSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_GetPaxListOnTour ('#39'HTDS'#39','#39'03/11/2002'#39',2)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 400
    Top = 8
  end
  object PaxListDsp: TDataSetProvider
    DataSet = PaxListSds
    Left = 416
    Top = 8
  end
  object PaxListCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PaxListDsp'
    Left = 432
    Top = 8
    object PaxListCdsBookingsClients_id: TIntegerField
      FieldName = 'BookingsClients_id'
    end
    object PaxListCdsMale: TBooleanField
      FieldName = 'Male'
    end
    object PaxListCdsName: TStringField
      FieldName = 'Name'
    end
    object PaxListCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
    object PaxListCdsReference: TStringField
      FieldName = 'Reference'
      Size = 50
    end
    object PaxListCdsBookings_id: TIntegerField
      FieldName = 'Bookings_id'
    end
    object PaxListCdsCountries_id: TIntegerField
      FieldName = 'Countries_id'
    end
    object PaxListCdsCountryLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CountryLookup'
      LookupDataSet = BackOfficeDataModule.CountriesCds
      LookupKeyFields = 'countries_id'
      LookupResultField = 'country'
      KeyFields = 'Countries_id'
      Size = 30
      Lookup = True
    end
  end
  object PaxListDS: TDataSource
    DataSet = PaxListCds
    Left = 448
    Top = 8
  end
  object sp_UpdateBookingDetails: TSQLDataSet
    CommandText = 'p_UpdateBookingDetails'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftString
        Name = 'i_TourCode'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'i_TourDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 552
    Top = 24
  end
end
