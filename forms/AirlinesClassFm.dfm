inherited AirlinesClassForm: TAirlinesClassForm
  Width = 495
  Height = 496
  Caption = 'Airlines Class'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 479
  end
  inherited Panel2: TPanel
    Top = 417
    Width = 479
    inherited cxButtonClose: TcxButton
      Left = 392
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 316
      DataBinding.DataField = 'class_id'
    end
  end
  inherited Panel3: TPanel
    Width = 479
    Height = 376
    inherited cxPageControl1: TcxPageControl
      Width = 477
      Height = 374
      ClientRectBottom = 368
      ClientRectRight = 471
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Airlines Class'
        inherited cxGrid1: TcxGrid
          Width = 468
          Height = 342
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'class_id'
            object cxGrid1DBBandedTableView1class_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'class_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1class: TcxGridDBBandedColumn
              Caption = 'Class'
              DataBinding.FieldName = 'class'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 305
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1code: TcxGridDBBandedColumn
              Caption = 'Code'
              DataBinding.FieldName = 'code'
              Options.Filtering = False
              Options.Sorting = False
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tickets_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'tickets_id'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'OrderNo'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 4
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
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM Class'#13#10'WHERE Tickets_id = :Tickets_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Tickets_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsclass_id: TIntegerField
      FieldName = 'class_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object MasterCdscode: TStringField
      FieldName = 'code'
      Size = 5
    end
    object MasterCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
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
    Top = 407
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
