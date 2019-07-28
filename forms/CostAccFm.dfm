inherited CostAccForm: TCostAccForm
  Left = 46
  Top = 14
  Width = 1305
  Height = 705
  Caption = 'CostAccForm'
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 496
    Width = 1289
  end
  inherited Splitter2: TSplitter
    Top = 383
    Width = 1289
  end
  inherited Splitter3: TSplitter
    Width = 1289
  end
  inherited Panel1: TPanel
    Width = 1289
    inherited Label5: TLabel
      Left = 657
    end
    inherited SpeedButton1: TSpeedButton
      Left = 839
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton [2]
      Left = 1126
      Top = 6
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    inherited cxCityLcmb: TcxLookupComboBox
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLcmbPropertiesEditValueChanged
      Style.Color = 15334910
    end
    inherited cxLabel2: TcxLabel
      Left = 283
    end
    inherited cxHotelLcmb: TcxLookupComboBox
      Left = 320
      Properties.OnEditValueChanged = cxHotelLcmbPropertiesEditValueChanged
      Style.Color = 15334910
    end
    inherited cxWefLCMB: TcxLookupComboBox
      Left = 686
      PopupMenu = PopupMenu2
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      Style.Color = 15334910
    end
    object cxButton4: TcxButton
      Left = 191
      Top = 7
      Width = 55
      Height = 18
      Caption = 'Default'
      TabOrder = 5
      OnClick = cxButton4Click
    end
    object cxLabel8: TcxLabel
      Left = 883
      Top = 8
      Caption = 'Pymt Terms: '
      Transparent = True
    end
    object cxDBLabel1: TcxDBLabel
      Left = 960
      Top = 8
      DataBinding.DataField = 'PymtTerms'
      DataBinding.DataSource = HotelDs
      Height = 21
      Width = 161
    end
    object cxPymtTermLcmb: TcxLookupComboBox
      Left = 957
      Top = 8
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'VendorPaymentTerms_id'
      Properties.ListColumns = <
        item
          FieldName = 'VendorPaymentTerm'
        end>
      Properties.ListSource = VenPayTermsDs
      Style.Color = 15334910
      TabOrder = 8
      Width = 164
    end
  end
  inherited Panel2: TPanel
    Top = 619
    Width = 1289
    OnClick = Panel2Click
    object Shape1: TShape [0]
      Left = 111
      Top = 12
      Width = 20
      Height = 17
      Brush.Color = 12902911
    end
    object Shape2: TShape [1]
      Left = 247
      Top = 12
      Width = 20
      Height = 17
      Brush.Color = 16767449
    end
    inherited cxButtonUtilities: TcxButton
      ParentShowHint = False
      DropDownMenu = PopupMenu1
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Width = 270
      Buttons.Refresh.Visible = True
    end
    object Label31: TcxLabel
      Left = 136
      Top = 13
      Caption = 'Published Tariff'
    end
    object Label32: TcxLabel
      Left = 272
      Top = 13
      Caption = 'Contract Rate'
    end
  end
  inherited Panel3: TPanel
    Top = 499
    Width = 1289
    inherited cxPageControl4: TcxPageControl
      Width = 1287
      ClientRectRight = 1281
      inherited cxTabSheetCalc: TcxTabSheet
        object Label19: TcxLabel
          Left = 8
          Top = 14
          Caption = 'Singles'
          Transparent = True
        end
        object SinglesTxt: TcxTextEdit
          Left = 104
          Top = 12
          Style.Color = 16247513
          TabOrder = 1
          Width = 73
        end
        object Label20: TcxLabel
          Left = 8
          Top = 35
          Caption = 'Room Type'
          Transparent = True
        end
        object RoomTypeLcmb: TcxLookupComboBox
          Left = 104
          Top = 33
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'roomtypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomtype'
            end>
          Properties.ListSource = HotelRoomTypeDs
          Properties.ValidateOnEnter = False
          EditValue = 0
          Style.Color = 16247513
          TabOrder = 3
          Width = 136
        end
        object Label21: TcxLabel
          Left = 8
          Top = 56
          Caption = 'Date Of Travel'
          Transparent = True
        end
        object TravelDate: TcxDateEdit
          Left = 104
          Top = 54
          Style.Color = 16247513
          TabOrder = 5
          Width = 136
        end
        object Label22: TcxLabel
          Left = 254
          Top = 14
          Caption = 'Doubles'
          Transparent = True
        end
        object DoublesTxt: TcxTextEdit
          Left = 309
          Top = 12
          Style.Color = 16247513
          TabOrder = 7
          Width = 73
        end
        object Label28: TcxLabel
          Left = 254
          Top = 35
          Caption = 'A/C'
          Transparent = True
        end
        object AcChkBox: TcxCheckBox
          Left = 305
          Top = 33
          TabOrder = 9
          Transparent = True
          Width = 21
        end
        object Label29: TcxLabel
          Left = 254
          Top = 56
          Caption = 'FIT'
          Transparent = True
        end
        object FitChkBox: TcxCheckBox
          Left = 305
          Top = 54
          TabOrder = 11
          Transparent = True
          Width = 21
        end
        object Label23: TcxLabel
          Left = 391
          Top = 14
          Caption = 'Extra Beds'
          Transparent = True
        end
        object ExtraBedsTxt: TcxTextEdit
          Left = 459
          Top = 12
          Style.Color = 16247513
          TabOrder = 13
          Width = 73
        end
        object Label24: TcxLabel
          Left = 391
          Top = 35
          Caption = 'Nights'
          Transparent = True
        end
        object NightsTxt: TcxTextEdit
          Left = 459
          Top = 33
          Style.Color = 16247513
          TabOrder = 15
          Width = 73
        end
        object Label30: TcxLabel
          Left = 391
          Top = 56
          Caption = 'USD'
          Transparent = True
        end
        object UsdChkBox: TcxCheckBox
          Left = 456
          Top = 54
          TabOrder = 17
          Transparent = True
          Width = 24
        end
        object Label26: TcxLabel
          Left = 541
          Top = 35
          Caption = 'MealPlan'
          Transparent = True
        end
        object MealPlanLcmb: TcxLookupComboBox
          Left = 634
          Top = 33
          Properties.DropDownWidth = 150
          Properties.KeyFieldNames = 'mealplans_id'
          Properties.ListColumns = <
            item
              Caption = 'Plan'
              FieldName = 'plan'
            end
            item
              Caption = 'MealPlan'
              FieldName = 'mealplan'
            end>
          Properties.ListSource = MealPlansDs
          Properties.ValidateOnEnter = False
          EditValue = 0
          Style.Color = 16247513
          TabOrder = 19
          Width = 136
        end
        object Label27: TcxLabel
          Left = 541
          Top = 56
          Caption = 'Exchange Rate'
          Transparent = True
        end
        object ExchangeRateTxt: TcxTextEdit
          Left = 634
          Top = 54
          Style.Color = 16247513
          TabOrder = 21
          Width = 73
        end
        object WebChkBox: TcxCheckBox
          Left = 784
          Top = 12
          Caption = 'Web Costs'
          TabOrder = 22
          Transparent = True
          Width = 86
        end
        object PackageChkBox: TcxCheckBox
          Left = 784
          Top = 33
          Caption = 'Packages'
          TabOrder = 23
          Transparent = True
          Width = 85
        end
        object ResidentChkBox: TcxCheckBox
          Left = 785
          Top = 54
          Caption = 'Resident'
          TabOrder = 24
          Transparent = True
          Width = 86
        end
        object cxButton1: TcxButton
          Left = 936
          Top = 21
          Width = 131
          Height = 25
          Caption = 'Display Cost'
          TabOrder = 25
          OnClick = cxButton1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 386
    Width = 1289
    inherited cxPageControl3: TcxPageControl
      Width = 1287
      ClientRectRight = 1281
      inherited cxTabSheet3: TcxTabSheet
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1278
          Height = 76
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView3: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = Detail2Ds
            DataController.KeyFieldNames = 'mealcosts_id'
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
            Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
            Bands = <
              item
              end>
            object cxGridDBBandedTableView3mealcosts_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'mealcosts_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3seasons_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seasons_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3currencies_pt_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencies_pt_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'CurrencyCode'
                end>
              Properties.ListSource = CurrencyDs
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3breakfast_pt: TcxGridDBBandedColumn
              Caption = 'Breakfast'
              DataBinding.FieldName = 'breakfast_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3lunch_pt: TcxGridDBBandedColumn
              Caption = 'Lunch'
              DataBinding.FieldName = 'lunch_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3dinner_pt: TcxGridDBBandedColumn
              Caption = 'Dinner'
              DataBinding.FieldName = 'dinner_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'CurrencyCode'
                end>
              Properties.ListSource = CurrencyDs
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3breakfast: TcxGridDBBandedColumn
              Caption = 'Breakfast'
              DataBinding.FieldName = 'breakfast'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3lunch: TcxGridDBBandedColumn
              Caption = 'Lunch'
              DataBinding.FieldName = 'lunch'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3dinner: TcxGridDBBandedColumn
              Caption = 'Dinner'
              DataBinding.FieldName = 'dinner'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView3
          end
        end
      end
    end
  end
  inherited Panel5: TPanel
    Width = 1289
    inherited cxPageControl1: TcxPageControl
      Width = 1287
      ParentColor = False
      ClientRectRight = 1281
      inherited cxTabSheet1: TcxTabSheet
        ParentColor = False
        object cxGrid9: TcxGrid
          Left = 0
          Top = 0
          Width = 1278
          Height = 106
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView9: TcxGridDBBandedTableView
            OnDblClick = cxGridDBBandedTableView9DblClick
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterDs
            DataController.KeyFieldNames = 'seasons_id'
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
            Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
            Bands = <
              item
              end
              item
                Caption = 'Default'
                Width = 111
              end
              item
                Caption = 'TAC'
                Visible = False
              end
              item
                Caption = 'Srv Chgs'
                Visible = False
                Width = 127
              end
              item
                Caption = 'Tour Leader'
                Width = 421
              end>
            object cxGridDBBandedTableView9seasons_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seasons_id'
              Visible = False
              Options.Editing = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9addressbook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'addressbook_id'
              Visible = False
              Options.Editing = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9fromdate: TcxGridDBBandedColumn
              Caption = 'From Date'
              DataBinding.FieldName = 'fromdate'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9todate: TcxGridDBBandedColumn
              Caption = 'To Date'
              DataBinding.FieldName = 'todate'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9frompax: TcxGridDBBandedColumn
              Caption = 'From Pax'
              DataBinding.FieldName = 'frompax'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9to_pax: TcxGridDBBandedColumn
              Caption = 'To Pax'
              DataBinding.FieldName = 'to_pax'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9git: TcxGridDBBandedColumn
              Caption = 'GIT'
              DataBinding.FieldName = 'git'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9closed: TcxGridDBBandedColumn
              Caption = 'Closed'
              DataBinding.FieldName = 'closed'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 53
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9servicecharges: TcxGridDBBandedColumn
              Caption = 'Srv Chgs'
              DataBinding.FieldName = 'servicecharges'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 110
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9tac_pt: TcxGridDBBandedColumn
              Caption = 'TAC PT'
              DataBinding.FieldName = 'tac_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 53
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9taconmealplan_pt: TcxGridDBBandedColumn
              Caption = 'On MP'
              DataBinding.FieldName = 'taconmealplan_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 48
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9tac: TcxGridDBBandedColumn
              Caption = 'TAC CR'
              DataBinding.FieldName = 'tac'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 57
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9taconmealplan: TcxGridDBBandedColumn
              Caption = 'On MP'
              DataBinding.FieldName = 'taconmealplan'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 47
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9servicechargesonplan: TcxGridDBBandedColumn
              Caption = 'On MP'
              DataBinding.FieldName = 'servicechargesonplan'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 52
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9policyonescorts_id: TcxGridDBBandedColumn
              Caption = 'Policy'
              DataBinding.FieldName = 'policyonescorts_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'policyonescorts_id'
              Properties.ListColumns = <
                item
                  FieldName = 'policy'
                end>
              Properties.ListSource = TlPolicyDs
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 150
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9tl_discount: TcxGridDBBandedColumn
              Caption = 'Discount'
              DataBinding.FieldName = 'tl_discount'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 63
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9tl_discountabove: TcxGridDBBandedColumn
              Caption = 'Above Pax'
              DataBinding.FieldName = 'tl_discountabove'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 72
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9tl_freeabove: TcxGridDBBandedColumn
              Caption = 'Free Above'
              DataBinding.FieldName = 'tl_freeabove'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 77
              Position.BandIndex = 4
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9tl_halfdouble: TcxGridDBBandedColumn
              Caption = 'Half Dbl'
              DataBinding.FieldName = 'tl_halfdouble'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 80
              Position.BandIndex = 4
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9extrabedcost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'extrabedcost'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9dayoftheweek: TcxGridDBBandedColumn
              DataBinding.FieldName = 'dayoftheweek'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9extrabedpercentage: TcxGridDBBandedColumn
              DataBinding.FieldName = 'extrabedpercentage'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9luxtax: TcxGridDBBandedColumn
              DataBinding.FieldName = 'luxtax'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9luxtaxonpt: TcxGridDBBandedColumn
              DataBinding.FieldName = 'luxtaxonpt'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9exptax: TcxGridDBBandedColumn
              DataBinding.FieldName = 'exptax'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9salestax: TcxGridDBBandedColumn
              DataBinding.FieldName = 'salestax'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9salestaxinclusive: TcxGridDBBandedColumn
              DataBinding.FieldName = 'salestaxinclusive'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9default_roomtypes_id: TcxGridDBBandedColumn
              Caption = 'Room Type'
              DataBinding.FieldName = 'default_roomtypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'RoomTypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'RoomType'
                end>
              Properties.ListSource = HotelRoomTypeDs
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 83
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9default_ac: TcxGridDBBandedColumn
              Caption = 'AC'
              DataBinding.FieldName = 'default_ac'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 21
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9exptax_notapplicable: TcxGridDBBandedColumn
              DataBinding.FieldName = 'exptax_notapplicable'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9salestaxinclusive_pt: TcxGridDBBandedColumn
              DataBinding.FieldName = 'salestaxinclusive_pt'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9SpecialPeriod: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SpecialPeriod'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9Notes: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Notes'
              Visible = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView9DaysName: TcxGridDBBandedColumn
              Caption = 'Days'
              DataBinding.FieldName = 'DaysName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView9DaysNamePropertiesButtonClick
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
          object cxGridLevel9: TcxGridLevel
            GridView = cxGridDBBandedTableView9
          end
        end
      end
    end
    inherited Panel6: TPanel
      Width = 1287
      PopupMenu = PopupMenu3
      object cxNotesLabel: TcxLabel
        Left = 931
        Top = 4
        Caption = 'Notes'
        Transparent = True
      end
      object cxDBNotesMemo: TcxDBMemo
        Left = 968
        Top = 1
        Align = alRight
        DataBinding.DataField = 'Notes'
        DataBinding.DataSource = MasterDs
        Style.Color = 15334910
        TabOrder = 1
        Height = 48
        Width = 318
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 120
        Height = 48
        Align = alLeft
        TabOrder = 2
        Visible = False
        object Label10: TcxLabel
          Left = 5
          Top = 4
          Caption = 'Lux Tax'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 59
          Top = 5
          DataBinding.DataField = 'luxtax'
          DataBinding.DataSource = MasterDs
          Style.Color = 15334910
          TabOrder = 1
          Width = 57
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 5
          Top = 24
          Caption = 'Lux Tax on PT'
          DataBinding.DataField = 'luxtaxonpt'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 101
        end
      end
      object Panel9: TPanel
        Left = 121
        Top = 1
        Width = 144
        Height = 48
        Align = alLeft
        TabOrder = 3
        object cxLabel3: TcxLabel
          Left = 5
          Top = 4
          Caption = 'Sales Tax'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 68
          Top = 4
          DataBinding.DataField = 'salestax'
          DataBinding.DataSource = MasterDs
          Style.Color = 15334910
          TabOrder = 1
          Width = 68
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 65
          Top = 24
          Caption = 'Incl PT'
          DataBinding.DataField = 'salestaxinclusive_pt'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 68
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 5
          Top = 24
          Caption = 'Incl CR'
          DataBinding.DataField = 'salestaxinclusive'
          DataBinding.DataSource = MasterDs
          TabOrder = 3
          Width = 61
        end
      end
      object Panel10: TPanel
        Left = 265
        Top = 1
        Width = 124
        Height = 48
        Align = alLeft
        TabOrder = 4
        Visible = False
        object cxLabel4: TcxLabel
          Left = 2
          Top = 4
          Caption = 'Srv Tax'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 53
          Top = 4
          DataBinding.DataField = 'exptax'
          DataBinding.DataSource = MasterDs
          Style.Color = 15334910
          TabOrder = 1
          Width = 68
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 2
          Top = 24
          Caption = 'Not Applicable'
          DataBinding.DataField = 'exptax_notapplicable'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 113
        end
      end
      object Panel11: TPanel
        Left = 797
        Top = 1
        Width = 100
        Height = 48
        Align = alLeft
        TabOrder = 5
        object cxLabel5: TcxLabel
          Left = 2
          Top = 4
          Caption = 'Agent GST (%)'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 30
          Top = 22
          DataBinding.DataField = 'AgentCommPerc'
          DataBinding.DataSource = MasterDs
          Style.Color = 15334910
          TabOrder = 1
          Width = 43
        end
      end
      object Panel12: TPanel
        Left = 389
        Top = 1
        Width = 136
        Height = 48
        Align = alLeft
        TabOrder = 6
        object cxLabel6: TcxLabel
          Left = 2
          Top = 4
          Caption = 'Srv Chgs'
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 64
          Top = 4
          DataBinding.DataField = 'servicecharges'
          DataBinding.DataSource = MasterDs
          Style.Color = 15334910
          TabOrder = 1
          Width = 68
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 2
          Top = 24
          Caption = 'On MP'
          DataBinding.DataField = 'servicechargesonplan'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 113
        end
      end
      object Panel13: TPanel
        Left = 525
        Top = 1
        Width = 136
        Height = 48
        Align = alLeft
        TabOrder = 7
        object cxLabel7: TcxLabel
          Left = 2
          Top = 4
          Caption = 'TAC PT'
          Transparent = True
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 64
          Top = 4
          DataBinding.DataField = 'tac_pt'
          DataBinding.DataSource = MasterDs
          Style.Color = 15334910
          TabOrder = 1
          Width = 68
        end
        object cxDBCheckBox7: TcxDBCheckBox
          Left = 2
          Top = 24
          Caption = 'On MP'
          DataBinding.DataField = 'taconmealplan_pt'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 113
        end
      end
      object Panel14: TPanel
        Left = 661
        Top = 1
        Width = 136
        Height = 48
        Align = alLeft
        TabOrder = 8
        object cxLabel9: TcxLabel
          Left = 2
          Top = 4
          Caption = 'TAC CR'
          Transparent = True
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 64
          Top = 4
          DataBinding.DataField = 'tac'
          DataBinding.DataSource = MasterDs
          Style.Color = 15334910
          TabOrder = 1
          Width = 68
        end
        object cxDBCheckBox8: TcxDBCheckBox
          Left = 2
          Top = 24
          Caption = 'On MP'
          DataBinding.DataField = 'taconmealplan'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 113
        end
      end
    end
  end
  inherited Panel7: TPanel
    Width = 1289
    Height = 157
    inherited cxPageControl2: TcxPageControl
      Width = 1287
      Height = 155
      ClientRectBottom = 149
      ClientRectRight = 1281
      inherited cxTabSheet2: TcxTabSheet
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1278
          Height = 123
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView2: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = Detail1Ds
            DataController.KeyFieldNames = 'hoteltariffs_id'
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
            Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
            Bands = <
              item
                Styles.Header = BackOfficeDataModule.cxStylePublished
              end>
            object cxGridDBBandedTableView2hoteltariffs_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'hoteltariffs_id'
              Visible = False
              Options.Editing = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2seasons_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seasons_id'
              Visible = False
              Options.Editing = False
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2roomtypes_id: TcxGridDBBandedColumn
              Caption = 'Room Type'
              DataBinding.FieldName = 'roomtypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'roomtypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'roomtype'
                end>
              Properties.ListSource = RoomTypeDs
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2currencies_pt_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencies_pt_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'CurrencyCode'
                end>
              Properties.ListSource = CurrencyDs
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 55
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost_single_pt: TcxGridDBBandedColumn
              Caption = 'Single'
              DataBinding.FieldName = 'cost_single_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost_double_pt: TcxGridDBBandedColumn
              Caption = 'Double'
              DataBinding.FieldName = 'cost_double_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost_single_ac_pt: TcxGridDBBandedColumn
              Caption = 'Single A/C'
              DataBinding.FieldName = 'cost_single_ac_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost_double_ac_pt: TcxGridDBBandedColumn
              Caption = 'Double A/C'
              DataBinding.FieldName = 'cost_double_ac_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2mealplans_pt_id: TcxGridDBBandedColumn
              Caption = 'MP'
              DataBinding.FieldName = 'mealplans_pt_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'mealplans_id'
              Properties.ListColumns = <
                item
                  FieldName = 'plan'
                end>
              Properties.ListSource = MealPlansDs
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2extrabed_pt: TcxGridDBBandedColumn
              Caption = 'Extra Bed'
              DataBinding.FieldName = 'extrabed_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2nett_pt: TcxGridDBBandedColumn
              Caption = 'Nett'
              DataBinding.FieldName = 'nett_pt'
              Styles.Content = BackOfficeDataModule.cxStylePublished
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'CurrencyCode'
                end>
              Properties.ListSource = CurrencyDs
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 55
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost_single: TcxGridDBBandedColumn
              Caption = 'Single'
              DataBinding.FieldName = 'cost_single'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost_double: TcxGridDBBandedColumn
              Caption = 'Double'
              DataBinding.FieldName = 'cost_double'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost_single_ac: TcxGridDBBandedColumn
              Caption = 'Single A/C'
              DataBinding.FieldName = 'cost_single_ac'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost_double_ac: TcxGridDBBandedColumn
              Caption = 'Double A/C'
              DataBinding.FieldName = 'cost_double_ac'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2mealplans_id: TcxGridDBBandedColumn
              Caption = 'MP'
              DataBinding.FieldName = 'mealplans_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'mealplans_id'
              Properties.ListColumns = <
                item
                  FieldName = 'plan'
                end>
              Properties.ListSource = MealPlansDs
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2extrabed: TcxGridDBBandedColumn
              Caption = 'Extra Bed'
              DataBinding.FieldName = 'extrabed'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2nett: TcxGridDBBandedColumn
              Caption = 'Nett '
              DataBinding.FieldName = 'nett'
              Styles.Content = BackOfficeDataModule.cxStyleContract
              Styles.Header = BackOfficeDataModule.cxStyleContract
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2freetransfer: TcxGridDBBandedColumn
              Caption = 'Free Trsf'
              DataBinding.FieldName = 'freetransfer'
              Styles.Content = BackOfficeDataModule.cxStyleCream
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBBandedTableView2
          end
        end
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    inherited CopyTrains1: TMenuItem
      Caption = 'Copy'
      object CopyCosts1: TMenuItem
        Caption = 'Copy Costs'
        OnClick = CopyCosts1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object CopyfromGITtoFIT1: TMenuItem
        Caption = 'Copy from GIT to FIT'
        OnClick = CopyfromGITtoFIT1Click
      end
      object CopyfromFITtoGIT1: TMenuItem
        Caption = 'Copy from FIT to GIT'
        OnClick = CopyfromFITtoGIT1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object HotelPriceList1: TMenuItem
      Caption = 'Hotel Price List'
      OnClick = HotelPriceList1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object DeletethisCosting1: TMenuItem
      Caption = 'Delete this Costing'
      OnClick = DeletethisCosting1Click
    end
  end
  inherited Detail1Cds: TClientDataSet
    AfterInsert = Detail1CdsAfterInsert
    inherited Detail1Cdscost_single: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdscost_single_pt: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdscost_single_ac: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdscost_single_ac_pt: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdscost_double: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdscost_double_pt: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdscost_double_ac: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdscost_double_ac_pt: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdsextrabed: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail1Cdsextrabed_pt: TBCDField
      DisplayFormat = '#,##0'
    end
  end
  inherited Detail2Cds: TClientDataSet
    AfterInsert = Detail2CdsAfterInsert
    inherited Detail2Cdsbreakfast: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail2Cdsbreakfast_pt: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail2Cdslunch: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail2Cdslunch_pt: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail2Cdsdinner: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail2Cdsdinner_pt: TBCDField
      DisplayFormat = '#,##0'
    end
  end
  inherited HotelSds: TSQLDataSet
    Left = 347
    Top = 11
  end
  inherited HotelDsp: TDataSetProvider
    Left = 359
    Top = 11
  end
  inherited HotelCds: TClientDataSet
    Left = 380
    Top = 11
    object HotelCdsPymtTerms: TStringField
      FieldName = 'PymtTerms'
      Size = 200
    end
  end
  inherited HotelDs: TDataSource
    Left = 394
    Top = 11
  end
  inherited WefSds: TSQLDataSet
    Left = 736
  end
  inherited WefDsp: TDataSetProvider
    Left = 752
  end
  inherited WefCds: TClientDataSet
    Left = 768
  end
  inherited WefDS: TDataSource
    Left = 784
  end
  object RoomTypeSds: TSQLDataSet [30]
    CommandText = 'SELECT * FROM RoomTypes ORDER By RoomType'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 256
  end
  object RoomTypeDsp: TDataSetProvider [31]
    DataSet = RoomTypeSds
    Left = 208
    Top = 256
  end
  object RoomTypeCds: TClientDataSet [32]
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 224
    Top = 256
    object RoomTypeCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RoomTypeCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object RoomTypeCdsac: TBooleanField
      FieldName = 'ac'
    end
  end
  object RoomTypeDs: TDataSource [33]
    DataSet = RoomTypeCds
    Left = 240
    Top = 256
  end
  object MealPlansSds: TSQLDataSet [34]
    CommandText = 'SELECT * FROM MealPlans ORDER BY [Plan]'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 416
    Top = 264
  end
  object MealPlansDsp: TDataSetProvider [35]
    DataSet = MealPlansSds
    Left = 432
    Top = 264
  end
  object MealPlansCds: TClientDataSet [36]
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlansDsp'
    Left = 448
    Top = 264
    object MealPlansCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MealPlansCdsmealplan: TStringField
      FieldName = 'mealplan'
      Size = 15
    end
    object MealPlansCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
  end
  object MealPlansDs: TDataSource [37]
    DataSet = MealPlansCds
    Left = 464
    Top = 264
  end
  object CurrencySds: TSQLDataSet [38]
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 402
  end
  object CurrencyDsp: TDataSetProvider [39]
    DataSet = CurrencySds
    Left = 504
    Top = 402
  end
  object CurrencyCds: TClientDataSet [40]
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 520
    Top = 402
    object CurrencyCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrencyCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CurrencyCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrencyDs: TDataSource [41]
    DataSet = CurrencyCds
    Left = 536
    Top = 402
  end
  inherited MasterSds: TSQLDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Wef'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    OnCalcFields = MasterCdsCalcFields
    Left = 264
    inherited SQLTimeStampField1: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited SQLTimeStampField2: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BCDField3: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited BCDField4: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited BCDField5: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited BCDField6: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited BCDField7: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited BCDField9: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited BCDField10: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited BCDField11: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited StringField1: TStringField
      DisplayWidth = 80
      Size = 80
    end
    object MasterCdsAgentCommPerc: TFMTBCDField
      FieldName = 'AgentCommPerc'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object TlPolicySds: TSQLDataSet
    CommandText = 'SELECT * FROM PolicyOnEscorts ORDER BY Policy'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 866
    Top = 30
  end
  object TlPolicyDsp: TDataSetProvider
    DataSet = TlPolicySds
    Left = 886
    Top = 38
  end
  object TlPolicyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TlPolicyDsp'
    Left = 907
    Top = 38
    object TlPolicyCdspolicyonescorts_id: TIntegerField
      FieldName = 'policyonescorts_id'
    end
    object TlPolicyCdspolicy: TStringField
      FieldName = 'policy'
      Size = 100
    end
  end
  object TlPolicyDs: TDataSource
    DataSet = TlPolicyCds
    Left = 913
    Top = 38
  end
  object HotelRoomTypeSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT r.roomtype, ht.roomtypes_id, ht.Seasons_id '#13#10'FRO' +
      'M hoteltariffsindia ht, roomtypes r'#13#10'WHERE ht.roomtypes_id=r.roo' +
      'mtypes_id'#13#10'AND ht.seasons_id= :seasons_id'#13#10'ORDER BY r.roomtype'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'seasons_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 512
    Top = 104
  end
  object HotelRoomTypeDsp: TDataSetProvider
    DataSet = HotelRoomTypeSds
    Left = 528
    Top = 104
  end
  object HotelRoomTypeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Seasons_id'
    MasterFields = 'seasons_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelRoomTypeDsp'
    Left = 544
    Top = 104
  end
  object HotelRoomTypeDs: TDataSource
    DataSet = HotelRoomTypeCds
    Left = 560
    Top = 104
  end
  object PopupMenu2: TPopupMenu
    Left = 648
    Top = 40
    object MultiWefMnu: TMenuItem
      Caption = 'Multi-Wef'
      OnClick = MultiWefMnuClick
    end
  end
  object VenPayTermsSds: TSQLDataSet
    CommandText = 'SELECT * from VendorPaymentTerms'#13#10'ORDER BY OrderNo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1072
    Top = 32
  end
  object VenPayTermsDsp: TDataSetProvider
    DataSet = VenPayTermsSds
    Left = 1088
    Top = 32
  end
  object VenPayTermsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VenPayTermsDsp'
    Left = 1104
    Top = 32
    object VenPayTermsCdsVendorPaymentTerms_id: TIntegerField
      FieldName = 'VendorPaymentTerms_id'
    end
    object VenPayTermsCdsVendorPaymentTerm: TStringField
      FieldName = 'VendorPaymentTerm'
      Size = 200
    end
  end
  object VenPayTermsDs: TDataSource
    DataSet = VenPayTermsCds
    Left = 1120
    Top = 32
  end
  object PopupMenu3: TPopupMenu
    Left = 940
    Top = 189
    object DisplayLuxTaxSrvT1: TMenuItem
      Caption = 'Show/Hide Lux Tax / Srv Tax'
      OnClick = DisplayLuxTaxSrvT1Click
    end
  end
end
