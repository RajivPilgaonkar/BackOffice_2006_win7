object BookSeacrhForm: TBookSeacrhForm
  Left = 259
  Top = 107
  Width = 451
  Height = 307
  Caption = 'Booking Seacrh Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 443
    Height = 238
    Align = alClient
    Caption = 'Search By'
    TabOrder = 0
    object RefNoRB: TRadioButton
      Left = 8
      Top = 24
      Width = 101
      Height = 17
      Caption = 'Reference No.'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object PaxNameRB: TRadioButton
      Left = 8
      Top = 88
      Width = 85
      Height = 17
      Caption = 'Pax Name'
      TabOrder = 4
    end
    object BookRB: TRadioButton
      Left = 8
      Top = 56
      Width = 93
      Height = 17
      Caption = 'Booking No.'
      TabOrder = 2
    end
    object RefEF: TEdit
      Left = 108
      Top = 20
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = RefEFChange
    end
    object BookEF: TEdit
      Left = 108
      Top = 53
      Width = 121
      Height = 21
      TabOrder = 3
      OnChange = BookEFChange
    end
    object PaxnameEF: TEdit
      Left = 108
      Top = 84
      Width = 293
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnChange = PaxnameEFChange
      OnKeyPress = PaxnameEFKeyPress
    end
    object PaxNameGrid: TDBGrid
      Left = 108
      Top = 108
      Width = 293
      Height = 96
      Color = clInfoBk
      DataSource = SearchDS
      Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Name'
          Width = 260
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 238
    Width = 443
    Height = 42
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 254
      Top = 6
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
    object OkBB: TBitBtn
      Left = 139
      Top = 6
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
  object SearchDS: TDataSource
    DataSet = SearchCDS
    Left = 183
    Top = 136
  end
  object SearchCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SearchDSP'
    Left = 216
    Top = 136
  end
  object SearchDSP: TDataSetProvider
    DataSet = SearchQry
    Left = 216
    Top = 168
  end
  object SearchQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Bookings_id,Name FROM BookingsClients'
      'ORDER BY Name')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 184
    Top = 168
  end
end
