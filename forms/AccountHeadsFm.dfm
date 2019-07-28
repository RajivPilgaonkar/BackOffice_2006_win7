inherited AccountHeadsForm: TAccountHeadsForm
  Left = 13
  Top = 64
  Height = 632
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object cxLabel: TcxLabel
      Left = 416
      Top = 16
      Caption = 'cxLabel'
      Transparent = True
    end
  end
  inherited Panel2: TPanel
    Top = 557
    object BitBtn1: TBitBtn
      Left = 832
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
  object GroupBox1: TcxGroupBox [2]
    Left = 16
    Top = 48
    Caption = 'Folios'
    TabOrder = 2
    Height = 217
    Width = 905
    object CustomMasterCxGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 899
      Height = 196
      Align = alClient
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MasterDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object CustomMasterCxGridDBTableView1folios_id: TcxGridDBColumn
          Caption = 'Folio No'
          DataBinding.FieldName = 'folios_id'
        end
        object CustomMasterCxGridDBTableView1folio: TcxGridDBColumn
          Caption = 'Folio'
          DataBinding.FieldName = 'folio'
          Width = 313
        end
        object CustomMasterCxGridDBTableView1foliocategories_id: TcxGridDBColumn
          Caption = 'Category'
          DataBinding.FieldName = 'foliocategories_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'FolioCategories_id'
          Properties.ListColumns = <
            item
              FieldName = 'Description'
            end>
          Properties.ListSource = BackOfficeDataModule.FolioCatDS
          Width = 255
        end
      end
      object CustomMasterCxGridLevel1: TcxGridLevel
        GridView = CustomMasterCxGridDBTableView1
      end
    end
  end
  object GroupBox2: TcxGroupBox [3]
    Left = 16
    Top = 272
    Caption = 'Account Heads'
    TabOrder = 3
    Height = 281
    Width = 905
    object cxGrid1: TcxGrid
      Left = 3
      Top = 18
      Width = 899
      Height = 260
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object cxGridDBTableView1accountheadsno: TcxGridDBColumn
          Caption = 'Account Head'
          DataBinding.FieldName = 'accountheadsno'
          Width = 138
        end
        object cxGridDBTableView1description: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'description'
        end
        object cxGridDBTableView1addressbook_id: TcxGridDBColumn
          Caption = 'Addressbook'
          DataBinding.FieldName = 'addressbook_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              MinWidth = 200
              FieldName = 'Organisation'
            end
            item
              MinWidth = 100
              FieldName = 'City'
            end>
          Properties.ListSource = BackOfficeDataModule.OrgContactDS
          Width = 241
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'folios'
    CommandType = ctTable
    Left = 48
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    Left = 72
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 88
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    Left = 104
    Top = 8
    object MasterCdsfolios_id: TIntegerField
      FieldName = 'folios_id'
    end
    object MasterCdsfolio: TStringField
      FieldName = 'folio'
      Size = 50
    end
    object MasterCdsfoliocategories_id: TIntegerField
      FieldName = 'foliocategories_id'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'accountheads'
    CommandType = ctTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 184
    Top = 8
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 200
    Top = 8
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 216
    Top = 8
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'folios_id'
    MasterFields = 'folios_id'
    MasterSource = MasterDS
    PacketRecords = 0
    AfterInsert = Detail1CdsAfterInsert
    Left = 232
    Top = 8
    object Detail1Cdsaccountheads_id: TIntegerField
      FieldName = 'accountheads_id'
    end
    object Detail1Cdsaccountheadsno: TIntegerField
      FieldName = 'accountheadsno'
    end
    object Detail1Cdsdescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object Detail1Cdsfolios_id: TIntegerField
      FieldName = 'folios_id'
    end
    object Detail1Cdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object Detail1Cdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object Detail1Cdsactive: TBooleanField
      FieldName = 'active'
    end
  end
end
