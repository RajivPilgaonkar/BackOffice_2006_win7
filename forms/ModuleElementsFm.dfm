object ModuleElementsForm: TModuleElementsForm
  Left = 326
  Top = 18
  Width = 905
  Height = 657
  Caption = 'Module Elements'
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
    Top = 574
    Width = 889
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
    Width = 889
    Height = 50
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 16
      Top = 18
      Caption = 'Module'
      Transparent = True
    end
    object cxModuleLCMB: TcxLookupComboBox
      Left = 72
      Top = 16
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'FixedItin_id'
      Properties.ListColumns = <
        item
          Width = 300
          FieldName = 'Title'
        end
        item
          Caption = 'Code'
          Width = 100
          FieldName = 'QuotationRef'
        end>
      Properties.ListSource = ModulesDs
      Properties.OnEditValueChanged = cxModuleLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 473
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 889
    Height = 524
    Align = alClient
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 887
      Height = 522
      ActivePage = cxTabSheetTrain
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 516
      ClientRectLeft = 3
      ClientRectRight = 881
      ClientRectTop = 26
      object cxTabSheetAcc: TcxTabSheet
        Caption = 'Cost Accommodation'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ModElemAccDs
            DataController.KeyFieldNames = 'ModuleElemAcc_id'
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
            object cxGrid1DBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Visible = False
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid1DBTableView1ModuleElemAcc_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemAcc_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxGrid1DBTableView1City: TcxGridDBColumn
              Caption = 'City'
              DataBinding.FieldName = 'City'
              Options.Editing = False
              Options.Sorting = False
              Width = 89
            end
            object cxGrid1DBTableView1Organisation: TcxGridDBColumn
              Caption = 'Hotel'
              DataBinding.FieldName = 'Organisation'
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Sorting = False
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
      object cxTabSheetTrsf: TcxTabSheet
        Caption = 'Transfer'
        ImageIndex = 1
        object cxTransferGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTransferGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ModElemTrsfDs
            DataController.KeyFieldNames = 'ModuleElemServices_id'
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
            object cxTransferGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Visible = False
            end
            object cxTransferGridDBTableView1ModuleElemServices_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemServices_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxTransferGridDBTableView1City: TcxGridDBColumn
              DataBinding.FieldName = 'City'
              Options.Sorting = False
              Width = 102
            end
            object cxTransferGridDBTableView1Service: TcxGridDBColumn
              DataBinding.FieldName = 'Service'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 291
            end
            object cxTransferGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 278
            end
          end
          object cxTransferGridLevel1: TcxGridLevel
            GridView = cxTransferGridDBTableView1
          end
        end
      end
      object cxTabSheetTrain: TcxTabSheet
        Caption = 'Train'
        ImageIndex = 2
        object cxTrainGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTrainGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ModElemTrainDs
            DataController.KeyFieldNames = 'ModuleElemTickets_id'
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
            object cxTrainGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Visible = False
              Options.Sorting = False
            end
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
              Width = 120
            end
            object cxTrainGridDBTableView1Timings: TcxGridDBColumn
              DataBinding.FieldName = 'Timings'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 101
            end
            object cxTrainGridDBTableView1TravelMode: TcxGridDBColumn
              Caption = 'Mode'
              DataBinding.FieldName = 'TravelMode'
              Width = 97
            end
          end
          object cxTrainGridLevel1: TcxGridLevel
            GridView = cxTrainGridDBTableView1
          end
        end
      end
      object cxTabSheetSight: TcxTabSheet
        Caption = 'Sightseeing'
        ImageIndex = 3
        object cxSightGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxSightGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ModElemSightDs
            DataController.KeyFieldNames = 'ModuleElemServices_id'
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
            object cxSightGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Visible = False
            end
            object cxSightGridDBTableView1City: TcxGridDBColumn
              DataBinding.FieldName = 'City'
              Width = 100
            end
            object cxSightGridDBTableView1Service: TcxGridDBColumn
              DataBinding.FieldName = 'Service'
              Width = 315
            end
            object cxSightGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Width = 236
            end
            object cxSightGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Visible = False
              Width = 80
            end
            object cxSightGridDBTableView1AgentAddressBook_id: TcxGridDBColumn
              DataBinding.FieldName = 'AgentAddressBook_id'
              Visible = False
            end
            object cxSightGridDBTableView1ModuleElemServices_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemServices_id'
              Visible = False
            end
          end
          object cxSightGridLevel1: TcxGridLevel
            GridView = cxSightGridDBTableView1
          end
        end
      end
      object cxTabSheetCar: TcxTabSheet
        Caption = 'Car Hire'
        ImageIndex = 4
        object cxCarHireGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxCarHireGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ModElemCarDs
            DataController.KeyFieldNames = 'ModuleElemCars_id'
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
            object cxCarHireGridDBTableView1SrNo: TcxGridDBColumn
              DataBinding.FieldName = 'SrNo'
              Visible = False
            end
            object cxCarHireGridDBTableView1ModuleElemCars_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemCars_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
            end
            object cxCarHireGridDBTableView1Organisation: TcxGridDBColumn
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 427
            end
            object cxCarHireGridDBTableView1Sector: TcxGridDBColumn
              DataBinding.FieldName = 'Sector'
              Options.Sorting = False
              Width = 200
            end
          end
          object cxCarHireGridLevel1: TcxGridLevel
            GridView = cxCarHireGridDBTableView1
          end
        end
      end
      object cxTabSheetInterCities: TcxTabSheet
        Caption = 'Inter City'
        ImageIndex = 5
        object cxInterCityGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxInterCityGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ModElemIntercitiesDs
            DataController.KeyFieldNames = 'ModuleElemInterCities_id'
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
            object cxInterCityGridDBTableView1SrNo: TcxGridDBColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Visible = False
            end
            object cxInterCityGridDBTableView1ModuleElemInterCities_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemInterCities_id'
              Visible = False
              Options.Sorting = False
            end
            object cxInterCityGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Options.Sorting = False
              Width = 335
            end
            object cxInterCityGridDBTableView1Sector: TcxGridDBColumn
              DataBinding.FieldName = 'Sector'
              Options.Sorting = False
              Width = 200
            end
          end
          object cxInterCityGridLevel1: TcxGridLevel
            GridView = cxInterCityGridDBTableView1
          end
        end
      end
      object cxTabSheetCityGroups: TcxTabSheet
        Caption = 'City Groups'
        ImageIndex = 6
        object cxTranspModGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTranspModGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ModElemCityGroupsDs
            DataController.KeyFieldNames = 'ModuleElemCityGroups_id'
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
            object cxTranspModGridDBTableView1SrNo: TcxGridDBColumn
              DataBinding.FieldName = 'SrNo'
              Visible = False
            end
            object cxTranspModGridDBTableView1ModuleElemCityGroups_id: TcxGridDBColumn
              DataBinding.FieldName = 'ModuleElemCityGroups_id'
              Visible = False
              Options.Sorting = False
            end
            object cxTranspModGridDBTableView1FixedItin_id: TcxGridDBColumn
              DataBinding.FieldName = 'FixedItin_id'
              Visible = False
              Options.Sorting = False
            end
            object cxTranspModGridDBTableView1Organisation: TcxGridDBColumn
              DataBinding.FieldName = 'Organisation'
              Options.Sorting = False
              Width = 355
            end
            object cxTranspModGridDBTableView1CarHireGroup: TcxGridDBColumn
              Caption = 'Sector'
              DataBinding.FieldName = 'CarHireGroup'
              Options.Sorting = False
              Width = 237
            end
          end
          object cxTranspModGridLevel1: TcxGridLevel
            GridView = cxTranspModGridDBTableView1
          end
        end
      end
    end
  end
  object ModElemAccSds: TSQLDataSet
    CommandText = 
      'SELECT me.SrNo, me.ModuleElemAcc_id, c.city, f.Organisation, c.c' +
      'ities_id, me.AC, rt.RoomType, mp.MealPlan, me.FixedItin_id'#13#10'FROM' +
      ' ModuleElemAcc me'#13#10'LEFT JOIN fn_Addressbook (2,'#39'H'#39') f ON f.Addre' +
      'ssBook_id = me.AddressBook_id'#13#10'LEFT JOIN Cities c ON c.Cities_id' +
      ' = f.Cities_id'#13#10'LEFT JOIN RoomTypes rt ON rt.RoomTypes_id = me.R' +
      'oomTypes_id'#13#10'LEFT JOIN MealPlans mp ON mp.MealPlans_id = me.Meal' +
      'Plans_id'#13#10'WHERE me.FixedItin_id = :FixedItin_id'#13#10'ORDER BY me.SrN' +
      'o, c.City'#13#10
    DataSource = ModulesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 8
    Top = 40
  end
  object ModElemAccCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = ModulesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ModElemAccDsp'
    Left = 48
    Top = 40
    object ModElemAccCdsModuleElemAcc_id: TIntegerField
      FieldName = 'ModuleElemAcc_id'
    end
    object ModElemAccCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object ModElemAccCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object ModElemAccCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object ModElemAccCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object ModElemAccCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object ModElemAccCdsMealPlan: TStringField
      FieldName = 'MealPlan'
      Size = 15
    end
    object ModElemAccCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModElemAccCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
  end
  object ModElemAccDsp: TDataSetProvider
    DataSet = ModElemAccSds
    Left = 24
    Top = 40
  end
  object ModElemAccDs: TDataSource
    DataSet = ModElemAccCds
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
      Caption = 'Select Elements'
      OnClick = EditInsert1Click
    end
  end
  object ModElemTrsfSds: TSQLDataSet
    CommandText = 
      'SELECT me.SrNo, me.ModuleElemServices_id, c.City, a.Organisation' +
      ', ser.[Description] AS Service, '#13#10'       v.Vehicle, ser.Cities_i' +
      'd, me.FixedItin_id'#13#10'FROM ModuleElemServices me'#13#10'LEFT JOIN addres' +
      'sbook a ON me.AgentAddressBook_id = a.AddressBook_id'#13#10'LEFT JOIN ' +
      'Services ser ON me.Services_id = ser.Services_id'#13#10'LEFT JOIN Vehi' +
      'cles v ON me.Vehicles_id = v.Vehicles_id'#13#10'LEFT JOIN Cities c ON ' +
      'ser.Cities_id = c.Cities_id'#13#10'WHERE me.FixedItin_id = :FixedItin_' +
      'id'#13#10'AND me.SightSeeing = 0'#13#10'ORDER BY me.SrNo'#13#10
    DataSource = ModulesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 32
  end
  object ModElemTrsfCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SrNo'
        DataType = ftInteger
      end
      item
        Name = 'ModuleElemServices_id'
        DataType = ftInteger
      end
      item
        Name = 'City'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Service'
        DataType = ftString
        Size = 100
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
        Name = 'FixedItin_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = ModulesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ModElemTrsfDsp'
    StoreDefs = True
    Left = 176
    Top = 32
    object ModElemTrsfCdsModuleElemServices_id: TIntegerField
      FieldName = 'ModuleElemServices_id'
    end
    object ModElemTrsfCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ModElemTrsfCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ModElemTrsfCdsService: TStringField
      FieldName = 'Service'
      Size = 100
    end
    object ModElemTrsfCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object ModElemTrsfCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ModElemTrsfCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModElemTrsfCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
  end
  object ModElemTrsfDsp: TDataSetProvider
    DataSet = ModElemTrsfSds
    Left = 152
    Top = 32
  end
  object ModElemTrsfDs: TDataSource
    DataSet = ModElemTrsfCds
    Left = 200
    Top = 32
  end
  object ModElemTrainSds: TSQLDataSet
    CommandText = 
      'SELECT me.SrNo, me.ModuleElemTickets_id, me.FixedItin_id, cl.Cla' +
      'ss, c1.City AS FromCity, c2.City as ToCity, '#13#10'       me.TrainNo,' +
      ' me.FlightNo as TrainName, me.Timings,'#13#10'       c1.Cities_id AS F' +
      'romCities_id, c2.Cities_id AS ToCities_id,'#13#10'       CASE WHEN me.' +
      'Tickets_id = 1 THEN '#39'Flight'#39' ELSE '#39'Train'#39' END AS TravelMode'#13#10'FRO' +
      'M ModuleElemTickets me'#13#10'LEFT JOIN Class cl ON me.Class_id = cl.C' +
      'lass_id'#13#10'LEFT JOIN Cities c1 ON me.From_Cities_id = c1.Cities_id' +
      #13#10'LEFT JOIN Cities c2 ON me.To_Cities_id = c2.Cities_id'#13#10'WHERE m' +
      'e.Tickets_id IN (1,2)'#13#10'AND me.FixedItin_id = :FixedItin_id'#13#10'ORDE' +
      'R BY me.SrNo'
    DataSource = ModulesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 264
    Top = 200
  end
  object ModElemTrainDsp: TDataSetProvider
    DataSet = ModElemTrainSds
    Left = 280
    Top = 200
  end
  object ModElemTrainCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SrNo'
        DataType = ftInteger
      end
      item
        Name = 'ModuleElemTickets_id'
        DataType = ftInteger
      end
      item
        Name = 'FixedItin_id'
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
        Name = 'TrainNo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TrainName'
        DataType = ftString
        Size = 40
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
      end
      item
        Name = 'TravelMode'
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <>
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = ModulesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ModElemTrainDsp'
    StoreDefs = True
    Left = 304
    Top = 200
    object ModElemTrainCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object ModElemTrainCdsModuleElemTickets_id: TIntegerField
      FieldName = 'ModuleElemTickets_id'
    end
    object ModElemTrainCdsClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
    object ModElemTrainCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object ModElemTrainCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object ModElemTrainCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object ModElemTrainCdsTrainName: TStringField
      FieldName = 'TrainName'
      Size = 100
    end
    object ModElemTrainCdsTimings: TStringField
      FieldName = 'Timings'
      Size = 30
    end
    object ModElemTrainCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object ModElemTrainCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object ModElemTrainCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModElemTrainCdsTravelMode: TStringField
      FieldName = 'TravelMode'
      Size = 6
    end
  end
  object ModElemTrainDs: TDataSource
    DataSet = ModElemTrainCds
    Left = 328
    Top = 200
  end
  object ModElemSightSds: TSQLDataSet
    CommandText = 
      'SELECT me.SrNo, me.ModuleElemServices_id, c.City, a.Organisation' +
      ', ser.[Description] AS Service, '#13#10'       v.Vehicle, ser.Cities_i' +
      'd, me.FixedItin_id'#13#10'FROM ModuleElemServices me'#13#10'LEFT JOIN addres' +
      'sbook a ON me.AgentAddressBook_id = a.AddressBook_id'#13#10'LEFT JOIN ' +
      'Services ser ON me.Services_id = ser.Services_id'#13#10'LEFT JOIN Vehi' +
      'cles v ON me.Vehicles_id = v.Vehicles_id'#13#10'LEFT JOIN Cities c ON ' +
      'ser.Cities_id = c.Cities_id'#13#10'WHERE me.FixedItin_id = :FixedItin_' +
      'id'#13#10'AND me.SightSeeing = 1'#13#10'ORDER BY me.SrNo'#13#10
    DataSource = ModulesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 400
    Top = 24
  end
  object ModElemSightDsp: TDataSetProvider
    DataSet = ModElemSightSds
    Left = 416
    Top = 24
  end
  object ModElemSightCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SrNo'
        DataType = ftInteger
      end
      item
        Name = 'ModuleElemServices_id'
        DataType = ftInteger
      end
      item
        Name = 'City'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Service'
        DataType = ftString
        Size = 100
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
        Name = 'FixedItin_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = ModulesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ModElemSightDsp'
    StoreDefs = True
    Left = 440
    Top = 24
    object ModElemSightCdsModuleElemServices_id: TIntegerField
      FieldName = 'ModuleElemServices_id'
    end
    object ModElemSightCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ModElemSightCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ModElemSightCdsService: TStringField
      FieldName = 'Service'
      Size = 100
    end
    object ModElemSightCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object ModElemSightCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ModElemSightCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModElemSightCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
  end
  object ModElemSightDs: TDataSource
    DataSet = ModElemSightCds
    Left = 464
    Top = 24
  end
  object ModElemCarSds: TSQLDataSet
    CommandText = 
      'SELECT me.SrNo, me.ModuleElemCars_id, me.FixedItin_id, a.Organis' +
      'ation, me.Sector'#13#10'FROM ModuleElemCars me'#13#10'LEFT JOIN addressbook ' +
      'a ON me.AddressBook_id = a.AddressBook_id'#13#10'WHERE me.FixedItin_id' +
      ' = :FixedItin_id'#13#10'ORDER BY me.SrNo'#13#10
    DataSource = ModulesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 16
  end
  object ModElemCarDsp: TDataSetProvider
    DataSet = ModElemCarSds
    Left = 576
    Top = 16
  end
  object ModElemCarCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SrNo'
        DataType = ftInteger
      end
      item
        Name = 'ModuleElemCars_id'
        DataType = ftInteger
      end
      item
        Name = 'FixedItin_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Sector'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = ModulesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ModElemCarDsp'
    StoreDefs = True
    Left = 600
    Top = 16
    object ModElemCarCdsModuleElemCars_id: TIntegerField
      FieldName = 'ModuleElemCars_id'
    end
    object ModElemCarCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModElemCarCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ModElemCarCdsSector: TStringField
      FieldName = 'Sector'
      Size = 100
    end
    object ModElemCarCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
  end
  object ModElemCarDs: TDataSource
    DataSet = ModElemCarCds
    Left = 624
    Top = 16
  end
  object ModElemIntercitiesSds: TSQLDataSet
    CommandText = 
      'SELECT me.SrNo, me.ModuleElemInterCities_id, me.FixedItin_id, a.' +
      'Organisation, me.Sector'#13#10'FROM ModuleElemInterCities me'#13#10'LEFT JOI' +
      'N addressbook a ON me.AddressBook_id = a.AddressBook_id'#13#10'WHERE m' +
      'e.FixedItin_id = :FixedItin_id'#13#10'ORDER BY me.SrNo'#13#10
    DataSource = ModulesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 88
  end
  object ModElemIntercitiesDsp: TDataSetProvider
    DataSet = ModElemIntercitiesSds
    Left = 576
    Top = 88
  end
  object ModElemIntercitiesCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SrNo'
        DataType = ftInteger
      end
      item
        Name = 'ModuleElemInterCities_id'
        DataType = ftInteger
      end
      item
        Name = 'FixedItin_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Sector'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = ModulesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ModElemIntercitiesDsp'
    StoreDefs = True
    Left = 600
    Top = 88
    object ModElemIntercitiesCdsModuleElemInterCities_id: TIntegerField
      FieldName = 'ModuleElemInterCities_id'
    end
    object ModElemIntercitiesCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModElemIntercitiesCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ModElemIntercitiesCdsSector: TStringField
      FieldName = 'Sector'
      Size = 100
    end
    object ModElemIntercitiesCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
  end
  object ModElemIntercitiesDs: TDataSource
    DataSet = ModElemIntercitiesCds
    Left = 624
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 124
    Top = 541
    object Elements1: TMenuItem
      Caption = 'Elements'
      OnClick = Elements1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object InsertElementsforSelectedModule1: TMenuItem
      Caption = 'Auto Insert Elements for Selected Module'
      OnClick = InsertElementsforSelectedModule1Click
    end
    object AutoInsertElementsforallModules1: TMenuItem
      Caption = 'Auto Insert Elements for all Modules'
      OnClick = AutoInsertElementsforallModules1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Deletethisrecord1: TMenuItem
      Caption = 'Delete this record'
      OnClick = Deletethisrecord1Click
    end
    object Deleteallrecordsofthisdate1: TMenuItem
      Caption = 'Delete all records for this module'
      OnClick = Deleteallrecordsofthisdate1Click
    end
  end
  object ModulesSds: TSQLDataSet
    CommandText = 
      'SELECT FixedItin_id, Title, QuotationRef FROM FixedItin '#13#10'WHERE ' +
      'Addressbook_id = 2137 AND ReadyTours = 0'#13#10'AND LTRIM(RTRIM(COALES' +
      'CE(QuotationRef,'#39#39'))) > '#39#39#13#10'ORDER BY QuotationRef'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 264
    Top = 8
  end
  object ModulesDsp: TDataSetProvider
    DataSet = ModulesSds
    Left = 280
    Top = 8
  end
  object ModulesCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
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
        Name = 'QuotationRef'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'ModulesDsp'
    StoreDefs = True
    Left = 304
    Top = 8
    object ModulesCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModulesCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
    object ModulesCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
  end
  object ModulesDs: TDataSource
    DataSet = ModulesCds
    Left = 328
    Top = 8
  end
  object ModElemCityGroupsSds: TSQLDataSet
    CommandText = 
      'SELECT me.SrNo, me.ModuleElemCityGroups_id, me.FixedItin_id, a.O' +
      'rganisation, me.CarHireGroup'#13#10'FROM ModuleElemCityGroups me'#13#10'LEFT' +
      ' JOIN addressbook a ON me.AddressBook_id = a.AddressBook_id'#13#10'WHE' +
      'RE me.FixedItin_id = :FixedItin_id'#13#10'ORDER BY me.SrNo'#13#10
    DataSource = ModulesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 152
  end
  object ModElemCityGroupsDsp: TDataSetProvider
    DataSet = ModElemCityGroupsSds
    Left = 576
    Top = 152
  end
  object ModElemCityGroupsCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SrNo'
        DataType = ftInteger
      end
      item
        Name = 'ModuleElemCityGroups_id'
        DataType = ftInteger
      end
      item
        Name = 'FixedItin_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CarHireGroup'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = ModulesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ModElemCityGroupsDsp'
    StoreDefs = True
    Left = 600
    Top = 152
    object ModElemCityGroupsCdsModuleElemCityGroups_id: TIntegerField
      FieldName = 'ModuleElemCityGroups_id'
    end
    object ModElemCityGroupsCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object ModElemCityGroupsCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ModElemCityGroupsCdsCarHireGroup: TStringField
      FieldName = 'CarHireGroup'
      Size = 200
    end
    object ModElemCityGroupsCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
  end
  object ModElemCityGroupsDs: TDataSource
    DataSet = ModElemCityGroupsCds
    Left = 624
    Top = 152
  end
end
