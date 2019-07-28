object QuoFixedRateAccommodationForm: TQuoFixedRateAccommodationForm
  Left = 278
  Top = 10
  Width = 905
  Height = 657
  Caption = 'Fixed Rate Accommodation'
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
    object cxImportBtn: TcxButton
      Left = 8
      Top = 9
      Width = 97
      Height = 25
      Caption = '  Import'
      TabOrder = 0
      OnClick = cxImportBtnClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000E9E9E9D2D2D2
        E3E3E3F3F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDDA42BB2831B87733E666A6D7B7B7B9E9E9EBFBFBFDA
        DADAEAEAEAFBFBFBFBFBFBDEDEDEF7F7F7FFFFFFFFFFFFFFFFFFE8BD6EF1D6AA
        F3DAB5F3D9B4F3D9B4EAC47BDDA62D9D7C2C7968446D6D6D6D89554E782E8888
        88DDDDDDF5F5F5FFFFFFEECB93E6B861F5E1C2F5E0C2F5E0C1F5DFC0F5DFBFF4
        DEBEE8D3B5AFA5868DBD617CCE9A618E279374308C8C8CFFFFFFEECB93F0CF9E
        E1AD41F7E7CFF7E7CEF7E6CDF7E6CDF6E6CCB6AA9961AC217CCB8B76CA8C7ACD
        9583A1336B6B6BFFFFFFEECB93F0D09FF2D8B1DEA832F9EEDCF9EDDBF9EDDAC0
        B7AA4CA500A1D8A36DC37571C57D74C88778CB8F46602DD7D7D7EECB93F1D1A1
        F3D9B2F5E1C4DDA62BFCF5EAFBF4E8FBF4E8B8CF9A55A33089C8816BC16F6FC4
        78519923509222F4F4F4EECB93F1D2A3F3D9B4F5E2C6F8EBD7E5BB5CFEFBF7FE
        FBF6FEFBF6BBB8B6A2C48165BD6069C06AF6E4C96D6D6DFCFCFCEECB94F1D3A5
        F3DAB6F6E3C7F6E6CBC4B46ECCA63FE0AF40CDB276719104AAD29460B94C529F
        28F8EBD7898580F3F3F3EECC95F1D3A6F4DBB7E4B758C1E0ECBCE4FCAED4EC90
        AFC37DA798478F0264B8375AB335EFECD8FBF3E6847B67F3F3F3EFCC96F0D09D
        D7BC6FD4EEFD60AA2F5EA23059A2244999028BB56269B82550A20FCCA93FFEFB
        F6FEFAF5806F4BF3F3F3DFA938E1F2FDE8F6FEE6F5FEE2F4FED6ECEEB8D8BF91
        BD80B4D6BFD6EFFDD3EEFDD1EDFDD5AA3FFFFFFF806F4BF3F3F3ECD49D99C0BB
        84CEF984CEF984CEF984CEF984CEF984CEF985CEF986CFF989D0F980C7F883C8
        F8BFAD5E9B8B66F8F8F8FFFFFFFFFFFFD7AE4C8DD2F992D3FA96D5FA9AD7FA9F
        D8FBA3DAFBA8DCFBACDDFBB1DFFBBCCDBDCCAA61F8F8F8FFFFFFFFFFFFFFFFFF
        FFFFFFFBF7EEC8B05EBCE4FCC1E6FCC5E8FBCBEAFCCFECFCD3E3DDCBA145F5F5
        F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9CC8CE3DEBFF0
        F9FEF3F5EFCDA13BF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object cxCloseBtn: TcxButton
      Left = 804
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
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
    Width = 889
    Height = 524
    Align = alClient
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 887
      Height = 522
      ActivePage = cxAccTab
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 516
      ClientRectLeft = 3
      ClientRectRight = 881
      ClientRectTop = 26
      object cxAccTab: TcxTabSheet
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
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = CostAccDs
            DataController.KeyFieldNames = 'QuoFixedratesAccommodation_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGrid1DBTableView1QuoFixedratesAccommodation_id: TcxGridDBColumn
              DataBinding.FieldName = 'QuoFixedratesAccommodation_id'
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
              Width = 101
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
              Width = 110
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
              Caption = 'Currency Code'
              DataBinding.FieldName = 'CurrencyCode'
              Options.Editing = False
              Width = 116
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
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxTransferGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = CostTrfDs
            DataController.KeyFieldNames = 'QuoFixedRatesServices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTransferGridDBTableView1QuoFixedratesTransfer_id: TcxGridDBColumn
              DataBinding.FieldName = 'QuoFixedratesTransfer_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxTransferGridDBTableView1Service: TcxGridDBColumn
              DataBinding.FieldName = 'Service'
              Visible = False
              GroupIndex = 2
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
              Width = 107
            end
            object cxTransferGridDBTableView1Organisation: TcxGridDBColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'Organisation'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 201
            end
            object cxTransferGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 209
            end
            object cxTransferGridDBTableView1Cost: TcxGridDBColumn
              DataBinding.FieldName = 'Cost'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 95
            end
            object cxTransferGridDBTableView1Currency: TcxGridDBColumn
              DataBinding.FieldName = 'Currency'
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 73
            end
            object cxTransferGridDBTableView1Services_id: TcxGridDBColumn
              DataBinding.FieldName = 'Services_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxTransferGridDBTableView1Vehicles_id: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicles_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxTransferGridDBTableView1AgentAddressBook_id: TcxGridDBColumn
              DataBinding.FieldName = 'AgentAddressBook_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
            end
            object cxTransferGridDBTableView1Currencies_id: TcxGridDBColumn
              DataBinding.FieldName = 'Currencies_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 200
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
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxTrainGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = CostTrainDs
            DataController.KeyFieldNames = 'QuoFixedRatesTickets_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTrainGridDBTableView1Class: TcxGridDBColumn
              DataBinding.FieldName = 'Class'
              Visible = False
              GroupIndex = 0
            end
            object cxTrainGridDBTableView1wef: TcxGridDBColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 85
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
            object cxTrainGridDBTableView1Cost: TcxGridDBColumn
              DataBinding.FieldName = 'Cost'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 73
            end
            object cxTrainGridDBTableView1Trains_id: TcxGridDBColumn
              DataBinding.FieldName = 'Trains_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxTrainGridDBTableView1QuoFixedRatesTickets_id: TcxGridDBColumn
              DataBinding.FieldName = 'QuoFixedRatesTickets_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
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
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxSightGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = CostSightDs
            DataController.KeyFieldNames = 'QuoFixedRatesServices_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxSightGridDBTableView1Wef: TcxGridDBColumn
              DataBinding.FieldName = 'Wef'
              Width = 80
            end
            object cxSightGridDBTableView1Organisation: TcxGridDBColumn
              DataBinding.FieldName = 'Organisation'
              Width = 146
            end
            object cxSightGridDBTableView1Service: TcxGridDBColumn
              DataBinding.FieldName = 'Service'
              Visible = False
              GroupIndex = 2
              Width = 200
            end
            object cxSightGridDBTableView1Currency: TcxGridDBColumn
              DataBinding.FieldName = 'Currency'
              Width = 80
            end
            object cxSightGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Visible = False
              Width = 80
            end
            object cxSightGridDBTableView1Services_id: TcxGridDBColumn
              DataBinding.FieldName = 'Services_id'
              Visible = False
            end
            object cxSightGridDBTableView1AgentAddressBook_id: TcxGridDBColumn
              DataBinding.FieldName = 'AgentAddressBook_id'
              Visible = False
            end
            object cxSightGridDBTableView1Currencies_id: TcxGridDBColumn
              DataBinding.FieldName = 'Currencies_id'
              Visible = False
            end
            object cxSightGridDBTableView1Vehicles_id: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicles_id'
              Visible = False
            end
            object cxSightGridDBTableView1State: TcxGridDBColumn
              DataBinding.FieldName = 'State'
              Visible = False
              GroupIndex = 0
              Width = 100
            end
            object cxSightGridDBTableView1City: TcxGridDBColumn
              DataBinding.FieldName = 'City'
              Visible = False
              GroupIndex = 1
              Width = 100
            end
            object cxSightGridDBTableView1QuoFixedRatesServices_id: TcxGridDBColumn
              DataBinding.FieldName = 'QuoFixedRatesServices_id'
              Visible = False
            end
            object cxSightGridDBTableView1Cost_1: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_1'
              Width = 57
            end
            object cxSightGridDBTableView1Cost_2: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_2'
              Width = 56
            end
            object cxSightGridDBTableView1Cost_3: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_3'
              Width = 63
            end
            object cxSightGridDBTableView1Cost_4: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_4'
              Width = 59
            end
            object cxSightGridDBTableView1Cost_5: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_5'
              Width = 65
            end
            object cxSightGridDBTableView1Cost_6: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_6'
              Width = 67
            end
            object cxSightGridDBTableView1Cost_7: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_7'
              Width = 60
            end
            object cxSightGridDBTableView1Cost_8: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_8'
              Width = 58
            end
            object cxSightGridDBTableView1Cost_9: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_9'
              Width = 59
            end
            object cxSightGridDBTableView1Cost_10: TcxGridDBColumn
              DataBinding.FieldName = 'Cost_10'
              Width = 75
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
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxCarHireGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = CostCarDs
            DataController.KeyFieldNames = 'QuoFixedRatesCars_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxCarHireGridDBTableView1QuoFixedRatesCars_id: TcxGridDBColumn
              DataBinding.FieldName = 'QuoFixedRatesCars_id'
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
            object cxCarHireGridDBTableView1State: TcxGridDBColumn
              DataBinding.FieldName = 'State'
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Options.Filtering = False
              Width = 119
            end
            object cxCarHireGridDBTableView1City: TcxGridDBColumn
              DataBinding.FieldName = 'City'
              Visible = False
              GroupIndex = 1
              Options.Editing = False
              Options.Filtering = False
              Width = 122
            end
            object cxCarHireGridDBTableView1Currency: TcxGridDBColumn
              DataBinding.FieldName = 'Currency'
              Options.Editing = False
              Options.Filtering = False
              Width = 90
            end
            object cxCarHireGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Options.Editing = False
              Options.Filtering = False
              Width = 145
            end
            object cxCarHireGridDBTableView1Cost: TcxGridDBColumn
              DataBinding.FieldName = 'Cost'
              Width = 93
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
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxInterCityGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = CostIntercitiesDs
            DataController.KeyFieldNames = 'QuoFixedRatesInterCities_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxInterCityGridDBTableView1QuoFixedRatesInterCities_id: TcxGridDBColumn
              DataBinding.FieldName = 'QuoFixedRatesInterCities_id'
              Visible = False
            end
            object cxInterCityGridDBTableView1State: TcxGridDBColumn
              DataBinding.FieldName = 'State'
              Visible = False
              GroupIndex = 0
              Options.Editing = False
              Width = 100
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
              Width = 100
            end
            object cxInterCityGridDBTableView1Vehicle: TcxGridDBColumn
              DataBinding.FieldName = 'Vehicle'
              Options.Editing = False
              Width = 120
            end
            object cxInterCityGridDBTableView1Currency: TcxGridDBColumn
              DataBinding.FieldName = 'Currency'
              Options.Editing = False
              Width = 66
            end
            object cxInterCityGridDBTableView1wef: TcxGridDBColumn
              DataBinding.FieldName = 'wef'
              Options.Editing = False
              Width = 100
            end
            object cxInterCityGridDBTableView1Cost: TcxGridDBColumn
              DataBinding.FieldName = 'Cost'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
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
        object cxTranspModGrid: TcxGrid
          Left = 0
          Top = 0
          Width = 878
          Height = 490
          Hint = 'Right Click to  view errors during import'
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          object cxTranspModGridDBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
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
  object CostAccSds: TSQLDataSet
    CommandText = 
      'select f.Organisation, s.State, c.City, c.cities_id, q.* , RoomT' +
      'ype, MealPlan, CurrencyCode, Currency'#13#10'from QuoFixedratesAccommo' +
      'dation q'#13#10'left join fn_Addressbook (2,'#39'H'#39') f on f.AddressBook_id' +
      ' = q.AddressBook_id'#13#10'left join Cities c on c.Cities_id = f.Citie' +
      's_id'#13#10'left join States s on s.States_id = c.States_id'#13#10'left join' +
      ' RoomTypes r on r.RoomTypes_id = q.RoomTypes_id'#13#10'left join MealP' +
      'lans m on m.MealPlans_id = q.MealPlans_id'#13#10'left join Currencies ' +
      'cr on cr.Currencies_id = q.Currencies_id'#13#10'where FromDate >= :wef' +
      #13#10'order by s.State, c.City, f.Organisation'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 8
    Top = 40
  end
  object CostAccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CostAccDsp'
    Left = 48
    Top = 40
    object CostAccCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object CostAccCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object CostAccCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object CostAccCdsQuoFixedratesAccommodation_id: TIntegerField
      FieldName = 'QuoFixedratesAccommodation_id'
    end
    object CostAccCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object CostAccCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object CostAccCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object CostAccCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object CostAccCdsRoomTypes_id: TIntegerField
      FieldName = 'RoomTypes_id'
    end
    object CostAccCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
    object CostAccCdsCostSingle: TFMTBCDField
      FieldName = 'CostSingle'
      DisplayFormat = '#,##0'
      Precision = 18
    end
    object CostAccCdsCostDouble: TFMTBCDField
      FieldName = 'CostDouble'
      DisplayFormat = '#,##0'
      Precision = 18
    end
    object CostAccCdsCostTriple: TFMTBCDField
      FieldName = 'CostTriple'
      DisplayFormat = '#,##0'
      Precision = 18
    end
    object CostAccCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CostAccCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object CostAccCdsMealPlan: TStringField
      FieldName = 'MealPlan'
      Size = 15
    end
    object CostAccCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CostAccCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
    object CostAccCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object CostAccDsp: TDataSetProvider
    DataSet = CostAccSds
    Left = 24
    Top = 40
  end
  object CostAccDs: TDataSource
    DataSet = CostAccCds
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
  object PopupMenu1: TPopupMenu
    Left = 172
    Top = 389
    object EditInsert1: TMenuItem
      Caption = 'Edit / Insert'
      OnClick = EditInsert1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DisplayErrors1: TMenuItem
      Caption = 'Display Errors'
      OnClick = DisplayErrors1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Deleteallforselecteddate1: TMenuItem
      Caption = 'Delete all for selected date'
      OnClick = Deleteallforselecteddate1Click
    end
    object Deleteselectedrecord1: TMenuItem
      Caption = 'Delete selected record'
      OnClick = Deleteselectedrecord1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Costs1101: TMenuItem
      Caption = 'Costs (1-10)'
      OnClick = Costs1101Click
    end
  end
  object CostTrfSds: TSQLDataSet
    CommandText = 
      'select a.Organisation, s.State, c.City, ser.[Description] AS Ser' +
      'vice, cr.CurrencyCode As Currency, Vehicle, ser.Cities_id, q.*  ' +
      #13#10'from QuoFixedratesServices q'#13#10'left join addressbook a on q.Age' +
      'ntAddressBook_id = a.AddressBook_id'#13#10'left join Services ser on q' +
      '.Services_id = ser.Services_id'#13#10'left join Vehicles v on q.Vehicl' +
      'es_id = v.Vehicles_id'#13#10'left join Currencies cr on q.Currencies_i' +
      'd = cr.Currencies_id'#13#10'left join Cities c on ser.Cities_id = c.Ci' +
      'ties_id'#13#10'left join States s on s.States_id = c.States_id'#13#10'where ' +
      'Wef >= :wef'#13#10'and SightSeeing = 0'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 32
  end
  object CostTrfCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
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
        Name = 'Service'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Currency'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
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
        Name = 'QuoFixedRatesServices_id'
        DataType = ftInteger
      end
      item
        Name = 'Services_id'
        DataType = ftInteger
      end
      item
        Name = 'AgentAddressBook_id'
        DataType = ftInteger
      end
      item
        Name = 'SightSeeing'
        DataType = ftBoolean
      end
      item
        Name = 'Wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Vehicles_id'
        DataType = ftInteger
      end
      item
        Name = 'Cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Currencies_id'
        DataType = ftInteger
      end
      item
        Name = 'Cost_1'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_2'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_3'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_4'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_5'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_6'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_7'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_8'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_9'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_10'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CostTrfDsp'
    StoreDefs = True
    Left = 176
    Top = 32
    object CostTrfCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object CostTrfCdsService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object CostTrfCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
    object CostTrfCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object CostTrfCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object CostTrfCdsAgentAddressBook_id: TIntegerField
      FieldName = 'AgentAddressBook_id'
    end
    object CostTrfCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object CostTrfCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0'
      Precision = 18
    end
    object CostTrfCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CostTrfCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object CostTrfCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object CostTrfCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object CostTrfCdsQuoFixedRatesServices_id: TIntegerField
      FieldName = 'QuoFixedRatesServices_id'
    end
    object CostTrfCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object CostTrfCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object CostTrfDsp: TDataSetProvider
    DataSet = CostTrfSds
    Left = 152
    Top = 32
  end
  object CostTrfDs: TDataSource
    DataSet = CostTrfCds
    Left = 200
    Top = 32
  end
  object CostTrainSds: TSQLDataSet
    CommandText = 
      'SELECT cl.Class, c1.City AS FromCity, c2.City as ToCity, ts1.Sta' +
      'tion as FromTrainStation, ts2.Station as ToTrainStation,'#13#10'      ' +
      ' q.TrainNo, t.TrainName, q.wef, q.Cost, q.Trains_id, q.QuoFixedR' +
      'atesTickets_id, q.Currencies_id, cr.CurrencyCode,'#13#10'       dbo.f_' +
      'DaysToStr (t.DayOfOperation) AS DaysOfOperation, q.Timings,'#13#10'   ' +
      '    c1.Cities_id AS FromCities_id, c2.Cities_id AS ToCities_id'#13#10 +
      '  FROM QuoFixedRatesTickets q'#13#10'       LEFT JOIN Class cl ON q.Cl' +
      'ass_id = cl.Class_id'#13#10'       LEFT JOIN Cities c1 ON q.From_Citie' +
      's_id = c1.Cities_id'#13#10'       LEFT JOIN Cities c2 ON q.To_Cities_i' +
      'd = c2.Cities_id'#13#10'       LEFT JOIN TrainStations ts1 ON q.From_T' +
      'rainStations_id = ts1.TrainStations_id'#13#10'       LEFT JOIN TrainSt' +
      'ations ts2 ON q.To_TrainStations_id = ts2.TrainStations_id'#13#10'    ' +
      '   LEFT JOIN Trains t ON q.Trains_id = t.Trains_id'#13#10'       LEFT ' +
      'JOIN Currencies cr on q.Currencies_id = cr.Currencies_id'#13#10'WHERE ' +
      'q.Tickets_id = 2'#13#10'AND q.Wef >= :Wef'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'Wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 272
    Top = 160
  end
  object CostTrainDsp: TDataSetProvider
    DataSet = CostTrainSds
    Left = 288
    Top = 160
  end
  object CostTrainCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
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
        Name = 'wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Trains_id'
        DataType = ftInteger
      end
      item
        Name = 'QuoFixedRatesTickets_id'
        DataType = ftInteger
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
    Params = <>
    ProviderName = 'CostTrainDsp'
    StoreDefs = True
    Left = 312
    Top = 160
    object CostTrainCdsClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
    object CostTrainCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object CostTrainCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object CostTrainCdsFromTrainStation: TStringField
      FieldName = 'FromTrainStation'
      Size = 50
    end
    object CostTrainCdsToTrainStation: TStringField
      FieldName = 'ToTrainStation'
      Size = 50
    end
    object CostTrainCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object CostTrainCdsTrainName: TStringField
      FieldName = 'TrainName'
      Size = 100
    end
    object CostTrainCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object CostTrainCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostTrainCdsTrains_id: TIntegerField
      FieldName = 'Trains_id'
    end
    object CostTrainCdsQuoFixedRatesTickets_id: TIntegerField
      FieldName = 'QuoFixedRatesTickets_id'
    end
    object CostTrainCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CostTrainCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CostTrainCdsDaysOfOperation: TStringField
      FieldName = 'DaysOfOperation'
      Size = 30
    end
    object CostTrainCdsTimings: TStringField
      FieldName = 'Timings'
      Size = 30
    end
    object CostTrainCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object CostTrainCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
  end
  object CostTrainDs: TDataSource
    DataSet = CostTrainCds
    Left = 336
    Top = 160
  end
  object CostSightSds: TSQLDataSet
    CommandText = 
      'select a.Organisation, s.State, c.City, ser.[Description] AS Ser' +
      'vice, cr.CurrencyCode As Currency, Vehicle, ser.Cities_id, q.*  ' +
      #13#10'from QuoFixedratesServices q'#13#10'left join addressbook a on q.Age' +
      'ntAddressBook_id = a.AddressBook_id'#13#10'left join Services ser on q' +
      '.Services_id = ser.Services_id'#13#10'left join Vehicles v on q.Vehicl' +
      'es_id = v.Vehicles_id'#13#10'left join Currencies cr on q.Currencies_i' +
      'd = cr.Currencies_id'#13#10'left join Cities c on ser.Cities_id = c.Ci' +
      'ties_id'#13#10'left join States s on s.States_id = c.States_id'#13#10'where ' +
      'Wef >= :wef'#13#10'and SightSeeing = 1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 400
    Top = 24
  end
  object CostSightDsp: TDataSetProvider
    DataSet = CostSightSds
    Left = 416
    Top = 24
  end
  object CostSightCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
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
        Name = 'Service'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Currency'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
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
        Name = 'QuoFixedRatesServices_id'
        DataType = ftInteger
      end
      item
        Name = 'Services_id'
        DataType = ftInteger
      end
      item
        Name = 'AgentAddressBook_id'
        DataType = ftInteger
      end
      item
        Name = 'SightSeeing'
        DataType = ftBoolean
      end
      item
        Name = 'Wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Vehicles_id'
        DataType = ftInteger
      end
      item
        Name = 'Cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Currencies_id'
        DataType = ftInteger
      end
      item
        Name = 'Cost_1'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_2'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_3'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_4'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_5'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_6'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_7'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_8'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_9'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Cost_10'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CostSightDsp'
    StoreDefs = True
    Left = 440
    Top = 24
    object StringField1: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField2: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object StringField3: TStringField
      FieldName = 'Currency'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object IntegerField1: TIntegerField
      FieldName = 'Services_id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'AgentAddressBook_id'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0'
      Precision = 18
    end
    object IntegerField3: TIntegerField
      FieldName = 'Currencies_id'
    end
    object IntegerField4: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object StringField5: TStringField
      FieldName = 'State'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'City'
      Size = 50
    end
    object IntegerField5: TIntegerField
      FieldName = 'QuoFixedRatesServices_id'
    end
    object BooleanField1: TBooleanField
      FieldName = 'SightSeeing'
    end
    object CostSightCdsCost_1: TFMTBCDField
      FieldName = 'Cost_1'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_2: TFMTBCDField
      FieldName = 'Cost_2'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_3: TFMTBCDField
      FieldName = 'Cost_3'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_4: TFMTBCDField
      FieldName = 'Cost_4'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_5: TFMTBCDField
      FieldName = 'Cost_5'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_6: TFMTBCDField
      FieldName = 'Cost_6'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_7: TFMTBCDField
      FieldName = 'Cost_7'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_8: TFMTBCDField
      FieldName = 'Cost_8'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_9: TFMTBCDField
      FieldName = 'Cost_9'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCost_10: TFMTBCDField
      FieldName = 'Cost_10'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object CostSightCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object CostSightDs: TDataSource
    DataSet = CostSightCds
    Left = 464
    Top = 24
  end
  object CostCarSds: TSQLDataSet
    CommandText = 
      'select q.QuoFixedRatesCars_id, a.Organisation, s.State, c.City, ' +
      'v.Vehicle, cr.CurrencyCode As Currency, q.wef, q.Cost, q.Service' +
      'Cities_id, '#13#10'q.Addressbook_id'#13#10'from QuoFixedRatesCars q'#13#10'left jo' +
      'in addressbook a on q.AddressBook_id = a.AddressBook_id'#13#10'left jo' +
      'in Vehicles v on q.Vehicles_id = v.Vehicles_id'#13#10'left join Curren' +
      'cies cr on q.Currencies_id = cr.Currencies_id'#13#10'left join Cities ' +
      'c on q.ServiceCities_id = c.Cities_id'#13#10'left join States s on s.S' +
      'tates_id = c.States_id'#13#10'where Wef >= :wef'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 16
  end
  object CostCarDsp: TDataSetProvider
    DataSet = CostCarSds
    Left = 576
    Top = 16
  end
  object CostCarCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QuoFixedRatesCars_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
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
        Name = 'Vehicle'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Currency'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'ServiceCities_id'
        DataType = ftInteger
      end
      item
        Name = 'Addressbook_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CostCarDsp'
    StoreDefs = True
    Left = 600
    Top = 16
    object CostCarCdsQuoFixedRatesCars_id: TIntegerField
      FieldName = 'QuoFixedRatesCars_id'
    end
    object CostCarCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object CostCarCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object CostCarCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object CostCarCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object CostCarCdsCurrency: TStringField
      FieldName = 'Currency'
      FixedChar = True
      Size = 3
    end
    object CostCarCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CostCarCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CostCarCdsServiceCities_id: TIntegerField
      FieldName = 'ServiceCities_id'
    end
    object CostCarCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object CostCarDs: TDataSource
    DataSet = CostCarCds
    Left = 624
    Top = 16
  end
  object CostIntercitiesSds: TSQLDataSet
    CommandText = 
      'select q.QuoFixedRatesInterCities_id, a.Organisation, s.State, c' +
      '1.City AS FromCity, c2.City AS ToCity, '#13#10'       v.Vehicle, cr.Cu' +
      'rrencyCode As Currency, q.wef, q.Cost,'#13#10'       q.Addressbook_id'#13 +
      #10'from QuoFixedRatesInterCities q'#13#10'left join addressbook a on q.A' +
      'ddressBook_id = a.AddressBook_id'#13#10'left join Vehicles v on q.Vehi' +
      'cles_id = v.Vehicles_id'#13#10'left join Currencies cr on q.Currencies' +
      '_id = cr.Currencies_id'#13#10'left join Cities c1 on q.FromCities_id =' +
      ' c1.Cities_id'#13#10'left join Cities c2 on q.ToCities_id = c2.Cities_' +
      'id'#13#10'left join States s on s.States_id = c1.States_id'#13#10'where Wef ' +
      '>= :wef'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 88
  end
  object CostIntercitiesDsp: TDataSetProvider
    DataSet = CostIntercitiesSds
    Left = 576
    Top = 88
  end
  object CostIntercitiesCds: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'QuoFixedRatesInterCities_id'
        DataType = ftInteger
      end
      item
        Name = 'Organisation'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'State'
        DataType = ftString
        Size = 50
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
        Name = 'Vehicle'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Currency'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'wef'
        DataType = ftTimeStamp
      end
      item
        Name = 'Cost'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'Addressbook_id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'CostIntercitiesDsp'
    StoreDefs = True
    Left = 600
    Top = 88
    object CostIntercitiesCdsQuoFixedRatesInterCities_id: TIntegerField
      FieldName = 'QuoFixedRatesInterCities_id'
    end
    object CostIntercitiesCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
    object CostIntercitiesCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
    object CostIntercitiesCdsFromCity: TStringField
      FieldName = 'FromCity'
      Size = 50
    end
    object CostIntercitiesCdsToCity: TStringField
      FieldName = 'ToCity'
      Size = 50
    end
    object CostIntercitiesCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object CostIntercitiesCdsCurrency: TStringField
      FieldName = 'Currency'
      FixedChar = True
      Size = 3
    end
    object CostIntercitiesCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CostIntercitiesCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CostIntercitiesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object CostIntercitiesDs: TDataSource
    DataSet = CostIntercitiesCds
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
end
