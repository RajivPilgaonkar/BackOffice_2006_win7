object RpInvGstForm: TRpInvGstForm
  Left = 154
  Top = 163
  Width = 986
  Height = 552
  Caption = 'RpInvGstForm'
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
    Left = 24
    Top = 32
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = MasterCds
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
    Page.PaperSize = Letter
    Page.Continuous = False
    Page.Values = (
      127.000000000000000000
      2794.000000000000000000
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
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    object PageHeaderBand1: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 92
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        243.416666666666700000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
    end
    object QRGroup1: TQRGroup
      Left = 48
      Top = 140
      Width = 720
      Height = 327
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
        865.187500000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'MasterCds.InvoiceNo'
      FooterBand = QRBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 16
        Top = 8
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          21.166666666666670000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'Organisation'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 16
        Top = 172
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          455.083333333333300000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Invoice Date'
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
      object QRLabel2: TQRLabel
        Left = 16
        Top = 196
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          518.583333333333300000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Invoice No.'
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
      object QRShape1: TQRShape
        Left = 16
        Top = 292
        Width = 689
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          42.333333333333330000
          772.583333333333300000
          1822.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 16
        Top = 300
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          793.750000000000000000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Details'
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
        Left = 340
        Top = 300
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          899.583333333333300000
          793.750000000000000000
          79.375000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rate'
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
        Left = 403
        Top = 300
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1066.270833333333000000
          793.750000000000000000
          58.208333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qty'
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
      object QRLabel7: TQRLabel
        Left = 467
        Top = 300
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1235.604166666667000000
          793.750000000000000000
          68.791666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Amt'
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
      object QRLabel8: TQRLabel
        Left = 500
        Top = 300
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1322.916666666667000000
          793.750000000000000000
          121.708333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GST(%)'
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
        Left = 562
        Top = 300
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1486.958333333333000000
          793.750000000000000000
          74.083333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GST'
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
        Left = 606
        Top = 300
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1603.375000000000000000
          793.750000000000000000
          243.416666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Incl. Tax'
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
      object QRShape2: TQRShape
        Left = 16
        Top = 317
        Width = 689
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          42.333333333333330000
          838.729166666666700000
          1822.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 110
        Top = 172
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          455.083333333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'InvoiceDate'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 110
        Top = 196
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          291.041666666666700000
          518.583333333333300000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'InvoiceNo'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 536
        Top = 122
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          322.791666666666700000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'pan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 474
        Top = 122
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          322.791666666666700000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PAN No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabelInvoice: TQRLabel
        Left = 472
        Top = 7
        Width = 225
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1248.833333333333000000
          18.520833333333330000
          595.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tax Invoice'
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 20
      end
      object QRDBText17: TQRDBText
        Left = 16
        Top = 32
        Width = 405
        Height = 99
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          261.937500000000000000
          42.333333333333330000
          84.666666666666670000
          1071.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'Addr'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 474
        Top = 145
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          383.645833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cin No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 537
        Top = 145
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1420.812500000000000000
          383.645833333333300000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'CinNo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 474
        Top = 169
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          447.145833333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GSTIN'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 537
        Top = 169
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1420.812500000000000000
          447.145833333333300000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'Gstin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 16
        Top = 136
        Width = 145
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          359.833333333333300000
          383.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GSTIN of the Recipient'
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
      object QRDBText14: TQRDBText
        Left = 169
        Top = 136
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          447.145833333333300000
          359.833333333333300000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'GstinRecipient'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 16
        Top = 230
        Width = 101
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          608.541666666666700000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Place of Supply'
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
      object QRDBText16: TQRDBText
        Left = 191
        Top = 230
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          608.541666666666700000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'PlaceOfSupply'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 16
        Top = 251
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          664.104166666666700000
          240.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name of State'
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
      object QRDBText20: TQRDBText
        Left = 191
        Top = 251
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          664.104166666666700000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'state'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 16
        Top = 272
        Width = 162
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          719.666666666666700000
          428.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'If tax payable under RCM'
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
      object QRDBText21: TQRDBText
        Left = 191
        Top = 272
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          719.666666666666700000
          254.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'TaxPayableRcm'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 256
        Top = 300
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          793.750000000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SAC Code'
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
    end
    object DetailBand1: TQRBand
      Left = 48
      Top = 467
      Width = 720
      Height = 25
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
        66.145833333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 16
        Top = 5
        Width = 233
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          13.229166666666670000
          616.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = MasterCds
        DataField = 'details'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 331
        Top = 5
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          875.770833333333300000
          13.229166666666670000
          105.833333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'unitprice'
        Mask = '#,##0'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 377
        Top = 5
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          13.229166666666670000
          129.645833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'quantity'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 431
        Top = 5
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1140.354166666667000000
          13.229166666666670000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'amount'
        Mask = '#,##0'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 503
        Top = 5
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          13.229166666666670000
          116.416666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'GstPerc'
        Mask = '#,##0%'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 554
        Top = 5
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1465.791666666667000000
          13.229166666666670000
          103.187500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'Gst'
        Mask = '#,##0'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 616
        Top = 5
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          13.229166666666670000
          214.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'AmtAfterTax'
        Mask = '#,##0'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText28: TQRDBText
        Left = 257
        Top = 5
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          679.979166666666700000
          13.229166666666670000
          169.333333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'SacCode'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 48
      Top = 492
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
      BandType = rbGroupFooter
      object QRShape3: TQRShape
        Left = 16
        Top = -2
        Width = 689
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          42.333333333333330000
          -5.291666666666667000
          1822.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText11: TQRDBText
        Left = 608
        Top = 9
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          23.812500000000000000
          235.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'TotalInvoiceAmount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 16
        Top = 28
        Width = 689
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          42.333333333333330000
          74.083333333333330000
          1822.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText12: TQRDBText
        Left = 527
        Top = 9
        Width = 65
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1394.354166666667000000
          23.812500000000000000
          171.979166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'TaxAmount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object ChildBand1: TQRChildBand
      Left = 48
      Top = 532
      Width = 720
      Height = 164
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
        433.916666666666700000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand1
      PrintOrder = cboAfterParent
      object QRDBText18: TQRDBText
        Left = 16
        Top = 7
        Width = 681
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          42.333333333333330000
          18.520833333333330000
          1801.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'Note'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 16
        Top = 93
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          246.062500000000000000
          280.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'C_GST_Str'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 16
        Top = 115
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          304.270833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'S_GST_Str'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 16
        Top = 137
        Width = 104
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          362.479166666666700000
          275.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'I_GST_Str'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 128
        Top = 93
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          246.062500000000000000
          193.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'C_GST'
        Mask = '#,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 128
        Top = 115
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          304.270833333333300000
          193.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'S_GST'
        Mask = '#,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 128
        Top = 137
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          362.479166666666700000
          193.145833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MasterCds
        DataField = 'I_GST'
        Mask = '#,##0.00'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object ChildBand2: TQRChildBand
      Left = 48
      Top = 696
      Width = 720
      Height = 201
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
        531.812500000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = ChildBand1
      PrintOrder = cboAfterParent
      object QRLabel29: TQRLabel
        Left = 121
        Top = 176
        Width = 428
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333300000
          465.666666666666700000
          1132.416666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Please make your cheques payable to Odyssey Tours & Travels Pvt.' +
          ' Ltd. '
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 481
        Top = 8
        Width = 225
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1272.645833333333000000
          21.166666666666670000
          595.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'For Odyssey Tours & Travels Pvt. Ltd. '
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRImage1: TQRImage
        Left = 535
        Top = 41
        Width = 104
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.312500000000000000
          1415.520833333333000000
          108.479166666666700000
          275.166666666666700000)
        Picture.Data = {
          0A544A504547496D6167657E2B0000FFD8FFE000104A46494600010101012B01
          2B0000FFDB00430006040506050406060506070706080A100A0A09090A140E0F
          0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D
          302D283025282928FFDB0043010707070A080A130A0A13281A161A2828282828
          2828282828282828282828282828282828282828282828282828282828282828
          28282828282828282828282828FFC0001108011500F503012200021101031101
          FFC4001D000100030003010101000000000000000000060708010205030409FF
          C4003D1000010303030303030304000403090000010002030405110612210731
          4113225108617114328115234291162433B143C1F02644526282A1D1E1F1FFC4
          00160101010100000000000000000000000000000102FFC4001D110100030100
          030101000000000000000000011131214151617112FFDA000C03010002110311
          003F00D5288B87024718EE3B8CF9414D75EFAAD7CE9DD6DA61B3D9E9AA22AA6B
          9EFA9AB2F2C76D3831B437187630724F9FDAA7DD3CD636ED6FA729AED6A7B70F
          6E2787792E824F2C20807E7048191D9447EA3F4AD5EA4E98568B6D2C5535F432
          0AC8E3641BA47007DC18770C3B6139E0EEC600C90B39F4C75456F4BB53D96E17
          39EA1FA6EEB4A2A4B00798CEF1B4BA307DBBD87827E323209C251C6E245F9E8A
          AE1AFA4A7ABA479929E76B6463C719696E41C1E7C8E3BAFD0808888088880888
          808888088880888808888088880888808888088880888808888088883E35A582
          92532C8228B69DEF2E2DDADF277020B78CF39E3BAC99ACB49BA5B26A7D36D64A
          6B34F5C24B8DB619A199FBA91E41DB1BDEF23070FF006F24ED2ECF2B5C9E076C
          A87EB5A2A6A7ADA7BDD4EF8A08E334958F665C6489DC35AE19C066E7125C06E1
          C638CAB092857D35EA5B8D7E93A7B55EE0863A88E11514F3091CE96AE371CBA4
          901F3B9C32FC90E24E00C2B95648B0D2DC3A63D46865A673BFA557485DE987EC
          10C44E5CCDA7871E1B923381C8E56B2A79593C51CB11DCC91A1CD70EC478FF00
          BACC7D57D5111504444044440444404444044440444404444044440444404444
          04444044440444405D2766F8C8C90EC7B5C00CB4F6C8CF195DD10511F5176C7D
          E748C20D1065F2D354DAB89D13DA1C29DBDDF190338EC36F0770F800A91FD3D6
          B16EA8D1E59239824A590C6C6879738300E37679CE73C9EEA53D44B78A9B0CF5
          625F49D46C9263918691B0E4938E3F3CF191E55130C974D097DA3BBD81D46F75
          E6E10C4FA40F30C530733DEE70FF0013E707F6F73DD246A145D2191B2B039AE6
          BB23BB4E476CF7FE577404443D907897FD5763D3F5B434979B94349535CFD94F
          1BF24BCFF0381CF73C2F6985AE6B5CD21CD2320839C8592BEA9AD95D71EAE582
          86965735F70A78A0A6F53D8C12190B7870FC8E4F23F0A51D1AEA0DDB4CEA08FA
          6FAF8494F7081D1D3D1CBBDAF23382C613EEDC1C1CD00E78EDC7854AB4722E18
          086E1CE2E3927271FE9728822220222202222022220222202222022220222202
          22202222022220E1C01690E190782319CACF7ACED51D1EA3D53597886299B4B5
          11D6B1D514A7D3F4E421AD31E060B8071031CBDEC703C05A154675D5805EADBE
          A4726CAAA605F16E05CD7792C23C876003C138EDCA157C9553D08D7B555FA8AE
          7669194EEB639CF9E93606C7211BC873F69C700EE0EE783B434100917E2CD065
          A4A77D1DF6B23A46DC630E823A6737D395E1A4FB984021923002187B31A4EEF7
          1CABC7A7FAA62D5BA7E3B8C2C182F746E733F6123CB79CE3E33CF6380084C3BE
          52642888336FD5E5C9D68BA684B9C108966A0A99AA5824E63739862706B8773D
          87F054A7EA33479D43A529756D818E86FF00660DAB82A981D1CDE80CBCB701A5
          C48387007183BB91C8322EBDE8B9B5CE8336BA16466BC54C4F81CE706EDE76B8
          F23901AE71C71D94C1975A03566CF5D3411D6FA6D3FA79A5693330800B9A0F2F
          6EE3B738193E10423A03AD5FAE34647577014ADBBD2BDF15488830178738912E
          D69CB03CB5D9040CB9AE2380159CB246A19ABFA13D673576D86922D3B7A39FD1
          B5D2361F4778CFCE1F19248201C0790060E16ADA0AB86E34D1D552CAD9696560
          733DA41F9E73C8F1C100841FA9156DD7FD4979D2DD3D96E3A7886D5FEA628CCB
          B73E9349CEEF8C6400739C8710BD0E8E6B53AF34643729E174170A690D1D633F
          C7D66B5A496FC821CD3F6C91E104E51110111101111011110111101111011110
          11110111101111011DDB8EE88828DEA5691A2B65F6AEE773ABAA7DB6E0D2D863
          0D2E14D290776D21B925E48C309F71CF3C28FF004DEF34DA2B59D05B452535AE
          D3718B640FFD535F0CAE181EE937F3203DDC41F0CCAD097BB7C774B5D4524EC1
          23256E361796071F82E1C8FC8E7E1662D457ABA582D378069E082EF4B57B993D
          557BC184B386E3801C48E5AC19E0648CA4FB5BBE354465AECEDDBED3B70D3C05
          DD423A557FA8BC69F85974B8D1565C9AC6CB9A6C00E89C016B80DCE711DC64E0
          923B0537489B4150BD4B8E6D2FD77D1DAA5ED999435728B6544A2601A4483634
          10E3C00E21C401D9B9EEAFA504EB4E99A4D4DD3FBAC353E9B258607CB14AF6E4
          35CD048CF9C67E3CE107EDEA9690A7D6BA32E1699A389F3BA171A6320CFA7363
          DAF0719047DBB8241CAA87E9535855C10D7E86BEC4EA69ED877D3B676FA52303
          9E77C4F0EC1C871E3CF3F0029DFD3B6ADA8D51D3BA78EBE322BED2FF00E9D3BF
          7877AA58000FEE4F6C649EE41C288FD41E96FE897EB77536DAE9E39EDB3C1FAC
          6425AC0E8C3B61793C92E21CD6E00FDA0E7C2A2ECD4769A5BFD86BED75AD6BE9
          EA63313C1E71F07F8382A92E9C5D69741750A6B04E1E683514CD7D3CB82D8A29
          D8D2DDAD18C7BC06E39CF1CABA74C6A0A1D4F66A6BA59E532D1CFCB1E46DC8FC
          1E7BA85F57F4C531D0B76ADA2866757D244FA981C263B9B20F76E04B801CF27E
          40C73D923D0B28125EE041007627CAE544BA5FABA8B5AE91A1BC523E213CD1B4
          54C4D3EE8E500070779FC7D8852D501111011110111101111011110111101111
          01175C02E0ECF3838E78C2EC808888088883AC8F11B4176EC6437DAD27B9C78F
          CFF0AA4EB5E9F7CB471DE6DD486A2A608E515510864F49F4ED76E25FEF030DEE
          43417C9C6DE0156EAFCF71A78AAA86782A5F2C70BD843DF14CE85CD1E487B487
          37F2082833268FD68CB76AC8EB6392E6592482392926A78D8E790C3EA48363CB
          0E06CCBB6B406F03DC79D376EAA8AB6869EAA090C90CF136563F696E5AE19070
          791F83CACCFD468EBF4BEA7A882F16B6DC28E599925056124CE2203FBB1451B5
          ED696303185B11396E3D4393C2B4FA1BABABF51580535DA9AAA2A8A68A32C7D4
          12E7B985A31BC9E5C78FDE71BCEE38185338B396B35759080C39DB8EDEE380BB
          2E1C481C0279F0AA3376B1F57A49D5DA5BEDA9860B35F6A22A6A9A424C3471B3
          1B77EE21B18770E2064ED192787615F979B6D2EA1B0D65AEE389E96B63918E2C
          6B9AD2C278E73F0479F76091C2F1FA97A4A9B586939AD7551CB2B1A448C635E0
          38B9BD8E483923B8196EE2002E0092AB6FA74D79555570BA688BE473B6E76F9E
          A678DF504090C7EA0CB1E371CBC3DEECE38C1007638A22FD0875D341756EEDA2
          2BA797FA5BDCF34ED99A4364209D92B39C3770041C77231DD6987BDAF6383E37
          B98E6B41696F827073FF009AA6FEA434F5CC5359B5A69E646FB869DA9155243B
          32668861D92EEF86969E3B61CE3DFBDB166BAC37AB150DCADB534F3C154C8E46
          CB165EC70246E03B1F91CF63DC70428338685BB3FA57D7DBAE91706C1A76EF52
          D3036539F4C3C1316C20938DCED9CFF385A7A09229A264D4EF64914AD0F6BD84
          16BC11C10477E31CAABBEA03409D69A1679628FD5BE5B3D4A9A2740D2D738672
          63C724E583B0EEE03181C2F0BE9CFAB12EAB8469AD45207DFA9612F8A7C6DFD4
          44CDAD3BF279941249C70473DC3905E48888088880888808B87BDB1B1CF7B835
          8D192E27000F92BE347594D5B17AB47510D447FF00C513C387607B8FB107F941
          F7444404444044441C31AD634358D0D6B4600030005CA22022220222202E1C4B
          5A48697103381DCAE5104635F69F1A86C8D6C61EFA8A578A9A76B24D9BDE01C0
          27078E73C6338032065673D1371BCE9DD7F5915CEE3354D4D14F24CE6BEA6397
          D188BDBEA07323C81C0767BE070DE56B354AF5F34A53C5A6E5B9DA296665C9CF
          6B03A95A03B0D692D1B4705ADC7F0324A724B5D113D9246D92376E6BC0703F21
          76556FD3EEBC8B59E8C8609770B9DB98D82A03801BB0301DC671D88EF9E32AD2
          41D64CEDE038F23B63B67EEA84EBBF4FA4A0B8C5D46D3CF905D2D7345533C30C
          603E60D7E4BB7608186E1BFB4F03273CE6FD5D65609237B1C1A43810438641FC
          8F2AC0AFBA7DADACFD55D14E0F14F054D5C1247576D33B257C4D25CC248EFB4E
          091903BF650CFA72B83F4FDCB5074E6E2F9E4ACB55449514CF1CC3E8B9C321A7
          1ED3B9C5D83DF71C76500D4B4773E86755E3BF5052E74CD7BFFBFE8441F984BF
          2E8C177ED23DA700F3C72A69D5AB9C763D47A5BA91A5E499D435B13A9AB67A50
          C31CCCC6E609382476782EC1DBB7C152A645FD234B83486B0B9A7203867C1EC7
          C7E5650EB269793A63AEADDAD34ADADB1DB8D487C901DCF8CBB2D738F2C222DC
          781EE3CB72001C2D554754DAAA6A79E101D14D1891AF6B8118232A29D5AD2751
          AC7A7F71B1DBE48195536C744FA9CB9A08783C9E4F6CE3FF00C27C1ECE91BDD2
          6A8D3F6FBE51B1CD8EAA22E67A91B98E682790370048CB7BE30700F6C2F6963D
          E98EAFBCF4D35750DA35657CFF00D262924A175319992B20C918700D3B8ED760
          138381C05B0237B646364639AE63865AE1C820A91F4765E4EA9BE53E9DB34B72
          ABDA6189CD05A640C2E04804373FB9D8CE1BE4F0BD65E46ADB2B35069EACB6C8
          E2CF599ED7076DE41C819C1201C6091CE09C2A3D0A0AB82BE922ABA39A39E9A6
          68922923396B9A464107CAFB820F62B35546ACABE89D7596D02904D60AC73993
          82DDB3425AEDBBDAF2E731C03718048E1BCE0F2B44DAEE74577A286B2D557056
          D24BCB66A795B230FF00F503845443AE9717DAFA4FA8E78648D92BE98C2D2F76
          DCEF21A40FBE095DFA1F4A293A47A4DA1DBCC96F86673BC92F68773F8CE3F855
          87D625D19FD02C76381CF7D6D554999B0B0FEF0D1B5A081F2E771F82AEAD0B6D
          FE8FA36C76E11BA114B430C3E93CEE730B580104F93943C3DD44444111101171
          B80F23FDA20E51110111101111011171238B58E735A5E402435B8C9FB0CF0839
          5D6463646398F00B5C0820F90BC8D5F7DA6D33A72BEF15B2B19052C664264386
          E718009009C1247604F3C03D9677D3D51D55EB0D73EE345799B4CE972F7FA12C
          6D0D25A410034001D277C12481F083C4A99AA7A2BD54CD3CB19B75D666992596
          4C35910930FDE06464F7E071D82D6168B8525DADD4D5F6DA96555154B3D48A68
          C82D7B4F65927557D37EADA112D4DAAE945768630F7B44D23D931E01F208C939
          F2076518E977537A81658A9AD7A5D95579A384EFFD03691D5386F396B7602E6B
          727C794989D22631BA51541D36EBB69FD6B54CA27C53DB2E0434FA7290E8C92E
          70C093006301B927192F0D00956D525441574D154524D1CF4F2B43E396270735
          ED3C8208E08FBA0F3357E9DA1D55A76BACF738DAFA7A98CB325B92C711C387DC
          1E5655B06A6A8E9C4D73E9FEBC88D55B839BFA693687361664FF0071AD3DB3DC
          71DF95B05C7820101DD867E5539F517D36935B581972B6B40BC5BA3718D83FF7
          8048CC7F7F247DF8F2A8EFD13D4D515576AFB1BE289945147FA9826DA419B76D
          E47B403E771CF2E3C719570AC31D3CD762C9A8ED51BE0959514FB6012564AD6E
          D77F931CE2DF68E36B5C412CDC4F256D3A491978A4A5AD89B4E5AF8F8F521738
          8C969E0BB69C1C679033ED3E3073115C9143F58741535D75647679AADD1D45D3
          74F6B7B29437D373000EA72FC0696F6DA072392EF04F93D13EA35E3476A8A6D0
          3AE5AC829407474B3388FED3B761ADDD9E5848239C9C91CE1681D61A7A9AF76D
          63DC65A7ADA279AAA5A8A707D48E500F6C60B81EC5BC6E1C2A1B5C694BA6B8A8
          3495F13AD1A8A2A7373A1967735BB88DA248778E5E464138FD990395AA892EA1
          A6770F6F9DDD88E5705D97168C87000925A718FCFF000B3C7427AAF73AABF334
          66ADA56C35D4E1CDFD44B298DC0B780CD8460F059800F6C92AFD8AB29C00FF00
          D4C0607B2231C9EB03BB7B8867DB04E034E4EE271E398297FA92D074F78D34EB
          8D21860ACA1325439EF63844D8891BC641DAD24BB71C82E79EDD8AADA8740755
          B40DBA0AAD0D7765D2DD5A04A0DA6612C79776788E4F6B8118F70055FF00D796
          D53BA47A90D07AFEBB69C3BFB11091FB439A5DC1238DB9C9F0327C2F8F40F504
          BA97A676BABA9344278734EE6524DB8303000D0E6FF83B6E0ECE7820F95452BA
          17A41ADB556B782FBD4733C54D4F2B1F27EA6A07AF306F2D6B047C35A0819E5A
          56ADC7B89E79FBAE51017573DAD735AE73439E70D04F738CF1FC02BB1201193D
          FB2F94D21616ED00F23765C0068F93FF00EBCFFB5043BAC3AD1BA1B4256DDA31
          1C95A4B61A48E4380F95DDBF80039DF7DB855AFD365EF5D6ABBB5DEF97EBA1A8
          B0BFFB42391800330F11018DA00233DF3C7E454FD5BD5570EACF50E82C9A7586
          A29E9E7969A858D787099DB8EF9B7607B4B5A0E3B000E38E4EB2E9BE90A2D0DA
          468AC941EEF4C6F9E53DE695DFBDE7F27B7C00027D59F4930182792888882222
          022220222202E1C435A5C738033C0C95CAEB2B98D89EE91C18C0097389C60793
          9F08282FAC2929D9D3BA389AD8DAF9EE6C7BC87961716C646768FF00A9C6D19F
          18015BBD3D9BF57A134D54B23869E396D94D28869DA5AC66E8812D1924ED1918
          19CF1DCAAFBEA9295B5BD2DA973E6A48852D645237D4712E7FB48DADC34E1DEE
          CE3E0672A45D01A9AAACE8FE979AB253248298C6096069D8C739AC1C7C35ADE7
          B9F282C13D8F9590F5C491F4CBAFF1EA0A214D119EA5DEAD1548936864ACDAE9
          DAF00E5BCB9C768F690E68056BC5427D5AE9A7D7691A6BDD235BEAD1C81B3B44
          40995878682EC67824F1DB93DBCD812BD5BA0348F53EC42ADD1CB1563DB1C5FA
          88DEF6CD4C3FB64C2F8C3B0DC003D8E0430B9CEC649261F688F5274529ED9486
          D8FBAE9B9F0CAAA8A69A598D34AF91EEDB1C44F0017ED04341932D2E2D2303A7
          D39EB8B63A5A5D38E96F135CA5A38DCE75782DF4C3771200E1BB097E1AE00BDC
          49DDC0056807C4D7B1EC7E5CC782D2D27C1CE7EFE54BB11BD21AC74FEAE133AC
          770A6A996190EF8C0C3DA40009C1E4FEE0370E33919E0A92C80B98435C5A7E46
          0E3FDAA6F55E8D9B475C2BF5369E7BA1A4F5237FE8E95A1863E031CE186E08C7
          182300649E42B1344EA36EA4B51A9313E19D8E21EC2C2D18C9C16E40241C7E50
          679FA99E95D4415326AAD3D451CD4F3CAE7D7C3041995AF70197FB7BB7239E38
          24939CF1EF7D276BE6575A9DA42E73C86BE9374942D7478069F0DDCD240EE1E4
          9F773EEF2B44BC6F639BC7208E470B22F5B7A7170E995EE0D61A0E4ABA5B7B5C
          E73E58E5DEFA391F90782D27D320E39CFDFC2BA5B5D3F1B0E5DB40E49EDC2ABB
          AF17EA5D2964B2DEEA281D593D3DC981950C2DDF4EC3932168FF002CC61CDC76
          F27B05FB3A37D49A0EA158992B2731DDE10E159487682C7707734772CE700FFB
          E57D3AE5A5E4D4FD3DBA45454EC9AE54F13A5A6247BC6002E0C3DC12076F380A
          47498AD473AC5D38A0EA2691A2BC694104773863151433C4DF4C54C728692090
          3382092323B9F009502E84F54DFA52797426B58EA63929679A38662E639B4F8F
          73A37639201F50E72780000AC3FA64D450DF7A5D456E710DAFB3FF00CACD1FB9
          A5A013B0E4FCB7FED85F8FAE3D1AA6D5F4D35EAD120A3BE46C2F98450970AD21
          BC0C67DAEE3823E794D316D5D690DCED35B4D27EAA18E7826A72C89CC0F21C36
          87349C80EC72DC9C73C8F8CF3F4AFEB58B5CEB6D30F198612D937C80079731E5
          9CE091D9C3B67F2BE1D24EB9D458A7FF0086BA9CDA9A275246216554B4EEDF19
          68C06CA0007180DC3B0EC9249202EDD25BF41A8FEA5F505DECF4EFA9B6D452C9
          1FEA9CD2FD8DCB76B81006D6B8B4E011F6CA7C1A7111100F6E1676FA9AEA8D55
          99EFD2960A89A92ADEC63EB6ADA761631DCB6363B1DDC3B90781C792AE0EA6EA
          B668BD195F7A7D3CF50E85BB63643197FBCF0D2EC766E7192B2EF46BA7959D51
          D615DA8F513A336986ABD4AA6EC737F5721F77A6DC60068C8DC41CF238E54F34
          AB37E98BA6674F598EAABBD3B24BADC616BA8E377260808C8393D9EF0467E000
          3C90AFD04E4E460678FBAEB18780376C1C766F8FFD7FEB0BBAD4A0888A022220
          2222022220211904671F7444119EA3DBAB2E9A16FB476F74AEAB9A99ED898C73
          5849C7EDC90700F9F3F042AB3E952F73C1A72B74ADE00A7AEB7D43A482295E04
          9246FF0071C37BE03B3CFDD5F2A89FEB11699EB553C759491C34F397D2BAA208
          7D26FBCC6221E9804FEEC8E4F3FBC71C20BD8FD9437AC16F75D3A69A8691B532
          D297D2B8FA913B0EE39C630490718C0E4E71C298870278702700E3ECA07D47D7
          DA7AC7A72E3EBDCAD93CBB8D1BE95D565AF2F380E8FD997021A4FE0E3B26157C
          5430E97BD56F486CDAA74CC96E6DE4D01FD74D54D6C4FC34E1CE6B88397E1A43
          9CE772D1C01D95CFD2DD4D67D49A768E5B6BA8D9591D34714F0C2D630B434606
          1AD270CEE5A09E01E705423E97AA66AAD1B5F4EE86AE1A1A5AC9194B14B9DB1B
          7BEDC9717670E196BB81C11DCAFCAED3FA7FA29787EA233554ADBACE2034A660
          FDA5E4B890E70DDED6B481CFBC900809A2F473439A5AE00B48C10556B4B669F4
          3DDAF3736CB5953696D3B67DF3D561AC6871DD1ED1FB9C3B8763CED5625154C3
          5B4D154D348248646E5AE69E3FFEF8FB2FAC8C6CB1BE391A1CC702D7348E083E
          107E2B25D28AF36E8EB6D9389E9A4E73920B4F9041E5A47C1ECB8BEDBDB75B45
          5D1E63699A37461F2C4240DCF92D3C3BF078517A4B35BBA7CD7D550BAABFA7D4
          4AD6CCD7CA1FEE386C6D19193C90D1CE492327014D1F97C60973E1C61C7B76EE
          41EFF83FFD8AA3F9F53D4DDFA7FD41A9ACB4CC29AAE86A1C19244EDD1BE32E27
          69C70E61ED8EDC7D96BCE97756F4F6BEB7163A58EDD770364F453C81AE7647EE
          61CFB9BC771D9571F55F656537F4DD406CF0D431D2FA13CCE3BB0368232010EC
          FB5C3032D0067B951CBC7D3CD65D6D5497CD1757188AAE9DB39B7566E89ED73B
          92D6BF9E39E338EC13F98D3FAF12F43E9E7FF67BAEDAAF4FD3CF1CB48E8E50CC
          4B80ED9265A5A3B38E1C7F032B524ACDECDB970C9EED382167EFA78E90DFF48E
          A2AABF6A591B492889D4F151C4E64A240EC12E73C670063803073F6EFA130A0A
          E7A91D23D3DAFEB22ACBA8AAA5AE8D9B3F55493063DCD1D83816907F3C11DB2B
          D6E9AF4F2C9D3DB64D49636CCF754383E6A8A870749211DB2401C0E703EEA608
          ADF84A00C0C2210A95FA8FEA641A5F4EBEC96AA87FF5EAF8C1698FFF00022279
          7B8F8270401FCFC6635116AC3AEBAB2BBA9BAE29B46691632AE9A9E52C618C8C
          544D8F738BB24063479FCAD25D36D2349A2747D059691ADDF1303AA241CFAB31
          1EF713819E7B71D80556FD3074F27B15965D5372796DC2EB0814F110F1E941DC
          1787632E71C1EDDB183CF17C8E476C2625888880888808888088880888808888
          04E0138271E02AD7AE76592E1A0EB6AEDCF652DC298B6A9B54181DB3D3F7E727
          B7ED032013D87625594BE3594ECAAA69619012D7B4B4E0E0F231FF009A0AE34E
          EB8B8DD7A594BAA6CD4F05E6A9B460D45335C2271963243C0C03871C1E3EC31D
          D541AB3ABDA4B5D592F968D4B67AFB6BDBB648BD8DF5CC8D3CB738F6B81240C8
          EDDD7A5A02BA9BA65D5DAAB15CA68E96C57973BD263462065535CDF79049D80E
          D21A09E0633F2ADFBF74AB44DFAFD1DDEE7A768E6B887EF748DDF1B2421DBB32
          31A4364249E7703BBCE42A2BDFA4BD3B353E84ABBCBAAAA1B0DD6A8BD919C7B9
          B1EF8F97071E0B8F80C396791DED7EA2E8EA0D73A5EA2CF72DCD0E22486569F7
          432004070EFE091F8257AD6FA175B99051D1474D05BA00190C51C65A2389AC00
          4606EC7079CE318C371FE4BF7B812D2012D24771DC2828EE836AA75AEAAA741D
          E9FE8545A87A317AD1FA65CF0F3901C701DBB707340192012E392AF16B9B2372
          D21CD3C2A5BABDA26E96592AB5A74E63632F7BC4B70A4744256D6307270D3D8E
          46486E0BBF2399A74AF5A52EB6D394B5DEAC4CBA085A2B29587FE9C8382E00F3
          827233C8E319C82825F57494D5918655D3C33B0670D9581E065A5A783F2091F8
          2428259AFD359753BB4B545BEBE9ED32465F6EAF744E7005EE1B61FDA5A00DCE
          0D07F6B58D0FC123360E7838C13F95E1EAAB63EB6DFEB534DFA5B9C043A0A869
          77B7904B081CBDAEDA016630EC0F20603B6A5B5536A4B24D6CAC8AA24A3AC680
          F00066D18DC09CE0F0E038EFBB1918CAA8BE9DAEF5764BF6A6D09A89EF8EE949
          506B29DB34FEA17C6FC6403DB23DAEEE73B89F055B3A46F6DD4F6486B401192E
          0246303C00E18C86BCE37B739F7018238C7755275F2D8FD2371A3D7968B5D255
          4B1D447FAB739CF6C8C1DB7641C6300373C6CE08CE78BF05F5945F8ED356DB85
          BA92B6373BD3A885B23439BB4FB86791E3BAFD8A0FC976AFA4B5DBA7ADB84C20
          A5846E7BCE7E78000E49270001924900024AFC3A6F51DAF52535455DA2ABD782
          9A6753CAEC10D0F01AE3C9EFC3876ED920E082042F5C5554D56ABB4D8228AA8B
          648E7A991B0D492251EA8D832EEC063739CD05D1F1B0F7CFD7576A7B374BB4FC
          3575145E94134BFDC8699CF7665F4F6FF39C3792067B9E5279AB494EB6D576AD
          1BA76A2F17CA830534630D0D197C8E3D98C6F971F8FE4F00AC9BD2FD2953D60E
          A65C2EB79358DB44323AA6A242E0E24EEFEDC01C411CF7381D9A7B120AF9412E
          AAFA83D7F1473B9D4B6AA53FDC31373150C473C804FBA476DC7939F8038D7FA5
          34FD0696B0D0D96CF17A543491EC634F727392E27C924924FC948E7653F1E9C6
          CF48323898D10B5A477FDBDB000F8EFF008C0FE3E88880888808888088880888
          80888808888087B7088828FF00A8BD08FBE51C175A57421F4DEEDB381E907839
          1B801C871241EE4F03B654F7A53AE2975CE9382E1196475F0810D7D3B73FD898
          341239C71CE47FAF0A4F78A065CED7554323DF1B2A23319730E1C323C2A03465
          BAEBD1DD706DE5B25CED1A86B23863F4E111112869E46E76327B72EEC0938E13
          468B45C64FB7DA79EFDB85CA0EB2B1B244F64832C702D70FB159D6BEBA7E9275
          41F2CD0D341A4AA236B055CD1BBFB4D73C17323DA31918FDA4F6C95A3145BA91
          A368F5BE99A8B5D59F4E6C1753CE09062931C3B82323E42091D154435747054D
          2C825A7998D92378390E691907FD2FB2A2BA0776ADB75E6E7A6754D7B6A6EF4F
          26236BE60F3196B7DCD6B71C64724838F015E2D95923CB36BF21AD7FB9840C1C
          E392319E3B771C67B8415C5DAB2A743EB1ACBB4B6F6C964B988FF5B56C7B77C6
          58DDAD7609DC71CE5A06037907390655AD2CF4DAAF44DD2DAE7FAB0D6D33BD37
          B0E79C658463BF383F75E95EED74F77B3565B6A638DD4F5313A2735CDDC06470
          71F63CAF1344DBCE97B7C564B8DD21AAAA7BDF241EDD8E747918E3279FC71F1D
          9044FE9CF529BC68565AEAD924372B2BFF004334733B323B67B779E49C6411CF
          969F1856B1381C027F0A8FB457D3E87EBCDCED55921A6A5D42054D29909D92C8
          E2770CE3F76E181F9577E79C610557D5B75BF4C55C9AD6ECF746CA4A6651D345
          031CE92794B9CE6E48E1A01C63B67DDBB3ED0A89D2FD36D67D61ABA8BFDF2BE6
          A3B64B297412D59738B813C98D99C60018F1CF6F2B6461FBC1DCCDA09C8DBCE3
          1F395CB5B8738E073F039FE551E1E8AD2768D196186D361A5105347CB9C797CA
          EF2F7BBC92BDE445341111011110111101111011110111101111011110157FD6
          4D0F1EB4D32D8C47BAE54B20929666BB69872E19779ECD19381B8E303195602E
          B21708DC636B5CF00ED0E3804F8C9C1C7FA41557D3FEB4ACD51A7E7B65F22A83
          7AB3384354F9A1F4C83C868702E2E2FF006B89381F1DFBDAC083F3DB3C85943A
          DECB974DFA9F49A92C71FE9692BDBEB4B04327A7054B98E06489ECC00ECE738E
          E77177E346E8CBED2EA9B2515E6DDE8369EA809CB7D33BC12D2D70C9C6487023
          78E08040F94C3523444419D3EA3746D7D0DF2975D58DCE8DF03E28A78E99C4CD
          21C9F7B41E38DAD1B5A09E4BBC2B63A4DAAE9358E8AB75C20AC8EA6AD9186540
          381244FED878C9209C77E3777C0EC2595F4B156D1CF4B531B65A79D862963776
          7B1C30E07F825660D154974E8CF5126A0B9C5153E9EB839CDA69BF50238DD869
          77AB212480008DBBC9CFA7BFD83DC92352BC90D2434B8FC0519D75639AEF6E82
          4A59E182AE8A56D532591BEDCB32707E01CF7E718CA90FAEC748D6C6F89C449B
          1C3D4E41DB9C63C9EC71F072BBCCD2F66000791904E0633CA0CC7F50B776D769
          CD15A89ED732E349580480301182D0FDCD39C6D3B72D3FE430568AD3776A6BED
          96DB74A578D95B4CC9DB1FA9B8B4103238F209C13F3C2A87EA7AC22A34157D7C
          71EE752CB03E3698DA3D26021AE2C3E41DE073C8238E17BFF4CB5B1D5F47ACD1
          C422FF009674D03FD2CE03848E3EE040C38820F191CF7F093A2D444440444404
          4440444404444044440444404444044440444405C3812D2012D24771E172883C
          8D5362B76A2B154DBAF34B15552BD8ECB64716E0ED237070E5A704F23C12B39F
          4E75FBBA6DAEE4D0D7764947A6E2964822FD510D7D3F2E709DEF2E20EFCE5D8D
          AD1C1032485A8D56FD60E9ADBB5ADA6A6A63A169BF4503E3A7943FD3F572386C
          8472E683C81F23E3282C3A59229A9E2929E46CB03D81D1C8D7EE0E691C107CF1
          8E57D5523D17EA9FEAAADDA3F5998E8753534CEA58620CC47386E7F6BBB170DA
          73C8CF180AEE40233E70A07D5DD0745ADF4D56D3BE86096E6D809A599CC01C1E
          DCED6176E69C12E3819DA0F273D94F175958D9627C6F6B5CC702D2D70C820F82
          3C8419FBA1FAFE4B6EA583A717299F58FA289F4F1CECA50C6C724580631EECEC
          0D1DCB492492481C0D04D21CDFFB859A3ADBD37BAD9F5447AC349D74148E926C
          D43E47CAD7B1C72E739CE2E2DD98046006F1818F2ACEE90F546D1ADA80D21AA8
          23BD5337FBD06E003DA38F523E0659D8FDB383F2983E3F5291473747EF5EA170
          F4DD139A013827D46F7C77182579BF4D37AA2674B2C56F96A08AB3EB3D913DE1
          C48323CFB368FCFB4FB80E4F18507FAB0D62EAC96DFA3AD04CF2B9EDA8A96463
          7173BFF0D9F707392A7978D293593A7360ACB3D30A0ACB1D135EE869A6DC7386
          FA801C8049F712EEE465A33B9455B8D7827003BC8E5A4765D9443A6B7E7EA4D3
          54F74AA0F8EA1C5F1491BDBB1C1CD7907737FC7E761FDB9FBA970782EC0CE7F0
          558472888808888088880888808888088880888808888073E111101111010E71
          C2220A23EA0BA5525DC4DABF4D495ACD414C18E7454EE25D206F00B31CB5C38E
          DE01FE7DCE8775421D5563A3B75F2AA16EA366E88C5821F28601EE70C7B5C79E
          33E0956DF9CACDDF505D2A928659B5AE888AAA1B8091D3DC23A591C1E4103FB9
          181DB1C970FBE7E55D3F5A3F7B776DC8DDF195CBDA5CDC0716F2390A8EE87F5A
          E8F51D1476AD575B4B4D7A8D8E226711147335B81C971C07F7240E385675E359
          698A1B1CB73ACBCDB1F42C6FA81C2A6370908E40673EE7640C01CE70B365287F
          AB7D60C99943A3AD3572C9581FEBD6C31B493823FB6C2EF279276FC6095536B1
          E96EA3D1B416ABA563249282B23697CB4BB83E06B834B9AF6F70707B7D8AB53E
          9EF4FF00FC71D46BEF51ABA12CA26D74AEA3824735E44AFE79E3FC1AE183C724
          63B15A2356E9EA3D51659AD5726B8D24E0B5E58F2C7805A47B48EC79C7E0956B
          D92AB3A5FD14D1147FA1D474F5957A824244D4F3D54998C16F00EC0064823CE7
          042BADC4B41C34BB009C0C73F6594345DFEF3D0BD5DFD0B5A3AAAAAD35AD60A5
          7C5397D3C316F3991AD233B8796B71DF9CF0B53D3D4B678A39A29592C1230C8D
          746C2439BC16907F07F9EE159BF27E23957628AC772ABBF5A20965B854C8DFD4
          35D3B228BD2FF2DC0E061A32E047BB71E4ED27122B6DC68EE7470D5DBAAA9EAA
          9A604C72C12B6463B07070E6920E082383E1779E08A69A095F146F92079731CF
          664B4969692D3E3838CFC642AA346EA4FF0083758D4E8EBCC13C16FABA81259A
          6FD39647FDDF73A368DC76B03C90D6E32C030EC70A0B79132880888808888088
          88088880888808888088880888808888088880BA5407182411B773F69DADDDB7
          271DB3E3F2BBA20AB3A95D10D31AE2735A5AFB55D70735346D68121F06461187
          639ED8273DD53B6AFA5EBFBAE0D175BD59E1A261690FA6649248FF007372082D
          686FB7710727900639C8D6A8AD88F690D296ED2563B659ACD4D1C7474609DEE1
          97BDE460BCFF00F33B279F8C8EC7890A22820DD62D0B45AF3474F4352D70AC80
          3A6A2959B43DB2ED203727030E24023201E3E1503D31EA0DE7A7F761A2B5AD33
          E97D4A9732A25A99CB0C424036912309DA32E2778CF01A011DC6B59A364D13E3
          95A1D1BC16B9A7C82AB1EB374A6D7AE2D357594D4B041A8991974554D886E988
          1C31E72DDDDB0327032A8B1DB56C74AC632480EE91CCC7AA33ED0770031C9046
          08F039CF850FEACE8D9B58E889EDF4530A4BAC618FA6A8DC5C63735CD246EEE4
          1031E3271955B7407A80EB555C9D3ED572BE1A8B78DB435B580D3FAC0BC06C25
          B260EECB806019CB41EDB46740B865A46320F0A083F48F545C35669675C2F542
          686BA0AB9E8A48C125998C8048393B8641E78E72071C99C6EF760F1F07E567CB
          C50D7F4CBABD6D9ECF70B83EC3A86E2F96AE84401B4D139E06E3BBF6E401BBE7
          6B7E795A0A3707C6C70735C0804169E0FE107644440444404444044440444404
          444044440444404444044440444404444044440439C1C7744414AF5EFA5357AB
          9F4F7CD34D87FAD5339AE92195E04552D672D058E6B9AF782303760609072A3D
          D13EBA32AB362EA155B69AE4D99D1C156EA76410068030C9082035C0E40F6818
          033CAD14F0E2C218435DE091954F758FA2B49AE657DD2D550CB75F36358E2E19
          86A00CFF00D40067763B3B93E31E55D136EA9D9FFAFF004F2F74516F32BA95D2
          4263760EF68DCDC1FC8FF4A09F4C7AED9A97474764AC9DF25DED11B58FDEC2DD
          D0E486104F7C01B4FE0281697D7DAD7A371D1D87A8B68A8AEB648D2692A1950D
          91EC6B401E9B5D9C380C8E09C807E30BC8FA76B8C1375DAE33DB689F0505C195
          4E8A26BB68823DDBDA1C07078E12A46BB4445011110111101111011110111101
          111011110111101111011110111101111011110170F6970C0739A720E463C1ED
          CFCF64441E66A3B35BEFB6E7D15DE922AAA597D8E63C76C91C83DC1FB82A31A0
          3A59A7342DD6B6E16365519EA59E90F5E63208A3C83B1BF6C8CE4E4FDD115B9A
          4A4ED1114511110111107FFFD9}
        Stretch = True
      end
      object QRLabel31: TQRLabel
        Left = 537
        Top = 136
        Width = 122
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1420.812500000000000000
          359.833333333333300000
          322.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Authorized Signatory'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object MasterSds: TSQLDataSet
    CommandText = 'exec p_BoatInvPrint 1, 1, 2018, 1, 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 64
    Top = 8
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 94
    Top = 8
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    Left = 127
    Top = 8
    object MasterCdsAddr: TStringField
      FieldName = 'Addr'
      Size = 282
    end
    object MasterCdsinvoicedate: TSQLTimeStampField
      FieldName = 'invoicedate'
    end
    object MasterCdsinvoiceno: TIntegerField
      FieldName = 'invoiceno'
    end
    object MasterCdsitemNo: TIntegerField
      FieldName = 'itemNo'
    end
    object MasterCdsDetails: TStringField
      FieldName = 'Details'
      Size = 250
    end
    object MasterCdsUnitPrice: TBCDField
      FieldName = 'UnitPrice'
      Precision = 10
      Size = 2
    end
    object MasterCdsQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object MasterCdsAmount: TBCDField
      FieldName = 'Amount'
      Precision = 10
      Size = 2
    end
    object MasterCdsGstPerc: TBCDField
      FieldName = 'GstPerc'
      Precision = 10
      Size = 2
    end
    object MasterCdsGst: TFMTBCDField
      FieldName = 'Gst'
      Precision = 18
      Size = 4
    end
    object MasterCdsAmtAfterTax: TFMTBCDField
      FieldName = 'AmtAfterTax'
      Precision = 18
      Size = 4
    end
    object MasterCdsTaxAmount: TBCDField
      FieldName = 'TaxAmount'
      Precision = 10
      Size = 2
    end
    object MasterCdsInvoices_id: TIntegerField
      FieldName = 'Invoices_id'
    end
    object MasterCdsGstinRecipient: TStringField
      FieldName = 'GstinRecipient'
      Size = 30
    end
    object MasterCdsPlaceOfSupply: TStringField
      FieldName = 'PlaceOfSupply'
      Size = 50
    end
    object MasterCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
    object MasterCdsTaxPayableRcm: TStringField
      FieldName = 'TaxPayableRcm'
      Size = 10
    end
    object MasterCdspan: TStringField
      FieldName = 'pan'
    end
    object MasterCdsCinNo: TStringField
      FieldName = 'CinNo'
      Size = 50
    end
    object MasterCdsGstin: TStringField
      FieldName = 'Gstin'
      Size = 50
    end
    object MasterCdsTotalInvoiceAmount: TFMTBCDField
      FieldName = 'TotalInvoiceAmount'
      Precision = 18
      Size = 4
    end
    object MasterCdsNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object MasterCdsC_GST_Str: TStringField
      FieldName = 'C_GST_Str'
      Size = 50
    end
    object MasterCdsS_GST_Str: TStringField
      FieldName = 'S_GST_Str'
      Size = 50
    end
    object MasterCdsI_GST_Str: TStringField
      FieldName = 'I_GST_Str'
      Size = 50
    end
    object MasterCdsC_GST: TFMTBCDField
      FieldName = 'C_GST'
      Precision = 18
      Size = 2
    end
    object MasterCdsS_GST: TFMTBCDField
      FieldName = 'S_GST'
      Precision = 18
      Size = 2
    end
    object MasterCdsI_GST: TFMTBCDField
      FieldName = 'I_GST'
      Precision = 18
      Size = 2
    end
    object MasterCdsSacCode: TStringField
      FieldName = 'SacCode'
    end
    object MasterCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 100
    end
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 157
    Top = 8
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    FontHandling = fhSubstitute
    Left = 672
    Top = 17
  end
  object QRRTFFilter1: TQRRTFFilter
    Left = 904
    Top = 16
  end
end
