object Custom_Bookings_Form: TCustom_Bookings_Form
  Left = 64
  Top = 29
  Width = 1097
  Height = 696
  Caption = 'Custom_Bookings_Form'
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
    Top = 431
    Width = 1081
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 271
    Width = 1081
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter3: TSplitter
    Left = 441
    Top = 33
    Height = 238
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1081
    Height = 33
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 610
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
    object cxRadioGroup: TcxRadioGroup
      Left = 96
      Top = 3
      Caption = 'Search By'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Org'
          Value = True
        end
        item
          Caption = 'Name'
          Value = 'False'
        end>
      ItemIndex = 0
      Style.Edges = []
      TabOrder = 1
      Height = 38
      Width = 185
    end
    object cxSearchTextEdit: TcxTextEdit
      Left = 292
      Top = 22
      TabOrder = 2
      Width = 117
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 423
      Top = 8
      Width = 288
      Height = 33
      Buttons.Refresh.Visible = True
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      TabOrder = 3
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
      TabOrder = 6
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
    Top = 434
    Width = 1081
    Height = 176
    Align = alBottom
    TabOrder = 2
    object cxPageControl4: TcxPageControl
      Left = 1
      Top = 1
      Width = 1079
      Height = 174
      ActivePage = cxTabSheetAcc
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 168
      ClientRectLeft = 3
      ClientRectRight = 1073
      ClientRectTop = 26
      object cxTabSheetTickets: TcxTabSheet
        Caption = 'Tickets'
        ImageIndex = 0
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 142
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView4: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.KeyFieldNames = 'categories_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBBandedTableView4
          end
        end
      end
      object cxTabSheetAcc: TcxTabSheet
        Caption = 'Accommodation'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 142
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.KeyFieldNames = 'categories_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBBandedTableView1
          end
        end
      end
      object cxTabSheetSs: TcxTabSheet
        Caption = 'Sight Seeing'
        ImageIndex = 2
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 142
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView5: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.KeyFieldNames = 'categories_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBBandedTableView5
          end
        end
      end
      object cxTabSheetTrsf: TcxTabSheet
        Caption = 'Transfer'
        ImageIndex = 3
        object cxGrid6: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 142
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView6: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.KeyFieldNames = 'categories_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBBandedTableView6
          end
        end
      end
      object cxTabSheetPack: TcxTabSheet
        Caption = 'Packages'
        ImageIndex = 4
        object cxGrid7: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 142
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView7: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.KeyFieldNames = 'categories_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxGridDBBandedTableView7
          end
        end
      end
      object cxTabSheetTrans: TcxTabSheet
        Caption = 'Transport'
        ImageIndex = 5
        object cxGrid8: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 142
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView8: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.KeyFieldNames = 'categories_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGridLevel8: TcxGridLevel
            GridView = cxGridDBBandedTableView8
          end
        end
      end
      object cxTabSheetHistory: TcxTabSheet
        Caption = 'History'
        ImageIndex = 6
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 274
    Width = 1081
    Height = 157
    Align = alBottom
    TabOrder = 3
    object cxPageControl3: TcxPageControl
      Left = 1
      Top = 1
      Width = 1079
      Height = 155
      ActivePage = cxTabSheet3
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 149
      ClientRectLeft = 3
      ClientRectRight = 1073
      ClientRectTop = 26
      object cxTabSheet3: TcxTabSheet
        Caption = 'Clients'
        ImageIndex = 0
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1070
          Height = 123
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView3: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.KeyFieldNames = 'categories_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView3
          end
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 441
    Height = 238
    Align = alLeft
    TabOrder = 4
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 439
      Height = 236
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 230
      ClientRectLeft = 3
      ClientRectRight = 433
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Booking'
        ImageIndex = 0
        object DBText2: TDBText
          Left = 73
          Top = 105
          Width = 50
          Height = 13
          AutoSize = True
          DataField = 'bookings_id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 5
          Top = 8
          Caption = 'Principal'
          Transparent = True
        end
        object AgentLCB: TcxDBLookupComboBox
          Left = 73
          Top = 6
          DataBinding.DataField = 'addressbook_id'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = BackOfficeDataModule.PrinAgentDS
          Style.Color = 16247513
          TabOrder = 1
          Width = 355
        end
        object Label3: TcxLabel
          Left = 5
          Top = 32
          Caption = 'Web User'
          Transparent = True
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 73
          Top = 30
          DataBinding.DataField = 'web_users_id'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'web_users_id'
          Properties.ListColumns = <
            item
              FieldName = 'web_user'
            end>
          Properties.ListSource = BackOfficeDataModule.WebUsersDS
          Style.Color = 16247513
          TabOrder = 3
          Width = 355
        end
        object Label8: TcxLabel
          Left = 5
          Top = 56
          Caption = 'Country'
          Transparent = True
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 73
          Top = 54
          DataBinding.DataField = 'countries_id'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'countries_id'
          Properties.ListColumns = <
            item
              FieldName = 'country'
            end>
          Properties.ListSource = BackOfficeDataModule.CountriesDS
          Style.Color = 16247513
          TabOrder = 5
          Width = 146
        end
        object Label1: TcxLabel
          Left = 221
          Top = 54
          Caption = 'Currency'
          Transparent = True
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 275
          Top = 54
          DataBinding.DataField = 'currencies_id'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currency'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          Style.Color = 16247513
          TabOrder = 7
          Width = 152
        end
        object Label6: TcxLabel
          Left = 5
          Top = 80
          Caption = 'Reference'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 73
          Top = 78
          DataBinding.DataField = 'reference'
          Style.Color = 16247513
          TabOrder = 9
          Width = 144
        end
        object Label4: TcxLabel
          Left = 5
          Top = 104
          Caption = 'Booking ID'
          Transparent = True
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 444
    Top = 33
    Width = 637
    Height = 238
    Align = alClient
    TabOrder = 5
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 635
      Height = 236
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 230
      ClientRectLeft = 3
      ClientRectRight = 629
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Tours'
        ImageIndex = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 626
          Height = 204
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView2: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.KeyFieldNames = 'categories_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBBandedTableView2
          end
        end
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
  object MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM Bookings'#13#10'WHERE Bookings_id = :Bookings_id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Bookings_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 168
    Top = 24
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 190
    Top = 24
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
    Left = 215
    Top = 24
    object MasterCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object MasterCdsbooked: TSQLTimeStampField
      FieldName = 'booked'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsreference: TStringField
      FieldName = 'reference'
      Size = 50
    end
    object MasterCdsconfirmed: TSQLTimeStampField
      FieldName = 'confirmed'
    end
    object MasterCdshistory: TMemoField
      FieldName = 'history'
      BlobType = ftMemo
    end
    object MasterCdscancelled: TSQLTimeStampField
      FieldName = 'cancelled'
    end
    object MasterCdsnotes: TMemoField
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object MasterCdstravellingwith_bookings_id: TIntegerField
      FieldName = 'travellingwith_bookings_id'
    end
    object MasterCdsbookingsclients_id: TIntegerField
      FieldName = 'bookingsclients_id'
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object MasterCdssessionid: TStringField
      FieldName = 'sessionid'
      Size = 50
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdsweb_bookings_id: TIntegerField
      FieldName = 'web_bookings_id'
    end
    object MasterCdsweb_users_id: TIntegerField
      FieldName = 'web_users_id'
    end
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 237
    Top = 24
  end
  object Detail1Sds: TSQLDataSet
    CommandText = 'SELECT * FROM BookingsTours'#13#10'WHERE Bookings_id = :Bookings_id'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
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
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
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
    object Detail1Cdsbookingstours_id: TIntegerField
      FieldName = 'bookingstours_id'
    end
    object Detail1Cdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object Detail1Cdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object Detail1Cdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object Detail1Cdstourleader: TBooleanField
      FieldName = 'tourleader'
    end
    object Detail1Cdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object Detail1Cdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object Detail1Cdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
    end
    object Detail1Cdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
    end
    object Detail1Cdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
    end
    object Detail1Cdsweb_bookingstours_id: TIntegerField
      FieldName = 'web_bookingstours_id'
    end
    object Detail1Cdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object Detail1Cdstourleadertrainee: TBooleanField
      FieldName = 'tourleadertrainee'
    end
  end
  object Detail1Ds: TDataSource
    DataSet = Detail1Cds
    Left = 583
    Top = 24
  end
  object Detail2Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BookingsClients'#13#10'WHERE Bookings_id = :Bookings_id'#13 +
      #10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
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
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
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
    object Detail2Cdsbookingsclients_id: TIntegerField
      FieldName = 'bookingsclients_id'
    end
    object Detail2Cdsname: TStringField
      FieldName = 'name'
    end
    object Detail2Cdsdateofbirth: TSQLTimeStampField
      FieldName = 'dateofbirth'
    end
    object Detail2Cdspassportno: TStringField
      FieldName = 'passportno'
    end
    object Detail2Cdsdateofissue: TSQLTimeStampField
      FieldName = 'dateofissue'
    end
    object Detail2Cdsplaceofissue: TStringField
      FieldName = 'placeofissue'
      Size = 50
    end
    object Detail2Cdsvalidto: TSQLTimeStampField
      FieldName = 'validto'
    end
    object Detail2Cdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object Detail2Cdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object Detail2Cdsroomno: TIntegerField
      FieldName = 'roomno'
    end
    object Detail2Cdsmale: TBooleanField
      FieldName = 'male'
    end
    object Detail2Cdssinglesupplement: TBooleanField
      FieldName = 'singlesupplement'
    end
    object Detail2Cdsresident_countries_id: TIntegerField
      FieldName = 'resident_countries_id'
    end
    object Detail2Cdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object Detail2Cdsweb_bookingsclients_id: TIntegerField
      FieldName = 'web_bookingsclients_id'
    end
    object Detail2Cdslocalpayment: TBooleanField
      FieldName = 'localpayment'
    end
    object Detail2CdsLeadPaxOrder: TIntegerField
      FieldName = 'LeadPaxOrder'
    end
    object Detail2CdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Detail2CdsTravelEmail: TStringField
      FieldName = 'TravelEmail'
      Size = 50
    end
    object Detail2CdsPreferredPhone: TStringField
      FieldName = 'PreferredPhone'
      Size = 50
    end
    object Detail2CdsEmergencyContact: TStringField
      FieldName = 'EmergencyContact'
      Size = 50
    end
    object Detail2CdsEmergencyEmail: TStringField
      FieldName = 'EmergencyEmail'
      Size = 50
    end
    object Detail2CdsEmergencyHomePhone: TStringField
      FieldName = 'EmergencyHomePhone'
      Size = 50
    end
    object Detail2CdsEmergencyMobilePhone: TStringField
      FieldName = 'EmergencyMobilePhone'
      Size = 50
    end
    object Detail2CdsPaxPassportName: TStringField
      FieldName = 'PaxPassportName'
      Size = 100
    end
  end
  object Detail2Ds: TDataSource
    DataSet = Detail2Cds
    Left = 741
    Top = 24
  end
  object BkgTicketsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BookingsTickets'#13#10'WHERE Bookings_id = :Bookings_id'#13 +
      #10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 32
    Top = 496
  end
  object BkgTicketsDsp: TDataSetProvider
    DataSet = BkgTicketsSds
    UpdateMode = upWhereKeyOnly
    Left = 46
    Top = 496
  end
  object BkgTicketsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BkgTicketsDsp'
    BeforeInsert = BkgTicketsCdsBeforeInsert
    BeforeEdit = BkgTicketsCdsBeforeEdit
    BeforePost = BkgTicketsCdsBeforePost
    AfterPost = BkgTicketsCdsAfterPost
    BeforeDelete = BkgTicketsCdsBeforeDelete
    AfterDelete = BkgTicketsCdsAfterDelete
    Left = 71
    Top = 496
    object BkgTicketsCdsbookingstickets_id: TIntegerField
      FieldName = 'bookingstickets_id'
    end
    object BkgTicketsCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object BkgTicketsCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object BkgTicketsCdsnooftickets: TIntegerField
      FieldName = 'nooftickets'
    end
    object BkgTicketsCdstraveldate: TSQLTimeStampField
      FieldName = 'traveldate'
    end
    object BkgTicketsCdsflightno: TStringField
      FieldName = 'flightno'
    end
    object BkgTicketsCdsclassid: TIntegerField
      FieldName = 'classid'
    end
    object BkgTicketsCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object BkgTicketsCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object BkgTicketsCdstiming: TSQLTimeStampField
      FieldName = 'timing'
    end
    object BkgTicketsCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object BkgTicketsCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object BkgTicketsCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
    end
    object BkgTicketsCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
    end
    object BkgTicketsCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
    end
    object BkgTicketsCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object BkgTicketsCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object BkgTicketsCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object BkgTicketsCdsetd: TSQLTimeStampField
      FieldName = 'etd'
    end
    object BkgTicketsCdseta: TSQLTimeStampField
      FieldName = 'eta'
    end
    object BkgTicketsCdsto_trainstations_id: TIntegerField
      FieldName = 'to_trainstations_id'
    end
    object BkgTicketsCdsfrom_trainstations_id: TIntegerField
      FieldName = 'from_trainstations_id'
    end
    object BkgTicketsCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object BkgTicketsCdsnocancelled: TIntegerField
      FieldName = 'nocancelled'
    end
    object BkgTicketsCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object BkgTicketsCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object BkgTicketsCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object BkgTicketsCdsnobooked: TIntegerField
      FieldName = 'nobooked'
    end
    object BkgTicketsCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object BkgTicketsCdsnocancelled_resident: TIntegerField
      FieldName = 'nocancelled_resident'
    end
    object BkgTicketsCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object BkgTicketsCdsweb_bookingstickets_id: TIntegerField
      FieldName = 'web_bookingstickets_id'
    end
    object BkgTicketsCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object BkgTicketsCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object BkgTicketsCdsLeadPax: TStringField
      FieldName = 'LeadPax'
      Size = 50
    end
    object BkgTicketsCdsAgent_Cities_id: TIntegerField
      FieldName = 'Agent_Cities_id'
    end
  end
  object BkgTicketsDs: TDataSource
    DataSet = BkgTicketsCds
    Left = 85
    Top = 496
  end
  object BkgAccSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BookingsAccommodation'#13#10'WHERE Bookings_id = :Bookin' +
      'gs_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 168
    Top = 504
  end
  object BkgAccDsp: TDataSetProvider
    DataSet = BkgAccSds
    UpdateMode = upWhereKeyOnly
    Left = 190
    Top = 504
  end
  object BkgAccCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BkgAccDsp'
    BeforeInsert = BkgAccCdsBeforeInsert
    BeforeEdit = BkgAccCdsBeforeEdit
    BeforePost = BkgAccCdsBeforePost
    AfterPost = BkgAccCdsAfterPost
    BeforeDelete = BkgAccCdsBeforeDelete
    AfterDelete = BkgAccCdsAfterDelete
    Left = 207
    Top = 504
    object BkgAccCdsbookingsaccommodation_id: TIntegerField
      FieldName = 'bookingsaccommodation_id'
    end
    object BkgAccCdsdatein: TSQLTimeStampField
      FieldName = 'datein'
    end
    object BkgAccCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object BkgAccCdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object BkgAccCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object BkgAccCdsdateout: TSQLTimeStampField
      FieldName = 'dateout'
    end
    object BkgAccCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object BkgAccCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object BkgAccCdsquantity: TIntegerField
      FieldName = 'quantity'
    end
    object BkgAccCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object BkgAccCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object BkgAccCdsintimated: TBooleanField
      FieldName = 'intimated'
    end
    object BkgAccCdsac: TBooleanField
      FieldName = 'ac'
    end
    object BkgAccCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object BkgAccCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
    end
    object BkgAccCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
    end
    object BkgAccCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object BkgAccCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object BkgAccCdssingles: TIntegerField
      FieldName = 'singles'
    end
    object BkgAccCdsdoubles: TIntegerField
      FieldName = 'doubles'
    end
    object BkgAccCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object BkgAccCdseta: TSQLTimeStampField
      FieldName = 'eta'
    end
    object BkgAccCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object BkgAccCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object BkgAccCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
    end
    object BkgAccCdsweb_bookingsaccommodation_id: TIntegerField
      FieldName = 'web_bookingsaccommodation_id'
    end
    object BkgAccCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object BkgAccCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object BkgAccCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object BkgAccCdsLeadPax: TStringField
      FieldName = 'LeadPax'
      Size = 50
    end
    object BkgAccCdsHotel_Cities_id: TIntegerField
      FieldName = 'Hotel_Cities_id'
    end
    object BkgAccCdstriples: TIntegerField
      FieldName = 'triples'
    end
    object BkgAccCdstwins: TIntegerField
      FieldName = 'twins'
    end
  end
  object BkgAccDs: TDataSource
    DataSet = BkgAccCds
    Left = 221
    Top = 504
  end
  object BkgSsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BookingsServices'#13#10'WHERE Bookings_id = :Bookings_id' +
      #13#10'AND Transfer = 0'#13#10#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 272
    Top = 504
  end
  object BkgSsDsp: TDataSetProvider
    DataSet = BkgSsSds
    UpdateMode = upWhereKeyOnly
    Left = 294
    Top = 504
  end
  object BkgSsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BkgSsDsp'
    BeforeInsert = BkgSsCdsBeforeInsert
    BeforeEdit = BkgSsCdsBeforeEdit
    BeforePost = BkgSsCdsBeforePost
    AfterPost = BkgSsCdsAfterPost
    BeforeDelete = BkgSsCdsBeforeDelete
    AfterDelete = BkgSsCdsAfterDelete
    Left = 311
    Top = 504
    object BkgSsCdsbookingsservices_id: TIntegerField
      FieldName = 'bookingsservices_id'
    end
    object BkgSsCdsdate: TSQLTimeStampField
      FieldName = 'date'
    end
    object BkgSsCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 30
    end
    object BkgSsCdstransfer: TBooleanField
      FieldName = 'transfer'
    end
    object BkgSsCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object BkgSsCdseta: TSQLTimeStampField
      FieldName = 'eta'
    end
    object BkgSsCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object BkgSsCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object BkgSsCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object BkgSsCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object BkgSsCdsplacefrom: TStringField
      FieldName = 'placefrom'
    end
    object BkgSsCdsplaceto: TStringField
      FieldName = 'placeto'
    end
    object BkgSsCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object BkgSsCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object BkgSsCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object BkgSsCdsac: TBooleanField
      FieldName = 'ac'
    end
    object BkgSsCdshotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object BkgSsCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object BkgSsCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object BkgSsCdsservice_cities_id: TIntegerField
      FieldName = 'service_cities_id'
    end
    object BkgSsCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object BkgSsCdsobsolete1: TIntegerField
      FieldName = 'obsolete1'
    end
    object BkgSsCdsobsolete2: TIntegerField
      FieldName = 'obsolete2'
    end
    object BkgSsCdsentrancefees: TBooleanField
      FieldName = 'entrancefees'
    end
    object BkgSsCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object BkgSsCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object BkgSsCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object BkgSsCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object BkgSsCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
    end
    object BkgSsCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
    end
    object BkgSsCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
    end
    object BkgSsCdsguide: TBooleanField
      FieldName = 'guide'
    end
    object BkgSsCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object BkgSsCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object BkgSsCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object BkgSsCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object BkgSsCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object BkgSsCdsLeadPax: TStringField
      FieldName = 'LeadPax'
      Size = 50
    end
  end
  object BkgSsDs: TDataSource
    Left = 325
    Top = 504
  end
  object BkgTrsfSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BookingsServices'#13#10'WHERE Bookings_id = :Bookings_id' +
      #13#10'AND Transfer = 1'#13#10#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 504
  end
  object BkgTrsfDsp: TDataSetProvider
    DataSet = BkgTrsfSds
    UpdateMode = upWhereKeyOnly
    Left = 390
    Top = 504
  end
  object BkgTrsfCds: TClientDataSet
    Aggregates = <>
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BkgTrsfDsp'
    BeforeInsert = BkgTrsfCdsBeforeInsert
    BeforeEdit = BkgTrsfCdsBeforeEdit
    BeforePost = BkgTrsfCdsBeforePost
    AfterPost = BkgTrsfCdsAfterPost
    BeforeDelete = BkgTrsfCdsBeforeDelete
    AfterDelete = BkgTrsfCdsAfterDelete
    Left = 407
    Top = 504
    object BkgTrsfCdsbookingsservices_id: TIntegerField
      FieldName = 'bookingsservices_id'
    end
    object BkgTrsfCdsdate: TSQLTimeStampField
      FieldName = 'date'
    end
    object BkgTrsfCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 30
    end
    object BkgTrsfCdstransfer: TBooleanField
      FieldName = 'transfer'
    end
    object BkgTrsfCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object BkgTrsfCdseta: TSQLTimeStampField
      FieldName = 'eta'
    end
    object BkgTrsfCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object BkgTrsfCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object BkgTrsfCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object BkgTrsfCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object BkgTrsfCdsplacefrom: TStringField
      FieldName = 'placefrom'
    end
    object BkgTrsfCdsplaceto: TStringField
      FieldName = 'placeto'
    end
    object BkgTrsfCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object BkgTrsfCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object BkgTrsfCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object BkgTrsfCdsac: TBooleanField
      FieldName = 'ac'
    end
    object BkgTrsfCdshotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object BkgTrsfCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object BkgTrsfCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object BkgTrsfCdsservice_cities_id: TIntegerField
      FieldName = 'service_cities_id'
    end
    object BkgTrsfCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object BkgTrsfCdsobsolete1: TIntegerField
      FieldName = 'obsolete1'
    end
    object BkgTrsfCdsobsolete2: TIntegerField
      FieldName = 'obsolete2'
    end
    object BkgTrsfCdsentrancefees: TBooleanField
      FieldName = 'entrancefees'
    end
    object BkgTrsfCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object BkgTrsfCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object BkgTrsfCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object BkgTrsfCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object BkgTrsfCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
    end
    object BkgTrsfCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
    end
    object BkgTrsfCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
    end
    object BkgTrsfCdsguide: TBooleanField
      FieldName = 'guide'
    end
    object BkgTrsfCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object BkgTrsfCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object BkgTrsfCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object BkgTrsfCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object BkgTrsfCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object BkgTrsfCdsLeadPax: TStringField
      FieldName = 'LeadPax'
      Size = 50
    end
  end
  object BkgTrsfDs: TDataSource
    Left = 421
    Top = 504
  end
  object BkgPackSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BookingsPackages'#13#10'WHERE Bookings_id = :Bookings_id' +
      #13#10#13#10#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 472
    Top = 504
  end
  object BkgPackDsp: TDataSetProvider
    DataSet = BkgPackSds
    UpdateMode = upWhereKeyOnly
    Left = 494
    Top = 504
  end
  object BkgPackCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BkgPackDsp'
    BeforeInsert = BkgPackCdsBeforeInsert
    BeforeEdit = BkgPackCdsBeforeEdit
    BeforePost = BkgPackCdsBeforePost
    AfterPost = BkgPackCdsAfterPost
    BeforeDelete = BkgPackCdsBeforeDelete
    AfterDelete = BkgPackCdsAfterDelete
    Left = 511
    Top = 504
    object BkgPackCdsbookingspackages_id: TIntegerField
      FieldName = 'bookingspackages_id'
    end
    object BkgPackCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object BkgPackCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object BkgPackCdsfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
    end
    object BkgPackCdsfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
    end
    object BkgPackCdsfrom_addressbook_id: TIntegerField
      FieldName = 'from_addressbook_id'
    end
    object BkgPackCdsto_time: TSQLTimeStampField
      FieldName = 'to_time'
    end
    object BkgPackCdsto_place: TStringField
      FieldName = 'to_place'
      Size = 30
    end
    object BkgPackCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object BkgPackCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object BkgPackCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object BkgPackCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object BkgPackCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object BkgPackCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
    end
    object BkgPackCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
    end
    object BkgPackCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
    end
    object BkgPackCdstransport: TBooleanField
      FieldName = 'transport'
    end
    object BkgPackCdsac: TBooleanField
      FieldName = 'ac'
    end
    object BkgPackCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object BkgPackCdsnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object BkgPackCdsfrom_place: TStringField
      FieldName = 'from_place'
      Size = 30
    end
    object BkgPackCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object BkgPackCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object BkgPackCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object BkgPackCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object BkgPackCdsLeadPax: TStringField
      FieldName = 'LeadPax'
      Size = 50
    end
  end
  object BkgPackDs: TDataSource
    Left = 525
    Top = 504
  end
  object BkgTransSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BookingsTransport'#13#10'WHERE Bookings_id = :Bookings_i' +
      'd'#13#10#13#10#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 504
  end
  object BkgTransDsp: TDataSetProvider
    DataSet = BkgTransSds
    UpdateMode = upWhereKeyOnly
    Left = 606
    Top = 504
  end
  object BkgTransCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BkgTransDsp'
    BeforeInsert = BkgTransCdsBeforeInsert
    BeforeEdit = BkgTransCdsBeforeEdit
    BeforePost = BkgTransCdsBeforePost
    AfterPost = BkgTransCdsAfterPost
    BeforeDelete = BkgTransCdsBeforeDelete
    AfterDelete = BkgTransCdsAfterDelete
    Left = 623
    Top = 504
    object BkgTransCdsbookingstransport_id: TIntegerField
      FieldName = 'bookingstransport_id'
    end
    object BkgTransCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object BkgTransCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object BkgTransCdsfromdate: TSQLTimeStampField
      FieldName = 'fromdate'
    end
    object BkgTransCdsfromtime: TSQLTimeStampField
      FieldName = 'fromtime'
    end
    object BkgTransCdsfromplace: TStringField
      FieldName = 'fromplace'
      Size = 100
    end
    object BkgTransCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object BkgTransCdstodate: TSQLTimeStampField
      FieldName = 'todate'
    end
    object BkgTransCdstotime: TSQLTimeStampField
      FieldName = 'totime'
    end
    object BkgTransCdstoplace: TStringField
      FieldName = 'toplace'
      Size = 100
    end
    object BkgTransCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object BkgTransCdsdropoffdays: TIntegerField
      FieldName = 'dropoffdays'
    end
    object BkgTransCdsdropoffkms: TIntegerField
      FieldName = 'dropoffkms'
    end
    object BkgTransCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object BkgTransCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object BkgTransCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object BkgTransCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object BkgTransCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object BkgTransCdsac: TBooleanField
      FieldName = 'ac'
    end
    object BkgTransCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object BkgTransCdsnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object BkgTransCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object BkgTransCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object BkgTransCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object BkgTransCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
    end
    object BkgTransCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
    end
    object BkgTransCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
    end
    object BkgTransCdsweb_bookingstransport_id: TIntegerField
      FieldName = 'web_bookingstransport_id'
    end
    object BkgTransCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object BkgTransCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object BkgTransCdskms: TIntegerField
      FieldName = 'kms'
    end
    object BkgTransCdsLeadPax: TStringField
      FieldName = 'LeadPax'
      Size = 50
    end
    object BkgTransCdsAgent_Cities_id: TIntegerField
      FieldName = 'Agent_Cities_id'
    end
    object BkgTransCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object BkgTransCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
  end
  object BkgTransDs: TDataSource
    Left = 637
    Top = 504
  end
end
