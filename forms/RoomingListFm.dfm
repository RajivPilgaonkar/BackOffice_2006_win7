object RoomingListForm: TRoomingListForm
  Left = 177
  Top = 53
  Width = 798
  Height = 684
  Caption = 'Rooming List'
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 565
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Tour'
      Transparent = True
    end
    object MasterTourLabel: TLabel
      Left = 16
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Label'
      Transparent = True
    end
    object cxTourLcmb: TcxLookupComboBox
      Left = 600
      Top = 12
      Properties.KeyFieldNames = 'Tours'
      Properties.ListColumns = <
        item
          FieldName = 'Tours'
        end>
      Properties.ListSource = TourDS
      Properties.OnEditValueChanged = cxTourLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 0
      Width = 145
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 611
    Width = 790
    Height = 39
    Align = alBottom
    TabOrder = 1
    object CloseBtn: TcxButton
      Left = 688
      Top = 6
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
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 790
    Height = 24
    Align = alTop
    Color = clBlack
    TabOrder = 2
    object DoublesLabel: TLabel
      Left = 16
      Top = 6
      Width = 47
      Height = 13
      Caption = 'Doubles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 790
    Height = 300
    Align = alTop
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 788
      Height = 298
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = RoomingListDS
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
        object cxGrid1DBTableView1DBTourLeader: TcxGridDBColumn
          Caption = 'TL'
          DataBinding.FieldName = 'TourLeader'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1DBTourLeaderTrainee: TcxGridDBColumn
          Caption = 'TTL'
          DataBinding.FieldName = 'TourLeaderTrainee'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1PaxName: TcxGridDBColumn
          Caption = 'Name'
          DataBinding.FieldName = 'PaxName'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 148
        end
        object cxGrid1DBTableView1RefLookup: TcxGridDBColumn
          Caption = 'Ref'
          DataBinding.FieldName = 'RefLookup'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 70
        end
        object cxGrid1DBTableView1Male: TcxGridDBColumn
          DataBinding.FieldName = 'Male'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 42
        end
        object cxGrid1DBTableView1SingleSupplement: TcxGridDBColumn
          Caption = 'SS'
          DataBinding.FieldName = 'SingleSupplement'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 45
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
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 114
        end
        object cxGrid1DBTableView1RoomNo: TcxGridDBColumn
          Caption = 'Room No'
          DataBinding.FieldName = 'RoomNo'
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
        end
        object cxGrid1DBTableView1RoomSizes_id: TcxGridDBColumn
          Caption = 'Room Type'
          DataBinding.FieldName = 'RoomSizes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'roomsizes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomsize'
            end>
          Properties.ListSource = BackOfficeDataModule.RoomSizeDS
          Options.Filtering = False
          Options.Grouping = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 365
    Width = 790
    Height = 25
    Align = alTop
    Color = clBlack
    TabOrder = 4
    object SinglesLabel: TLabel
      Left = 16
      Top = 6
      Width = 42
      Height = 13
      Caption = 'Singles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 390
    Width = 790
    Height = 221
    Align = alClient
    TabOrder = 5
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 788
      Height = 219
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = RoomingListSinglesDS
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
        object cxGridDBTableView1DBTourLeader: TcxGridDBColumn
          Caption = 'TL'
          DataBinding.FieldName = 'TourLeader'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object cxGridDBTableView1DBTourLeaderTrainee: TcxGridDBColumn
          Caption = 'TTL'
          DataBinding.FieldName = 'TourLeaderTrainee'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object cxGrid2DBTableView1PaxName: TcxGridDBColumn
          Caption = 'Name'
          DataBinding.FieldName = 'PaxName'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 148
        end
        object cxGrid2DBTableView1RefLookup: TcxGridDBColumn
          Caption = 'Ref'
          DataBinding.FieldName = 'RefLookup'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 70
        end
        object cxGrid2DBTableView1Male: TcxGridDBColumn
          DataBinding.FieldName = 'Male'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 42
        end
        object cxGrid2DBTableView1SingleSupplement: TcxGridDBColumn
          Caption = 'SS'
          DataBinding.FieldName = 'SingleSupplement'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 45
        end
        object cxGrid2DBTableView1ShareWithBookingsClients_id: TcxGridDBColumn
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
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 114
        end
        object cxGrid2DBTableView1RoomNo: TcxGridDBColumn
          Caption = 'Room No'
          DataBinding.FieldName = 'RoomNo'
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
        end
        object cxGrid2DBTableView1RoomSizes_id: TcxGridDBColumn
          Caption = 'Room Type'
          DataBinding.FieldName = 'RoomSizes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'roomsizes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomsize'
            end>
          Properties.ListSource = BackOfficeDataModule.RoomSizeDS
          Options.Filtering = False
          Options.Grouping = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object RoomingListSds: TSQLDataSet
    CommandText = 'RoomingList'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 272
    Top = 112
  end
  object RoomingListDsp: TDataSetProvider
    DataSet = RoomingListSds
    Left = 288
    Top = 112
  end
  object RoomingListCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomingListDsp'
    AfterPost = RoomingListCdsAfterPost
    OnCalcFields = RoomingListCdsCalcFields
    Left = 304
    Top = 112
    object RoomingListCdsRoomingList_id: TIntegerField
      FieldName = 'RoomingList_id'
    end
    object RoomingListCdsBookingsClients_id: TIntegerField
      FieldName = 'BookingsClients_id'
    end
    object RoomingListCdsBookings_id: TIntegerField
      FieldName = 'Bookings_id'
    end
    object RoomingListCdsShareWithBookingsClients_id: TIntegerField
      FieldName = 'ShareWithBookingsClients_id'
    end
    object RoomingListCdsMale: TBooleanField
      FieldName = 'Male'
    end
    object RoomingListCdsSingleSupplement: TBooleanField
      FieldName = 'SingleSupplement'
    end
    object RoomingListCdsTourLeader: TBooleanField
      FieldName = 'TourLeader'
    end
    object RoomingListCdsTourLeaderTrainee: TBooleanField
      FieldName = 'TourLeaderTrainee'
    end
    object RoomingListCdsRoomNo: TIntegerField
      FieldName = 'RoomNo'
    end
    object RoomingListCdsRoomSizes_id: TIntegerField
      FieldName = 'RoomSizes_id'
    end
    object RoomingListCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object RoomingListCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object RoomingListCdsTL_Calc: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TL_Calc'
      Calculated = True
    end
    object RoomingListCdsTTL_Calc: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TTL_Calc'
      Calculated = True
    end
    object RoomingListCdsPaxName: TStringField
      FieldKind = fkLookup
      FieldName = 'PaxName'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'Name'
      KeyFields = 'BookingsClients_id'
      Lookup = True
    end
    object RoomingListCdsRefLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RefLookup'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'Reference'
      KeyFields = 'BookingsClients_id'
      Size = 50
      Lookup = True
    end
    object RoomingListCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 5
    end
    object RoomingListCdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
    end
  end
  object RoomingListDS: TDataSource
    DataSet = RoomingListCds
    Left = 320
    Top = 112
  end
  object RoomingListSinglesSds: TSQLDataSet
    CommandText = 'RoomingList'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 272
    Top = 440
  end
  object RoomingListSinglesDsp: TDataSetProvider
    DataSet = RoomingListSinglesSds
    Left = 288
    Top = 440
  end
  object RoomingListSinglesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomingListSinglesDsp'
    AfterPost = RoomingListSinglesCdsAfterPost
    Left = 304
    Top = 440
    object RoomingListSinglesCdsRoomingList_id: TIntegerField
      FieldName = 'RoomingList_id'
    end
    object RoomingListSinglesCdsBookingsClients_id: TIntegerField
      FieldName = 'BookingsClients_id'
    end
    object RoomingListSinglesCdsBookings_id: TIntegerField
      FieldName = 'Bookings_id'
    end
    object RoomingListSinglesCdsShareWithBookingsClients_id: TIntegerField
      FieldName = 'ShareWithBookingsClients_id'
    end
    object RoomingListSinglesCdsMale: TBooleanField
      FieldName = 'Male'
    end
    object RoomingListSinglesCdsSingleSupplement: TBooleanField
      FieldName = 'SingleSupplement'
    end
    object RoomingListSinglesCdsTourLeader: TBooleanField
      FieldName = 'TourLeader'
    end
    object RoomingListSinglesCdsTourLeaderTrainee: TBooleanField
      FieldName = 'TourLeaderTrainee'
    end
    object RoomingListSinglesCdsRoomNo: TIntegerField
      FieldName = 'RoomNo'
    end
    object RoomingListSinglesCdsRoomSizes_id: TIntegerField
      FieldName = 'RoomSizes_id'
    end
    object RoomingListSinglesCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
    object RoomingListSinglesCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
    object RoomingListSinglesCdsTL_Calc: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TL_Calc'
      Calculated = True
    end
    object RoomingListSinglesCdsTTL_Calc: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'TTL_Calc'
      Calculated = True
    end
    object RoomingListSinglesCdsPaxName: TStringField
      FieldKind = fkLookup
      FieldName = 'PaxName'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'Name'
      KeyFields = 'BookingsClients_id'
      Lookup = True
    end
    object RoomingListSinglesCdsRefLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RefLookup'
      LookupDataSet = PaxListCds
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'Reference'
      KeyFields = 'BookingsClients_id'
      Size = 50
      Lookup = True
    end
    object RoomingListSinglesCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 5
    end
    object RoomingListSinglesCdsTourDate: TSQLTimeStampField
      FieldName = 'TourDate'
    end
  end
  object RoomingListSinglesDS: TDataSource
    DataSet = RoomingListSinglesCds
    Left = 320
    Top = 440
  end
  object TourSds: TSQLDataSet
    CommandText = 'SELECT DISTINCT Tours FROM RoomingList'#13#10'WHERE Itineraries_id = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 640
    Top = 24
  end
  object TourDsp: TDataSetProvider
    DataSet = TourSds
    Left = 656
    Top = 24
  end
  object TourCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourDsp'
    Left = 672
    Top = 24
    object TourCdsTours: TStringField
      FieldName = 'Tours'
      Size = 50
    end
  end
  object TourDS: TDataSource
    DataSet = TourCds
    Left = 688
    Top = 24
  end
  object PaxListSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_GetPaxListOnTour ('#39'HTDS'#39','#39'03/11/2002'#39',2)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 400
    Top = 24
  end
  object PaxListDsp: TDataSetProvider
    DataSet = PaxListSds
    Left = 416
    Top = 24
  end
  object PaxListCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PaxListDsp'
    Left = 432
    Top = 24
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
  end
  object PaxListDS: TDataSource
    DataSet = PaxListCds
    Left = 448
    Top = 24
  end
end
