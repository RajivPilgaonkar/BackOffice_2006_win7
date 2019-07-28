object ElementsForm: TElementsForm
  Left = 343
  Top = 4
  Width = 896
  Height = 657
  Caption = 'Elements'
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
    Width = 880
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
    Width = 880
    Height = 50
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 16
      Top = 18
      Caption = 'Wef'
      Transparent = True
    end
    object cxFilterBtn: TcxButton
      Left = 208
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Filter'
      TabOrder = 1
      OnClick = cxFilterBtnClick
    end
    object cxDateEdit: TcxDateEdit
      Left = 48
      Top = 16
      TabOrder = 2
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 50
    Width = 880
    Height = 524
    Align = alClient
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 878
      Height = 522
      ActivePage = cxTransferTab
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 516
      ClientRectLeft = 3
      ClientRectRight = 872
      ClientRectTop = 26
      object cxAccTab: TcxTabSheet
        Caption = 'Cost Accommodation'
        ImageIndex = 0
        OnEnter = cxAccTabEnter
        OnExit = cxAccTabExit
        object cxGrid1: TcxGrid
          Left = 0
          Top = 40
          Width = 878
          Height = 449
          Hint = 'Right Click to  view errors during import'
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemAccDs
            DataController.KeyFieldNames = 'ElemAccommodation_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
            object cxGrid1DBTableView1ElemAccommodation_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemAccommodation_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxGrid1DBTableView1City: TcxGridDBColumn
              DataBinding.FieldName = 'City'
              Visible = False
              GroupIndex = 1
              Options.Editing = False
              Width = 89
            end
            object cxGrid1DBTableView1State: TcxGridDBColumn
              DataBinding.FieldName = 'State'
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Width = 112
            end
            object cxGrid1DBTableView1Organisation: TcxGridDBColumn
              Caption = 'Hotel'
              DataBinding.FieldName = 'Organisation'
              Visible = False
              GroupIndex = 2
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 230
            end
            object cxGrid1DBTableView1FromDate: TcxGridDBColumn
              Caption = 'From Date'
              DataBinding.FieldName = 'FromDate'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ShowTime = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 79
            end
            object cxGrid1DBTableView1ToDate: TcxGridDBColumn
              Caption = 'To Date'
              DataBinding.FieldName = 'ToDate'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ShowTime = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 91
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
              DataBinding.FieldName = 'plan'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 69
            end
            object cxGrid1DBTableView1CostSingle: TcxGridDBColumn
              Caption = 'Cost Single'
              DataBinding.FieldName = 'CostSingle'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 91
            end
            object cxGrid1DBTableView1CostDouble: TcxGridDBColumn
              Caption = 'Cost Double'
              DataBinding.FieldName = 'CostDouble'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 97
            end
            object cxGrid1DBTableView1CostTriple: TcxGridDBColumn
              Caption = 'Cost Triple'
              DataBinding.FieldName = 'CostTriple'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 91
            end
            object cxGrid1DBTableView1CurrencyCode: TcxGridDBColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencycode'
              Options.Editing = False
              Width = 78
            end
            object cxGrid1DBTableView1Quoted: TcxGridDBColumn
              DataBinding.FieldName = 'Quoted'
              Width = 61
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 869
          Height = 41
          Align = alTop
          TabOrder = 1
          object cxRikCkb: TcxCheckBox
            Left = 14
            Top = 8
            Caption = 'Only Riksja '
            Properties.OnEditValueChanged = cxCheckBox1PropertiesEditValueChanged
            State = cbsChecked
            TabOrder = 0
            Transparent = True
            Width = 121
          end
        end
      end
      object cxTransferTab: TcxTabSheet
        Caption = 'Transfer'
        ImageIndex = 1
        OnEnter = cxTransferTabEnter
        OnExit = cxTransferTabExit
        object cxTransferGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 869
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTransferGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemTrsfDs
            DataController.KeyFieldNames = 'ElemServices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = cxTransferGridDBTableView1StylesGetContentStyle
            object cxTransferGridDBTableView1ElemServices_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemServices_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxTransferGridDBTableView1State: TcxGridDBColumn
              DataBinding.FieldName = 'State'
              Visible = False
              GroupIndex = 0
              Options.Sorting = False
            end
            object cxTransferGridDBTableView1City: TcxGridDBColumn
              Caption = 'Service City'
              DataBinding.FieldName = 'City'
              Visible = False
              GroupIndex = 1
              Options.Sorting = False
            end
            object cxTransferGridDBTableView1Wef: TcxGridDBColumn
              DataBinding.FieldName = 'Wef'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ShowTime = False
              Options.Editing = False
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soDescending
              Width = 88
            end
            object cxTransferGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 193
            end
            object cxTransferGridDBTableView1Service: TcxGridDBColumn
              DataBinding.FieldName = 'Service'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 305
            end
            object cxTransferGridDBTableView1currencycode: TcxGridDBColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencycode'
              Width = 72
            end
            object cxTransferGridDBTableView1Quoted: TcxGridDBColumn
              DataBinding.FieldName = 'Quoted'
              Width = 61
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
        OnEnter = cxTabSheet1Enter
        OnExit = cxTabSheet1Exit
        object cxTrainGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 869
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTrainGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemTrainDs
            DataController.KeyFieldNames = 'ElemTickets_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = cxTrainGridDBTableView1StylesGetContentStyle
            object cxTrainGridDBTableView1ElemTickets_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemTickets_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxTrainGridDBTableView1TrainType: TcxGridDBColumn
              Caption = 'Train Type'
              DataBinding.FieldName = 'TrainType'
              Visible = False
              GroupIndex = 0
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxTrainGridDBTableView1wef: TcxGridDBColumn
              DataBinding.FieldName = 'wef'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 1
              SortOrder = soAscending
              Width = 97
            end
            object cxTrainGridDBTableView1FromCity: TcxGridDBColumn
              Caption = 'From City'
              DataBinding.FieldName = 'FromCity'
              Options.Editing = False
              Options.Grouping = False
              SortIndex = 2
              SortOrder = soAscending
              Width = 78
            end
            object cxTrainGridDBTableView1ToCity: TcxGridDBColumn
              Caption = 'To City'
              DataBinding.FieldName = 'ToCity'
              Options.Editing = False
              Options.Grouping = False
              SortIndex = 3
              SortOrder = soAscending
              Width = 78
            end
            object cxTrainGridDBTableView1TrainNo: TcxGridDBColumn
              Caption = 'Train No'
              DataBinding.FieldName = 'TrainNo'
              Options.Editing = False
              Options.Grouping = False
              Width = 60
            end
            object cxTrainGridDBTableView1TrainName: TcxGridDBColumn
              Caption = 'Train'
              DataBinding.FieldName = 'TrainName'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 87
            end
            object cxTrainGridDBTableView1ac_cc_cost: TcxGridDBColumn
              Caption = 'CC'
              DataBinding.FieldName = 'ac_cc_cost'
              Width = 51
            end
            object cxTrainGridDBTableView1ac_2t_cost: TcxGridDBColumn
              Caption = '2T'
              DataBinding.FieldName = 'ac_2t_cost'
              Width = 53
            end
            object cxTrainGridDBTableView1ac_3t_cost: TcxGridDBColumn
              Caption = '3T'
              DataBinding.FieldName = 'ac_3t_cost'
              Width = 54
            end
            object cxTrainGridDBTableView1CurrencyCode: TcxGridDBColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'CurrencyCode'
              Options.Editing = False
              Options.Grouping = False
              Width = 54
            end
            object cxTrainGridDBTableView1DaysOfOperation: TcxGridDBColumn
              Caption = 'Operates On'
              DataBinding.FieldName = 'DaysOfOperation'
              Options.Editing = False
              Options.Grouping = False
              Width = 80
            end
            object cxTrainGridDBTableView1Timings: TcxGridDBColumn
              DataBinding.FieldName = 'Timings'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 87
            end
            object cxTrainGridDBTableView1Quoted: TcxGridDBColumn
              DataBinding.FieldName = 'Quoted'
              Width = 53
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
        OnEnter = cxTabSheet2Enter
        OnExit = cxTabSheet2Exit
        object cxSightGrid: TcxGrid
          Left = 0
          Top = 41
          Width = 869
          Height = 449
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxSightGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemSightDs
            DataController.KeyFieldNames = 'ElemServices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = cxSightGridDBTableView1StylesGetContentStyle
            object cxSightGridDBTableView1ElemServices_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemServices_id'
              Visible = False
            end
            object cxSightGridDBTableView1State: TcxGridDBColumn
              DataBinding.FieldName = 'State'
              Visible = False
              GroupIndex = 0
              Width = 100
            end
            object cxSightGridDBTableView1City: TcxGridDBColumn
              Caption = 'Service City'
              DataBinding.FieldName = 'City'
              Visible = False
              GroupIndex = 1
              Width = 100
            end
            object cxSightGridDBTableView1Wef: TcxGridDBColumn
              DataBinding.FieldName = 'Wef'
              Width = 90
            end
            object cxSightGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Width = 170
            end
            object cxSightGridDBTableView1Service: TcxGridDBColumn
              DataBinding.FieldName = 'Service'
              Width = 342
            end
            object cxSightGridDBTableView1currencycode: TcxGridDBColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencycode'
              Width = 79
            end
            object cxSightGridDBTableView1Quoted: TcxGridDBColumn
              DataBinding.FieldName = 'Quoted'
              Width = 63
            end
          end
          object cxSightGridLevel1: TcxGridLevel
            GridView = cxSightGridDBTableView1
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 869
          Height = 41
          Align = alTop
          TabOrder = 1
          object cxRecoCkb: TcxCheckBox
            Left = 14
            Top = 8
            Caption = 'Recommended'
            Properties.OnEditValueChanged = cxRecoCkbPropertiesEditValueChanged
            State = cbsChecked
            TabOrder = 0
            Transparent = True
            Width = 121
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Car Hire'
        ImageIndex = 4
        OnEnter = cxTabSheet3Enter
        OnExit = cxTabSheet3Exit
        object cxCarHireGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 869
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxCarHireGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemCarDs
            DataController.KeyFieldNames = 'ElemCars_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = cxCarHireGridDBTableView1StylesGetContentStyle
            object cxCarHireGridDBTableView1ElemCars_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemCars_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
            end
            object cxCarHireGridDBTableView1Wef: TcxGridDBColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              Width = 91
            end
            object cxCarHireGridDBTableView1Organisation: TcxGridDBColumn
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 200
            end
            object cxCarHireGridDBTableView1QuotationRef: TcxGridDBColumn
              Caption = 'Code'
              DataBinding.FieldName = 'QuotationRef'
              Width = 77
            end
            object cxCarHireGridDBTableView1PaxName: TcxGridDBColumn
              DataBinding.FieldName = 'Name'
              Width = 210
            end
            object cxCarHireGridDBTableView1Sector: TcxGridDBColumn
              DataBinding.FieldName = 'Sector'
              Width = 179
            end
            object cxCarHireGridDBTableView1Quoted: TcxGridDBColumn
              DataBinding.FieldName = 'Quoted'
              Width = 60
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
        OnEnter = cxTabSheet4Enter
        OnExit = cxTabSheet4Exit
        object cxInterCityGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 869
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxInterCityGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemIntercitiesDs
            DataController.KeyFieldNames = 'ElemInterCities_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = cxInterCityGridDBTableView1StylesGetContentStyle
            object cxInterCityGridDBTableView1ElemInterCities_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemInterCities_id'
              Visible = False
            end
            object cxInterCityGridDBTableView1wef: TcxGridDBColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              SortIndex = 0
              SortOrder = soAscending
              Width = 105
            end
            object cxInterCityGridDBTableView1Organisation: TcxGridDBColumn
              DataBinding.FieldName = 'Organisation'
              SortIndex = 3
              SortOrder = soAscending
              Width = 374
            end
            object cxInterCityGridDBTableView1FromCity: TcxGridDBColumn
              Caption = 'From City'
              DataBinding.FieldName = 'FromCity'
              SortIndex = 1
              SortOrder = soAscending
              Width = 105
            end
            object cxInterCityGridDBTableView1ToCity: TcxGridDBColumn
              Caption = 'To City'
              DataBinding.FieldName = 'ToCity'
              SortIndex = 2
              SortOrder = soAscending
              Width = 108
            end
            object cxInterCityGridDBTableView1currencycode: TcxGridDBColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencycode'
              Width = 68
            end
            object cxInterCityGridDBTableView1Quoted: TcxGridDBColumn
              DataBinding.FieldName = 'Quoted'
              Width = 80
            end
          end
          object cxInterCityGridLevel1: TcxGridLevel
            GridView = cxInterCityGridDBTableView1
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'City Groups'
        ImageIndex = 6
        OnEnter = cxTabSheet5Enter
        OnExit = cxTabSheet5Exit
        object cxTranspModGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 869
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu2
          TabOrder = 0
          object cxTranspModGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ElemCityGroupsDs
            DataController.KeyFieldNames = 'ElemCityGroups_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Indicator = True
            Styles.OnGetContentStyle = cxTranspModGridDBTableView1StylesGetContentStyle
            object cxTranspModGridDBTableView1ElemCityGroups_id: TcxGridDBColumn
              DataBinding.FieldName = 'ElemCityGroups_id'
              Visible = False
            end
            object cxTranspModGridDBTableView1wef: TcxGridDBColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              Width = 87
            end
            object cxTranspModGridDBTableView1Organisation: TcxGridDBColumn
              DataBinding.FieldName = 'Organisation'
              Width = 229
            end
            object cxTranspModGridDBTableView1CarHireGroup: TcxGridDBColumn
              Caption = 'Car Hire Group'
              DataBinding.FieldName = 'CarHireGroup'
              Width = 381
            end
            object cxTranspModGridDBTableView1currencycode: TcxGridDBColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencycode'
              Width = 72
            end
            object cxTranspModGridDBTableView1Quoted: TcxGridDBColumn
              DataBinding.FieldName = 'Quoted'
              Width = 52
            end
          end
          object cxTranspModGridLevel1: TcxGridLevel
            GridView = cxTranspModGridDBTableView1
          end
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'Import'
        ImageIndex = 6
        object ExchRateLabel: TLabel
          Left = 482
          Top = 75
          Width = 87
          Height = 13
          Caption = 'ExchRateLabel'
          Transparent = True
        end
        object cxRadioGroup1: TcxRadioGroup
          Left = 48
          Top = 32
          Caption = 'Import'
          Properties.Items = <
            item
              Caption = 'Accommodation'
            end
            item
              Caption = 'Transfer'
            end
            item
              Caption = 'Train'
            end
            item
              Caption = 'Sightseeing'
            end
            item
              Caption = 'Car Hire'
            end
            item
              Caption = 'Inter City'
            end
            item
              Caption = 'City Groups'
            end>
          Properties.OnEditValueChanged = cxRadioGroup1PropertiesEditValueChanged
          ItemIndex = 0
          TabOrder = 0
          Height = 281
          Width = 209
        end
        object cxButton1: TcxButton
          Left = 56
          Top = 320
          Width = 75
          Height = 25
          Caption = 'Import'
          TabOrder = 1
          OnClick = cxButton1Click
        end
        object cxLabel2: TcxLabel
          Left = 280
          Top = 50
          Caption = 'Exch Rate'
          Transparent = True
          Visible = False
        end
        object cxExchRateTextEdit: TcxTextEdit
          Left = 352
          Top = 48
          TabOrder = 3
          Visible = False
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 281
          Top = 73
          Caption = 'Currency'
          Transparent = True
        end
        object cxCurrencyLCMB: TcxLookupComboBox
          Left = 353
          Top = 72
          Properties.KeyFieldNames = 'Currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'CurrencyCode'
            end>
          Properties.ListSource = CurrenciesDs
          Properties.OnEditValueChanged = cxCurrencyLCMBPropertiesEditValueChanged
          TabOrder = 5
          Width = 120
        end
        object cxCodeLabel: TcxLabel
          Left = 281
          Top = 99
          Caption = 'Code'
          Transparent = True
          Visible = False
        end
        object cxCodeLCMB: TcxLookupComboBox
          Left = 353
          Top = 98
          Properties.DropDownWidth = 450
          Properties.KeyFieldNames = 'QuotationRef'
          Properties.ListColumns = <
            item
              Width = 150
              FieldName = 'QuotationRef'
            end
            item
              Width = 300
              FieldName = 'PaxName'
            end>
          Properties.ListSource = CodeDs
          TabOrder = 7
          Visible = False
          Width = 120
        end
        object cxGroupBoxSS: TGroupBox
          Left = 280
          Top = 136
          Width = 168
          Height = 83
          Caption = 'Options for S/S'
          TabOrder = 8
          Visible = False
          object cxGuideCkb: TcxCheckBox
            Left = 10
            Top = 19
            Caption = 'Incl. Guide Costs'
            State = cbsChecked
            TabOrder = 0
            Width = 121
          end
          object cxEntFeesCkb: TcxCheckBox
            Left = 10
            Top = 40
            Caption = 'Incl. Entrance Fees'
            State = cbsChecked
            TabOrder = 1
            Width = 143
          end
          object cxMeetCkb: TcxCheckBox
            Left = 10
            Top = 60
            Caption = 'Incl. Meet && Assist'
            State = cbsChecked
            TabOrder = 2
            Width = 143
          end
        end
      end
    end
  end
  object ElemAccSds: TSQLDataSet
    CommandText = 
      'SELECT ea.ElemAccommodation_id, s.state, c.city, a.organisation,' +
      ' ea.FromDate, ea.ToDate, ea.AC, r.roomtype,'#13#10'       mp.[plan], e' +
      'a.CostSingle, ea.CostDouble, ea.CostTriple, c2.currencycode, ea.' +
      'Quoted, ea.Addressbook_id, a.Cities_id'#13#10'  FROM ElemAccommodation' +
      ' ea'#13#10'       LEFT JOIN addressbook a ON ea.AddressBook_id = a.add' +
      'ressbook_id'#13#10'       LEFT JOIN cities c ON a.cities_id = c.cities' +
      '_id'#13#10'       LEFT JOIN states s ON c.states_id = s.states_id'#13#10'   ' +
      '    LEFT JOIN Currencies c2 ON ea.Currencies_id = c2.currencies_' +
      'id'#13#10'       LEFT JOIN RoomTypes r ON r.RoomTypes_id = ea.RoomType' +
      's_id'#13#10#9'   LEFT JOIN MealPlans mp on mp.MealPlans_id = ea.MealPla' +
      'ns_id'#13#10' WHERE FromDate >= :FromDate'#13#10' ORDER BY s.state, c.city, ' +
      'a.organisation, ea.FromDate'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'FromDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 8
    Top = 40
  end
  object ElemAccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ElemAccDsp'
    Left = 48
    Top = 40
    object ElemAccCdsElemAccommodation_id: TIntegerField
      FieldName = 'ElemAccommodation_id'
    end
    object ElemAccCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
    object ElemAccCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object ElemAccCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object ElemAccCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
    end
    object ElemAccCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
    end
    object ElemAccCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object ElemAccCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object ElemAccCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
    object ElemAccCdsCostSingle: TFMTBCDField
      FieldName = 'CostSingle'
      Precision = 18
      Size = 4
    end
    object ElemAccCdsCostDouble: TFMTBCDField
      FieldName = 'CostDouble'
      Precision = 18
      Size = 4
    end
    object ElemAccCdsCostTriple: TFMTBCDField
      FieldName = 'CostTriple'
      Precision = 18
      Size = 4
    end
    object ElemAccCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object ElemAccCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
    object ElemAccCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
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
    Left = 368
    Top = 256
  end
  object PopupMenu2: TPopupMenu
    Left = 172
    Top = 389
    object mnuEditInsert: TMenuItem
      Caption = 'Edit / Insert'
      OnClick = mnuEditInsertClick
    end
    object mnuCostOneTen: TMenuItem
      Caption = 'Costs (1-10)'
      OnClick = mnuCostOneTenClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MarkasQuoted1: TMenuItem
      Caption = 'Mark as Quoted'
      OnClick = MarkasQuoted1Click
    end
    object UnmarkQuoted1: TMenuItem
      Caption = 'Unmark Quoted'
      OnClick = UnmarkQuoted1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      Visible = False
    end
  end
  object ElemTrsfSds: TSQLDataSet
    CommandText = 
      'SELECT es.ElemServices_id, s.State, c.City, es.Wef, COALESCE(a.O' +
      'rganisation,'#39#39') + '#39', '#39' + COALESCE(a.city,'#39#39') AS Organisation, '#13#10 +
      '       s2.[Description] AS [Service], c2.currencycode, es.Quoted' +
      ', es.Services_id, es.AgentAddressBook_id '#13#10'  FROM ElemServices e' +
      's'#13#10'       LEFT JOIN [services] s2 on es.Services_id = s2.Service' +
      's_id'#13#10'       LEFT JOIN addressbook a ON es.AgentAddressBook_id =' +
      ' a.AddressBook_id'#13#10'       LEFT JOIN cities c ON s2.cities_id = c' +
      '.cities_id'#13#10'       LEFT JOIN states s ON c.states_id = s.states_' +
      'id'#13#10'       LEFT JOIN Currencies c2 ON es.Currencies_id = c2.curr' +
      'encies_id'#13#10' WHERE Wef >= :Wef'#13#10'   AND Sightseeing = 0'#13#10' ORDER BY' +
      ' s.state, c.city, a.organisation, es.Wef'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Wef'
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
        Name = 'State'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'City'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 82
      end
      item
        Name = 'Service'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'currencycode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Quoted'
        DataType = ftBoolean
      end
      item
        Name = 'Services_id'
        DataType = ftInteger
      end
      item
        Name = 'AgentAddressBook_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'ElemTrsfDsp'
    StoreDefs = True
    Left = 176
    Top = 32
    object ElemTrsfCdsElemServices_id: TIntegerField
      FieldName = 'ElemServices_id'
    end
    object ElemTrsfCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object ElemTrsfCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ElemTrsfCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object ElemTrsfCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ElemTrsfCdsService: TStringField
      FieldName = 'Service'
      Size = 100
    end
    object ElemTrsfCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object ElemTrsfCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
    object ElemTrsfCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object ElemTrsfCdsAgentAddressBook_id: TIntegerField
      FieldName = 'AgentAddressBook_id'
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
      'SELECT et.ElemTickets_id, et.Wef, c1.City AS FromCity, c2.City a' +
      's ToCity, et.TrainNo, '#13#10'       t.TrainName, et.ac_cc_cost, et.ac' +
      '_2t_cost, et.ac_3t_cost, c3.currencycode,'#13#10'       dbo.f_DaysToSt' +
      'r (t.DayOfOperation) AS DaysOfOperation, et.Timings, et.Quoted,'#13 +
      #10'CASE WHEN et.Overnight = 0 THEN '#39'Day'#39' ELSE '#39'Overnight'#39' END AS T' +
      'rainType, et.From_Cities_id, et.To_Cities_id'#13#10'  FROM ElemTickets' +
      ' et'#13#10'       LEFT JOIN Class cl ON et.Class_id = cl.Class_id'#13#10'   ' +
      '    LEFT JOIN Cities c1 ON et.From_Cities_id = c1.Cities_id'#13#10'   ' +
      '    LEFT JOIN Cities c2 ON et.To_Cities_id = c2.Cities_id'#13#10'     ' +
      '  LEFT JOIN Trains t ON et.Trains_id = t.Trains_id'#13#10'       LEFT ' +
      'JOIN Currencies c3 on et.Currencies_id = c3.Currencies_id'#13#10' WHER' +
      'E et.Tickets_id = 2'#13#10'   AND et.Wef >= :Wef'#13#10' ORDER BY et.Wef, c1' +
      '.city, c2.city, et.TrainNo'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Wef'
        ParamType = ptInput
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
        Name = 'Wef'
        DataType = ftTimeStamp
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
        Size = 100
      end
      item
        Name = 'ac_cc_cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'ac_2t_cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'ac_3t_cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'currencycode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
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
        Name = 'Quoted'
        DataType = ftBoolean
      end
      item
        Name = 'TrainType'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'From_Cities_id'
        DataType = ftInteger
      end
      item
        Name = 'To_Cities_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'ElemTrainDsp'
    StoreDefs = True
    Left = 304
    Top = 200
    object ElemTrainCdsElemTickets_id: TIntegerField
      FieldName = 'ElemTickets_id'
    end
    object ElemTrainCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object ElemTrainCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object ElemTrainCdsToCity: TStringField
      FieldName = 'ToCity'
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
    object ElemTrainCdsac_cc_cost: TFMTBCDField
      FieldName = 'ac_cc_cost'
      Precision = 18
      Size = 4
    end
    object ElemTrainCdsac_2t_cost: TFMTBCDField
      FieldName = 'ac_2t_cost'
      Precision = 18
      Size = 4
    end
    object ElemTrainCdsac_3t_cost: TFMTBCDField
      FieldName = 'ac_3t_cost'
      Precision = 18
      Size = 4
    end
    object ElemTrainCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object ElemTrainCdsDaysOfOperation: TStringField
      FieldName = 'DaysOfOperation'
      Size = 30
    end
    object ElemTrainCdsTimings: TStringField
      FieldName = 'Timings'
      Size = 30
    end
    object ElemTrainCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
    object ElemTrainCdsTrainType: TStringField
      FieldName = 'TrainType'
      Size = 9
    end
    object ElemTrainCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object ElemTrainCdsTo_Cities_id: TIntegerField
      FieldName = 'To_Cities_id'
    end
  end
  object ElemTrainDs: TDataSource
    DataSet = ElemTrainCds
    Left = 328
    Top = 200
  end
  object ElemSightSds: TSQLDataSet
    CommandText = 
      'SELECT es.ElemServices_id, s.State, c.City, es.Wef, COALESCE(a.O' +
      'rganisation,'#39#39') + '#39', '#39' + COALESCE(a.city,'#39#39') AS Organisation, '#13#10 +
      '       s2.[Description] AS [Service], c2.currencycode, es.Quoted' +
      ','#13#10'es.Services_id, es.AgentAddressbook_id'#13#10'  FROM ElemServices e' +
      's'#13#10'       LEFT JOIN [services] s2 on es.Services_id = s2.Service' +
      's_id'#13#10'       LEFT JOIN addressbook a ON es.AgentAddressBook_id =' +
      ' a.AddressBook_id'#13#10'       LEFT JOIN cities c ON s2.cities_id = c' +
      '.cities_id'#13#10'       LEFT JOIN states s ON c.states_id = s.states_' +
      'id'#13#10'       LEFT JOIN Currencies c2 ON es.Currencies_id = c2.curr' +
      'encies_id'#13#10' WHERE Wef >= :Wef'#13#10'   AND Sightseeing = 1'#13#10'   AND s2' +
      '.Recommended = :Recommended'#13#10' ORDER BY s.state, c.city, a.organi' +
      'sation, es.Wef'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Recommended'
        ParamType = ptInput
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
        Name = 'State'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'City'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 82
      end
      item
        Name = 'Service'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'currencycode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Quoted'
        DataType = ftBoolean
      end
      item
        Name = 'Services_id'
        DataType = ftInteger
      end
      item
        Name = 'AgentAddressbook_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'ElemSightDsp'
    StoreDefs = True
    Left = 440
    Top = 24
    object ElemSightCdsElemServices_id: TIntegerField
      FieldName = 'ElemServices_id'
    end
    object ElemSightCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object ElemSightCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ElemSightCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object ElemSightCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 82
    end
    object ElemSightCdsService: TStringField
      FieldName = 'Service'
      Size = 100
    end
    object ElemSightCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object ElemSightCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
    object ElemSightCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object ElemSightCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
  end
  object ElemSightDs: TDataSource
    DataSet = ElemSightCds
    Left = 464
    Top = 24
  end
  object ElemCarSds: TSQLDataSet
    CommandText = 
      'SELECT ec.ElemCars_id, ec.wef, a.Organisation + '#39', '#39' + a.city AS' +
      ' Organisation, ec.QuotationRef, ec.PaxName AS Name, '#13#10'       ec.' +
      'Sector, c.currencycode, ec.Quoted, ec.Addressbook_id'#13#10'  FROM Ele' +
      'mCars ec'#13#10'       LEFT JOIN addressbook a ON ec.AddressBook_id = ' +
      'a.AddressBook_id'#13#10#9'   LEFT JOIN Currencies c on ec.Currencies_id' +
      ' = c.Currencies_id'#13#10' WHERE ec.Wef >= :Wef'#13#10' ORDER BY ec.Wef, ec.' +
      'QuotationRef, ec.PaxName'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Wef'
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
        Name = 'wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 82
      end
      item
        Name = 'QuotationRef'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Sector'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'currencycode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Quoted'
        DataType = ftBoolean
      end
      item
        Name = 'Addressbook_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'ElemCarDsp'
    StoreDefs = True
    Left = 600
    Top = 16
    object ElemCarCdsElemCars_id: TIntegerField
      FieldName = 'ElemCars_id'
    end
    object ElemCarCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object ElemCarCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 82
    end
    object ElemCarCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
    object ElemCarCdsName: TStringField
      FieldName = 'Name'
      Size = 100
    end
    object ElemCarCdsSector: TStringField
      FieldName = 'Sector'
      Size = 100
    end
    object ElemCarCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object ElemCarCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
    object ElemCarCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object ElemCarDs: TDataSource
    DataSet = ElemCarCds
    Left = 624
    Top = 16
  end
  object ElemIntercitiesSds: TSQLDataSet
    CommandText = 
      'SELECT ec.ElemInterCities_id, ec.wef, a.Organisation + '#39', '#39' + a.' +
      'city AS Organisation, c1.city AS FromCity, '#13#10'       c2.city AS T' +
      'oCity, c3.currencycode, ec.Quoted, ec.Addressbook_id'#13#10'  FROM Ele' +
      'mInterCities ec'#13#10'       LEFT JOIN addressbook a ON ec.AddressBoo' +
      'k_id = a.AddressBook_id'#13#10#9'   LEFT JOIN Cities c1 on ec.FromCitie' +
      's_id = c1.Cities_id'#13#10#9'   LEFT JOIN Cities c2 on ec.ToCities_id =' +
      ' c2.Cities_id'#13#10#9'   LEFT JOIN Currencies c3 on ec.Currencies_id =' +
      ' c3.Currencies_id'#13#10' WHERE ec.Wef >= :Wef'#13#10' ORDER BY ec.Wef, c1.c' +
      'ity, c2.city, a.organisation'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Wef'
        ParamType = ptInput
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
        Name = 'wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 82
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
        Name = 'currencycode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Quoted'
        DataType = ftBoolean
      end
      item
        Name = 'Addressbook_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'ElemIntercitiesDsp'
    StoreDefs = True
    Left = 600
    Top = 88
    object ElemIntercitiesCdsElemInterCities_id: TIntegerField
      FieldName = 'ElemInterCities_id'
    end
    object ElemIntercitiesCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object ElemIntercitiesCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 82
    end
    object ElemIntercitiesCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object ElemIntercitiesCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object ElemIntercitiesCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object ElemIntercitiesCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
    object ElemIntercitiesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object ElemIntercitiesDs: TDataSource
    DataSet = ElemIntercitiesCds
    Left = 624
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 124
    Top = 541
    object Deletethisrecord1: TMenuItem
      Caption = 'Delete this record'
      OnClick = Deletethisrecord1Click
    end
    object Deleteallrecordsofthisdate1: TMenuItem
      Caption = 'Delete all records of this date'
      OnClick = Deleteallrecordsofthisdate1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SaveCostingstoExcel1: TMenuItem
      Caption = 'Save Costings to Excel'
      OnClick = SaveCostingstoExcel1Click
    end
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'SELECT Currencies_id, CurrencyCode, Currency'#13#10'FROM Currencies'#13#10'O' +
      'RDER BY CurrencyCode'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 232
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    Left = 600
    Top = 232
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
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
        Name = 'Currency'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    StoreDefs = True
    Left = 624
    Top = 232
    object CurrenciesCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrenciesCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CurrenciesCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrenciesDs: TDataSource
    DataSet = CurrenciesCds
    Left = 648
    Top = 232
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 696
    Top = 8
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 10944466
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
  object CodeSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT QuotationRef, PaxName'#13#10'  FROM Quotations'#13#10' WHERE' +
      ' Trial = 3'#13#10'   AND ValidFrom >= :wef'#13#10'ORDER BY QuotationRef'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 280
  end
  object CodeDsp: TDataSetProvider
    DataSet = CodeSds
    Left = 600
    Top = 280
  end
  object CodeCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QuotationRef'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PaxName'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CodeDsp'
    StoreDefs = True
    Left = 624
    Top = 280
    object CodeCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
    object CodeCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
  end
  object CodeDs: TDataSource
    DataSet = CodeCds
    Left = 648
    Top = 280
  end
  object ElemCityGroupsSds: TSQLDataSet
    CommandText = 
      'SELECT ec.ElemCityGroups_id, ec.wef, a.Organisation + '#39', '#39' + a.c' +
      'ity AS Organisation, chg.CarHireGroup,'#13#10'       c.currencycode, e' +
      'c.Quoted, ec.Addressbook_id'#13#10'  FROM ElemCityGroups ec'#13#10'       LE' +
      'FT JOIN CarHireGroups chg ON ec.CarHireGroups_id = chg.CarHireGr' +
      'oups_id'#13#10'       LEFT JOIN addressbook a ON ec.AddressBook_id = a' +
      '.AddressBook_id'#13#10#9'   LEFT JOIN Currencies c on ec.Currencies_id ' +
      '= c.Currencies_id'#13#10' WHERE ec.Wef >= :Wef'#13#10' ORDER BY ec.Wef, chg.' +
      'CarHireGroup, a.organisation'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 608
    Top = 168
  end
  object ElemCityGroupsDsp: TDataSetProvider
    DataSet = ElemCityGroupsSds
    Left = 632
    Top = 168
  end
  object ElemCityGroupsCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ElemCityGroups_id'
        DataType = ftInteger
      end
      item
        Name = 'wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 82
      end
      item
        Name = 'CarHireGroup'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'currencycode'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Quoted'
        DataType = ftBoolean
      end
      item
        Name = 'Addressbook_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'ElemCityGroupsDsp'
    StoreDefs = True
    Left = 648
    Top = 168
    object ElemCityGroupsCdsElemCityGroups_id: TIntegerField
      FieldName = 'ElemCityGroups_id'
    end
    object ElemCityGroupsCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object ElemCityGroupsCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object ElemCityGroupsCdsCarHireGroup: TStringField
      FieldName = 'CarHireGroup'
      Size = 200
    end
    object ElemCityGroupsCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
    object ElemCityGroupsCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object ElemCityGroupsCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object ElemCityGroupsDs: TDataSource
    DataSet = ElemCityGroupsCds
    Left = 664
    Top = 168
  end
end
