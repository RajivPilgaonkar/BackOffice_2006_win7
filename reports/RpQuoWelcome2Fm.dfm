object RpQuoWelcome2Form: TRpQuoWelcome2Form
  Left = 199
  Top = 67
  Width = 954
  Height = 651
  VertScrollBar.Position = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 56
    Top = -188
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ReportCds
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
    Page.Values = (
      127.000000000000000000
      2794.000000000000000000
      444.500000000000000000
      2159.000000000000000000
      254.000000000000000000
      254.000000000000000000
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
    object TitleBand1: TQRBand
      Left = 96
      Top = 290
      Width = 624
      Height = 240
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = TitleBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        635.000000000000000000
        1651.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRDBText1: TQRDBText
        Left = 51
        Top = 29
        Width = 61
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          134.937500000000000000
          76.729166666666680000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ReportCds
        DataField = 'PaxName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel1: TQRLabel
        Left = 16
        Top = 29
        Width = 31
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          76.729166666666680000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dear'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 16
        Top = 63
        Width = 373
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          166.687500000000000000
          986.895833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'We welcome you to India and hope you had a pleasant flight. '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 16
        Top = 162
        Width = 598
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          428.625000000000000000
          1582.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          'Please find enclosed some important travel documents for your tr' +
          'ip:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 16
        Top = 180
        Width = 598
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          476.250000000000000000
          1582.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1)  Set of Vouchers'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel9: TQRLabel
        Left = 16
        Top = 200
        Width = 597
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          529.166666666666800000
          1579.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '2)  List of Hotel & Agent Addresses'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 16
        Top = 220
        Width = 596
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          582.083333333333400000
          1576.916666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '3)  Detailed Tour Itinerary '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText2: TQRDBText
        Left = 16
        Top = 89
        Width = 600
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          42.333333333333340000
          235.479166666666700000
          1587.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ReportCds
        DataField = 'Organisation'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 96
      Top = 530
      Width = 624
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666660000
        1651.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = QuoLinesCds
      HeaderBand = TitleBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRLabel3: TQRLabel
        Left = 16
        Top = 1
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          2.645833333333333000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 35
        Top = 1
        Width = 579
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          92.604166666666680000
          2.645833333333333000
          1531.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QuoLinesCds
        DataField = 'QuoString'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object SummaryBand1: TQRBand
      Left = 96
      Top = 550
      Width = 624
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
        1651.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel13: TQRLabel
        Left = 15
        Top = 14
        Width = 598
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333300000
          39.687500000000000000
          37.041666666666670000
          1582.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          'There is also a sheet with General Information which includes so' +
          'me important notes on travel in India which may further help you' +
          ' to prepare yourself for your trip.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel16: TQRLabel
        Left = 15
        Top = 163
        Width = 98
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          39.687500000000000000
          431.270833333333400000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Tours Executive'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 16
        Top = 146
        Width = 67
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          42.333333333333340000
          386.291666666666700000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ReportCds
        DataField = 'UserName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRDBText5: TQRDBText
        Left = 16
        Top = 65
        Width = 596
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          42.333333333333340000
          171.979166666666700000
          1576.916666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ReportCds
        DataField = 'ClosingRemark'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 96
      Top = 168
      Width = 624
      Height = 122
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
        322.791666666666700000
        1651.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
    end
  end
  object ReportSds: TSQLDataSet
    CommandText = 
      'SELECT LTRIM(RTRIM(PaxName)) + '#39','#39' AS PaxName,'#13#10'CASE WHEN LTRIM(' +
      'RTRIM(COALESCE(a.IndiaOffice,'#39#39'))) > '#39#39' THEN LTRIM(RTRIM(COALESC' +
      'E(a.IndiaOffice,'#39#39'))) '#13#10'ELSE LTRIM(RTRIM(COALESCE(a.Organisation' +
      ','#39#39'))) END +'#13#10#39' is represented in India by Odyssey Tours & Trave' +
      'ls Pvt. Ltd. Our head-office is in Goa '#39' + '#13#10#39'but we operate our' +
      ' tours with a network of handling Agents throughout the sub-cont' +
      'inent. '#39' AS Organisation, '#13#10'q.Quotations_id, ad.UserName,'#13#10#39'On b' +
      'ehalf of '#39' + '#13#10'CASE WHEN LTRIM(RTRIM(COALESCE(a.IndiaOffice,'#39#39'))' +
      ') > '#39#39' THEN LTRIM(RTRIM(COALESCE(a.IndiaOffice,'#39#39'))) '#13#10'ELSE LTRI' +
      'M(RTRIM(COALESCE(a.Organisation,'#39#39'))) END +'#13#10#39', we wish you a fa' +
      'ntastic time on tour with us '#39' AS ClosingRemark'#13#10'FROM Quotations' +
      ' q '#13#10'LEFT JOIN Addressbook a ON q.PrincipalAgents_id = a.Address' +
      'book_id'#13#10'LEFT JOIN AdmUsers ad ON q.AdmUsers_id = ad.AdmUsers_id' +
      #13#10'WHERE Quotations_id = :Quotations_id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 216
    Top = 32
  end
  object ReportDsp: TDataSetProvider
    DataSet = ReportSds
    Left = 248
    Top = 32
  end
  object ReportCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReportDsp'
    Left = 280
    Top = 32
    object ReportCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 101
    end
    object ReportCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 249
    end
    object ReportCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object ReportCdsUserName: TStringField
      FieldName = 'UserName'
      Size = 50
    end
    object ReportCdsClosingRemark: TStringField
      FieldName = 'ClosingRemark'
      Size = 180
    end
  end
  object ReportDs: TDataSource
    DataSet = ReportCds
    Left = 312
    Top = 32
  end
  object QRRTFFilter1: TQRRTFFilter
    Left = 592
    Top = 72
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 632
    Top = 80
  end
  object QuoLinesSds: TSQLDataSet
    CommandText = 
      'SELECT q.QuoLines_id, REPLACE(q.QuoString,CHAR(13),'#39#39') AS QuoStr' +
      'ing, q.Quotations_id'#13#10'FROM QuoLines q'#13#10'WHERE Quotations_id = :Qu' +
      'otations_id'#13#10'AND TrsType = 1'#13#10'ORDER BY QuoTime'#13#10
    DataSource = ReportDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 440
    Top = 32
  end
  object QuoLinesDsp: TDataSetProvider
    DataSet = QuoLinesSds
    Left = 472
    Top = 32
  end
  object QuoLinesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = ReportDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'QuoLinesDsp'
    Left = 504
    Top = 32
    object QuoLinesCdsQuoLines_id: TIntegerField
      FieldName = 'QuoLines_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QuoLinesCdsQuoString: TStringField
      FieldName = 'QuoString'
      Size = 254
    end
    object QuoLinesCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
  end
  object QuoLinesDs: TDataSource
    DataSet = QuoLinesCds
    Left = 536
    Top = 32
  end
end
