object CustomMaster1M2DForm: TCustomMaster1M2DForm
  Left = 92
  Top = 151
  Width = 921
  Height = 537
  Caption = 'CustomMaster1M2DForm'
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object KeyIdDBText: TDBText
    Left = 574
    Top = 473
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
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 326
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 297
      Height = 264
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object DBGrid2: TDBGrid
      Left = 300
      Top = 1
      Width = 606
      Height = 324
      DataSource = DataSource2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 326
    Width = 913
    Height = 177
    Align = alClient
    TabOrder = 1
    object DBGrid3: TDBGrid
      Left = 1
      Top = 1
      Width = 911
      Height = 175
      Align = alClient
      DataSource = DataSource3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 208
    Top = 184
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    BeforeInsert = ClientDataSet1BeforeInsert
    AfterInsert = ClientDataSet1AfterInsert
    BeforeEdit = ClientDataSet1BeforeEdit
    BeforePost = ClientDataSet1BeforePost
    AfterPost = ClientDataSet1AfterPost
    BeforeDelete = ClientDataSet1BeforeDelete
    AfterDelete = ClientDataSet1AfterDelete
    Left = 240
    Top = 184
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLTable1
    Left = 240
    Top = 216
  end
  object SQLTable1: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 216
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 560
    Top = 200
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetProvider2'
    AfterPost = ClientDataSet2AfterPost
    AfterDelete = ClientDataSet2AfterDelete
    Left = 592
    Top = 200
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLTable2
    Left = 592
    Top = 232
  end
  object SQLTable2: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 232
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet3
    Left = 520
    Top = 312
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetProvider3'
    AfterPost = ClientDataSet3AfterPost
    AfterDelete = ClientDataSet3AfterDelete
    Left = 552
    Top = 312
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLTable3
    Left = 552
    Top = 344
  end
  object SQLTable3: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 520
    Top = 344
  end
end
