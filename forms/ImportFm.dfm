object ImportForm: TImportForm
  Left = 416
  Top = 285
  Width = 318
  Height = 185
  Caption = 'Import'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 108
    Top = 104
    Width = 89
    Height = 25
    Caption = 'Import Train'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxDateEdit1: TcxDateEdit
    Left = 57
    Top = 65
    Properties.ShowTime = False
    TabOrder = 1
    Width = 121
  end
  object cxTextEdit1: TcxTextEdit
    Left = 224
    Top = 65
    TabOrder = 2
    Width = 57
  end
  object cxLabel1: TcxLabel
    Left = 189
    Top = 68
    Caption = 'Flag'
  end
  object cxLabel2: TcxLabel
    Left = 21
    Top = 68
    Caption = 'Wet'
  end
  object scExcelExport: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -11
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = -11
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 200
    Top = 16
  end
  object ImportSds: TSQLDataSet
    CommandText = 'zzz_TrainFares'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 15
  end
  object ImportDsp: TDataSetProvider
    DataSet = ImportSds
    Left = 47
    Top = 14
  end
  object ImportCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ImportDsp'
    Left = 77
    Top = 14
    object ImportCdsTrainCategories_id: TIntegerField
      FieldName = 'TrainCategories_id'
    end
    object ImportCdsKms: TIntegerField
      FieldName = 'Kms'
    end
    object ImportCdsTrain: TStringField
      FieldName = 'Train'
      Size = 150
    end
    object ImportCdst1c_ac: TFMTBCDField
      FieldName = 't1c_ac'
      Precision = 18
    end
    object ImportCdst2c_ac_3t: TFMTBCDField
      FieldName = 't2c_ac_3t'
      Precision = 18
    end
    object ImportCdst2c_ac_2t: TFMTBCDField
      FieldName = 't2c_ac_2t'
      Precision = 18
    end
    object ImportCdsac_cc: TFMTBCDField
      FieldName = 'ac_cc'
      Precision = 18
    end
    object ImportCdsac_cce: TFMTBCDField
      FieldName = 'ac_cce'
      Precision = 18
    end
    object ImportCdst2c: TFMTBCDField
      FieldName = 't2c'
      Precision = 18
    end
    object ImportCdst1c: TFMTBCDField
      FieldName = 't1c'
      Precision = 18
    end
    object ImportCdssleeper: TFMTBCDField
      FieldName = 'sleeper'
      Precision = 18
    end
    object ImportCdsid: TIntegerField
      FieldName = 'id'
    end
  end
  object ImportDS: TDataSource
    DataSet = ImportCds
    Left = 108
    Top = 13
  end
end
