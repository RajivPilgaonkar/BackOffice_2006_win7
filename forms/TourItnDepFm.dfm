object TourItnDepForm: TTourItnDepForm
  Left = 464
  Top = 57
  Width = 554
  Height = 179
  Caption = 'Tour Itinerary Departure Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 529
    Height = 129
    TabOrder = 0
    object Label2: TLabel
      Left = 197
      Top = 51
      Width = 88
      Height = 13
      Caption = 'Departure Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 51
      Width = 27
      Height = 13
      Caption = 'Tour'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TmCKB: TCheckBox
      Left = 32
      Top = 10
      Width = 97
      Height = 17
      Caption = 'Tailor Made'
      TabOrder = 0
      OnClick = TmCKBClick
    end
    object DepDateCMB: TDBLookupComboBox
      Left = 300
      Top = 46
      Width = 121
      Height = 21
      KeyField = 'tourdate'
      ListField = 'tourdate'
      ListSource = DepDS
      TabOrder = 2
    end
    object TourCmb: TDBLookupComboBox
      Left = 57
      Top = 46
      Width = 106
      Height = 21
      KeyField = 'tourcodes_id'
      ListField = 'tourcode'
      ListSource = TourDS
      TabOrder = 1
    end
    object CancelBB: TBitBtn
      Left = 78
      Top = 91
      Width = 75
      Height = 25
      TabOrder = 4
      Kind = bkCancel
    end
    object OkBB: TBitBtn
      Left = 300
      Top = 91
      Width = 75
      Height = 25
      TabOrder = 3
      OnClick = OkBBClick
      Kind = bkOK
    end
    object RadioGroup1: TRadioGroup
      Left = 424
      Top = 1
      Width = 100
      Height = 123
      TabOrder = 5
    end
    object Radio3m: TRadioButton
      Left = 434
      Top = 45
      Width = 86
      Height = 17
      Caption = '3 months'
      TabOrder = 6
      OnClick = Radio3mClick
    end
    object Radio1m: TRadioButton
      Left = 434
      Top = 21
      Width = 86
      Height = 17
      Caption = '1 month'
      TabOrder = 7
      OnClick = Radio1mClick
    end
    object Radio1y: TRadioButton
      Left = 434
      Top = 69
      Width = 86
      Height = 17
      Caption = '1 year'
      TabOrder = 8
      OnClick = Radio1yClick
    end
    object RadioAll: TRadioButton
      Left = 434
      Top = 93
      Width = 84
      Height = 17
      Caption = 'Show All'
      TabOrder = 9
      OnClick = RadioAllClick
    end
  end
  object TourDS: TDataSource
    DataSet = TourCDS
    Left = 168
    Top = 40
  end
  object TourCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'TourDSP'
    Left = 200
    Top = 40
    object TourCDStourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
    object TourCDStourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
  end
  object TourDSP: TDataSetProvider
    DataSet = TourQry
    Left = 200
    Top = 72
  end
  object TourQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT tourcodes_id, tourcode FROM tourcodes'
      'ORDER BY tourcode')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 168
    Top = 72
  end
  object DepCDS: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'tourdate'
        DataType = ftTimeStamp
      end
      item
        Name = 'tourcodes_id'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
        Fields = 'tourdate'
      end>
    IndexFieldNames = 'tourcodes_id'
    MasterFields = 'tourcodes_id'
    MasterSource = TourDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'DepDSP'
    StoreDefs = True
    Left = 304
    object DepCDStourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object DepCDStourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
  end
  object DepDS: TDataSource
    DataSet = DepCDS
    Left = 272
  end
  object DepQry: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'tourcodes_id'
        ParamType = ptInput
        Value = 428
      end>
    SQL.Strings = (
      'select tourdate, tourcodes_id'
      'from tourdeparturedates'
      'WHERE tourcodes_id = :tourcodes_id'
      'order by tourdate asc')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 272
    Top = 32
  end
  object DepDSP: TDataSetProvider
    DataSet = DepQry
    Left = 304
    Top = 32
  end
end
