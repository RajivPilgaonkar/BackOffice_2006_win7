inherited CostingsForm: TCostingsForm
  Left = 197
  Top = 43
  Width = 812
  Height = 547
  Caption = 'CostingsForm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 804
    Height = 32
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Top = 472
    Width = 804
    object KeyIdDbText: TDBText
      Left = 661
      Top = 13
      Width = 32
      Height = 17
      DataField = 'costingblocks_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 720
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Close'
      TabOrder = 0
      OnClick = cxButton1Click
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
    object cxUtilityButton: TcxButton
      Left = 12
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = UtilityPopup
      Kind = cxbkDropDown
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 32
    Width = 804
    Height = 440
    Align = alClient
    Color = 15451300
    TabOrder = 0
    object GroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Caption = ' Select Tour and Date '
      TabOrder = 0
      Height = 105
      Width = 334
      object Label1: TcxLabel
        Left = 15
        Top = 32
        Caption = 'Select Tour'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 15
        Top = 72
        Caption = 'With Effect From'
        Transparent = True
      end
      object MasterTourLcmb: TcxLookupComboBox
        Left = 119
        Top = 28
        Properties.ClearKey = 46
        Properties.KeyFieldNames = 'Masters_id'
        Properties.ListColumns = <
          item
            FieldName = 'Mastercode'
          end>
        Properties.ListSource = MasterTourDs
        Properties.OnEditValueChanged = MasterTourLcmbPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 0
        OnKeyPress = MasterTourLcmbKeyPress
        Width = 122
      end
      object WEFdate: TcxDateEdit
        Left = 119
        Top = 68
        Style.Color = 16247513
        TabOrder = 1
        OnExit = WEFdateExit
        OnKeyPress = WEFdateKeyPress
        Width = 122
      end
      object cxButton2: TcxButton
        Left = 248
        Top = 69
        Width = 75
        Height = 19
        Caption = 'Pick Dates'
        TabOrder = 2
        OnClick = cxButton2Click
      end
    end
    object GroupBox2: TcxGroupBox
      Left = 1
      Top = 165
      Align = alBottom
      Caption = ' Block Costs '
      TabOrder = 3
      Height = 274
      Width = 802
      object BlockCostsGrid: TcxGrid
        Left = 3
        Top = 18
        Width = 796
        Height = 253
        Align = alClient
        TabOrder = 0
        object BlockCostsGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Detail1DS
          DataController.KeyFieldNames = 'costings_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object BlockCostsGridDBTableView1block: TcxGridDBColumn
            Caption = 'Block'
            DataBinding.FieldName = 'block'
            Options.Filtering = False
            Options.Grouping = False
            Width = 200
          end
          object BlockCostsGridDBTableView1wef: TcxGridDBColumn
            Caption = 'With Effect From'
            DataBinding.FieldName = 'wef'
            Options.Grouping = False
            Width = 118
          end
          object BlockCostsGridDBTableView1frompax: TcxGridDBColumn
            Caption = 'From Pax'
            DataBinding.FieldName = 'frompax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 101
          end
          object BlockCostsGridDBTableView1topax: TcxGridDBColumn
            Caption = 'To Pax'
            DataBinding.FieldName = 'topax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 88
          end
          object BlockCostsGridDBTableView1cost: TcxGridDBColumn
            Caption = 'Cost'
            DataBinding.FieldName = 'cost'
            Options.Filtering = False
            Options.Grouping = False
          end
          object BlockCostsGridDBTableView1singlesupplement: TcxGridDBColumn
            Caption = 'Cost Single Supplement'
            DataBinding.FieldName = 'singlesupplement'
            Options.Filtering = False
            Options.Grouping = False
            Width = 172
          end
        end
        object BlockCostsGridLevel1: TcxGridLevel
          GridView = BlockCostsGridDBTableView1
        end
      end
    end
    object GroupBox3: TcxGroupBox
      Left = 336
      Top = 1
      Align = alRight
      Caption = ' Blocks '
      TabOrder = 2
      Height = 164
      Width = 467
      object BlockGrid: TcxGrid
        Left = 3
        Top = 18
        Width = 461
        Height = 143
        Align = alClient
        TabOrder = 0
        object BlockGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MasterDS
          DataController.KeyFieldNames = 'costingblocks_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object BlockGridDBTableView1block: TcxGridDBColumn
            Caption = 'Block'
            DataBinding.FieldName = 'block'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Width = 250
          end
          object BlockGridDBTableView1orderno: TcxGridDBColumn
            Caption = 'Order No.'
            DataBinding.FieldName = 'orderno'
            Options.Filtering = False
            Options.Grouping = False
          end
        end
        object BlockGridLevel1: TcxGridLevel
          GridView = BlockGridDBTableView1
        end
      end
    end
    object RefreshBtn: TcxButton
      Left = 8
      Top = 111
      Width = 113
      Height = 21
      Caption = '&Insert Blocks'
      TabOrder = 1
      OnClick = RefreshBtnClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF008000008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF008000008000008000008000FF
        00FFFF00FF008000008000008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        008000008000008000008000008000008000FF00FF0080000080000080000080
        00FF00FFFF00FFFF00FFFF00FFFF00FF008000008000008000008000FF00FFFF
        00FFFF00FFFF00FF008000008000008000008000FF00FFFF00FFFF00FFFF00FF
        008000008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0080
        00008000FF00FFFF00FFFF00FFFF00FF008000008000FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF008000008000008000FF00FFFF00FFFF00FFFF00FF008000
        008000008000008000FF00FFFF00FFFF00FFFF00FFFF00FF0080000080000080
        00008000FF00FFFF00FFFF00FFFF00FF008000008000FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF008000008000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF008000FF00FF008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF008000008000008000FF
        00FFFF00FFFF00FF008000008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF008000008000008000008000008000FF00FF008000008000008000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00800000800000800000
        8000008000008000008000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF008000008000008000008000008000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'select * from CostingBlocks'#13#10'WHERE Masters_id = :Masters_id'
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
      end>
    Left = 64
    Top = 0
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 0
  end
  inherited MasterDS: TDataSource
    Left = 157
    Top = 0
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'OrderNo'
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 125
    Top = 0
    object MasterCdscostingblocks_id: TIntegerField
      FieldName = 'costingblocks_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsblock: TStringField
      FieldName = 'block'
      Size = 50
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsorderno: TIntegerField
      FieldName = 'orderno'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'select * from Costings'
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 0
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 0
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 429
    Top = 0
  end
  inherited Detail1Cds: TClientDataSet
    Active = True
    AfterInsert = Detail1CdsAfterInsert
    Left = 397
    Top = 0
    object Detail1Cdscostings_id: TIntegerField
      FieldName = 'costings_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsblock: TStringField
      FieldName = 'block'
      Size = 50
    end
    object Detail1Cdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object Detail1Cdstopax: TIntegerField
      FieldName = 'topax'
    end
    object Detail1Cdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object Detail1Cdscost: TBCDField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdssinglesupplement: TBCDField
      FieldName = 'singlesupplement'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object Detail1Cdsorderno: TIntegerField
      FieldName = 'orderno'
    end
  end
  object MasterTourSds: TSQLDataSet
    CommandText = 'SELECT Masters_id, Mastercode FROM Masters'#13#10'ORDER BY Mastercode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 176
    Top = 40
  end
  object MasterTourDsp: TDataSetProvider
    DataSet = MasterTourSds
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 40
  end
  object MasterTourCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterTourDsp'
    Left = 237
    Top = 40
    object MasterTourCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterTourCdsMastercode: TStringField
      FieldName = 'Mastercode'
      Size = 50
    end
  end
  object MasterTourDs: TDataSource
    DataSet = MasterTourCds
    Left = 269
    Top = 40
  end
  object UtilityPopup: TPopupMenu
    Left = 41
    Top = 453
    object CopyFromBlock1: TMenuItem
      Caption = 'Copy To Block'
      OnClick = CopyFromBlock1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CopyAllBlockstoNewDate1: TMenuItem
      Caption = 'Copy All Blocks to New Date'
      OnClick = CopyAllBlockstoNewDate1Click
    end
  end
end
