object CustomMasterForm: TCustomMasterForm
  Left = 73
  Top = 170
  Width = 539
  Height = 292
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 210
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 210
    Width = 514
    Height = 49
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 1
    object KeyIdDBText: TDBText
      Left = 169
      Top = 22
      Width = 58
      Height = 11
      AutoSize = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object MasterSds: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 144
    Top = 16
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    Left = 176
    Top = 16
  end
  object MasterDS: TDataSource
    DataSet = MasterCDS
    Left = 240
    Top = 16
  end
  object MasterCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    BeforeInsert = MasterCDSBeforeInsert
    AfterInsert = MasterCDSAfterInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    AfterDelete = MasterCDSAfterDelete
    Left = 208
    Top = 16
  end
end
