inherited RegionForm: TRegionForm
  Left = 345
  Top = 53
  Width = 974
  Caption = 'Regions'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 958
  end
  inherited Panel2: TPanel
    Width = 958
  end
  inherited Panel3: TPanel
    Width = 958
    object Splitter1: TSplitter [0]
      Left = 321
      Top = 1
      Height = 435
    end
    inherited cxPageControl1: TcxPageControl
      Width = 320
      Align = alLeft
      ClientRectRight = 314
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Regions'
        inherited cxGrid1: TcxGrid
          Width = 311
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'Regions_id'
            object cxGrid1DBBandedTableView1Regions_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Regions_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn
              Caption = 'Sr.No'
              DataBinding.FieldName = 'OrderNo'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Title: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Title'
              Width = 224
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
    object cxPageControl2: TcxPageControl
      Left = 324
      Top = 1
      Width = 633
      Height = 435
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 429
      ClientRectLeft = 3
      ClientRectRight = 627
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Advert.'
        ImageIndex = 0
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Introduction'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 403
          Width = 624
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Region Information'
        ImageIndex = 1
        object cxDBMemo2: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Region'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 403
          Width = 624
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'One Liner'
        ImageIndex = 2
        object cxDBMemo4: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'OneLiner'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 403
          Width = 624
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Keywords'
        ImageIndex = 3
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 93
          Top = 8
          DataBinding.DataField = 'url'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Width = 438
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 93
          Top = 32
          DataBinding.DataField = 'Meta_Title'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Width = 438
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 93
          Top = 56
          DataBinding.DataField = 'Meta_Keywords'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 437
        end
        object cxDBMemo11: TcxDBMemo
          Left = 6
          Top = 144
          DataBinding.DataField = 'Meta_Descr'
          DataBinding.DataSource = MasterDs
          TabOrder = 3
          Height = 185
          Width = 490
        end
        object cxLabel3: TcxLabel
          Left = 0
          Top = 59
          Caption = 'Meta Keywords'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 0
          Top = 34
          Caption = 'Meta Title'
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 0
          Top = 10
          Caption = 'URL'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 123
          Caption = 'Meta Description'
          Transparent = True
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'Regions'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsRegions_id: TIntegerField
      FieldName = 'Regions_id'
    end
    object MasterCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
    object MasterCdsOneLiner: TStringField
      FieldName = 'OneLiner'
      Size = 254
    end
    object MasterCdsIntroduction: TMemoField
      FieldName = 'Introduction'
      BlobType = ftMemo
    end
    object MasterCdsRegion: TMemoField
      FieldName = 'Region'
      BlobType = ftMemo
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 64
    end
    object MasterCdsMeta_Descr: TMemoField
      FieldName = 'Meta_Descr'
      BlobType = ftMemo
    end
    object MasterCdsMeta_Title: TStringField
      FieldName = 'Meta_Title'
      Size = 256
    end
    object MasterCdsMeta_Keywords: TStringField
      FieldName = 'Meta_Keywords'
      Size = 256
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 57
    Top = 479
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
