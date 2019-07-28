inherited ImagesForm: TImagesForm
  Left = 69
  Top = 176
  Width = 977
  OldCreateOrder = True
  OnClose = nil
  OnCloseQuery = nil
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Left = 32
    Top = 64
    Align = alNone
    Caption = 'Central Taxes'
    TabOrder = 1
    Height = 403
    Width = 801
    inherited CustomMasterCxGrid: TcxGrid
      Width = 795
      Height = 382
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.DetailKeyFieldNames = 'images_id'
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1images_id: TcxGridDBColumn
          DataBinding.FieldName = 'images_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1SrNo: TcxGridDBColumn
          Caption = 'Sr No'
          DataBinding.FieldName = 'SrNo'
          Width = 51
        end
        object CustomMasterCxGridDBTableView1ImageName: TcxGridDBColumn
          Caption = 'Image'
          DataBinding.FieldName = 'ImageName'
          Width = 288
        end
        object CustomMasterCxGridDBTableView1Title: TcxGridDBColumn
          DataBinding.FieldName = 'Title'
          Width = 129
        end
        object CustomMasterCxGridDBTableView1Width: TcxGridDBColumn
          DataBinding.FieldName = 'Width'
          Width = 56
        end
        object CustomMasterCxGridDBTableView1Height: TcxGridDBColumn
          DataBinding.FieldName = 'Height'
          Width = 55
        end
        object CustomMasterCxGridDBTableView1AltTag: TcxGridDBColumn
          Caption = 'Tag'
          DataBinding.FieldName = 'AltTag'
          Width = 149
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 969
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 808
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
  end
  inherited Panel2: TPanel
    Width = 969
    Height = 57
    TabOrder = 0
    object GroupBox2: TcxGroupBox
      Left = 8
      Top = 1
      Caption = ' Select Category'
      TabOrder = 0
      Height = 49
      Width = 257
      object cxCategoryCMB: TcxComboBox
        Left = 8
        Top = 24
        Properties.Items.Strings = (
          'City'
          'Hotel'
          'Ready Tour'
          'State')
        Properties.OnEditValueChanged = cxCategoryCMBPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 0
        Text = 'cxCategoryCMB'
        Width = 233
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'SELECT * FROM images WHERE Category = :Category'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftString
        Name = 'category'
        ParamType = ptInput
        Size = 101
      end>
    Top = 128
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 64
    Top = 128
  end
  inherited MasterDS: TDataSource
    Left = 72
    Top = 128
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'Category'
    MasterFields = 'category'
    AfterInsert = MasterCdsAfterInsert
    Left = 80
    Top = 136
    object MasterCdsimages_id: TIntegerField
      FieldName = 'images_id'
    end
    object MasterCdsImageName: TStringField
      FieldName = 'ImageName'
      Size = 100
    end
    object MasterCdsWidth: TIntegerField
      FieldName = 'Width'
    end
    object MasterCdsHeight: TIntegerField
      FieldName = 'Height'
    end
    object MasterCdsCategory: TStringField
      FieldName = 'Category'
      Size = 100
    end
    object MasterCdsTitle: TStringField
      FieldName = 'Title'
      Size = 100
    end
    object MasterCdsAltTag: TStringField
      FieldName = 'AltTag'
      Size = 100
    end
    object MasterCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object MasterCdsImageCategories_id: TIntegerField
      FieldName = 'ImageCategories_id'
    end
    object MasterCdsFileSize: TIntegerField
      FieldName = 'FileSize'
    end
    object MasterCdsType: TStringField
      FieldName = 'Type'
      Size = 30
    end
    object MasterCdsImageObjectId: TIntegerField
      FieldName = 'ImageObjectId'
    end
    object MasterCdsImageTypes_id: TIntegerField
      FieldName = 'ImageTypes_id'
    end
  end
end
