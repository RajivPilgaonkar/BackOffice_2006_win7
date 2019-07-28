inherited TourDepartureForm: TTourDepartureForm
  Width = 674
  Height = 401
  Caption = 'Tour Departure'
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 649
    Height = 424
    Align = alClient
    Caption = 'Tour Departure'
    inherited Label1: TLabel
      Left = 13
      Top = 25
      Width = 55
      Caption = 'Find Tour'
    end
    inherited DBGrid1: TDBGrid
      Left = 15
      Top = 49
    end
    inherited DBLookupComboBox1: TDBLookupComboBox
      Left = 80
      Top = 20
      Width = 165
    end
    object GroupBox2: TGroupBox
      Left = 263
      Top = 8
      Width = 187
      Height = 37
      TabOrder = 2
      object ToursOpt: TRadioButton
        Left = 16
        Top = 16
        Width = 61
        Height = 14
        Caption = 'Tours'
        TabOrder = 0
      end
      object MastersOpt: TRadioButton
        Left = 99
        Top = 15
        Width = 69
        Height = 15
        Caption = 'Masters'
        TabOrder = 1
      end
    end
    object TailorMadeChk: TCheckBox
      Left = 457
      Top = 22
      Width = 97
      Height = 17
      Caption = 'Tailor Made'
      TabOrder = 3
    end
  end
  inherited DSLookup: TDataSource
    Left = 584
    Top = 0
  end
  inherited CDSLookup: TClientDataSet
    Left = 616
    Top = 0
  end
  inherited SQLQueryLookup: TSQLQuery
    Left = 584
    Top = 32
  end
  inherited DSPLookup: TDataSetProvider
    Left = 616
    Top = 32
  end
  inherited GridSQLTable: TSQLTable
    TableName = 'TourDepartureDates'
  end
end
