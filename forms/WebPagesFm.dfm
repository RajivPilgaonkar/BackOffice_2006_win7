inherited WebPagesForm: TWebPagesForm
  Left = 170
  Top = 76
  Width = 885
  Height = 627
  Caption = 'Web Pages'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 254
    Width = 869
  end
  inherited Panel1: TPanel
    Width = 869
  end
  inherited Panel2: TPanel
    Top = 548
    Width = 869
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      Left = 686
    end
    inherited cxButtonClose: TcxButton
      Left = 754
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      Left = 687
    end
  end
  inherited Panel3: TPanel
    Width = 869
    Height = 213
    object Splitter2: TSplitter [0]
      Left = 381
      Top = 1
      Height = 211
    end
    inherited cxPageControl1: TcxPageControl
      Width = 380
      Height = 211
      Align = alLeft
      ClientRectBottom = 205
      ClientRectRight = 374
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Web Pages'
        inherited cxGrid1: TcxGrid
          Width = 371
          Height = 179
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'WebPages_id'
            object cxGrid1DBBandedTableView1WebPages_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'WebPages_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1PageName: TcxGridDBBandedColumn
              Caption = 'Page Name'
              DataBinding.FieldName = 'PageName'
              SortIndex = 0
              SortOrder = soAscending
              Width = 330
              Position.BandIndex = 0
              Position.ColIndex = 1
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
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    object cxPageControl3: TcxPageControl
      Left = 384
      Top = 1
      Width = 484
      Height = 211
      ActivePage = cxTabSheet3
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 205
      ClientRectLeft = 3
      ClientRectRight = 478
      ClientRectTop = 3
      object cxTabSheet3: TcxTabSheet
        ImageIndex = 0
        TabVisible = False
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 94
          Top = 12
          DataBinding.DataField = 'url'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Width = 406
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 94
          Top = 36
          DataBinding.DataField = 'Meta_Title'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Width = 406
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 94
          Top = 60
          DataBinding.DataField = 'Meta_Keywords'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 406
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 94
          Top = 84
          DataBinding.DataField = 'OneLiner'
          DataBinding.DataSource = MasterDs
          TabOrder = 3
          Width = 406
        end
        object cxDBMemo5: TcxDBMemo
          Left = 94
          Top = 109
          DataBinding.DataField = 'Meta_Descr'
          DataBinding.DataSource = MasterDs
          TabOrder = 4
          Height = 46
          Width = 406
        end
        object cxLabel1: TcxLabel
          Left = 3
          Top = 14
          Caption = 'URL'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 3
          Top = 38
          Caption = 'Meta Title'
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 3
          Top = 62
          Caption = 'Meta Keywords'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 3
          Top = 86
          Caption = 'One Liner'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 3
          Top = 111
          Caption = 'Meta Descr'
          Transparent = True
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 262
    Width = 869
    Height = 286
    object Splitter3: TSplitter [0]
      Left = 381
      Top = 1
      Height = 284
    end
    inherited cxPageControl2: TcxPageControl
      Width = 380
      Height = 284
      Align = alLeft
      ClientRectBottom = 278
      ClientRectRight = 374
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Details'
        inherited cxGrid2: TcxGrid
          Width = 371
          Height = 252
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'Web_id'
            object cxGrid2DBBandedTableView1Web_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Web_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1SrNo: TcxGridDBBandedColumn
              Caption = 'Sr No'
              DataBinding.FieldName = 'SrNo'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 54
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Title: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Title'
              Options.Filtering = False
              Options.Sorting = False
              Width = 292
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1PageName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PageName'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn
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
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    object cxPageControl4: TcxPageControl
      Left = 384
      Top = 1
      Width = 484
      Height = 284
      ActivePage = cxTabSheet4
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 278
      ClientRectLeft = 3
      ClientRectRight = 478
      ClientRectTop = 26
      object cxTabSheet4: TcxTabSheet
        Caption = 'Write Up'
        ImageIndex = 0
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'WriteUp'
          DataBinding.DataSource = DetailDs
          TabOrder = 0
          Height = 252
          Width = 475
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'WebPages'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsWebPages_id: TIntegerField
      FieldName = 'WebPages_id'
    end
    object MasterCdsPageName: TStringField
      FieldName = 'PageName'
      Size = 254
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 100
    end
    object MasterCdsOneLiner: TStringField
      FieldName = 'OneLiner'
      Size = 254
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
  inherited DetailSds: TSQLDataSet
    CommandText = 'Web'
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'WebPages_id'
    MasterFields = 'WebPages_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = DetailCdsAfterInsert
    object DetailCdsWeb_id: TIntegerField
      FieldName = 'Web_id'
    end
    object DetailCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object DetailCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
    object DetailCdsPageName: TStringField
      FieldName = 'PageName'
      Size = 254
    end
    object DetailCdsWriteUp: TMemoField
      FieldName = 'WriteUp'
      BlobType = ftMemo
    end
    object DetailCdsWebPages_id: TIntegerField
      FieldName = 'WebPages_id'
    end
    object DetailCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object DetailCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 10
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 598
    Top = 11
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 616
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
    Left = 628
    Top = 10
  end
end
