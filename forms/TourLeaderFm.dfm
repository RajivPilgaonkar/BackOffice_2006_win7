object TourLeaderForm: TTourLeaderForm
  Left = 278
  Top = 414
  Width = 514
  Height = 207
  Caption = 'Tour Leader'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 506
    Height = 173
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 23
      Width = 70
      Height = 13
      Caption = 'Tour Leader'
      Transparent = True
    end
    object Label2: TLabel
      Left = 39
      Top = 68
      Width = 56
      Height = 13
      Caption = 'Issued By'
      Transparent = True
    end
    object Label3: TLabel
      Left = 38
      Top = 91
      Width = 58
      Height = 13
      Caption = 'Issued On'
      Transparent = True
    end
    object Label4: TLabel
      Left = 38
      Top = 45
      Width = 58
      Height = 13
      Caption = 'Nationalty'
      Transparent = True
    end
    object Label5: TLabel
      Left = 39
      Top = 112
      Width = 51
      Height = 13
      Caption = 'Tour Ref'
      Transparent = True
    end
    object Panel1: TPanel
      Left = 2
      Top = 134
      Width = 502
      Height = 37
      Align = alBottom
      TabOrder = 0
      object OkBtn: TcxButton
        Left = 282
        Top = 6
        Width = 75
        Height = 25
        Caption = '&Ok'
        ModalResult = 1
        TabOrder = 0
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object CancelBtn: TcxButton
        Left = 155
        Top = 6
        Width = 75
        Height = 25
        Caption = '&Cancel'
        ModalResult = 2
        TabOrder = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object cxTourLeaderEdit: TcxTextEdit
      Left = 121
      Top = 20
      Style.Color = 16247513
      TabOrder = 1
      Width = 304
    end
    object cxNationalityCMB: TcxLookupComboBox
      Left = 121
      Top = 42
      Properties.KeyFieldNames = 'countries_id'
      Properties.ListColumns = <
        item
          FieldName = 'country'
        end>
      Properties.ListSource = BackOfficeDataModule.CountriesDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 304
    end
    object cxIssuedByEdit: TcxTextEdit
      Left = 121
      Top = 64
      Style.Color = 16247513
      TabOrder = 3
      Width = 136
    end
    object cxIssuedOnEdit: TcxMaskEdit
      Left = 122
      Top = 86
      Properties.EditMask = '!99/99/0000;1;_'
      Properties.MaxLength = 0
      Style.Color = 16247513
      TabOrder = 4
      Text = '  /  /    '
      Width = 135
    end
    object cxTourRefEdit: TcxTextEdit
      Left = 121
      Top = 108
      Style.Color = 16247513
      TabOrder = 5
      Width = 136
    end
    object cxButton1: TcxButton
      Left = 264
      Top = 65
      Width = 75
      Height = 20
      Caption = 'Get User'
      TabOrder = 6
      OnClick = cxButton1Click
    end
  end
  object CountryQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT country, countries_id'
      'FROM countries'
      'ORDER BY country'
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 382
    Top = 72
  end
  object CountryDSP: TDataSetProvider
    DataSet = CountryQry
    Left = 398
    Top = 72
  end
  object CountryCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'CountryDSP'
    Left = 406
    Top = 48
    object CountryCDScountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object CountryCDScountries_id: TIntegerField
      FieldName = 'countries_id'
    end
  end
  object CountryDS: TDataSource
    DataSet = CountryCDS
    Left = 382
    Top = 48
  end
end
