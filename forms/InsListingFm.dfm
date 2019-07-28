object InsListingForm: TInsListingForm
  Left = 51
  Top = 104
  Width = 943
  Height = 622
  Caption = 'Insurance Listing'
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
    Width = 935
    Height = 45
    Align = alTop
    TabOrder = 0
    object cxButton3: TcxButton
      Left = 472
      Top = 14
      Width = 113
      Height = 25
      Caption = 'Refresh'
      TabOrder = 0
      OnClick = cxButton3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
    end
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 4
      TabOrder = 1
      Height = 36
      Width = 343
      object Label1: TLabel
        Left = 7
        Top = 15
        Width = 50
        Height = 13
        Caption = 'Between'
      end
      object Label2: TLabel
        Left = 188
        Top = 14
        Width = 22
        Height = 13
        Caption = 'and'
      end
      object cxFromDateEdit: TcxDateEdit
        Left = 63
        Top = 11
        Style.Color = 16777192
        TabOrder = 0
        Width = 121
      end
      object cxToDateEdit: TcxDateEdit
        Left = 215
        Top = 11
        Style.Color = 16777192
        TabOrder = 1
        Width = 121
      end
    end
    object cxButton4: TcxButton
      Left = 362
      Top = 13
      Width = 41
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cxButton4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object cxButton5: TcxButton
      Left = 410
      Top = 13
      Width = 41
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      NumGlyphs = 2
    end
    object cxDivisionRadioGroup: TcxRadioGroup
      Left = 608
      Top = 7
      Caption = 'Unit'
      Properties.Columns = 4
      Properties.DefaultCaption = 'G'
      Properties.DefaultValue = '1'
      Properties.Items = <
        item
          Caption = 'G'
          Value = 1
        end
        item
          Caption = 'P'
          Value = 2
        end
        item
          Caption = 'D'
          Value = 3
        end
        item
          Caption = 'N'
          Value = 4
        end>
      ItemIndex = 0
      TabOrder = 4
      Height = 32
      Width = 185
    end
    object cxDivCheckBox: TcxCheckBox
      Left = 824
      Top = 16
      Caption = 'All Units'
      TabOrder = 5
      Width = 97
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 548
    Width = 935
    Height = 40
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Left = 20
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxButton2: TcxButton
      Left = 824
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 45
    Width = 935
    Height = 503
    ActivePage = TabSheetInsListing
    Align = alClient
    TabOrder = 2
    object TabSheetInsListing: TTabSheet
      Caption = 'Sale Insurance Listing'
      object cxGridInsList: TcxGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 475
        Align = alClient
        TabOrder = 0
        object cxGridInsListDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.Header = MisDataModule.cxStyleHeader
        end
        object cxGridInsListDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = InsListDs
          DataController.KeyFieldNames = 'Ins_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = 'Sub Total'
              Kind = skAverage
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skCount
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = 'Grand Total'
              Kind = skAverage
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridInsListDBBandedTableView1Amount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.Header = MisDataModule.cxStyleHeader
          OnCustomDrawFooterCell = cxGridInsListDBBandedTableView1CustomDrawFooterCell
          Bands = <
            item
              Width = 891
            end>
          object cxGridInsListDBBandedTableView1Ins_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Ins_id'
            Visible = False
            Options.Editing = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 122
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1InvNo: TcxGridDBBandedColumn
            Caption = 'Inv No'
            DataBinding.FieldName = 'InvNo'
            Options.Editing = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 64
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1InvDate: TcxGridDBBandedColumn
            Caption = 'Inv Date'
            DataBinding.FieldName = 'InvDate'
            Options.Editing = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1Amount: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Amount'
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1Div: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Div'
            Options.Editing = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1InvType: TcxGridDBBandedColumn
            Caption = 'Type'
            DataBinding.FieldName = 'InvType'
            Options.Editing = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1InsTerm: TcxGridDBBandedColumn
            Caption = 'Insurance Term'
            DataBinding.FieldName = 'InsTerm'
            Options.Editing = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1Account: TcxGridDBBandedColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'Account'
            Options.Editing = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 208
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1RecType: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RecType'
            Visible = False
            Options.Grouping = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1ModeOfDispatch: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ModeOfDispatch'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridInsListDBBandedTableView1Place: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Place'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGridInsListLevel1: TcxGridLevel
          GridView = cxGridInsListDBBandedTableView1
        end
      end
    end
    object TabSheetPurInsListing: TTabSheet
      Caption = 'Purchase Insurance Listing'
      ImageIndex = 1
      object cxGridPurInsListing: TcxGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 482
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.Header = MisDataModule.cxStyleHeader
        end
        object cxGridPurInsDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = PurInsListDs
          DataController.KeyFieldNames = 'Ins_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = 'Sub Total'
              Kind = skAverage
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skCount
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = 'Grand Total'
              Kind = skAverage
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridPurInsDBBandedTableView1Amount
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridPurInsDBBandedTableView1CustomDuty
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridPurInsDBBandedTableView1PackFwdAmt
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridPurInsDBBandedTableView1FreightAmt
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridPurInsDBBandedTableView1CustomClrAmt
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridPurInsDBBandedTableView1ImportDutyAmt
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridPurInsDBBandedTableView1FreightFwdAmt
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.Header = MisDataModule.cxStyleHeader
          OnCustomDrawFooterCell = cxGridInsListDBBandedTableView1CustomDrawFooterCell
          Bands = <
            item
              Width = 1100
            end>
          object cxGridPurInsDBBandedTableView1Ins_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Ins_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1InvNo: TcxGridDBBandedColumn
            Caption = 'Inv No'
            DataBinding.FieldName = 'InvNo'
            Options.Editing = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1InvDate: TcxGridDBBandedColumn
            Caption = 'Inv Date'
            DataBinding.FieldName = 'InvDate'
            Options.Editing = False
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1GrnDate: TcxGridDBBandedColumn
            Caption = 'Grn Date'
            DataBinding.FieldName = 'GrnDate'
            Options.Editing = False
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1Amount: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Amount'
            Options.Editing = False
            Options.Filtering = False
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1CustomDuty: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CustomDuty'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1Div: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Div'
            Options.Editing = False
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1GrnNo: TcxGridDBBandedColumn
            Caption = 'Grn No'
            DataBinding.FieldName = 'GrnNo'
            Options.Editing = False
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1GrnType: TcxGridDBBandedColumn
            Caption = 'Type'
            DataBinding.FieldName = 'GrnType'
            Options.Editing = False
            Width = 49
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1InsType: TcxGridDBBandedColumn
            Caption = 'Ins Type'
            DataBinding.FieldName = 'InsType'
            Options.Editing = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1PackFwdAmt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PackFwdAmt'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1FreightAmt: TcxGridDBBandedColumn
            Caption = 'Freight Amt'
            DataBinding.FieldName = 'FreightAmt'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 61
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1CustomClrAmt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CustomClrAmt'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1ImportDutyAmt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ImportDutyAmt'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1FreightFwdAmt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FreightFwdAmt'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 42
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1Account: TcxGridDBBandedColumn
            Caption = 'Supplier'
            DataBinding.FieldName = 'Account'
            Options.Editing = False
            Width = 169
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1PoNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PoNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1PoYrRef: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PoYrRef'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 41
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1SuplCode: TcxGridDBBandedColumn
            Caption = 'Supl Code'
            DataBinding.FieldName = 'SuplCode'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1ModeOfDispatch: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ModeOfDispatch'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGridPurInsDBBandedTableView1Place: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Place'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
        end
        object cxGridPurInsLevel1: TcxGridLevel
          GridView = cxGridPurInsDBBandedTableView1
        end
      end
    end
    object TabSheetVendorListing: TTabSheet
      Caption = 'Vendor Listing'
      ImageIndex = 2
      object cxGridVendorList: TcxGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 482
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.Header = MisDataModule.cxStyleHeader
        end
        object cxGridVendorListDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = VendorDs
          DataController.KeyFieldNames = 'SuplNo'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = 'Sub Total'
              Kind = skAverage
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skCount
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = 'Grand Total'
              Kind = skAverage
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.Header = MisDataModule.cxStyleHeader
          OnCustomDrawFooterCell = cxGridInsListDBBandedTableView1CustomDrawFooterCell
          Bands = <
            item
              Width = 887
            end>
          object cxGridVendorListDBBandedTableView1SuplNo: TcxGridDBBandedColumn
            Caption = 'Vendor Code'
            DataBinding.FieldName = 'SuplNo'
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1SuplName: TcxGridDBBandedColumn
            Caption = 'Vendor'
            DataBinding.FieldName = 'SuplName'
            Width = 115
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1InsType: TcxGridDBBandedColumn
            Caption = 'Ins Type'
            DataBinding.FieldName = 'InsType'
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1Address: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Address'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1EnterpriseType: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EnterpriseType'
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1TinNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TinNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1CstNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CstNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1PanNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PanNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1ServTaxNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ServTaxNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridVendorListDBBandedTableView1ExciseRegNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ExciseRegNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object cxGridVendorLevel1: TcxGridLevel
          GridView = cxGridVendorListDBBandedTableView1
        end
      end
    end
    object TabSheetCustomerListing: TTabSheet
      Caption = 'Customer Listing'
      ImageIndex = 3
      object cxGridCustomerList: TcxGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 482
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.Header = MisDataModule.cxStyleHeader
        end
        object cxGridCustomerListDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = CustomerDs
          DataController.KeyFieldNames = 'CustCode'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = 'Sub Total'
              Kind = skAverage
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skCount
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Format = 'Grand Total'
              Kind = skAverage
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.Header = MisDataModule.cxStyleHeader
          OnCustomDrawFooterCell = cxGridInsListDBBandedTableView1CustomDrawFooterCell
          Bands = <
            item
              Width = 858
            end>
          object cxGridCustomerListDBBandedTableView1CustCode: TcxGridDBBandedColumn
            Caption = 'Customer Code'
            DataBinding.FieldName = 'CustCode'
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridCustomerListDBBandedTableView1ClientName: TcxGridDBBandedColumn
            Caption = 'Client'
            DataBinding.FieldName = 'ClientName'
            Width = 245
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridCustomerListDBBandedTableView1InvToLocName: TcxGridDBBandedColumn
            Caption = 'Invoice To'
            DataBinding.FieldName = 'InvToLocName'
            Width = 283
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridCustomerListDBBandedTableView1InsTerm: TcxGridDBBandedColumn
            Caption = 'Ins Term'
            DataBinding.FieldName = 'InsTerm'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridCustomerLevel1: TcxGridLevel
          GridView = cxGridCustomerListDBBandedTableView1
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 496
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object SaveDialog: TSaveDialog
    Left = 163
    Top = 521
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 196
    Top = 521
    object dxComponentPrinterLink1: TdxGridReportLink
      Active = True
      Component = cxGridInsList
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
      ReportDocument.CreationDate = 39664.701496388890000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object InsListSds: TSQLDataSet
    CommandText = 'exec p_Insurance '#39'07/01/2007'#39', '#39'07/10/2007'#39', 0, 1, 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MisDataModule.SQLConnection
    Left = 504
    Top = 224
  end
  object InsListDsp: TDataSetProvider
    DataSet = InsListSds
    Left = 536
    Top = 224
  end
  object InsListCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'InsListDsp'
    Left = 568
    Top = 224
    object InsListCdsIns_id: TIntegerField
      FieldName = 'Ins_id'
    end
    object InsListCdsInvNo: TIntegerField
      FieldName = 'InvNo'
    end
    object InsListCdsInvDate: TSQLTimeStampField
      FieldName = 'InvDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object InsListCdsAmount: TFMTBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object InsListCdsDiv: TStringField
      FieldName = 'Div'
      Size = 1
    end
    object InsListCdsInvType: TStringField
      FieldName = 'InvType'
    end
    object InsListCdsInsTerm: TStringField
      FieldName = 'InsTerm'
      Size = 50
    end
    object InsListCdsAccount: TStringField
      FieldName = 'Account'
      Size = 100
    end
    object InsListCdsRecType: TIntegerField
      FieldName = 'RecType'
    end
    object InsListCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 30
    end
    object InsListCdsModeOfDispatch: TStringField
      FieldName = 'ModeOfDispatch'
      Size = 100
    end
    object InsListCdsPlace: TStringField
      FieldName = 'Place'
      Size = 100
    end
  end
  object InsListDs: TDataSource
    DataSet = InsListCds
    Left = 600
    Top = 224
  end
  object PurInsListSds: TSQLDataSet
    CommandText = 'exec p_Insurance '#39'07/01/2007'#39', '#39'07/10/2007'#39', 0, 2, 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MisDataModule.SQLConnection
    Left = 504
    Top = 256
  end
  object PurInsListDsp: TDataSetProvider
    DataSet = PurInsListSds
    Left = 536
    Top = 256
  end
  object PurInsListCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PurInsListDsp'
    Left = 568
    Top = 256
    object PurInsListCdsIns_id: TIntegerField
      FieldName = 'Ins_id'
    end
    object PurInsListCdsInvNo: TStringField
      FieldName = 'InvNo'
    end
    object PurInsListCdsInvDate: TSQLTimeStampField
      FieldName = 'InvDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PurInsListCdsGrnDate: TSQLTimeStampField
      FieldName = 'GrnDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object PurInsListCdsAmount: TFMTBCDField
      FieldName = 'Amount'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PurInsListCdsCustomDuty: TFMTBCDField
      FieldName = 'CustomDuty'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PurInsListCdsDiv: TStringField
      FieldName = 'Div'
      Size = 1
    end
    object PurInsListCdsGrnNo: TIntegerField
      FieldName = 'GrnNo'
    end
    object PurInsListCdsGrnType: TStringField
      FieldName = 'GrnType'
    end
    object PurInsListCdsInsType: TStringField
      FieldName = 'InsType'
      Size = 50
    end
    object PurInsListCdsAccount: TStringField
      FieldName = 'Account'
      Size = 100
    end
    object PurInsListCdsAccounts_id: TIntegerField
      FieldName = 'Accounts_id'
    end
    object PurInsListCdsPackFwdAmt: TFMTBCDField
      FieldName = 'PackFwdAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PurInsListCdsFreightAmt: TFMTBCDField
      FieldName = 'FreightAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PurInsListCdsCustomClrAmt: TFMTBCDField
      FieldName = 'CustomClrAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PurInsListCdsImportDutyAmt: TFMTBCDField
      FieldName = 'ImportDutyAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PurInsListCdsFreightFwdAmt: TFMTBCDField
      FieldName = 'FreightFwdAmt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PurInsListCdsPoNo: TStringField
      FieldName = 'PoNo'
      Size = 50
    end
    object PurInsListCdsPoYrRef: TIntegerField
      FieldName = 'PoYrRef'
    end
    object PurInsListCdsSuplCode: TStringField
      FieldName = 'SuplCode'
      Size = 10
    end
    object PurInsListCdsModeOfDispatch: TStringField
      FieldName = 'ModeOfDispatch'
      Size = 100
    end
    object PurInsListCdsPlace: TStringField
      FieldName = 'Place'
      Size = 200
    end
  end
  object PurInsListDs: TDataSource
    DataSet = PurInsListCds
    Left = 600
    Top = 256
  end
  object VendorSds: TSQLDataSet
    CommandText = 'exec p_Insurance null, null, 0, 3, 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MisDataModule.SQLConnection
    Left = 504
    Top = 288
  end
  object VendorDsp: TDataSetProvider
    DataSet = VendorSds
    Left = 536
    Top = 288
  end
  object VendorCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VendorDsp'
    Left = 568
    Top = 288
    object VendorCdsSuplNo: TStringField
      FieldName = 'SuplNo'
    end
    object VendorCdsSuplName: TStringField
      FieldName = 'SuplName'
      Size = 100
    end
    object VendorCdsInsType: TStringField
      FieldName = 'InsType'
    end
    object VendorCdsAddress: TStringField
      FieldName = 'Address'
      Size = 100
    end
    object VendorCdsEnterpriseType: TStringField
      FieldName = 'EnterpriseType'
      Size = 10
    end
    object VendorCdsTinNo: TStringField
      FieldName = 'TinNo'
      Size = 100
    end
    object VendorCdsCstNo: TStringField
      FieldName = 'CstNo'
      Size = 100
    end
    object VendorCdsPanNo: TStringField
      FieldName = 'PanNo'
      Size = 100
    end
    object VendorCdsServTaxNo: TStringField
      FieldName = 'ServTaxNo'
      Size = 100
    end
    object VendorCdsExciseRegNo: TStringField
      FieldName = 'ExciseRegNo'
      Size = 100
    end
  end
  object VendorDs: TDataSource
    DataSet = VendorCds
    Left = 600
    Top = 288
  end
  object CustomerSds: TSQLDataSet
    CommandText = 'exec p_Insurance null, null, 0, 4, 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MisDataModule.SQLConnection
    Left = 504
    Top = 320
  end
  object CustomerDsp: TDataSetProvider
    DataSet = CustomerSds
    Left = 536
    Top = 320
  end
  object CustomerCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CustomerDsp'
    Left = 568
    Top = 320
    object CustomerCdsCustCode: TStringField
      FieldName = 'CustCode'
    end
    object CustomerCdsClientName: TStringField
      FieldName = 'ClientName'
      Size = 255
    end
    object CustomerCdsInvToLocName: TStringField
      FieldName = 'InvToLocName'
      Size = 255
    end
    object CustomerCdsInsTerm: TStringField
      FieldName = 'InsTerm'
      Size = 50
    end
  end
  object CustomerDs: TDataSource
    DataSet = CustomerCds
    Left = 600
    Top = 320
  end
end
