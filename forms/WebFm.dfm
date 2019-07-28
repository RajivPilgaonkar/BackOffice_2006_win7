inherited WebForm: TWebForm
  Left = 228
  Top = 49
  Width = 860
  Height = 690
  Caption = 'Web'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 844
  end
  inherited Panel2: TPanel
    Top = 611
    Width = 844
  end
  inherited Panel3: TPanel
    Width = 844
    Height = 570
    inherited cxPageControl1: TcxPageControl
      Width = 842
      Height = 568
      ClientRectBottom = 562
      ClientRectRight = 836
      inherited cxTabSheet1: TcxTabSheet
        Cursor = crVSplit
        Caption = 'Web'
        object Splitter1: TSplitter [0]
          Left = 0
          Top = 406
          Width = 833
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        inherited cxGrid1: TcxGrid
          Width = 833
          Height = 406
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'Web_id'
            object cxGrid1DBBandedTableView1Web_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Web_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Title: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Title'
              Options.Filtering = False
              Options.Sorting = False
              Width = 207
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1PageName: TcxGridDBBandedColumn
              Caption = 'Page Name'
              DataBinding.FieldName = 'PageName'
              Options.Filtering = False
              Options.Sorting = False
              Width = 484
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1WebPages_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'WebPages_id'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
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
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 409
          Align = alBottom
          DataBinding.DataField = 'WriteUp'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Height = 127
          Width = 833
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'Web'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsWeb_id: TIntegerField
      FieldName = 'Web_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object MasterCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
    object MasterCdsPageName: TStringField
      FieldName = 'PageName'
      Size = 254
    end
    object MasterCdsWriteUp: TMemoField
      FieldName = 'WriteUp'
      BlobType = ftMemo
    end
    object MasterCdsWebPages_id: TIntegerField
      FieldName = 'WebPages_id'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 81
    Top = 511
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
