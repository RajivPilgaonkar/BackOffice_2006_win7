inherited FixedItinThemesForm: TFixedItinThemesForm
  Left = 731
  Top = 146
  Width = 489
  Height = 550
  Caption = 'Themes'
  FormStyle = fsNormal
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 473
  end
  inherited Panel2: TPanel
    Top = 471
    Width = 473
    inherited cxButtonClose: TcxButton
      Left = 376
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 300
      DataBinding.DataField = 'FixedItinThemes_id'
    end
  end
  inherited Panel3: TPanel
    Width = 473
    Height = 430
    inherited cxPageControl1: TcxPageControl
      Width = 471
      Height = 428
      ClientRectBottom = 422
      ClientRectRight = 465
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Themes'
        inherited cxGrid1: TcxGrid
          Width = 462
          Height = 396
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'FixedItinThemes_id'
            object cxGrid1DBBandedTableView1FixedItinThemes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FixedItinThemes_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FixedItin_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FixedItin_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Themes_id: TcxGridDBBandedColumn
              Caption = 'Theme'
              DataBinding.FieldName = 'Themes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'themes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'title'
                end>
              Properties.ListSource = ThemesDS
              Width = 265
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM FixedItinThemes WHERE FixedItin_id = :FixedItin_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
      end>
    Left = 280
    Top = 368
  end
  inherited MasterDsp: TDataSetProvider
    Left = 310
    Top = 368
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 343
    Top = 368
    object MasterCdsFixedItinThemes_id: TIntegerField
      FieldName = 'FixedItinThemes_id'
    end
    object MasterCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object MasterCdsThemes_id: TIntegerField
      FieldName = 'Themes_id'
    end
  end
  inherited MasterDs: TDataSource
    Left = 373
    Top = 368
  end
  object ThemesDS: TDataSource
    DataSet = ThemesCds
    Left = 72
    Top = 120
  end
  object ThemesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ThemesDsp'
    Left = 48
    Top = 120
    object ThemesCdsthemes_id: TIntegerField
      FieldName = 'themes_id'
    end
    object ThemesCdstitle: TStringField
      FieldName = 'title'
      Size = 254
    end
  end
  object ThemesDsp: TDataSetProvider
    DataSet = ThemesSds
    Left = 32
    Top = 120
  end
  object ThemesSds: TSQLDataSet
    CommandText = 'select themes_id, title'#13#10'from themes t'#13#10'order by title'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 120
  end
end
