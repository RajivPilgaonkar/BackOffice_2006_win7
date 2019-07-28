object RptAddressForm: TRptAddressForm
  Left = 17
  Top = 144
  Width = 944
  Height = 490
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
    Left = 56
    Top = 40
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
    object ColumnHeaderBand1: TQRBand
      Left = 48
      Top = 105
      Width = 720
      Height = 30
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
        79.375000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 19
        Top = 3
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          50.270833333333330000
          7.937500000000000000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Organisation'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 8
        Top = 20
        Width = 705
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          21.166666666666670000
          52.916666666666660000
          1865.312500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 48
      Top = 135
      Width = 720
      Height = 50
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
        132.291666666666700000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 20
        Top = 3
        Width = 173
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666660000
          7.937500000000000000
          457.729166666666600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ReportCds
        DataField = 'Organisation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 20
        Top = 25
        Width = 693
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666660000
          66.145833333333340000
          1833.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = ReportCds
        DataField = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
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
      object Label1: TLabel
        Left = 264
        Top = 21
        Width = 120
        Height = 19
        Caption = 'Address Listing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object QRShape2: TQRShape
        Left = 8
        Top = 45
        Width = 705
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          21.166666666666670000
          119.062500000000000000
          1865.312500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object ChildBand1: TQRChildBand
      Left = 48
      Top = 185
      Width = 720
      Height = 12
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
        31.750000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = DetailBand1
      object QRShape3: TQRShape
        Left = 16
        Top = 2
        Width = 697
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333330000
          42.333333333333340000
          5.291666666666667000
          1844.145833333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object ReportSds: TSQLDataSet
    CommandText = 
      'select f.*, '#13#10'    coalesce(a.Address,'#39#39') + char(13) + coalesce(f' +
      '.City,'#39#39') + char(13) + '#39'('#39' + coalesce(a.AreaCode,'#39#39') + '#39') '#39' + co' +
      'alesce(a.Phone,'#39#39') as Address, '#13#10'    a.Phone, a.Fax, a.PAN, a.em' +
      'ail, a.www, s.State '#13#10'    from dbo.fn_Addressbook (2, '#39'A'#39') f '#13#10' ' +
      '   LEFT JOIN Addressbook a ON f.Addressbook_id = a.Addressbook_i' +
      'd '#13#10'    LEFT JOIN Cities c ON f.Cities_id = c.Cities_id '#13#10'    LE' +
      'FT JOIN States s ON s.States_id = c.States_id '#13#10'    ORDER BY f.O' +
      'rganisation, f.City'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 248
    Top = 16
  end
  object ReportDsp: TDataSetProvider
    DataSet = ReportSds
    Left = 261
    Top = 16
  end
  object ReportCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ReportDsp'
    Left = 280
    Top = 16
    object ReportCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object ReportCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object ReportCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object ReportCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ReportCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
    object ReportCdsPhone: TStringField
      FieldName = 'Phone'
      Size = 100
    end
    object ReportCdsFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object ReportCdsPAN: TStringField
      FieldName = 'PAN'
      Size = 15
    end
    object ReportCdsemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object ReportCdswww: TStringField
      FieldName = 'www'
      Size = 100
    end
    object ReportCdsAddress: TStringField
      FieldName = 'Address'
      Size = 465
    end
    object ReportCdsPostalCode: TStringField
      FieldName = 'PostalCode'
      Size = 10
    end
    object ReportCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
  end
  object ReportDs: TDataSource
    DataSet = ReportCds
    Left = 296
    Top = 16
  end
  object QRRTFFilter1: TQRRTFFilter
    Left = 720
    Top = 64
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    Left = 696
    Top = 128
  end
end
