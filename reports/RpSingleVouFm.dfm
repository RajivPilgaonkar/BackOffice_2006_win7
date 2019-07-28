object RpSingleVouFrm: TRpSingleVouFrm
  Left = 70
  Top = 83
  Width = 689
  Height = 438
  Caption = 'Single Vouchers.'
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
  object QRVoucher: TQuickRep
    Left = 2
    Top = 3
    Width = 653
    Height = 922
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QueryVoucher
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
    Page.PaperSize = Custom
    Page.Values = (
      99.06
      3048
      99.06
      2159
      99.06
      99.06
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 80
    object QRBand1: TQRBand
      Left = 30
      Top = 460
      Width = 593
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        3.30729166666667
        1961.22395833333)
      BandType = rbDetail
    end
    object QRGroup1: TQRGroup
      Left = 30
      Top = 30
      Width = 593
      Height = 430
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1422.13541666667
        1961.22395833333)
      Expression = 'QueryVoucher.voucherno'
      Master = QRVoucher
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 6
        Top = 53
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          19.84375
          175.286458333333
          257.96875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'Organisation'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 5
        Top = 158
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          16.5364583333333
          522.552083333333
          188.515625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Client'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 375
        Top = 149
        Width = 87
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          1240.234375
          492.786458333333
          287.734375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Voucher No.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 463
        Top = 149
        Width = 58
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          1531.27604166667
          492.786458333333
          191.822916666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'VoucherNo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 15
        Top = 175
        Width = 55
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          49.609375
          578.776041666667
          181.901041666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'tourref'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 74
        Top = 175
        Width = 20
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          244.739583333333
          578.776041666667
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'Pax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 15
        Top = 190
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          49.609375
          628.385416666667
          214.973958333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'TourLeader'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 5
        Top = 233
        Width = 76
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          16.5364583333333
          770.598958333333
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Valid For'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 15
        Top = 249
        Width = 521
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.75
          49.609375
          823.515625
          1723.09895833333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'Description'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 15
        Top = 298
        Width = 521
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333
          49.609375
          985.572916666667
          1723.09895833333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'Remarks1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 15
        Top = 351
        Width = 331
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.6822916666667
          49.609375
          1160.859375
          1094.71354166667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'HotelAgentRemark'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 375
        Top = 338
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          1240.234375
          1117.86458333333
          234.817708333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Issued By :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 449
        Top = 340
        Width = 52
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          1484.97395833333
          1124.47916666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'IssuedBy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 375
        Top = 356
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          1240.234375
          1177.39583333333
          234.817708333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Issued On :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 449
        Top = 357
        Width = 52
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.3020833333333
          1484.97395833333
          1180.703125
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'issuedon'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 7
        Top = 68
        Width = 338
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          281.119791666667
          23.1510416666667
          224.895833333333
          1117.86458333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 119
        Top = 212
        Width = 418
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.9947916666667
          393.567708333333
          701.145833333333
          1382.44791666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryVoucher
        DataField = 'throughagent'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object QueryVoucher: TQuery
    Active = True
    DatabaseName = 'BoDb'
    SQL.Strings = (
      'SELECT '
      'ab.organisation, ab.city, '
      
        'CAST(TRIM(CAST(COALESCE(ab.address, '#39#39') || '#39'\n'#39' || TRIM(COALESCE' +
        '(ab.city, '#39#39')) || '#39' - '#39' || TRIM(COALESCE(CAST(ab.postalcode as v' +
        'archar), '#39#39')) || '#39', '#39' ||   TRIM(COALESCE(CAST(s.state as varchar' +
        '), '#39#39')) as VARCHAR) || '#39'\n'#39' || COALESCE(CAST(ab.phone as varchar' +
        '), '#39#39')) as VARCHAR) as address,  '
      
        'ab.phone, '#39' - '#39' || CAST(ab.postalcode as varchar) as postalcode,' +
        ' '#39', '#39' || CAST(s.state as varchar) as state,  '
      'v.yearref, '
      'v.tourref, case when v.fit = true then'
      '                       v.tourleader '
      
        '                else  '#39'Tour Leader : '#39' || CAST(v.tourleader as v' +
        'archar) '
      '                end as tourleader,  '
      
        'v.voucherno, v.description,  v.remarks1, v.remarks2,  issuedon, ' +
        ' v.issuedby, '
      
        'v.hotelagentremark,  '#39'('#39' || (COALESCE(CAST(v.pax as integer) , '#39 +
        #39') || '#39' Pax)'#39') as Pax,'
      'CAST((CASE WHEN COALESCE(v.through_addressbook_id, 0)=0 THEN '#39#39
      
        '      ELSE '#39'This booking is for '#39' || TRIM(COALESCE(ab1.organisat' +
        'ion, '#39#39')) || '#39', '#39' ||  TRIM(COALESCE(c1.city, '#39#39'))'
      '  END) as varchar(100)) as ThroughAgent'
      'FROM vouchers v'
      'LEFT JOIN addressbook ab ON '
      
        '(CASE WHEN COALESCE(v.through_addressbook_id, 0)=0 THEN v.addres' +
        'sbook_id'
      '      ELSE v.through_addressbook_id'
      '  END)= ab.addressbook_id  '
      'LEFT JOIN addressbook ab1 '
      
        '                     LEFT JOIN cities c1 ON c1.cities_id=ab1.cit' +
        'ies_id'
      '                     ON v.addressbook_id=ab1.addressbook_id  '
      'LEFT JOIN cities c '
      
        'LEFT JOIN states s ON c.states_id = s.states_id  ON v.cities_id ' +
        '= c.cities_id  '
      
        'WHERE mastertourcode = '#39'OTSW'#39'  AND mastertourdate = '#39'19/08/2001'#39 +
        '  '
      'ORDER BY v.yearref, v.voucherno')
    Left = 72
    Top = 3
    object QueryVoucherorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object QueryVoucheraddress: TStringField
      FieldName = 'address'
      Size = 254
    end
    object QueryVoucherphone: TStringField
      FieldName = 'phone'
      Size = 100
    end
    object QueryVouchercity: TStringField
      FieldName = 'city'
    end
    object QueryVoucherpostalcode: TStringField
      FieldName = 'postalcode'
      Size = 254
    end
    object QueryVoucherstate: TStringField
      FieldName = 'state'
      Size = 254
    end
    object QueryVoucheryearref: TIntegerField
      FieldName = 'yearref'
    end
    object QueryVouchertourref: TStringField
      FieldName = 'tourref'
      Size = 10
    end
    object QueryVouchertourleader: TStringField
      FieldName = 'tourleader'
      Size = 254
    end
    object QueryVouchervoucherno: TIntegerField
      FieldName = 'voucherno'
    end
    object QueryVoucherdescription: TStringField
      FieldName = 'description'
      Size = 250
    end
    object QueryVoucherremarks1: TStringField
      FieldName = 'remarks1'
      Size = 250
    end
    object QueryVoucherremarks2: TStringField
      FieldName = 'remarks2'
      Size = 150
    end
    object QueryVoucherissuedon: TDateField
      FieldName = 'issuedon'
    end
    object QueryVoucherissuedby: TStringField
      FieldName = 'issuedby'
    end
    object QueryVoucherhotelagentremark: TStringField
      FieldName = 'hotelagentremark'
      Size = 50
    end
    object QueryVoucherpax: TMemoField
      FieldName = 'pax'
      BlobType = ftMemo
      Size = 1
    end
    object QueryVoucherthroughagent: TStringField
      FieldName = 'throughagent'
      Size = 100
    end
  end
end
