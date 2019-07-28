object ProdMISForm: TProdMISForm
  Left = 32
  Top = 35
  Width = 937
  Height = 693
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 41
    Align = alTop
    Color = 14740719
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 118
      Height = 13
      Caption = 'Production between '
    end
    object Label2: TLabel
      Left = 279
      Top = 8
      Width = 22
      Height = 13
      Caption = 'and'
    end
    object FromDateEdit: TMaskEdit
      Left = 149
      Top = 8
      Width = 121
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object ToDateEdit: TMaskEdit
      Left = 316
      Top = 8
      Width = 121
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object cxDisplayButton: TcxButton
      Left = 456
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Display'
      TabOrder = 2
      OnClick = cxDisplayButtonClick
    end
    object cxButton1: TcxButton
      Left = 552
      Top = 8
      Width = 41
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cxButton1Click
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
    object cxButton2: TcxButton
      Left = 600
      Top = 8
      Width = 41
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cxButton2Click
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 627
    Width = 929
    Height = 39
    Align = alBottom
    TabOrder = 1
    object cxButton8: TcxButton
      Left = 840
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButton8Click
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
    object cxButton3: TcxButton
      Left = 24
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
    Top = 41
    Width = 929
    Height = 36
    Align = alTop
    Color = 14740719
    TabOrder = 2
    object MachineCategoryLabel: TLabel
      Left = 40
      Top = 9
      Width = 81
      Height = 13
      Caption = 'Machine Type'
    end
    object Label3: TLabel
      Left = 456
      Top = 9
      Width = 114
      Height = 13
      Caption = 'Pre-defined Reports'
    end
    object cxMachineTypeCkb: TcxCheckBox
      Left = 16
      Top = 6
      TabOrder = 0
      Width = 25
    end
    object cxMachineTypeLCMB: TcxLookupComboBox
      Left = 148
      Top = 7
      Properties.KeyFieldNames = 'MachineTypes_id'
      Properties.ListColumns = <
        item
          FieldName = 'MachineType'
        end>
      Properties.ListSource = ApexDataModule.MachineTypeDS
      TabOrder = 1
      OnKeyPress = cxMachineTypeLCMBKeyPress
      Width = 290
    end
    object cxReportsCMB: TcxComboBox
      Left = 584
      Top = 8
      Properties.Items.Strings = (
        '1 - Daily Production Details - All'
        '2 - Daily Production Details - Production'
        '3 - Daily Production Details - Wastage'
        '4 - Daily Production Details - Adhesive'
        '5 - Daily Production Details - Time Loss'
        '6 - Production Summary - All'
        '7 - Production Summary - Production'
        '8 - Production Summary - Wastage'
        '9 - Production Summary - Adhesive'
        '10 - Production Summary - Time Loss'
        '21 - Wastage Cost Details '
        '22 - Wastage Cost Summary ')
      TabOrder = 2
      Width = 273
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 77
    Align = alTop
    TabOrder = 3
    Height = 148
    Width = 929
    object cxGrid1: TcxGrid
      Left = 361
      Top = 16
      Width = 566
      Height = 130
      Align = alClient
      TabOrder = 0
      object cxJobGridTableView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = BatchDS
        DataController.KeyFieldNames = 'Batches_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = ApexDataModule.cxStyleBackGround
        Styles.ContentEven = ApexDataModule.cxStyleEven
        Styles.ContentOdd = ApexDataModule.cxStyleOdd
        Styles.Header = ApexDataModule.cxStyleHeader
        object cxJobGridTableViewBatch_id: TcxGridDBColumn
          DataBinding.FieldName = 'Batches_id'
          Visible = False
        end
        object cxJobGridTableViewJobNo: TcxGridDBColumn
          Caption = 'Job No'
          DataBinding.FieldName = 'JobNo'
          Options.Filtering = False
          Options.Grouping = False
          Width = 83
        end
        object cxJobGridTableViewsubstrate: TcxGridDBColumn
          Caption = 'Substrate'
          DataBinding.FieldName = 'substrate'
          Options.Filtering = False
          Options.Grouping = False
          Width = 100
        end
        object cxJobGridTableViewJobSubstrate: TcxGridDBColumn
          Caption = 'Job Substrate'
          DataBinding.FieldName = 'JobSubstrate'
          Options.Filtering = False
          Options.Grouping = False
          Width = 297
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxJobGridTableView
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 16
      Width = 359
      Height = 130
      Align = alLeft
      TabOrder = 1
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 1
        Align = alClient
        Caption = 'Job Filter'
        ParentColor = False
        Style.Color = 14740719
        Style.Shadow = True
        TabOrder = 0
        Height = 128
        Width = 357
        object cxJobNoCkb: TcxCheckBox
          Left = 8
          Top = 24
          Caption = 'Job No'
          TabOrder = 0
          Width = 121
        end
        object cxJobNoEdit: TcxTextEdit
          Left = 136
          Top = 24
          TabOrder = 1
          Width = 89
        end
        object cxActiveCkb: TcxCheckBox
          Left = 8
          Top = 41
          Caption = 'Active Jobs Only'
          State = cbsChecked
          TabOrder = 2
          Width = 121
        end
        object cxDescCkb: TcxCheckBox
          Left = 8
          Top = 58
          Caption = 'Description'
          TabOrder = 3
          Width = 121
        end
        object cxDescEdit: TcxTextEdit
          Left = 136
          Top = 58
          TabOrder = 4
          Width = 209
        end
        object cxSubstrateCkb: TcxCheckBox
          Left = 8
          Top = 80
          Caption = 'Subtrate'
          TabOrder = 5
          Width = 121
        end
        object cxFilterJobButton: TcxButton
          Left = 138
          Top = 102
          Width = 121
          Height = 19
          Caption = 'Filter Jobs'
          TabOrder = 6
          OnClick = cxFilterJobButtonClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
            FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
            990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
            990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
            FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
            00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
            00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
            00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
            03FF33337FFF77777333333300000333333F3333777773333333}
          NumGlyphs = 2
        end
        object cxSubstrateLCMB: TcxLookupComboBox
          Left = 136
          Top = 80
          Properties.KeyFieldNames = 'substrate'
          Properties.ListColumns = <
            item
              FieldName = 'substrate'
            end>
          Properties.ListSource = SubstrateDS
          TabOrder = 7
          Width = 209
        end
        object cxFilterJobCkb: TcxCheckBox
          Left = 8
          Top = 9
          Caption = 'Filter on Jobs'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 121
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 225
    Width = 929
    Height = 402
    Align = alClient
    TabOrder = 4
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 927
      Height = 400
      ActivePage = cxSummaryTab
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 400
      ClientRectRight = 927
      ClientRectTop = 24
      object cxSummaryTab: TcxTabSheet
        Caption = 'Summary'
        ImageIndex = 0
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 927
          Height = 376
          Align = alClient
          DataSource = SummaryDS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Groups = <>
          ParentFont = False
          Styles.ColumnHeader = ApexDataModule.cxStyleHeader
          Styles.ColumnHeaderArea = ApexDataModule.cxStyleEven
          Styles.Content = ApexDataModule.cxStyleBackGround
          Styles.FilterHeaderArea = ApexDataModule.cxStyleGreen
          Styles.RowHeader = ApexDataModule.cxStyleOdd
          Styles.RowHeaderArea = ApexDataModule.cxStyleHeader
          TabOrder = 0
          TabStop = True
          object cxDBPivotGrid1MachineType: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'MachineType'
            Visible = True
            Width = 91
          end
          object cxDBPivotGrid1Machine: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'Machine'
            Visible = True
            Width = 59
          end
          object cxDBPivotGrid1JobSubstrate: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'JobSubstrate'
            Visible = True
            Width = 99
          end
          object cxDBPivotGrid1JobNo: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 3
            DataBinding.FieldName = 'JobNo'
            Visible = True
            Width = 50
          end
          object cxDBPivotGrid1Substrate: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 4
            DataBinding.FieldName = 'Substrate'
            Visible = True
            Width = 52
          end
          object cxDBPivotGrid1Reels: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.FieldName = 'Reels'
            DisplayFormat = '#,##0'
            Visible = True
            Width = 43
            OnCalculateCustomSummary = cxDBPivotGrid1ReelsCalculateCustomSummary
          end
          object cxDBPivotGrid1Length: TcxDBPivotGridField
            Area = faData
            AreaIndex = 2
            DataBinding.ValueType = 'Float'
            DataBinding.FieldName = 'Length'
            DisplayFormat = '#,##0'
            Visible = True
            Width = 48
          end
          object cxDBPivotGrid1Qty: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.ValueType = 'Float'
            DataBinding.FieldName = 'Qty'
            DisplayFormat = '#,##0'
            Visible = True
            Width = 37
          end
          object cxDBPivotGrid1GroupType: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Group'
            DataBinding.FieldName = 'GroupType'
            Visible = True
          end
          object cxDBPivotGrid1SubGroupType: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = 'SubGroup'
            DataBinding.FieldName = 'SubGroupType'
            Visible = True
          end
          object cxDBPivotGrid1Title: TcxDBPivotGridField
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'cxDBPivotGrid1Title'
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Visible = True
          end
          object cxDBPivotGrid1WastageAmt: TcxDBPivotGridField
            Area = faData
            AreaIndex = 3
            AllowedAreas = [faFilter, faData]
            IsCaptionAssigned = True
            Caption = 'Amount'
            DataBinding.FieldName = 'WastageAmt'
            Options.Filtering = False
            Visible = True
            Width = 47
          end
          object cxDBPivotGrid1ProdType: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 5
            IsCaptionAssigned = True
            Caption = 'Type'
            DataBinding.FieldName = 'ProdType'
            Visible = True
            Width = 50
          end
        end
      end
      object cxDetailTab: TcxTabSheet
        Caption = 'Details'
        ImageIndex = 1
        object cxDBPivotGrid2: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 927
          Height = 376
          Align = alClient
          DataSource = Detail1DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Groups = <>
          ParentFont = False
          Styles.ColumnHeader = ApexDataModule.cxStyleHeader
          Styles.ColumnHeaderArea = ApexDataModule.cxStyleEven
          Styles.Content = ApexDataModule.cxStyleBackGround
          Styles.FilterHeaderArea = ApexDataModule.cxStyleGreen
          Styles.RowHeader = ApexDataModule.cxStyleOdd
          Styles.RowHeaderArea = ApexDataModule.cxStyleHeader
          TabOrder = 0
          TabStop = True
          object cxDBPivotGrid2ProdDate: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 5
            IsCaptionAssigned = True
            Caption = 'Prod Date'
            DataBinding.FieldName = 'ProdDate'
            Visible = True
            Width = 98
          end
          object cxDBPivotGrid2Shift: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 6
            DataBinding.FieldName = 'Shift'
            Visible = True
            Width = 33
          end
          object cxDBPivotGrid2MachineType: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'M/C Type'
            DataBinding.FieldName = 'MachineType'
            Visible = True
            Width = 68
          end
          object cxDBPivotGrid2Machine: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'Machine'
            Visible = True
            Width = 49
          end
          object cxDBPivotGrid2JobSubstrate: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            IsCaptionAssigned = True
            Caption = 'Job Substrate'
            DataBinding.FieldName = 'JobSubstrate'
            Visible = True
          end
          object cxDBPivotGrid2JobNo: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 4
            IsCaptionAssigned = True
            Caption = 'Job No'
            DataBinding.FieldName = 'JobNo'
            Visible = True
            Width = 51
          end
          object cxDBPivotGrid2Substrate: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 3
            DataBinding.FieldName = 'Substrate'
            Visible = True
            Width = 62
          end
          object cxDBPivotGrid2Reels: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'Reels'
            Visible = True
            Width = 38
          end
          object cxDBPivotGrid2Length: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.ValueType = 'Float'
            DataBinding.FieldName = 'Length'
            Visible = True
            Width = 43
          end
          object cxDBPivotGrid2Qty: TcxDBPivotGridField
            Area = faData
            AreaIndex = 2
            DataBinding.ValueType = 'Float'
            DataBinding.FieldName = 'Qty'
            Visible = True
            Width = 35
          end
          object cxDBPivotGrid2GroupType: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Group'
            DataBinding.FieldName = 'GroupType'
            Visible = True
          end
          object cxDBPivotGrid2SubGroupType: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = 'Sub Group'
            DataBinding.FieldName = 'SubGroupType'
            Visible = True
          end
          object cxDBPivotGrid2Title: TcxDBPivotGridField
            AreaIndex = 0
            AllowedAreas = [faFilter]
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Visible = True
          end
          object cxDBPivotGrid2WastageAmt: TcxDBPivotGridField
            Area = faData
            AreaIndex = 3
            AllowedAreas = [faFilter, faData]
            IsCaptionAssigned = True
            Caption = 'Amount'
            DataBinding.FieldName = 'WastageAmt'
            Options.Filtering = False
            Visible = True
            Width = 39
          end
          object cxDBPivotGrid2ProdType: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 7
            IsCaptionAssigned = True
            Caption = 'Type'
            DataBinding.FieldName = 'ProdType'
            Visible = True
            Width = 50
          end
        end
      end
    end
  end
  object SubstrateSds: TSQLDataSet
    CommandText = 
      'select substrates_id, substrate FROM Substrates'#13#10'order by substr' +
      'ate'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ApexDataModule.SQLConnection
    Left = 35
    Top = 185
  end
  object SubsrtateDsp: TDataSetProvider
    DataSet = SubstrateSds
    Left = 59
    Top = 185
  end
  object SubstrateCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SubsrtateDsp'
    Left = 75
    Top = 185
    object SubstrateCdssubstrate: TStringField
      FieldName = 'substrate'
      Size = 50
    end
    object SubstrateCdssubstrates_id: TIntegerField
      FieldName = 'substrates_id'
    end
  end
  object SubstrateDS: TDataSource
    DataSet = SubstrateCds
    Left = 91
    Top = 185
  end
  object BatchSds: TSQLDataSet
    CommandText = 
      'select b.Batches_id, b.BatchCode as JobNo, s.substrate, js.JobSu' +
      'bstrate '#13#10'from batches b left join JobSubstrates js on b.JobSubs' +
      'trates_id = js.JobSubstrates_id'#13#10'LEFT JOIN Substrates s ON js.Su' +
      'bstrates_id = s.Substrates_id'#13#10'order by JobNo'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ApexDataModule.SQLConnection
    Left = 419
    Top = 185
  end
  object BatchDsp: TDataSetProvider
    DataSet = BatchSds
    Left = 443
    Top = 185
  end
  object BatchCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BatchDsp'
    Left = 459
    Top = 185
    object BatchCdsJobNo: TStringField
      FieldName = 'JobNo'
    end
    object BatchCdssubstrate: TStringField
      FieldName = 'substrate'
      Size = 50
    end
    object BatchCdsJobSubstrate: TStringField
      FieldName = 'JobSubstrate'
      Size = 254
    end
    object BatchCdsBatches_id: TIntegerField
      FieldName = 'Batches_id'
    end
  end
  object BatchDS: TDataSource
    DataSet = BatchCds
    Left = 475
    Top = 185
  end
  object Detail1Sds: TSQLDataSet
    CommandText = 'EXEC p_ProductionDetails '#39'04/01/2006'#39', '#39'08/26/2006'#39', 0, '#39#39', 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ApexDataModule.SQLConnection
    Left = 347
    Top = 361
  end
  object Detail1Dsp: TDataSetProvider
    DataSet = Detail1Sds
    Left = 371
    Top = 361
  end
  object Detail1Cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Detail1Dsp'
    Left = 387
    Top = 361
    object Detail1CdsP_id: TIntegerField
      FieldName = 'P_id'
    end
    object Detail1CdsProdDate: TSQLTimeStampField
      FieldName = 'ProdDate'
    end
    object Detail1CdsShift: TStringField
      FieldName = 'Shift'
      Size = 10
    end
    object Detail1CdsMachineType: TStringField
      FieldName = 'MachineType'
      Size = 100
    end
    object Detail1CdsMachine: TStringField
      FieldName = 'Machine'
      Size = 100
    end
    object Detail1CdsJobSubstrate: TStringField
      FieldName = 'JobSubstrate'
      Size = 254
    end
    object Detail1CdsJobNo: TStringField
      FieldName = 'JobNo'
    end
    object Detail1CdsSubstrate: TStringField
      FieldName = 'Substrate'
      Size = 50
    end
    object Detail1CdsReels: TIntegerField
      FieldName = 'Reels'
    end
    object Detail1CdsGroupType: TStringField
      FieldName = 'GroupType'
      Size = 10
    end
    object Detail1CdsSubGroupType: TStringField
      FieldName = 'SubGroupType'
      Size = 100
    end
    object Detail1CdsMachineTypes_id: TIntegerField
      FieldName = 'MachineTypes_id'
    end
    object Detail1CdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object Detail1CdsSubOrderNo: TIntegerField
      FieldName = 'SubOrderNo'
    end
    object Detail1CdsWastageAmt: TFMTBCDField
      FieldName = 'WastageAmt'
      Precision = 18
      Size = 4
    end
    object Detail1CdsProdType: TStringField
      FieldName = 'ProdType'
      Size = 10
    end
    object Detail1CdsLength: TFloatField
      FieldName = 'Length'
    end
    object Detail1CdsQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 403
    Top = 361
  end
  object PopupMenu1: TPopupMenu
    Left = 49
    Top = 522
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object SummarySds: TSQLDataSet
    CommandText = 'EXEC p_ProductionDetails '#39'04/01/2004'#39', '#39'08/26/2006'#39', 0, '#39#39', 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ApexDataModule.SQLConnection
    Left = 355
    Top = 473
  end
  object SummaryDsp: TDataSetProvider
    DataSet = SummarySds
    Left = 379
    Top = 473
  end
  object SummaryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SummaryDsp'
    Left = 395
    Top = 473
    object SummaryCdsMachineType: TStringField
      FieldName = 'MachineType'
      Size = 100
    end
    object SummaryCdsMachine: TStringField
      FieldName = 'Machine'
      Size = 100
    end
    object SummaryCdsJobSubstrate: TStringField
      FieldName = 'JobSubstrate'
      Size = 254
    end
    object SummaryCdsJobNo: TStringField
      FieldName = 'JobNo'
    end
    object SummaryCdsSubstrate: TStringField
      FieldName = 'Substrate'
      Size = 50
    end
    object SummaryCdsReels: TIntegerField
      FieldName = 'Reels'
    end
    object SummaryCdsGroupType: TStringField
      FieldName = 'GroupType'
      Size = 10
    end
    object SummaryCdsSubGroupType: TStringField
      FieldName = 'SubGroupType'
      Size = 100
    end
    object SummaryCdsWastageAmt: TFMTBCDField
      FieldName = 'WastageAmt'
      Precision = 32
      Size = 4
    end
    object SummaryCdsProdType: TStringField
      FieldName = 'ProdType'
      Size = 10
    end
    object SummaryCdsLength: TFloatField
      FieldName = 'Length'
    end
    object SummaryCdsQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object SummaryDS: TDataSource
    DataSet = SummaryCds
    Left = 411
    Top = 473
  end
  object SaveDialog: TSaveDialog
    Left = 233
    Top = 474
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink2
    Version = 0
    Left = 299
    Top = 526
    object dxComponentPrinterLink1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
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
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 38972.592894050920000000
      ShrinkToPageWidth = True
      OptionsFormatting.SuppressBackgroundBitmaps = True
      OptionsFormatting.UseNativeStyles = True
      OptionsFormatting.SuppressContentColoration = True
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      BuiltInReportLink = True
    end
    object dxComponentPrinterLink2: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid2
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
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 38972.592894050920000000
      ShrinkToPageWidth = True
      OptionsFormatting.SuppressBackgroundBitmaps = True
      OptionsFormatting.UseNativeStyles = True
      OptionsFormatting.SuppressContentColoration = True
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      BuiltInReportLink = True
    end
  end
end
