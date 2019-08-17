object RptAccountsPaymentMadeForm: TRptAccountsPaymentMadeForm
  Left = 192
  Top = 107
  Width = 796
  Height = 480
  Caption = 'RptAccountsPaymentMadeForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -2
    Top = 0
    Width = 816
    Height = 1152
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = PaymentMadeCds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Default
    Page.Continuous = False
    Page.Values = (
      127.000000000000000000
      3048.000000000000000000
      127.000000000000000000
      2159.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    object DetailBand1: TQRBand
      Left = 48
      Top = 173
      Width = 720
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = DetailBand1AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 24
        Top = 4
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          63.500000000000000000
          10.583333333333300000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = PaymentMadeCds
        DataField = 'CashVoucherNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 80
        Top = 4
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          211.666666666667000000
          10.583333333333300000
          164.041666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = PaymentMadeCds
        DataField = 'Transactiondate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 553
        Top = 4
        Width = 84
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1463.145833333330000000
          10.583333333333300000
          222.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = PaymentMadeCds
        DataField = 'Paid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 148
        Top = 4
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          391.583333333333000000
          10.583333333333300000
          164.041666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = PaymentMadeCds
        DataField = 'AccountheadsNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 216
        Top = 4
        Width = 314
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          571.500000000000000000
          10.583333333333300000
          830.791666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = PaymentMadeCds
        DataField = 'Folio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
    object TitleBand1: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        150.812500000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object CompanyLabel: TQRLabel
        Left = 240
        Top = 8
        Width = 75
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          635.000000000000000000
          21.166666666666670000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Company'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object DateRangeLabel: TQRLabel
        Left = 24
        Top = 28
        Width = 148
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          63.500000000000000000
          74.083333333333340000
          391.583333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Payments made between'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 48
      Top = 145
      Width = 720
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        74.083333333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'PaymentMadeCds.OrgCity'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText7: TQRDBText
        Left = 24
        Top = 4
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          10.583333333333330000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = PaymentMadeCds
        DataField = 'OrgCity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 48
      Top = 201
      Width = 720
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.020833333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape2: TQRShape
        Left = 513
        Top = 0
        Width = 137
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1357.312500000000000000
          0.000000000000000000
          362.479166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr1: TQRExpr
        Left = 553
        Top = 8
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1463.145833333330000000
          21.166666666666700000
          227.541666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(PaymentMadeCds.Paid)'
        Mask = '#,##0.00'
        ExportAs = exptText
        FontSize = 8
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 48
      Top = 105
      Width = 720
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 22
        Top = 7
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          58.208333333333340000
          18.520833333333330000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C/V'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 78
        Top = 7
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          18.520833333333330000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 146
        Top = 7
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          386.291666666666700000
          18.520833333333330000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A/C'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 215
        Top = 7
        Width = 313
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          568.854166666666700000
          18.520833333333330000
          828.145833333333200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Description'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 551
        Top = 7
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1457.854166666667000000
          18.520833333333330000
          222.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Paid'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 22
        Top = 25
        Width = 626
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          58.208333333333340000
          66.145833333333340000
          1656.291666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object PaymentMadeSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Rpt_Accounts_PaymentMade(:Companies_id,'#13#10' :From' +
      'Date, :ToDate)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Companies_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 248
    Top = 17
  end
  object PaymentMadeDsp: TDataSetProvider
    DataSet = PaymentMadeSds
    Left = 261
    Top = 16
  end
  object PaymentMadeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PaymentMadeDsp'
    Left = 280
    Top = 16
    object PaymentMadeCdsCashVoucherNo: TIntegerField
      FieldName = 'CashVoucherNo'
    end
    object PaymentMadeCdsTransactiondate: TSQLTimeStampField
      FieldName = 'Transactiondate'
    end
    object PaymentMadeCdsFolio: TStringField
      FieldName = 'Folio'
      Size = 254
    end
    object PaymentMadeCdsAccountheadsNo: TIntegerField
      FieldName = 'AccountheadsNo'
    end
    object PaymentMadeCdsOrgCity: TStringField
      FieldName = 'OrgCity'
      Size = 254
    end
    object PaymentMadeCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object PaymentMadeCdsPaid: TFloatField
      FieldName = 'Paid'
      DisplayFormat = '#,##0.00'
    end
  end
  object PaymentMadeDs: TDataSource
    DataSet = PaymentMadeCds
    Left = 296
    Top = 16
  end
  object QRRTFFilter1: TQRRTFFilter
    Left = 654
    Top = 24
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    FontHandling = fhSubstitute
    Left = 510
    Top = 8
  end
end
