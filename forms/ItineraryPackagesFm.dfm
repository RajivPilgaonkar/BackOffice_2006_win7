inherited ItineraryPackagesForm: TItineraryPackagesForm
  Left = 101
  Top = 82
  Height = 496
  Caption = 'Itineraries'
  FormStyle = fsNormal
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 301
    Height = 4
  end
  inherited Panel2: TPanel
    Top = 417
    inherited cxButtonUtilities: TcxButton
      Visible = True
      DropDownMenu = PopupMenu1
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      DataBinding.DataField = 'itinerarypackagestours_id'
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      DataBinding.DataField = 'itinerarypackages_id'
    end
    inherited cxDBNavigator1: TcxDBNavigator
      LookAndFeel.SkinName = ''
    end
  end
  inherited Panel3: TPanel
    Height = 260
    inherited cxPageControl1: TcxPageControl
      Height = 258
      ClientRectBottom = 252
      inherited cxTabSheet1: TcxTabSheet
        object Label3: TLabel
          Left = 5
          Top = 44
          Width = 43
          Height = 13
          Caption = 'Date In'
          Transparent = True
        end
        object Label8: TLabel
          Left = 5
          Top = 21
          Width = 22
          Height = 13
          Caption = 'City'
          Transparent = True
        end
        object Label13: TLabel
          Left = 5
          Top = 67
          Width = 34
          Height = 13
          Caption = 'Agent'
          Transparent = True
        end
        object Label12: TLabel
          Left = 276
          Top = 21
          Width = 51
          Height = 13
          Caption = 'Package'
          Transparent = True
        end
        object Label1: TLabel
          Left = 5
          Top = 143
          Width = 33
          Height = 13
          Caption = 'Tours'
          Transparent = True
        end
        object Label9: TLabel
          Left = 276
          Top = 44
          Width = 52
          Height = 13
          Caption = 'Date Out'
          Transparent = True
        end
        object Label4: TLabel
          Left = 5
          Top = 90
          Width = 50
          Height = 13
          Caption = 'Remarks'
          Transparent = True
        end
        object cxCityLCMB: TcxDBLookupComboBox
          Left = 87
          Top = 19
          DataBinding.DataField = 'Cities_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              MinWidth = 150
              FieldName = 'city'
            end
            item
              MinWidth = 150
              FieldName = 'state'
            end>
          Properties.ListSource = CitiesDs
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
          Style.Color = clCream
          TabOrder = 0
          Width = 178
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 87
          Top = 65
          DataBinding.DataField = 'addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 500
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'OrgCity'
            end>
          Properties.ListSource = AgentDs
          Properties.ReadOnly = True
          Style.Color = clCream
          TabOrder = 4
          Width = 471
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 339
          Top = 19
          DataBinding.DataField = 'packages_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Packages_id'
          Properties.ListColumns = <
            item
              FieldName = 'Package'
            end>
          Properties.ListSource = PackageDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 1
          Width = 220
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 88
          Top = 139
          DataBinding.DataField = 'tours'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 16247513
          TabOrder = 6
          Width = 308
        end
        object cxButton3: TcxButton
          Left = 402
          Top = 138
          Width = 75
          Height = 20
          Caption = 'Update'
          TabOrder = 7
          OnClick = cxButton3Click
        end
        object Panel5: TPanel
          Left = 0
          Top = 191
          Width = 886
          Height = 35
          Align = alBottom
          TabOrder = 8
          object Label21: TcxLabel
            Left = 8
            Top = 9
            Caption = 'Booked'
            Transparent = True
          end
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 64
            Top = 9
            DataBinding.DataField = 'booked'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 0
            Width = 121
          end
          object Label22: TcxLabel
            Left = 201
            Top = 9
            Caption = 'Reminder'
            Transparent = True
          end
          object cxDBDateEdit5: TcxDBDateEdit
            Left = 267
            Top = 9
            DataBinding.DataField = 'reminder'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 1
            Width = 121
          end
          object Label23: TcxLabel
            Left = 406
            Top = 9
            Caption = 'Confirmed'
            Transparent = True
          end
          object cxDBDateEdit6: TcxDBDateEdit
            Left = 472
            Top = 9
            DataBinding.DataField = 'confirmed'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 2
            Width = 121
          end
          object Label24: TcxLabel
            Left = 620
            Top = 9
            Caption = 'Cancelled'
            Transparent = True
          end
          object cxDBDateEdit7: TcxDBDateEdit
            Left = 689
            Top = 8
            DataBinding.DataField = 'cancelled'
            DataBinding.DataSource = MasterDs
            Style.Color = clWindow
            TabOrder = 3
            Width = 121
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 162
          Width = 886
          Height = 29
          Align = alBottom
          TabOrder = 9
          object Label2: TLabel
            Left = 406
            Top = 7
            Width = 48
            Height = 13
            Caption = 'Voucher'
            Transparent = True
          end
          object cxLabel1: TcxLabel
            Left = 8
            Top = 7
            Caption = 'Est. Pax'
            Transparent = True
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 64
            Top = 5
            DataBinding.DataField = 'estimatednoofpax'
            DataBinding.DataSource = MasterDs
            Properties.ReadOnly = False
            Style.Color = clCream
            TabOrder = 1
            Width = 66
          end
          object cxLabel2: TcxLabel
            Left = 201
            Top = 7
            Caption = 'Act. Pax'
            Transparent = True
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 268
            Top = 5
            DataBinding.DataField = 'noofpax'
            DataBinding.DataSource = MasterDs
            Properties.ReadOnly = False
            Style.Color = clCream
            TabOrder = 2
            Width = 66
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 620
            Top = 6
            Caption = 'Generate Voucher'
            DataBinding.DataField = 'generatevoucher'
            DataBinding.DataSource = MasterDs
            TabOrder = 3
            Width = 129
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 472
            Top = 5
            DataBinding.DataField = 'VoucherLookup'
            DataBinding.DataSource = MasterDs
            Properties.ReadOnly = True
            Style.Color = clCream
            TabOrder = 5
            Width = 66
          end
        end
        object cxDBMemo1: TcxDBMemo
          Left = 87
          Top = 88
          DataBinding.DataField = 'remarks'
          DataBinding.DataSource = MasterDs
          TabOrder = 5
          Height = 46
          Width = 471
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 88
          Top = 42
          DataBinding.DataField = 'from_date'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 177
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 340
          Top = 42
          DataBinding.DataField = 'to_date'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 219
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 305
    Height = 112
    inherited cxPageControl2: TcxPageControl
      Height = 110
      ClientRectBottom = 104
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Height = 78
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'masterpackagestours_id'
            object cxGrid1DBBandedTableView1itinerarypackagestours_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'itinerarypackagestours_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1itinerarypackages_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'itinerarypackages_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tourcodes_id: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcodes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'TourCodes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'TourCode'
                end>
              Properties.ListSource = TourCodeDs
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ItineraryPackages'#13#10'WHERE Itineraries_id = :Itinera' +
      'ries_id '#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Itineraries_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsitinerarypackages_id: TIntegerField
      FieldName = 'itinerarypackages_id'
    end
    object MasterCdsitineraries_id: TIntegerField
      FieldName = 'itineraries_id'
    end
    object MasterCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object MasterCdsfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 250
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsestimatednoofpax: TIntegerField
      FieldName = 'estimatednoofpax'
    end
    object MasterCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object MasterCdssinglesupplement: TIntegerField
      FieldName = 'singlesupplement'
    end
    object MasterCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object MasterCdsmasterpackages_id: TIntegerField
      FieldName = 'masterpackages_id'
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdsbooked: TSQLTimeStampField
      FieldName = 'booked'
    end
    object MasterCdsreminder: TSQLTimeStampField
      FieldName = 'reminder'
    end
    object MasterCdsconfirmed: TSQLTimeStampField
      FieldName = 'confirmed'
    end
    object MasterCdscancelled: TSQLTimeStampField
      FieldName = 'cancelled'
    end
    object MasterCdsto_date: TSQLTimeStampField
      FieldName = 'to_date'
    end
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCdsVoucherLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = VoucherCds
      LookupKeyFields = 'Vouchers_id'
      LookupResultField = 'VoucherNo'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ItineraryPackagesTours'#13#10'WHERE ItineraryPackages_id' +
      ' = :ItineraryPackages_id'
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'itinerarypackages_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'itinerarypackages_id'
    MasterFields = 'itinerarypackages_id'
    MasterSource = MasterDs
    PacketRecords = 0
    object DetailCdsitinerarypackagestours_id: TIntegerField
      FieldName = 'itinerarypackagestours_id'
    end
    object DetailCdsitinerarypackages_id: TIntegerField
      FieldName = 'itinerarypackages_id'
    end
    object DetailCdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Cities_id, c.City, s.State'#13#10'FROM Cities c '#13#10'LEFT JOIN S' +
      'tates s ON c.States_id = s.States_id'#13#10'WHERE NightHalt = 1'#13#10'ORDER' +
      ' BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 768
    Top = 40
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 784
    Top = 40
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 800
    Top = 40
    object IntegerField1: TIntegerField
      FieldName = 'cities_id'
    end
    object StringField1: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 824
    Top = 40
  end
  object TourCodeSds: TSQLDataSet
    CommandText = 
      'SELECT tcal.Masters_id, tc.TourCodes_id, tc.TourCode'#13#10'FROM TourC' +
      'alendar tcal '#13#10'LEFT JOIN TourCodes tc ON tcal.TourCodes_id = tc.' +
      'TourCodes_id'#13#10'WHERE tcal.Masters_id = :Masters_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 768
    Top = 120
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 784
    Top = 120
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 800
    Top = 120
    object TourCodeCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object TourCodeCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
  end
  object TourCodeDs: TDataSource
    DataSet = TourCodeCds
    Left = 816
    Top = 120
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT *, Organisation + '#39', '#39' + City AS OrgCity FROM dbo.fn_addr' +
      'essbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 768
    Top = 80
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 784
    Top = 80
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 800
    Top = 80
    object IntegerField2: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField2: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField3: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsOrgCity: TStringField
      FieldName = 'OrgCity'
      Size = 356
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 816
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 525
    object AddAllTourCodes1: TMenuItem
      Caption = 'Add All Tour Codes'
      OnClick = AddAllTourCodes1Click
    end
  end
  object PackageSds: TSQLDataSet
    CommandText = 
      'SELECT Packages_id, Package, From_Cities_id'#13#10'FROM Packages'#13#10'WHER' +
      'E From_Cities_id = :Cities_id '#13#10'ORDER BY Package'#13#10
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 768
    Top = 160
  end
  object PackageDsp: TDataSetProvider
    DataSet = PackageSds
    Left = 794
    Top = 162
  end
  object PackageCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'From_Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'PackageDsp'
    Left = 808
    Top = 160
    object PackageCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object PackageCdsPackage: TStringField
      FieldName = 'Package'
      Size = 50
    end
    object PackageCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
  end
  object PackageDs: TDataSource
    DataSet = PackageCds
    Left = 832
    Top = 160
  end
  object VoucherSds: TSQLDataSet
    CommandText = 'SELECT v.Vouchers_id, v.VoucherNo'#13#10'FROM Vouchers v'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 776
    Top = 200
  end
  object VoucherDsp: TDataSetProvider
    DataSet = VoucherSds
    Left = 792
    Top = 200
  end
  object VoucherCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherDsp'
    Left = 808
    Top = 200
    object VoucherCdsVouchers_id: TIntegerField
      FieldName = 'Vouchers_id'
    end
    object VoucherCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
  end
  object VoucherDs: TDataSource
    DataSet = VoucherCds
    Left = 824
    Top = 200
  end
end
