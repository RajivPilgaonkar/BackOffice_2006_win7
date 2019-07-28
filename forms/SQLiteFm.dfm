object SQLiteForm: TSQLiteForm
  Left = 186
  Top = 241
  Width = 928
  Height = 480
  Caption = 'SQLiteForm'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 48
    Top = 32
    Width = 201
    Height = 25
    Caption = 'Create Data in Text Files'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 48
    Top = 80
    Width = 201
    Height = 25
    Caption = 'Import Text files in SQLite'
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object SysTablesSds: TSQLDataSet
    CommandText = 
      'SELECT lower([Name]) AS Name FROM sysobjects'#13#10'WHERE xtype = '#39'U'#39#13 +
      #10'ORDER BY name'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 320
    Top = 16
  end
  object SysTablesDsp: TDataSetProvider
    DataSet = SysTablesSds
    Left = 352
    Top = 16
  end
  object SysTablesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SysTablesDsp'
    Left = 384
    Top = 16
    object SysTablesCdsName: TStringField
      FieldName = 'Name'
      Size = 128
    end
  end
  object SysTablesDs: TDataSource
    DataSet = SysTablesCds
    Left = 416
    Top = 16
  end
end
