inherited ThemeForm: TThemeForm
  Left = 304
  Top = 46
  Width = 958
  Height = 598
  Caption = 'Themes'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 942
  end
  inherited Panel2: TPanel
    Top = 519
    Width = 942
  end
  inherited Panel3: TPanel
    Width = 942
    Height = 478
    object Splitter1: TSplitter [0]
      Left = 342
      Top = 1
      Height = 476
    end
    inherited cxPageControl1: TcxPageControl
      Width = 341
      Height = 476
      Align = alLeft
      ClientRectBottom = 470
      ClientRectRight = 335
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Themes'
        inherited cxGrid1: TcxGrid
          Width = 332
          Height = 444
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'Themes_id'
            object cxGrid1DBBandedTableView1Themes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Themes_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Title: TcxGridDBBandedColumn
              Caption = 'Page Name'
              DataBinding.FieldName = 'PageName'
              SortIndex = 0
              SortOrder = soAscending
              Width = 300
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
    object cxPageControl2: TcxPageControl
      Left = 345
      Top = 1
      Width = 596
      Height = 476
      ActivePage = cxTabSheet5
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 470
      ClientRectLeft = 3
      ClientRectRight = 590
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Intoduction'
        ImageIndex = 0
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Introduction'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 444
          Width = 587
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Theme'
        ImageIndex = 1
        object cxDBMemo2: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Theme'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 444
          Width = 587
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
          Height = 444
          Width = 587
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Keywords'
        ImageIndex = 3
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 96
          Top = 8
          DataBinding.DataField = 'url'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Width = 438
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 96
          Top = 32
          DataBinding.DataField = 'Meta_Title'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Width = 438
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 96
          Top = 56
          DataBinding.DataField = 'Meta_Keywords'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 437
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
        object cxLabel5: TcxLabel
          Left = 8
          Top = 97
          Caption = 'Meta Description'
          Transparent = True
        end
        object cxDBMemo3: TcxDBMemo
          Left = 8
          Top = 118
          DataBinding.DataField = 'Meta_Descr'
          DataBinding.DataSource = MasterDs
          TabOrder = 7
          Height = 99
          Width = 569
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'Themes'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsThemes_id: TIntegerField
      FieldName = 'Themes_id'
    end
    object MasterCdsOneLiner: TStringField
      FieldName = 'OneLiner'
      Size = 254
    end
    object MasterCdsIntroduction: TMemoField
      FieldName = 'Introduction'
      BlobType = ftMemo
    end
    object MasterCdsTheme: TMemoField
      FieldName = 'Theme'
      BlobType = ftMemo
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 100
    end
    object MasterCdsPageName: TStringField
      FieldName = 'PageName'
      Size = 254
    end
    object MasterCdsMeta_Title: TStringField
      FieldName = 'Meta_Title'
      Size = 254
    end
    object MasterCdsMeta_Descr: TStringField
      FieldName = 'Meta_Descr'
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
    Top = 487
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
