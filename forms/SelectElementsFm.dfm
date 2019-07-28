object SelectElementsForm: TSelectElementsForm
  Left = 386
  Top = 92
  Width = 905
  Height = 657
  Caption = 'Select Elements'
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
    Top = 578
    Width = 897
    Height = 45
    Align = alBottom
    TabOrder = 0
    object cxCloseBtn: TcxButton
      Left = 804
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxCloseBtnClick
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
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 50
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 16
      Top = 18
      Caption = 'City'
      Transparent = True
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 72
      Top = 16
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 305
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 897
    Height = 528
    Align = alClient
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 895
      Height = 526
      ActivePage = cxTransferTab
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 520
      ClientRectLeft = 3
      ClientRectRight = 889
      ClientRectTop = 26
      object cxAccTab: TcxTabSheet
        Caption = 'Cost Accommodation'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 886
          Height = 494
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OnDblClick = cxGrid1DBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemAccDs
            DataController.KeyFieldNames = 'ElemAccommodation_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1ElemAccommodation_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemAccommodation_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxGrid1DBTableView1Organisation: TcxGridDBColumn
              Caption = 'Hotel'
              DataBinding.FieldName = 'Organisation'
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 382
            end
            object cxGrid1DBTableView1AC: TcxGridDBColumn
              DataBinding.FieldName = 'AC'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 40
            end
            object cxGrid1DBTableView1RoomType: TcxGridDBColumn
              Caption = 'Room Type'
              DataBinding.FieldName = 'RoomType'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 92
            end
            object cxGrid1DBTableView1MealPlan: TcxGridDBColumn
              Caption = 'Meal Plan'
              DataBinding.FieldName = 'MealPlan'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 69
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object cxTransferTab: TcxTabSheet
        Caption = 'Transfer'
        ImageIndex = 1
        object cxTransferGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 886
          Height = 494
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTransferGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OnDblClick = cxTransferGridDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemTrsfDs
            DataController.KeyFieldNames = 'ElemServices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxTransferGridDBTableView1ElemServices_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemServices_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxTransferGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 214
            end
            object cxTransferGridDBTableView1Service: TcxGridDBColumn
              DataBinding.FieldName = 'Description'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 419
            end
          end
          object cxTransferGridLevel1: TcxGridLevel
            GridView = cxTransferGridDBTableView1
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Train'
        ImageIndex = 2
        object cxTrainGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 886
          Height = 494
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTrainGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OnDblClick = cxTrainGridDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemTrainDs
            DataController.KeyFieldNames = 'ElemTickets_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxTrainGridDBTableView1ModuleElemTickets_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemTickets_id'
              Visible = False
              Options.Editing = False
            end
            object cxTrainGridDBTableView1FromCity: TcxGridDBColumn
              Caption = 'From City'
              DataBinding.FieldName = 'FromCity'
              Options.Editing = False
              Options.Grouping = False
              Width = 84
            end
            object cxTrainGridDBTableView1ToCity: TcxGridDBColumn
              Caption = 'To City'
              DataBinding.FieldName = 'ToCity'
              Options.Editing = False
              Options.Grouping = False
              Width = 90
            end
            object cxTrainGridDBTableView1FromTrainStation: TcxGridDBColumn
              Caption = 'From Station'
              DataBinding.FieldName = 'FromTrainStation'
              Visible = False
              Options.Editing = False
              Options.Grouping = False
              Width = 89
            end
            object cxTrainGridDBTableView1ToTrainStation: TcxGridDBColumn
              Caption = 'To Station'
              DataBinding.FieldName = 'ToTrainStation'
              Visible = False
              Options.Editing = False
              Options.Grouping = False
              Width = 77
            end
            object cxTrainGridDBTableView1Class: TcxGridDBColumn
              DataBinding.FieldName = 'Class'
              Visible = False
              Options.Editing = False
            end
            object cxTrainGridDBTableView1TrainNo: TcxGridDBColumn
              Caption = 'Train No'
              DataBinding.FieldName = 'TrainNo'
              Options.Editing = False
              Options.Grouping = False
              Width = 64
            end
            object cxTrainGridDBTableView1TrainName: TcxGridDBColumn
              Caption = 'Train'
              DataBinding.FieldName = 'TrainName'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 110
            end
            object cxTrainGridDBTableView1Trains_id: TcxGridDBColumn
              DataBinding.FieldName = 'Trains_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxTrainGridDBTableView1DaysOfOperation: TcxGridDBColumn
              Caption = 'Operates On'
              DataBinding.FieldName = 'DaysOfOperation'
              Options.Editing = False
              Options.Grouping = False
              Width = 125
            end
            object cxTrainGridDBTableView1Timings: TcxGridDBColumn
              DataBinding.FieldName = 'Timings'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 82
            end
          end
          object cxTrainGridLevel1: TcxGridLevel
            GridView = cxTrainGridDBTableView1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Sightseeing'
        ImageIndex = 3
        object cxSightGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 886
          Height = 494
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxSightGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OnDblClick = cxSightGridDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemSightDs
            DataController.KeyFieldNames = 'ElemServices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxSightGridDBTableView1ElemServices_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemServices_id'
              Visible = False
              Options.Editing = False
            end
            object cxSightGridDBTableView1AgentAddressbook_id: TcxGridDBColumn
              DataBinding.FieldName = 'AgentAddressbook_id'
              Visible = False
              Options.Editing = False
            end
            object cxSightGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Width = 354
            end
            object cxSightGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Width = 131
            end
            object cxSightGridDBTableView1Description: TcxGridDBColumn
              DataBinding.FieldName = 'Description'
              Visible = False
              GroupIndex = 0
              Width = 273
            end
          end
          object cxSightGridLevel1: TcxGridLevel
            GridView = cxSightGridDBTableView1
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Car Hire'
        ImageIndex = 4
        object cxCarHireGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 886
          Height = 494
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxCarHireGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OnDblClick = cxCarHireGridDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemCarDs
            DataController.KeyFieldNames = 'ElemCars_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxCarHireGridDBTableView1ModuleElemCars_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemCars_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
            end
            object cxCarHireGridDBTableView1City: TcxGridDBColumn
              DataBinding.FieldName = 'City'
              Options.Editing = False
              Options.Filtering = False
              Width = 122
            end
            object cxCarHireGridDBTableView1Organisation: TcxGridDBColumn
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 427
            end
            object cxCarHireGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Options.Editing = False
              Options.Filtering = False
              Width = 145
            end
          end
          object cxCarHireGridLevel1: TcxGridLevel
            GridView = cxCarHireGridDBTableView1
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Inter City'
        ImageIndex = 5
        object cxInterCityGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 886
          Height = 494
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxInterCityGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OnDblClick = cxInterCityGridDBTableView1DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemIntercitiesDs
            DataController.KeyFieldNames = 'ElemInterCities_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxInterCityGridDBTableView1ModuleElemInterCities_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemInterCities_id'
              Visible = False
            end
            object cxInterCityGridDBTableView1FromCity: TcxGridDBColumn
              Caption = 'From City'
              DataBinding.FieldName = 'FromCity'
              Options.Editing = False
              Width = 120
            end
            object cxInterCityGridDBTableView1ToCity: TcxGridDBColumn
              Caption = 'To City'
              DataBinding.FieldName = 'ToCity'
              Options.Editing = False
              Width = 120
            end
            object cxInterCityGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Width = 335
            end
            object cxInterCityGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Options.Editing = False
              Width = 167
            end
          end
          object cxInterCityGridLevel1: TcxGridLevel
            GridView = cxInterCityGridDBTableView1
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Transport Modules'
        ImageIndex = 6
        TabVisible = False
        object cxTranspModGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 886
          Height = 494
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTranspModGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = TransModuleDs
            DataController.KeyFieldNames = 'QuoFixedRatesTranspModules_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTranspModGridDBTableView1QuoFixedRatesTranspModules_id: TcxGridDBColumn
              DataBinding.FieldName = 'QuoFixedRatesTranspModules_id'
              Visible = False
            end
            object cxTranspModGridDBTableView1FixedItin_id: TcxGridDBColumn
              DataBinding.FieldName = 'FixedItin_id'
              Visible = False
            end
            object cxTranspModGridDBTableView1Wef: TcxGridDBColumn
              DataBinding.FieldName = 'Wef'
              Width = 100
            end
            object cxTranspModGridDBTableView1Title: TcxGridDBColumn
              Caption = 'Module'
              DataBinding.FieldName = 'Title'
              Visible = False
              GroupIndex = 0
              Width = 200
            end
            object cxTranspModGridDBTableView1Currencies_id: TcxGridDBColumn
              DataBinding.FieldName = 'Currencies_id'
              Visible = False
            end
            object cxTranspModGridDBTableView1CurrencyCode: TcxGridDBColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'CurrencyCode'
              Width = 80
            end
            object cxTranspModGridDBTableView1Vehicles_id: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicles_id'
              Visible = False
            end
            object cxTranspModGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Width = 100
            end
            object cxTranspModGridDBTableView1Cost: TcxGridDBColumn
              DataBinding.FieldName = 'Cost'
              Width = 100
            end
          end
          object cxTranspModGridLevel1: TcxGridLevel
            GridView = cxTranspModGridDBTableView1
          end
        end
      end
    end
  end
  object ElemAccSds: TSQLDataSet
    CommandText = 
      'SELECT MAX(ea.ElemAccommodation_id) AS ElemAccommodation_id, ea.' +
      'Addressbook_id, a.Organisation, ea.AC, '#13#10'       rt.RoomType, mp.' +
      'MealPlan, a.Cities_id'#13#10'FROM ElemAccommodation ea'#13#10'     LEFT JOIN' +
      ' Addressbook a ON ea.Addressbook_id = a.Addressbook_id'#13#10'     LEF' +
      'T JOIN RoomTypes rt ON ea.RoomTypes_id = rt.RoomTypes_id'#13#10'     L' +
      'EFT JOIN MealPlans mp ON ea.MealPlans_id = mp.MealPlans_id'#13#10'WHER' +
      'E a.Cities_id = :Cities_id'#13#10'GROUP BY ea.Addressbook_id, a.Organi' +
      'sation, ea.AC, '#13#10'       rt.RoomType, mp.MealPlan, a.Cities_id'#13#10'O' +
      'RDER BY a.Organisation'#13#10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 8
    Top = 40
  end
  object ElemAccCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'cities_id'
    MasterFields = 'Cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ElemAccDsp'
    Left = 48
    Top = 40
    object ElemAccCdsElemAccommodation_id: TIntegerField
      FieldName = 'ElemAccommodation_id'
    end
    object ElemAccCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object ElemAccCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ElemAccCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object ElemAccCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object ElemAccCdsMealPlan: TStringField
      FieldName = 'MealPlan'
      Size = 15
    end
    object ElemAccCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object ElemAccDsp: TDataSetProvider
    DataSet = ElemAccSds
    Left = 24
    Top = 40
  end
  object ElemAccDs: TDataSource
    DataSet = ElemAccCds
    Left = 72
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Left = 248
    Top = 248
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
  object PopupMenu2: TPopupMenu
    Left = 172
    Top = 389
    object EditInsert1: TMenuItem
      Caption = 'Insert'
      OnClick = EditInsert1Click
    end
  end
  object ElemTrsfSds: TSQLDataSet
    CommandText = 
      'SELECT MAX(es.ElemServices_id) AS ElemServices_id, es.AgentAddre' +
      'ssbook_id, a.Organisation, s.Cities_id, '#13#10's.Description'#13#10'FROM El' +
      'emServices es'#13#10'     LEFT JOIN Addressbook a ON es.AgentAddressbo' +
      'ok_id = '#13#10'a.Addressbook_id'#13#10'     LEFT JOIN Services s ON es.Serv' +
      'ices_id = s.Services_id'#13#10'WHERE s.Cities_id = :Cities_id'#13#10'AND es.' +
      'SightSeeing = 0'#13#10'GROUP BY es.AgentAddressbook_id, a.Organisation' +
      ', s.Cities_id, s.Description'#13#10'ORDER BY a.Organisation'#13#10#13#10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 32
  end
  object ElemTrsfCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ElemServices_id'
        DataType = ftInteger
      end
      item
        Name = 'AgentAddressbook_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vehicle'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Cities_id'
        DataType = ftInteger
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ElemTrsfDsp'
    StoreDefs = True
    Left = 176
    Top = 32
    object ElemTrsfCdsElemServices_id: TIntegerField
      FieldName = 'ElemServices_id'
    end
    object ElemTrsfCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object ElemTrsfCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ElemTrsfCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ElemTrsfCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
  end
  object ElemTrsfDsp: TDataSetProvider
    DataSet = ElemTrsfSds
    Left = 152
    Top = 32
  end
  object ElemTrsfDs: TDataSource
    DataSet = ElemTrsfCds
    Left = 200
    Top = 32
  end
  object ElemTrainSds: TSQLDataSet
    CommandText = 
      'SELECT MAX(et.ElemTickets_id) AS ElemTickets_id, et.Tickets_id, ' +
      'cl.Class, c1.City AS FromCity, c2.City as ToCity, '#13#10'       ts1.S' +
      'tation as FromTrainStation, ts2.Station as ToTrainStation,'#13#10'    ' +
      '   et.TrainNo, t.TrainName, et.Trains_id,'#13#10'       dbo.f_DaysToSt' +
      'r (t.DayOfOperation) AS DaysOfOperation, et.Timings,'#13#10'       c1.' +
      'Cities_id AS FromCities_id, c2.Cities_id AS ToCities_id'#13#10'FROM El' +
      'emTickets et'#13#10'LEFT JOIN Class cl ON et.Class_id = cl.Class_id'#13#10'L' +
      'EFT JOIN Cities c1 ON et.From_Cities_id = c1.Cities_id'#13#10'LEFT JOI' +
      'N Cities c2 ON et.To_Cities_id = c2.Cities_id'#13#10'LEFT JOIN TrainSt' +
      'ations ts1 ON et.From_TrainStations_id = ts1.TrainStations_id'#13#10'L' +
      'EFT JOIN TrainStations ts2 ON et.To_TrainStations_id = ts2.Train' +
      'Stations_id'#13#10'LEFT JOIN Trains t ON et.Trains_id = t.Trains_id'#13#10'W' +
      'HERE et.Tickets_id = 2'#13#10'AND et.From_Cities_id = :Cities_id'#13#10'GROU' +
      'P BY et.Tickets_id, cl.Class, c1.City, c2.City, '#13#10'       ts1.Sta' +
      'tion, ts2.Station, et.TrainNo, t.TrainName, et.Trains_id,'#13#10'     ' +
      '  dbo.f_DaysToStr (t.DayOfOperation), et.Timings,'#13#10'       c1.Cit' +
      'ies_id, c2.Cities_id'#13#10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 264
    Top = 200
  end
  object ElemTrainDsp: TDataSetProvider
    DataSet = ElemTrainSds
    Left = 280
    Top = 200
  end
  object ElemTrainCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ElemTickets_id'
        DataType = ftInteger
      end
      item
        Name = 'Tickets_id'
        DataType = ftInteger
      end
      item
        Name = 'Class'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FromCity'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ToCity'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FromTrainStation'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ToTrainStation'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TrainNo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TrainName'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Trains_id'
        DataType = ftInteger
      end
      item
        Name = 'DaysOfOperation'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Timings'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FromCities_id'
        DataType = ftInteger
      end
      item
        Name = 'ToCities_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'FromCities_id'
    MasterFields = 'Cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ElemTrainDsp'
    StoreDefs = True
    Left = 304
    Top = 200
    object ElemTrainCdsElemTickets_id: TIntegerField
      FieldName = 'ElemTickets_id'
    end
    object ElemTrainCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object ElemTrainCdsClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
    object ElemTrainCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object ElemTrainCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object ElemTrainCdsFromTrainStation: TStringField
      FieldName = 'FromTrainStation'
      Size = 50
    end
    object ElemTrainCdsToTrainStation: TStringField
      FieldName = 'ToTrainStation'
      Size = 50
    end
    object ElemTrainCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object ElemTrainCdsTrainName: TStringField
      FieldName = 'TrainName'
      Size = 100
    end
    object ElemTrainCdsTrains_id: TIntegerField
      FieldName = 'Trains_id'
    end
    object ElemTrainCdsDaysOfOperation: TStringField
      FieldName = 'DaysOfOperation'
      Size = 30
    end
    object ElemTrainCdsTimings: TStringField
      FieldName = 'Timings'
      Size = 30
    end
    object ElemTrainCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object ElemTrainCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
  end
  object ElemTrainDs: TDataSource
    DataSet = ElemTrainCds
    Left = 328
    Top = 200
  end
  object ElemSightSds: TSQLDataSet
    CommandText = 
      'SELECT MAX(es.ElemServices_id) AS ElemServices_id, es.AgentAddre' +
      'ssbook_id, a.Organisation, v.Vehicle, s.Cities_id, '#13#10's.Descripti' +
      'on'#13#10'FROM ElemServices es'#13#10'     LEFT JOIN Addressbook a ON es.Age' +
      'ntAddressbook_id = '#13#10'a.Addressbook_id'#13#10'     LEFT JOIN Vehicles v' +
      ' ON es.Vehicles_id = v.Vehicles_id'#13#10'     LEFT JOIN Services s ON' +
      ' es.Services_id = s.Services_id'#13#10'WHERE s.Cities_id = :Cities_id'#13 +
      #10'AND es.SightSeeing = 1'#13#10'GROUP BY es.AgentAddressbook_id, a.Orga' +
      'nisation, v.Vehicle, s.Cities_id, s.Description'#13#10'ORDER BY a.Orga' +
      'nisation'#13#10#13#10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 400
    Top = 24
  end
  object ElemSightDsp: TDataSetProvider
    DataSet = ElemSightSds
    Left = 416
    Top = 24
  end
  object ElemSightCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ElemServices_id'
        DataType = ftInteger
      end
      item
        Name = 'AgentAddressbook_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vehicle'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Cities_id'
        DataType = ftInteger
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ElemSightDsp'
    StoreDefs = True
    Left = 440
    Top = 24
    object ElemSightCdsElemServices_id: TIntegerField
      FieldName = 'ElemServices_id'
    end
    object ElemSightCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object ElemSightCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ElemSightCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object ElemSightCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ElemSightCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
  end
  object ElemSightDs: TDataSource
    DataSet = ElemSightCds
    Left = 464
    Top = 24
  end
  object ElemCarSds: TSQLDataSet
    CommandText = 
      'SELECT MAX(ec.ElemCars_id) AS ElemCars_id, ec.Addressbook_id, a.' +
      'Organisation, v.Vehicle, ec.ServiceCities_id AS Cities_id'#13#10'FROM ' +
      'ElemCars ec'#13#10'     LEFT JOIN Addressbook a ON ec.Addressbook_id =' +
      ' a.Addressbook_id'#13#10'     LEFT JOIN Vehicles v ON ec.Vehicles_id =' +
      ' v.Vehicles_id'#13#10'WHERE ec.ServiceCities_id = :Cities_id'#13#10'GROUP BY' +
      ' ec.Addressbook_id, a.Organisation, v.Vehicle, ec.ServiceCities_' +
      'id'#13#10'ORDER BY a.Organisation'#13#10#13#10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 16
  end
  object ElemCarDsp: TDataSetProvider
    DataSet = ElemCarSds
    Left = 576
    Top = 16
  end
  object ElemCarCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ElemCars_id'
        DataType = ftInteger
      end
      item
        Name = 'Addressbook_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vehicle'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Cities_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ElemCarDsp'
    StoreDefs = True
    Left = 600
    Top = 16
    object ElemCarCdsElemCars_id: TIntegerField
      FieldName = 'ElemCars_id'
    end
    object ElemCarCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object ElemCarCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ElemCarCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object ElemCarCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object ElemCarDs: TDataSource
    DataSet = ElemCarCds
    Left = 624
    Top = 16
  end
  object ElemIntercitiesSds: TSQLDataSet
    CommandText = 
      'SELECT MAX(ec.ElemInterCities_id) AS ElemInterCities_id, ec.Addr' +
      'essbook_id, a.Organisation, v.Vehicle, ec.FromCities_id AS Citie' +
      's_id'#13#10'FROM ElemInterCities ec'#13#10'     LEFT JOIN Addressbook a ON e' +
      'c.Addressbook_id = a.Addressbook_id'#13#10'     LEFT JOIN Vehicles v O' +
      'N ec.Vehicles_id = v.Vehicles_id'#13#10'WHERE ec.FromCities_id = :Citi' +
      'es_id'#13#10'GROUP BY ec.Addressbook_id, a.Organisation, v.Vehicle, ec' +
      '.FromCities_id'#13#10'ORDER BY a.Organisation'#13#10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 88
  end
  object ElemIntercitiesDsp: TDataSetProvider
    DataSet = ElemIntercitiesSds
    Left = 576
    Top = 88
  end
  object ElemIntercitiesCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ElemInterCities_id'
        DataType = ftInteger
      end
      item
        Name = 'Addressbook_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Vehicle'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Cities_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ElemIntercitiesDsp'
    StoreDefs = True
    Left = 600
    Top = 88
    object ElemIntercitiesCdsElemInterCities_id: TIntegerField
      FieldName = 'ElemInterCities_id'
    end
    object ElemIntercitiesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object ElemIntercitiesCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ElemIntercitiesCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object ElemIntercitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object ElemIntercitiesDs: TDataSource
    DataSet = ElemIntercitiesCds
    Left = 624
    Top = 88
  end
  object TransModuleSds: TSQLDataSet
    CommandText = 
      'SELECT q.QuoFixedRatesTranspModules_id, q.FixedItin_id, f.Title,' +
      #13#10'  q.Wef, q.Currencies_id, c.CurrencyCode, q.Vehicles_id, v.Veh' +
      'icle, q.Cost'#13#10'FROM QuoFixedRatesTranspModules q'#13#10'     LEFT JOIN ' +
      'FixedItin f ON q.FixedItin_id = f.FixedItin_id'#13#10'     LEFT JOIN C' +
      'urrencies c ON q.Currencies_id = c.Currencies_id'#13#10'     LEFT JOIN' +
      ' Vehicles v ON q.Vehicles_id = v.Vehicles_id'#13#10'WHERE Wef >= :wef'#13 +
      #10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 184
  end
  object TransModuleDsp: TDataSetProvider
    DataSet = TransModuleSds
    Left = 600
    Top = 184
  end
  object TransModuleCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QuoFixedRatesTranspModules_id'
        DataType = ftInteger
      end
      item
        Name = 'FixedItin_id'
        DataType = ftInteger
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 254
      end
      item
        Name = 'Wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Currencies_id'
        DataType = ftInteger
      end
      item
        Name = 'CurrencyCode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Vehicles_id'
        DataType = ftInteger
      end
      item
        Name = 'Vehicle'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'TransModuleDsp'
    StoreDefs = True
    Left = 624
    Top = 184
    object TransModuleCdsQuoFixedRatesTranspModules_id: TIntegerField
      FieldName = 'QuoFixedRatesTranspModules_id'
    end
    object TransModuleCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object TransModuleCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
    object TransModuleCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TransModuleCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object TransModuleCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object TransModuleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object TransModuleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object TransModuleCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object TransModuleDs: TDataSource
    DataSet = TransModuleCds
    Left = 648
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 124
    Top = 541
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City FROM Cities'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 264
    Top = 8
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 280
    Top = 8
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cities_id'
        DataType = ftInteger
      end
      item
        Name = 'City'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    StoreDefs = True
    Left = 304
    Top = 8
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 328
    Top = 8
  end
end
