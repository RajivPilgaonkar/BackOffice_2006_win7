object AdmUsersForm: TAdmUsersForm
  Left = 178
  Top = 107
  Width = 729
  Height = 620
  Caption = 'Users Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 330
    Top = 0
    Width = 383
    Height = 534
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 381
      Height = 532
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = RightsDS
        DataController.KeyFieldNames = 'AdmUserRights_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object cxGridDBTableView1AdmModules_id: TcxGridDBColumn
          Caption = 'Module'
          DataBinding.FieldName = 'AdmModules_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'AdmModules_id'
          Properties.ListColumns = <
            item
              FieldName = 'AdmModule'
            end
            item
              FieldName = 'AdmModuleNo'
            end>
          Properties.ListSource = ModuleLookUpDS
          Options.Editing = False
          Options.Filtering = False
          Options.SortByDisplayText = isbtOn
          SortIndex = 0
          SortOrder = soAscending
          Width = 233
        end
        object cxGridDBTableView1AdmLevel: TcxGridDBColumn
          Caption = 'Access Level'
          DataBinding.FieldName = 'AdmLevel'
          Options.Filtering = False
          SortIndex = 1
          SortOrder = soAscending
          Width = 112
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 534
    Width = 713
    Height = 48
    Align = alBottom
    TabOrder = 2
    object CloseBtn: TcxButton
      Left = 284
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 534
    Align = alLeft
    TabOrder = 0
    object CustomMasterCxGrid: TcxGrid
      Left = 1
      Top = 1
      Width = 330
      Height = 424
      PopupMenu = PopupMenu1
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MasterDS
        DataController.KeyFieldNames = 'AdmUsers_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object CustomMasterCxGridDBTableView1Uid: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'uid'
          Options.Filtering = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 143
        end
        object CustomMasterCxGridDBTableView1Active: TcxGridDBColumn
          DataBinding.FieldName = 'Active'
          Options.Filtering = False
          Width = 66
        end
        object CustomMasterCxGridDBTableView1Superuser: TcxGridDBColumn
          Caption = 'Super User'
          DataBinding.FieldName = 'Superuser'
          Options.Filtering = False
          Width = 96
        end
      end
      object CustomMasterCxGridLevel1: TcxGridLevel
        GridView = CustomMasterCxGridDBTableView1
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 424
      Caption = 'Access Level'
      TabOrder = 1
      Height = 114
      Width = 329
      object cxLabel1: TcxLabel
        Left = 8
        Top = 25
        Caption = '<0 - No Access>'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 7
        Top = 39
        Caption = '<1 - Read Only>'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 7
        Top = 53
        Caption = '<2 - Edit>'
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 7
        Top = 67
        Caption = '<3 - Special Access>'
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 7
        Top = 82
        Caption = '<4 - Special Access>'
        Transparent = True
      end
    end
  end
  object MasterSDS: TSQLDataSet
    CommandText = 'admusers'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 72
  end
  object DataSetProvider: TDataSetProvider
    DataSet = MasterSDS
    Left = 80
    Top = 72
  end
  object MasterDS: TDataSource
    DataSet = MasterCds
    Left = 120
    Top = 72
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 152
    Top = 72
    object MasterCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsPwd: TStringField
      FieldName = 'Pwd'
      Size = 8
    end
    object MasterCdsActive: TBooleanField
      FieldName = 'Active'
    end
    object MasterCdsUserName: TStringField
      FieldName = 'UserName'
      Size = 10
    end
    object MasterCdsSuperuser: TBooleanField
      FieldName = 'Superuser'
    end
    object MasterCdsDefaultFinancialYears_id: TIntegerField
      FieldName = 'DefaultFinancialYears_id'
    end
    object MasterCdsDefaultLoginTypes_id: TIntegerField
      FieldName = 'DefaultLoginTypes_id'
    end
    object MasterCdsDefaultDivisions_id: TIntegerField
      FieldName = 'DefaultDivisions_id'
    end
    object MasterCdsDefaultCompanies_id: TIntegerField
      FieldName = 'DefaultCompanies_id'
    end
  end
  object RightsSds: TSQLDataSet
    CommandText = 'AdmUserRights'
    CommandType = ctTable
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 80
  end
  object RightsDSP: TDataSetProvider
    DataSet = RightsSds
    Left = 512
    Top = 80
  end
  object RightsDS: TDataSource
    DataSet = RightsCds
    Left = 552
    Top = 80
  end
  object RightsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AdmUsers_id'
    MasterFields = 'AdmUsers_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'RightsDSP'
    BeforeInsert = RightsCdsBeforeInsert
    BeforeEdit = RightsCdsBeforeEdit
    BeforePost = RightsCdsBeforePost
    AfterPost = RightsCdsAfterPost
    AfterDelete = RightsCdsAfterDelete
    Left = 584
    Top = 80
    object RightsCdsAdmUserRights_id: TIntegerField
      FieldName = 'AdmUserRights_id'
    end
    object RightsCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object RightsCdsAdmModules_id: TIntegerField
      FieldName = 'AdmModules_id'
    end
    object RightsCdsAdmLevel: TIntegerField
      FieldName = 'AdmLevel'
    end
  end
  object ModuleLookUpSds: TSQLDataSet
    CommandText = 'SELECT * FROM AdmModules'#13#10'ORDER BY AdmModule, AdmModuleNo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 472
    Top = 192
  end
  object ModuleLookUpDsp: TDataSetProvider
    DataSet = ModuleLookUpSds
    Left = 504
    Top = 192
  end
  object ModuleLookUpDS: TDataSource
    DataSet = ModuleLookUpCds
    Left = 544
    Top = 192
  end
  object ModuleLookUpCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ModuleLookUpDsp'
    Left = 576
    Top = 192
    object ModuleLookUpCdsAdmModules_id: TIntegerField
      FieldName = 'AdmModules_id'
    end
    object ModuleLookUpCdsAdmModule: TStringField
      FieldName = 'AdmModule'
      Size = 150
    end
    object ModuleLookUpCdsAdmModuleNo: TIntegerField
      FieldName = 'AdmModuleNo'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 176
    object AddModules1: TMenuItem
      Caption = '&Add Modules'
      OnClick = AddModules1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Copymodules1: TMenuItem
      Caption = '&Copy Modules from Users (Modules not yet included)'
      OnClick = Copymodules1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object OverwritefromUsersModulesalreadyincluded1: TMenuItem
      Caption = 'Overwrite from Users (Modules already included)'
      OnClick = OverwritefromUsersModulesalreadyincluded1Click
    end
  end
end
