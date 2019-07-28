object CustomMasterDetailForm: TCustomMasterDetailForm
  Left = 184
  Top = 97
  Width = 823
  Height = 602
  Caption = 'Custom Master Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMaster: TPanel
    Left = 0
    Top = 8
    Width = 369
    Height = 321
    Caption = 'PanelMaster'
    TabOrder = 0
    object DBGridMaster: TDBGrid
      Left = 8
      Top = 8
      Width = 353
      Height = 305
      DataSource = DSMaster
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
  object PanelChild1: TPanel
    Left = 384
    Top = 8
    Width = 425
    Height = 321
    Caption = 'PanelChild1'
    TabOrder = 1
    object DBGridChild1: TDBGrid
      Left = 8
      Top = 7
      Width = 409
      Height = 305
      DataSource = DSChild1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
  object SQLTableMaster: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 184
    Top = 104
  end
  object DSMaster: TDataSource
    DataSet = CDSMaster
    Left = 184
    Top = 72
  end
  object CDSMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMaster'
    BeforeInsert = CDSMasterBeforeInsert
    AfterInsert = CDSMasterAfterInsert
    BeforeEdit = CDSMasterBeforeEdit
    BeforePost = CDSMasterBeforePost
    AfterPost = CDSMasterAfterPost
    BeforeDelete = CDSMasterBeforeDelete
    AfterDelete = CDSMasterAfterDelete
    Left = 216
    Top = 72
  end
  object DSPMaster: TDataSetProvider
    DataSet = SQLTableMaster
    Left = 216
    Top = 104
  end
  object DSChild1: TDataSource
    DataSet = CDSChild1
    Left = 508
    Top = 72
  end
  object CDSChild1: TClientDataSet
    Aggregates = <>
    MasterSource = DSMaster
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPChild1'
    BeforeInsert = CDSChild1BeforeInsert
    AfterInsert = CDSChild1AfterInsert
    BeforeEdit = CDSChild1BeforeEdit
    BeforePost = CDSChild1BeforePost
    AfterPost = CDSChild1AfterPost
    BeforeDelete = CDSChild1BeforeDelete
    AfterDelete = CDSChild1AfterDelete
    Left = 540
    Top = 72
  end
  object DSPChild1: TDataSetProvider
    DataSet = SQLTableChild1
    Left = 540
    Top = 104
  end
  object SQLTableChild1: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 508
    Top = 104
  end
end
