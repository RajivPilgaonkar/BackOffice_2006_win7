object Custom_2MG_2DG_Form: TCustom_2MG_2DG_Form
  Left = 184
  Top = 12
  Width = 1101
  Height = 691
  Caption = 'Custom_2MG_2DG_Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 121
    Width = 1085
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1085
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 138
      Top = 10
      Width = 87
      Height = 13
      Caption = 'Dates Between'
    end
    object Label2: TLabel
      Left = 138
      Top = 30
      Width = 63
      Height = 13
      Caption = 'Tour Name'
    end
    object Label3: TLabel
      Left = 138
      Top = 50
      Width = 60
      Height = 13
      Caption = 'Tour Code'
    end
    object Label4: TLabel
      Left = 362
      Top = 10
      Width = 22
      Height = 13
      Caption = 'and'
    end
    object Label5: TLabel
      Left = 552
      Top = 8
      Width = 57
      Height = 13
      Caption = 'FIT Agent'
    end
    object Label6: TLabel
      Left = 742
      Top = 9
      Width = 81
      Height = 13
      Caption = 'Tour Calendar'
    end
    object cxActiveCkb: TcxCheckBox
      Left = 138
      Top = 70
      Caption = 'Active'
      TabOrder = 0
      Width = 81
    end
    object cxFromDateEdit: TcxDateEdit
      Left = 230
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxToDateEdit: TcxDateEdit
      Left = 398
      Top = 8
      TabOrder = 2
      Width = 121
    end
    object cxTourNameTextEdit: TcxTextEdit
      Left = 230
      Top = 28
      TabOrder = 3
      Width = 120
    end
    object cxTourCodeTextEdit: TcxTextEdit
      Left = 230
      Top = 48
      TabOrder = 4
      Width = 120
    end
    object cxGrid3: TcxGrid
      Left = 552
      Top = 24
      Width = 181
      Height = 93
      TabOrder = 5
      object cxGrid3DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = FitAgentDs
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
    object cxGrid4: TcxGrid
      Left = 746
      Top = 24
      Width = 311
      Height = 93
      TabOrder = 6
      object cxGridDBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = TourCalDs
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxTmRB: TcxRadioButton
      Left = 10
      Top = 10
      Width = 87
      Height = 17
      Caption = 'Tailor made'
      Checked = True
      TabOrder = 7
      TabStop = True
    end
    object cxFitRB: TcxRadioButton
      Left = 10
      Top = 30
      Width = 87
      Height = 17
      Caption = 'FIT'
      TabOrder = 8
    end
    object cxGroupRB: TcxRadioButton
      Left = 10
      Top = 50
      Width = 87
      Height = 17
      Caption = 'Group'
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 612
    Width = 1085
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      Visible = False
      Kind = cxbkDropDownButton
    end
    object cxButtonClose: TcxButton
      Left = 997
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButtonCloseClick
    end
    object cxDBLabelKeyId_Detail: TcxDBLabel
      Left = 829
      Top = 19
      DataBinding.DataField = 'BankAccounts_id'
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
    object cxDBLabelKeyId_Master: TcxDBLabel
      Left = 828
      Top = 3
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
    object cxDBLabelKeyId_SubDetail: TcxDBLabel
      Left = 916
      Top = 19
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 124
    Width = 1085
    Height = 488
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1083
      Height = 486
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 480
      ClientRectLeft = 3
      ClientRectRight = 1077
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Masters'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1074
          Height = 454
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = MasterTourDs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Tours'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1074
          Height = 454
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = TourDs
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object MasterTourSds: TSQLDataSet
    CommandText = 'SELECT * FROM Masters'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 864
    Top = 136
  end
  object MasterTourDsp: TDataSetProvider
    DataSet = MasterTourSds
    Left = 880
    Top = 136
  end
  object MasterTourCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterTourDsp'
    Left = 896
    Top = 136
  end
  object MasterTourDs: TDataSource
    DataSet = MasterTourCds
    Left = 912
    Top = 136
  end
  object TourSds: TSQLDataSet
    CommandText = 'SELECT * FROM TourCodes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 864
    Top = 168
  end
  object TourDsp: TDataSetProvider
    DataSet = TourSds
    Left = 880
    Top = 168
  end
  object TourCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourDsp'
    Left = 896
    Top = 168
  end
  object TourDs: TDataSource
    DataSet = TourCds
    Left = 912
    Top = 168
  end
  object TourCalSds: TSQLDataSet
    CommandText = 'SELECT * FROM TourCalendar'#13#10'WHERE Masters_id = :Masters_id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 864
    Top = 200
  end
  object TourCalDsp: TDataSetProvider
    DataSet = TourCalSds
    Left = 880
    Top = 200
  end
  object TourCalCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCalDsp'
    BeforeInsert = TourCalCdsBeforeInsert
    BeforeEdit = TourCalCdsBeforeEdit
    BeforePost = TourCalCdsBeforePost
    AfterPost = TourCalCdsAfterPost
    BeforeDelete = TourCalCdsBeforeDelete
    AfterDelete = TourCalCdsAfterDelete
    Left = 896
    Top = 200
  end
  object TourCalDs: TDataSource
    DataSet = TourCalCds
    Left = 912
    Top = 200
  end
  object FitAgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM MasterFitAgents'#13#10'WHERE Masters_id = :Masters_id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 864
    Top = 232
  end
  object FitAgentDsp: TDataSetProvider
    DataSet = FitAgentSds
    Left = 880
    Top = 232
  end
  object FitAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FitAgentDsp'
    BeforeInsert = FitAgentCdsBeforeInsert
    BeforeEdit = FitAgentCdsBeforeEdit
    BeforePost = FitAgentCdsBeforePost
    AfterPost = FitAgentCdsAfterPost
    BeforeDelete = FitAgentCdsBeforeDelete
    AfterDelete = FitAgentCdsAfterDelete
    Left = 896
    Top = 232
  end
  object FitAgentDs: TDataSource
    DataSet = FitAgentCds
    Left = 912
    Top = 232
  end
end
