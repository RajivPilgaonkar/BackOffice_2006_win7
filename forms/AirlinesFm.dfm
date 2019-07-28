inherited AirlinesForm: TAirlinesForm
  Left = 605
  Top = 40
  Width = 540
  Height = 496
  Caption = 'Airlines'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 524
  end
  inherited Panel2: TPanel
    Top = 417
    Width = 524
    inherited cxButtonClose: TcxButton
      Left = 368
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 292
    end
  end
  inherited Panel3: TPanel
    Width = 524
    Height = 376
    inherited cxPageControl1: TcxPageControl
      Width = 522
      Height = 374
      ClientRectBottom = 368
      ClientRectRight = 516
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Airlines'
        inherited cxGrid1: TcxGrid
          Width = 513
          Height = 342
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'airlines_id'
            object cxGrid1DBBandedTableView1airlines_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'airlines_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1code: TcxGridDBBandedColumn
              Caption = 'Code'
              DataBinding.FieldName = 'code'
              Options.Filtering = False
              Options.Sorting = False
              Width = 129
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1airline: TcxGridDBBandedColumn
              Caption = 'Airline'
              DataBinding.FieldName = 'airline'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 324
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'airlines'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsairlines_id: TIntegerField
      FieldName = 'airlines_id'
    end
    object MasterCdsairline: TStringField
      FieldName = 'airline'
      Size = 50
    end
    object MasterCdscode: TStringField
      FieldName = 'code'
      FixedChar = True
      Size = 2
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 65
    Top = 399
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 10
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 206
    Top = 11
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 224
    Top = 10
    object UsersCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object UsersCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
  end
  object UsersDs: TDataSource
    DataSet = UsersCds
    Left = 236
    Top = 10
  end
end
