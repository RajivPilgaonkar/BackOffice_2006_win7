object MasterDepDatesForm: TMasterDepDatesForm
  Left = 175
  Top = 106
  Width = 958
  Height = 638
  Caption = 'MasterDepDatesForm'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 167
    Align = alTop
    Color = 16445154
    TabOrder = 0
    object cxRadioGroup: TcxRadioGroup
      Left = 6
      Top = -1
      Caption = 'Filter By'
      Properties.Items = <
        item
          Caption = 'Group / FIT'
          Value = True
        end
        item
          Caption = 'Tailor Made'
          Value = False
        end>
      Properties.OnChange = cxRadioGroupPropertiesChange
      Properties.OnEditValueChanged = cxRadioGroupPropertiesEditValueChanged
      ItemIndex = 0
      TabOrder = 0
      OnClick = cxRadioGroupClick
      Height = 50
      Width = 291
    end
    object cxActiveCheckBox: TcxCheckBox
      Left = 158
      Top = 19
      Caption = 'Only Active Tours'
      Properties.OnChange = cxActiveCheckBoxPropertiesChange
      State = cbsChecked
      TabOrder = 1
      Width = 131
    end
    object MonthCalendar1: TMonthCalendar
      Left = 359
      Top = 8
      Width = 204
      Height = 153
      Date = 38606.627869409720000000
      TabOrder = 2
    end
    object SelectTourGB: TcxGroupBox
      Left = 7
      Top = 54
      Caption = 'Select Tours'
      TabOrder = 3
      Height = 65
      Width = 210
      object MasterCodeDBLcmb: TDBLookupComboBox
        Left = 16
        Top = 24
        Width = 145
        Height = 21
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        KeyField = 'masters_id'
        ListField = 'mastercode'
        ListSource = MasterCodeDS
        TabOrder = 0
      end
      object TourCodeDBLcmb: TDBLookupComboBox
        Left = 16
        Top = 32
        Width = 145
        Height = 21
        BevelEdges = []
        BevelInner = bvNone
        BevelOuter = bvNone
        KeyField = 'tourcodes_id'
        ListField = 'tourcode'
        ListSource = TourCodeDS
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 564
    Width = 942
    Height = 36
    Align = alBottom
    Color = 15451300
    TabOrder = 1
    object cxButton4: TcxButton
      Left = 856
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButton4Click
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
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 167
    Width = 942
    Height = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = Panel1
  end
  object ToursPC: TcxPageControl
    Left = 0
    Top = 171
    Width = 942
    Height = 393
    ActivePage = MasterTabSheet
    Align = alClient
    TabOrder = 3
    OnChange = ToursPCChange
    ClientRectBottom = 387
    ClientRectLeft = 3
    ClientRectRight = 936
    ClientRectTop = 26
    object MasterTabSheet: TcxTabSheet
      Caption = 'Masters'
      ImageIndex = 0
      object CustomMasterCxGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 933
        Height = 361
        Align = alClient
        TabOrder = 0
        object CustomMasterCxGridDBTableView1: TcxGridDBTableView
          OnDblClick = CustomMasterCxGridDBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MasterDepDatesDS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object CustomMasterCxGridDBTableView1tourdate: TcxGridDBColumn
            Caption = 'Start Date'
            DataBinding.FieldName = 'tourdate'
            SortIndex = 0
            SortOrder = soAscending
            Width = 134
          end
          object CustomMasterCxGridDBTableView1tourno: TcxGridDBColumn
            Caption = 'Master Reference'
            DataBinding.FieldName = 'tourno'
            Width = 128
          end
        end
        object CustomMasterCxGridLevel1: TcxGridLevel
          GridView = CustomMasterCxGridDBTableView1
        end
      end
    end
    object TourTabSheet: TcxTabSheet
      Caption = 'Tours'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 941
        Height = 363
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TourDepDatesDS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBTableView1tourdate: TcxGridDBColumn
            Caption = 'Start Date'
            DataBinding.FieldName = 'tourdate'
            SortIndex = 0
            SortOrder = soAscending
            Width = 153
          end
          object cxGridDBTableView1returndate: TcxGridDBColumn
            Caption = 'End Date'
            DataBinding.FieldName = 'returndate'
            Width = 154
          end
          object cxGridDBTableView1tourref: TcxGridDBColumn
            Caption = 'Tour Reference'
            DataBinding.FieldName = 'tourref'
            Width = 117
          end
          object cxGridDBTableView1price: TcxGridDBColumn
            Caption = 'Price'
            DataBinding.FieldName = 'price'
          end
          object cxGridDBTableView1singlesupplement: TcxGridDBColumn
            Caption = 'Single Supp'
            DataBinding.FieldName = 'singlesupplement'
            Width = 145
          end
          object cxGridDBTableView1fair: TcxGridDBColumn
            Caption = 'Fair'
            DataBinding.FieldName = 'fair'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 78
          end
          object cxGridDBTableView1LocalPayment: TcxGridDBColumn
            Caption = 'Local Payment'
            DataBinding.FieldName = 'LocalPayment'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object MasterDepDatesSds: TSQLDataSet
    CommandText = 'masterdeparturedates'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Value = 452
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 280
    Top = 16
  end
  object MasterDepDatesDsp: TDataSetProvider
    DataSet = MasterDepDatesSds
    Left = 296
    Top = 16
  end
  object MasterDepDatesDS: TDataSource
    DataSet = MasterDepDatesCds
    Left = 312
    Top = 16
  end
  object MasterDepDatesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'masters_id;tourdate'
    MasterFields = 'masters_id'
    MasterSource = MasterCodeDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'MasterDepDatesDsp'
    BeforeInsert = MasterDepDatesCdsBeforeInsert
    AfterInsert = MasterDepDatesCdsAfterInsert
    BeforeEdit = MasterDepDatesCdsBeforeEdit
    BeforePost = MasterDepDatesCdsBeforePost
    AfterPost = MasterDepDatesCdsAfterPost
    BeforeDelete = MasterDepDatesCdsBeforeDelete
    AfterDelete = MasterDepDatesCdsAfterDelete
    Left = 328
    Top = 16
    object MasterDepDatesCdsmasterdeparturedates_id: TIntegerField
      FieldName = 'masterdeparturedates_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterDepDatesCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterDepDatesCdsreturndate: TSQLTimeStampField
      FieldName = 'returndate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterDepDatesCdstourno: TIntegerField
      FieldName = 'tourno'
    end
    object MasterDepDatesCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterDepDatesCdslocalpayment: TFMTBCDField
      FieldName = 'localpayment'
      Precision = 15
      Size = 2
    end
  end
  object TourDepDatesSds: TSQLDataSet
    CommandText = 'tourdeparturedates'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'tourcodes_id'
        ParamType = ptInput
        Value = 428
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 280
    Top = 48
  end
  object TourDepDatesDsp: TDataSetProvider
    DataSet = TourDepDatesSds
    Left = 296
    Top = 48
  end
  object TourDepDatesDS: TDataSource
    DataSet = TourDepDatesCds
    Left = 312
    Top = 48
  end
  object TourDepDatesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'tourcodes_id;tourdate'
    MasterFields = 'tourcodes_id'
    MasterSource = TourCodeDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourDepDatesDsp'
    BeforeInsert = TourDepDatesCdsBeforeInsert
    AfterInsert = TourDepDatesCdsAfterInsert
    BeforeEdit = TourDepDatesCdsBeforeEdit
    BeforePost = TourDepDatesCdsBeforePost
    AfterPost = TourDepDatesCdsAfterPost
    BeforeDelete = TourDepDatesCdsBeforeDelete
    AfterDelete = TourDepDatesCdsAfterDelete
    Left = 328
    Top = 48
    object TourDepDatesCdstourdeparturedates_id: TIntegerField
      FieldName = 'tourdeparturedates_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TourDepDatesCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      OnChange = TourDepDatesCdstourdateChange
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TourDepDatesCdsreturndate: TSQLTimeStampField
      FieldName = 'returndate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TourDepDatesCdstourref: TIntegerField
      FieldName = 'tourref'
    end
    object TourDepDatesCdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
    object TourDepDatesCdsprice: TBCDField
      FieldName = 'price'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object TourDepDatesCdssinglesupplement: TBCDField
      FieldName = 'singlesupplement'
      Precision = 10
      Size = 2
    end
    object TourDepDatesCdsfair: TBooleanField
      FieldName = 'fair'
    end
    object TourDepDatesCdsLocalPayment: TFMTBCDField
      FieldName = 'LocalPayment'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
  end
  object MasterCodeSds: TSQLDataSet
    CommandText = 'select masters_id, mastercode from masters order by mastercode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 280
    Top = 80
  end
  object MasterCodeDsp: TDataSetProvider
    DataSet = MasterCodeSds
    Left = 296
    Top = 80
  end
  object MasterCodeDS: TDataSource
    DataSet = MasterCodeCds
    Left = 312
    Top = 80
  end
  object MasterCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterCodeDsp'
    Left = 328
    Top = 80
    object MasterCodeCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCodeCdsmastercode: TStringField
      FieldName = 'mastercode'
      Size = 50
    end
  end
  object TourCodeSds: TSQLDataSet
    CommandText = 'select tourcodes_id, tourcode from tourcodes order by tourcode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 280
    Top = 112
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 296
    Top = 112
  end
  object TourCodeDS: TDataSource
    DataSet = TourCodeCds
    Left = 312
    Top = 112
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 328
    Top = 112
    object TourCodeCdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
    object TourCodeCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
  end
end
