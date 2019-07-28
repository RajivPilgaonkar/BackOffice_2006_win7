object Custom1M2DForm: TCustom1M2DForm
  Left = 36
  Top = 49
  Width = 972
  Height = 620
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 552
    Width = 964
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object MasterSds: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 56
    Top = 16
  end
  object Detail1Sds: TSQLDataSet
    Params = <>
    Left = 56
    Top = 64
  end
  object MasterDataSetProvider: TDataSetProvider
    DataSet = MasterSds
    Left = 88
    Top = 16
  end
  object Detail1DataSetProvider: TDataSetProvider
    Left = 88
    Top = 64
  end
  object MasterDS: TDataSource
    DataSet = MasterCds
    Left = 120
    Top = 16
  end
  object Detail1DS: TDataSource
    Left = 120
    Top = 64
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDataSetProvider'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 152
    Top = 16
  end
  object Detail1Cds: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    AfterDelete = Detail1CdsAfterDelete
    Left = 152
    Top = 64
  end
  object Detail2Sds: TSQLDataSet
    Params = <>
    Left = 56
    Top = 96
  end
  object Detail2DataSetProvider: TDataSetProvider
    Left = 88
    Top = 96
  end
  object Detail2DS: TDataSource
    Left = 120
    Top = 96
  end
  object Detail2Cds: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = Detail2CdsBeforeInsert
    BeforeEdit = Detail2CdsBeforeEdit
    BeforePost = Detail2CdsBeforePost
    AfterPost = Detail2CdsAfterPost
    BeforeDelete = Detail2CdsBeforeDelete
    AfterDelete = Detail2CdsAfterDelete
    Left = 152
    Top = 96
  end
end
