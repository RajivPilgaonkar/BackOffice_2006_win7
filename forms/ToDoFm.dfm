object ToDoForm: TToDoForm
  Left = 280
  Top = 81
  Width = 928
  Height = 686
  Caption = 'ToDo'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 288
      Top = 10
      Width = 63
      Height = 13
      Caption = 'From Date '
      Transparent = True
    end
    object Label2: TLabel
      Left = 506
      Top = 10
      Width = 47
      Height = 13
      Caption = 'To Date'
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      Visible = False
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDownButton
    end
    object cxButton2: TcxButton
      Left = 701
      Top = 5
      Width = 41
      Height = 25
      Hint = 'Previous Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cxButton2Click
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
    object cxButton3: TcxButton
      Left = 749
      Top = 5
      Width = 41
      Height = 25
      Hint = 'Next Month'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cxButton3Click
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
    object cxButton4: TcxButton
      Left = 824
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Display'
      TabOrder = 3
      OnClick = cxButton4Click
    end
    object FromDateEdit: TcxDateEdit
      Left = 360
      Top = 8
      Properties.OnEditValueChanged = FromDateEditPropertiesEditValueChanged
      TabOrder = 4
      OnExit = FromDateEditEit
      Width = 121
    end
    object ToDateEdit: TcxDateEdit
      Left = 560
      Top = 8
      Properties.OnEditValueChanged = ToDateEditPropertiesEditValueChanged
      TabOrder = 5
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 607
    Width = 912
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Shape6: TShape
      Left = 45
      Top = 10
      Width = 28
      Height = 19
      Hint = 'Task Completed'
      Brush.Color = 12320699
      ParentShowHint = False
      ShowHint = True
    end
    object Shape7: TShape
      Left = 76
      Top = 10
      Width = 28
      Height = 19
      Hint = 'Task in process but not overdue'
      Brush.Color = 11599871
      ParentShowHint = False
      ShowHint = True
    end
    object Shape2: TShape
      Left = 107
      Top = 10
      Width = 28
      Height = 19
      Hint = 'Task completed by receiver but not confirmed by sender'
      Brush.Color = 16760767
      ParentShowHint = False
      ShowHint = True
    end
    object Shape4: TShape
      Left = 138
      Top = 10
      Width = 28
      Height = 19
      Hint = 'Over Due'
      Brush.Color = 12566527
      ParentShowHint = False
      ShowHint = True
    end
    object cxButton5: TcxButton
      Left = 841
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButton5Click
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 41
    Align = alTop
    Caption = 'Tasks Requested By Me'
    TabOrder = 2
    Height = 321
    Width = 912
    object CustomMasterCxGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 906
      Height = 300
      Align = alClient
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ToDoReqDs
        DataController.KeyFieldNames = 'ToDo_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = BackOfficeDataModule.cxStyleBackground
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        Styles.OnGetContentStyle = CustomMasterCxGridDBTableView1StylesGetContentStyle
        Styles.Header = BackOfficeDataModule.cxStyleFormBackground
        object CustomMasterCxGridDBTableView1ToDo_id: TcxGridDBColumn
          DataBinding.FieldName = 'ToDo_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
        end
        object CustomMasterCxGridDBTableView1FromUsers_id: TcxGridDBColumn
          Caption = 'From '
          DataBinding.FieldName = 'FromUsers_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'AdmUsers_id'
          Properties.ListColumns = <
            item
              FieldName = 'Uid'
            end>
          Properties.ListSource = UsersDs
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Width = 141
        end
        object CustomMasterCxGridDBTableView1ToUsers_id: TcxGridDBColumn
          Caption = 'To'
          DataBinding.FieldName = 'ToUsers_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'AdmUsers_id'
          Properties.ListColumns = <
            item
              FieldName = 'Uid'
            end>
          Properties.ListSource = UsersDs
          Options.Filtering = False
          Options.Moving = False
        end
        object CustomMasterCxGridDBTableView1Remarks: TcxGridDBColumn
          DataBinding.FieldName = 'Remarks'
          Options.Filtering = False
          Options.Moving = False
          Width = 425
        end
        object CustomMasterCxGridDBTableView1DueDate: TcxGridDBColumn
          Caption = 'Due Date'
          DataBinding.FieldName = 'DueDate'
          Options.Filtering = False
          Options.Grouping = False
          Width = 123
        end
        object CustomMasterCxGridDBTableView1Status: TcxGridDBColumn
          Caption = 'Receiver'#39's Status'
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.OnEditValueChanged = CustomMasterCxGridDBTableView1StatusPropertiesEditValueChanged
          Options.Editing = False
          Options.Moving = False
          Width = 112
        end
        object CustomMasterCxGridDBTableView1StatusLabel: TcxGridDBColumn
          DataBinding.FieldName = 'StatusLabel'
          Visible = False
          Options.Filtering = False
        end
        object CustomMasterCxGridDBTableView1Confirmed: TcxGridDBColumn
          Caption = 'My Status'
          DataBinding.FieldName = 'Confirmed'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.OnEditValueChanged = CustomMasterCxGridDBTableView1ConfirmedPropertiesEditValueChanged
          Options.Grouping = False
          Width = 119
        end
      end
      object CustomMasterCxGridLevel1: TcxGridLevel
        GridView = CustomMasterCxGridDBTableView1
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 362
    Align = alClient
    Caption = 'Tasks Issued To Me'
    TabOrder = 3
    Height = 245
    Width = 912
    object cxGrid1: TcxGrid
      Left = 3
      Top = 18
      Width = 906
      Height = 224
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ToDoPendDs
        DataController.KeyFieldNames = 'ToDo_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = BackOfficeDataModule.cxStyleBackground
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
        Styles.Header = BackOfficeDataModule.cxStyleFormBackground
        object cxGridDBTableView1ToDo_id: TcxGridDBColumn
          DataBinding.FieldName = 'ToDo_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
        end
        object cxGridDBTableView1FromUsers_id: TcxGridDBColumn
          Caption = 'From'
          DataBinding.FieldName = 'FromUsers_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'AdmUsers_id'
          Properties.ListColumns = <
            item
              FieldName = 'Uid'
            end>
          Properties.ListSource = UsersDs
          Options.Editing = False
          Options.Filtering = False
        end
        object cxGridDBTableView1Remarks: TcxGridDBColumn
          DataBinding.FieldName = 'Remarks'
          Options.Editing = False
          Options.Filtering = False
          Width = 420
        end
        object cxGridDBTableView1DueDate: TcxGridDBColumn
          Caption = 'Due Date'
          DataBinding.FieldName = 'DueDate'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 131
        end
        object cxGridDBTableView1Status: TcxGridDBColumn
          Caption = 'My Status'
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.OnEditValueChanged = cxGridDBTableView1StatusPropertiesEditValueChanged
          Width = 109
        end
        object cxGridDBTableView1StatusLabel: TcxGridDBColumn
          DataBinding.FieldName = 'StatusLabel'
          Visible = False
          Options.Filtering = False
          Width = 125
        end
        object cxGridDBTableView1Confirmed: TcxGridDBColumn
          Caption = 'Sender'#39's Status'
          DataBinding.FieldName = 'Confirmed'
          Options.Editing = False
          Width = 112
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object ToDoReqSds: TSQLDataSet
    CommandText = 'ToDo'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 672
    Top = 304
  end
  object ToDoReqDsp: TDataSetProvider
    DataSet = ToDoReqSds
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 304
  end
  object ToDoReqCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ToDoReqDsp'
    BeforeInsert = ToDoReqCdsBeforeInsert
    AfterInsert = ToDoReqCdsAfterInsert
    BeforeEdit = ToDoReqCdsBeforeEdit
    BeforePost = ToDoReqCdsBeforePost
    AfterPost = ToDoReqCdsAfterPost
    BeforeDelete = ToDoReqCdsBeforeDelete
    AfterDelete = ToDoReqCdsAfterDelete
    OnCalcFields = ToDoReqCdsCalcFields
    Left = 736
    Top = 304
    object ToDoReqCdsToDo_id: TIntegerField
      FieldName = 'ToDo_id'
    end
    object ToDoReqCdsFromUsers_id: TIntegerField
      FieldName = 'FromUsers_id'
    end
    object ToDoReqCdsToUsers_id: TIntegerField
      FieldName = 'ToUsers_id'
    end
    object ToDoReqCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 100
    end
    object ToDoReqCdsDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
    end
    object ToDoReqCdsStatusLabel: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusLabel'
      Calculated = True
    end
    object ToDoReqCdsStatus: TBooleanField
      FieldName = 'Status'
    end
    object ToDoReqCdsConfirmed: TBooleanField
      FieldName = 'Confirmed'
    end
  end
  object ToDoReqDs: TDataSource
    DataSet = ToDoReqCds
    Left = 768
    Top = 304
  end
  object PopupMenu2: TPopupMenu
    Left = 137
    Top = 94
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
  object SaveDialog: TSaveDialog
    Left = 152
    Top = 88
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 48
    Top = 88
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor]
      Color = 12320699
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor]
      Color = 12566527
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 11599871
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor]
      Color = 16760767
    end
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 188
    Top = 97
    object dxComponentPrinterLink1: TdxGridReportLink
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
      ReportDocument.CreationDate = 39368.707159826390000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object ToDoPendSds: TSQLDataSet
    CommandText = 'ToDo'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 448
  end
  object ToDoPendDsp: TDataSetProvider
    DataSet = ToDoPendSds
    Left = 712
    Top = 448
  end
  object ToDoPendCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ToDoPendDsp'
    BeforeEdit = ToDoPendCdsBeforeEdit
    AfterPost = ToDoPendCdsAfterPost
    BeforeDelete = ToDoPendCdsBeforeDelete
    Left = 744
    Top = 448
    object IntegerField1: TIntegerField
      FieldName = 'ToDo_id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'FromUsers_id'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ToUsers_id'
    end
    object StringField1: TStringField
      FieldName = 'Remarks'
      Size = 100
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DueDate'
    end
    object StringField2: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusLabel'
      Calculated = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'Status'
    end
    object BooleanField2: TBooleanField
      FieldName = 'Confirmed'
    end
  end
  object ToDoPendDs: TDataSource
    DataSet = ToDoPendCds
    Left = 776
    Top = 448
  end
  object DataSource1: TDataSource
    DataSet = ToDoPendCds
    Left = 776
    Top = 448
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 200
    Top = 306
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 214
    Top = 307
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 232
    Top = 306
    object UsersCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object UsersCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
  end
  object UsersDs: TDataSource
    DataSet = UsersCds
    Left = 244
    Top = 306
  end
end
