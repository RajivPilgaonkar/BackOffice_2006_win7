object Custom_1ML_Form: TCustom_1ML_Form
  Left = 215
  Top = 141
  Width = 841
  Height = 557
  Caption = 'Custom 1ML'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 833
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 482
    Width = 833
    Height = 41
    Align = alBottom
    TabOrder = 2
    object cxButtonClose: TcxButton
      Left = 744
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxButtonCloseClick
    end
    object cxDBLabelKeyId: TcxDBLabel
      Left = 668
      Top = 11
      DataBinding.DataSource = MasterDs
      Style.TextStyle = []
      Transparent = True
      Height = 24
      Width = 61
    end
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 2
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 376
      Top = 4
      Width = 255
      Height = 31
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 833
    Height = 441
    Align = alClient
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 831
      Height = 439
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 433
      ClientRectLeft = 3
      ClientRectRight = 825
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Master'
        ImageIndex = 0
      end
    end
  end
  object MasterSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 208
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 208
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 255
    Top = 208
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 285
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 89
    Top = 543
  end
end
