inherited MealPlansForm: TMealPlansForm
  Left = 346
  Top = 189
  Width = 443
  Height = 447
  Caption = 'Meal Plans'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 427
  end
  inherited Panel2: TPanel
    Top = 368
    Width = 427
    inherited cxButtonClose: TcxButton
      Left = 344
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 268
    end
  end
  inherited Panel3: TPanel
    Width = 427
    Height = 327
    inherited cxPageControl1: TcxPageControl
      Width = 425
      Height = 325
      ClientRectBottom = 319
      ClientRectRight = 419
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Meal Plans'
        inherited cxGrid1: TcxGrid
          Width = 416
          Height = 293
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'mealplans_id'
            object cxGrid1DBBandedTableView1mealplans_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'mealplans_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1mealplan: TcxGridDBBandedColumn
              Caption = 'Meal Plan'
              DataBinding.FieldName = 'mealplan'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 243
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1plan: TcxGridDBBandedColumn
              Caption = 'Plan'
              DataBinding.FieldName = 'plan'
              Options.Filtering = False
              Options.Sorting = False
              Width = 131
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
    CommandText = 'mealplans'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MasterCdsmealplan: TStringField
      FieldName = 'mealplan'
      Size = 15
    end
    object MasterCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Top = 375
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
