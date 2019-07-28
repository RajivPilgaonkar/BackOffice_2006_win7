inherited CostPackagesForm: TCostPackagesForm
  Left = 306
  Top = 12
  Caption = 'Package Costing'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Package'
      Transparent = True
    end
    object Label2: TLabel
      Left = 376
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object cxPackageLCMB: TcxLookupComboBox
      Left = 73
      Top = 14
      Properties.DropDownWidth = 450
      Properties.KeyFieldNames = 'Packages_id'
      Properties.ListColumns = <
        item
          Width = 150
          FieldName = 'Package'
        end
        item
          Caption = 'Package Description'
          Width = 300
          FieldName = 'PackageDescription'
        end>
      Properties.ListSource = PackageDs
      Properties.OnEditValueChanged = cxPackageLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 256
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 409
      Top = 14
      Properties.KeyFieldNames = 'Wef'
      Properties.ListColumns = <
        item
          FieldName = 'Wef'
        end>
      Properties.ListSource = WefDs
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 104
    end
  end
  object cxGroupBox1: TcxGroupBox [2]
    Left = 0
    Top = 41
    Align = alTop
    Caption = 'Packages'
    TabOrder = 2
    Height = 344
    Width = 853
    object CostPackageGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 847
      Height = 323
      Align = alClient
      TabOrder = 0
      object CostPackageGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MasterDS
        DataController.KeyFieldNames = 'costpackages_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object CostPackageGridDBTableView1costpackages_id: TcxGridDBColumn
          DataBinding.FieldName = 'costpackages_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
        end
        object CostPackageGridDBTableView1packages_id: TcxGridDBColumn
          DataBinding.FieldName = 'packages_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
        end
        object CostPackageGridDBTableView1addressbook_id: TcxGridDBColumn
          Caption = 'Organisation'
          DataBinding.FieldName = 'addressbook_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 550
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              Width = 400
              FieldName = 'Organisation'
            end
            item
              Width = 150
              FieldName = 'City'
            end>
          Properties.ListSource = BackOfficeDataModule.AgentDS
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 200
        end
        object CostPackageGridDBTableView1wef: TcxGridDBColumn
          Caption = 'Wef'
          DataBinding.FieldName = 'wef'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 101
        end
        object CostPackageGridDBTableView1wet: TcxGridDBColumn
          Caption = 'Wet'
          DataBinding.FieldName = 'wet'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 77
        end
        object CostPackageGridDBTableView1commission: TcxGridDBColumn
          Caption = 'Commission'
          DataBinding.FieldName = 'commission'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 122
        end
      end
      object CostPackageGridLevel1: TcxGridLevel
        GridView = CostPackageGridDBTableView1
      end
    end
  end
  object cxGroupBox2: TcxGroupBox [3]
    Left = 0
    Top = 385
    Align = alClient
    Caption = 'Costing'
    TabOrder = 3
    Height = 171
    Width = 853
    object CostPackageDetailsGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 847
      Height = 150
      Align = alClient
      TabOrder = 0
      object CostPackageDetailsGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'costpackagesdetails_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object CostPackageDetailsGridDBTableView1costpackagesdetails_id: TcxGridDBColumn
          DataBinding.FieldName = 'costpackagesdetails_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
        end
        object CostPackageDetailsGridDBTableView1costpackages_id: TcxGridDBColumn
          DataBinding.FieldName = 'costpackages_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
        end
        object CostPackageDetailsGridDBTableView1frompax: TcxGridDBColumn
          Caption = 'From Pax'
          DataBinding.FieldName = 'frompax'
          Options.Filtering = False
          Options.Grouping = False
          Width = 62
        end
        object CostPackageDetailsGridDBTableView1topax: TcxGridDBColumn
          Caption = 'To Pax'
          DataBinding.FieldName = 'topax'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 59
        end
        object CostPackageDetailsGridDBTableView1costperperson: TcxGridDBColumn
          Caption = 'Cost Per Person'
          DataBinding.FieldName = 'costperperson'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 103
        end
        object CostPackageDetailsGridDBTableView1costpergroup: TcxGridDBColumn
          Caption = 'Cost Per Group'
          DataBinding.FieldName = 'costpergroup'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 97
        end
        object CostPackageDetailsGridDBTableView1currencies_id: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'currencies_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currency'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 64
        end
        object CostPackageDetailsGridDBTableView1tourleaderfree: TcxGridDBColumn
          Caption = 'TL Free'
          DataBinding.FieldName = 'tourleaderfree'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 54
        end
        object CostPackageDetailsGridDBTableView1singlesupplement: TcxGridDBColumn
          Caption = 'Single Supplement'
          DataBinding.FieldName = 'singlesupplement'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 121
        end
        object CostPackageDetailsGridDBTableView1resident: TcxGridDBColumn
          Caption = 'Resident'
          DataBinding.FieldName = 'resident'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'req_val'
          Properties.ListColumns = <
            item
              FieldName = 'req'
            end>
          Properties.ListSource = ResidentDs
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
        end
        object CostPackageDetailsGridDBTableView1remarks: TcxGridDBColumn
          Caption = 'Remarks'
          DataBinding.FieldName = 'remarks'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 200
        end
      end
      object CostPackageDetailsGridLevel1: TcxGridLevel
        GridView = CostPackageDetailsGridDBTableView1
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CostPackages'#13#10'WHERE Packages_id = :Packages_id'#13#10'AN' +
      'D Wef = :Wef'#13#10
    CommandType = ctQuery
    DataSource = WefDs
    Params = <
      item
        DataType = ftInteger
        Name = 'Packages_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
    Left = 600
    Top = 32
  end
  inherited MasterDataSetProvider: TDataSetProvider
    Left = 632
    Top = 32
  end
  inherited MasterDS: TDataSource
    Left = 696
    Top = 32
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'packages_id;wef'
    MasterFields = 'Packages_id;Wef'
    MasterSource = WefDs
    PacketRecords = 0
    Left = 664
    Top = 32
    object MasterCdscostpackages_id: TIntegerField
      FieldName = 'costpackages_id'
    end
    object MasterCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdscommission: TBCDField
      FieldName = 'commission'
      DisplayFormat = '#,##0.00'
      Precision = 2
      Size = 0
    end
    object MasterCdsavailable: TBooleanField
      FieldName = 'available'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CostPackagesDetails'#13#10'WHERE CostPackages_id = :Cost' +
      'Packages_id'#13#10
    CommandType = ctQuery
    DataSource = MasterDS
    Params = <
      item
        DataType = ftInteger
        Name = 'costpackages_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 600
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    Left = 632
  end
  inherited Detail1DS: TDataSource
    Left = 704
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'costpackages_id'
    MasterFields = 'costpackages_id'
    MasterSource = MasterDS
    PacketRecords = 0
    AfterInsert = Detail1CdsAfterInsert
    Left = 664
    object Detail1Cdscostpackagesdetails_id: TIntegerField
      FieldName = 'costpackagesdetails_id'
    end
    object Detail1Cdscostpackages_id: TIntegerField
      FieldName = 'costpackages_id'
    end
    object Detail1Cdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object Detail1Cdstopax: TIntegerField
      FieldName = 'topax'
    end
    object Detail1Cdscostperperson: TBCDField
      FieldName = 'costperperson'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdscostpergroup: TBCDField
      FieldName = 'costpergroup'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object Detail1Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail1Cdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object Detail1Cdssinglesupplement: TBCDField
      FieldName = 'singlesupplement'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object Detail1Cdsresident: TSmallintField
      FieldName = 'resident'
    end
  end
  object PackageSds: TSQLDataSet
    CommandText = 
      'SELECT Packages_id, Package, PackageDescription '#13#10'FROM Packages'#13 +
      #10'ORDER BY Package'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 152
    Top = 32
  end
  object PackageDsp: TDataSetProvider
    DataSet = PackageSds
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 32
  end
  object PackageCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PackageDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 216
    Top = 32
    object PackageCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object PackageCdsPackage: TStringField
      FieldName = 'Package'
      Size = 50
    end
    object PackageCdsPackageDescription: TStringField
      FieldName = 'PackageDescription'
      Size = 100
    end
  end
  object PackageDs: TDataSource
    DataSet = PackageCds
    Left = 248
    Top = 32
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Packages_id, Wef FROM CostPackages'#13#10'WHERE Packag' +
      'es_id = :Packages_id'#13#10'ORDER BY Wef DESC'
    DataSource = PackageDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Packages_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 416
    Top = 32
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 32
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Packages_id'
    MasterFields = 'Packages_id'
    MasterSource = PackageDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'WefDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 480
    Top = 32
    object WefCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object WefCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
  end
  object WefDs: TDataSource
    DataSet = WefCds
    Left = 512
    Top = 32
  end
  object ResidentSds: TSQLDataSet
    CommandText = 
      'select cast('#39'Yes'#39' as varchar(5)) as req, 1 as req_val'#13#10'union '#13#10's' +
      'elect cast('#39'No'#39' as varchar(5)) as req, 2 as req_val'#13#10'union '#13#10'sel' +
      'ect cast('#39'All'#39' as varchar(5)) as req, 4 as req_val'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 610
    Top = 230
  end
  object ResidentDsp: TDataSetProvider
    DataSet = ResidentSds
    Left = 638
    Top = 230
  end
  object ResidentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ResidentDsp'
    Left = 667
    Top = 230
    object ResidentCdsreq: TStringField
      FieldName = 'req'
      Size = 5
    end
    object ResidentCdsreq_val: TIntegerField
      FieldName = 'req_val'
    end
  end
  object ResidentDs: TDataSource
    DataSet = ResidentCds
    Left = 697
    Top = 230
  end
end
