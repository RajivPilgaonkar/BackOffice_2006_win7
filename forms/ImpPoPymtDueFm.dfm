object ImpPoPymtDueForm: TImpPoPymtDueForm
  Left = 43
  Top = 84
  Width = 943
  Height = 622
  Caption = 'Pymts Due'
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
      Left = 312
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
      Width = 193
      object Label1: TLabel
        Left = 7
        Top = 15
        Width = 32
        Height = 13
        Caption = 'As Of'
      end
      object cxToDateEdit: TcxDateEdit
        Left = 63
        Top = 11
        Style.Color = 16777192
        TabOrder = 0
        Width = 121
      end
    end
    object cxButton4: TcxButton
      Left = 213
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
      Left = 261
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
      ItemIndex = 0
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
      TabOrder = 4
      Height = 32
      Width = 185
    end
    object cxDivCheckBox: TcxCheckBox
      Left = 795
      Top = 16
      Caption = 'All Units'
      State = cbsChecked
      TabOrder = 5
      Width = 97
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 555
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
    Height = 510
    ActivePage = TabSheetImpPoPymtDue
    Align = alClient
    TabOrder = 2
    object TabSheetImpPoPymtDue: TTabSheet
      Caption = 'Payments Due'
      object cxGridImpPo: TcxGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 482
        Align = alClient
        TabOrder = 0
        object cxGridImpPoDBTableView1: TcxGridDBTableView
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
        object cxGridImpPoDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ImpPoDs
          DataController.KeyFieldNames = 'ImpPoPymtSch_id'
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
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '#,##0.00'
              Kind = skSum
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
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.BandHeaders = False
          Styles.Background = MisDataModule.cxStyleBackGround
          Styles.ContentEven = MisDataModule.cxStyleEven
          Styles.ContentOdd = MisDataModule.cxStyleOdd
          Styles.OnGetContentStyle = cxGridImpPoDBBandedTableView1StylesGetContentStyle
          Styles.Header = MisDataModule.cxStyleHeader
          Bands = <
            item
              Width = 891
            end>
          object cxGridImpPoDBBandedTableView1ImpPoPymtSch_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ImpPoPymtSch_id'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1Division: TcxGridDBBandedColumn
            Caption = 'Div'
            DataBinding.FieldName = 'Division'
            Options.Editing = False
            Options.Grouping = False
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1PoNo: TcxGridDBBandedColumn
            Caption = 'Po No'
            DataBinding.FieldName = 'PoNo'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1PoDate: TcxGridDBBandedColumn
            Caption = 'Po Date'
            DataBinding.FieldName = 'PoDate'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 87
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1Account: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Account'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 1
            SortOrder = soAscending
            Width = 229
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1DueDate: TcxGridDBBandedColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DueDate'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1Amt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Amt'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 101
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1Currency: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Currency'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 229
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridImpPoDBBandedTableView1DueType: TcxGridDBBandedColumn
            Caption = 'Due'
            DataBinding.FieldName = 'DueType'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object cxGridImpPoLevel1: TcxGridLevel
          GridView = cxGridImpPoDBBandedTableView1
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 520
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExpansAll1: TMenuItem
      Caption = 'Expand All'
      OnClick = ExpansAll1Click
    end
    object CollapseAll1: TMenuItem
      Caption = 'Collapse All'
      OnClick = CollapseAll1Click
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
      Component = cxGridImpPo
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
      ReportDocument.CreationDate = 39564.595840740740000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object ImpPoSds: TSQLDataSet
    CommandText = 
      'select ip.ImpPoPymtSch_id, i.Division, i.PoNo, i.PoDate, i.Curre' +
      'ncy, a.Account, '#13#10'  ip.DueDate, ip.Amt, ip.Remarks,'#13#10'CASE WHEN G' +
      'etDate() >= ip.DueDate THEN '#39'OverDue'#39' ELSE '#39'Due'#39' END AS DueType ' +
      #13#10'FROM ImpPos i '#13#10'     INNER JOIN ImpPoPymtSch ip ON i.ImpPos_id' +
      ' = ip.ImpPos_id'#13#10'     LEFT JOIN Accounts a ON i.Accounts_id = a.' +
      'Accounts_id'#13#10'WHERE ip.DueDate <= '#39'04/01/2008'#39#13#10'AND ((ip.VoucherN' +
      'o IS NULL) AND (ip.ForceClose = 0))'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MisDataModule.SQLConnection
    Left = 504
    Top = 224
  end
  object ImpPoDsp: TDataSetProvider
    DataSet = ImpPoSds
    Left = 536
    Top = 224
  end
  object ImpPoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ImpPoDsp'
    Left = 568
    Top = 224
    object ImpPoCdsImpPoPymtSch_id: TIntegerField
      FieldName = 'ImpPoPymtSch_id'
    end
    object ImpPoCdsDivision: TStringField
      FieldName = 'Division'
      Size = 2
    end
    object ImpPoCdsPoNo: TStringField
      FieldName = 'PoNo'
    end
    object ImpPoCdsPoDate: TSQLTimeStampField
      FieldName = 'PoDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ImpPoCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 30
    end
    object ImpPoCdsAccount: TStringField
      FieldName = 'Account'
      Size = 100
    end
    object ImpPoCdsDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ImpPoCdsAmt: TFMTBCDField
      FieldName = 'Amt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ImpPoCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 100
    end
    object ImpPoCdsDueType: TStringField
      FieldName = 'DueType'
      Size = 7
    end
  end
  object ImpPoDs: TDataSource
    DataSet = ImpPoCds
    Left = 600
    Top = 224
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 648
    Top = 24
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13828073
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
  end
end
