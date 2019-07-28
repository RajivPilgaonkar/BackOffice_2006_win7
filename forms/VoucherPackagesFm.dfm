inherited VoucherPackagesForm: TVoucherPackagesForm
  Left = 374
  Top = 213
  Width = 710
  Height = 305
  Caption = 'Voucher Packages'
  FormStyle = fsNormal
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 694
  end
  inherited Panel2: TPanel
    Top = 226
    Width = 694
    inherited cxButtonClose: TcxButton
      Left = 488
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 412
      DataBinding.DataField = 'voucherspackages_id'
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Left = 144
      Width = 132
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDs
    end
  end
  inherited Panel3: TPanel
    Width = 694
    Height = 185
    inherited cxPageControl1: TcxPageControl
      Width = 692
      Height = 183
      ClientRectBottom = 177
      ClientRectRight = 686
      inherited cxTabSheet1: TcxTabSheet
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 683
          Height = 151
          Align = alClient
          TabOrder = 0
          object Label8: TLabel
            Left = 5
            Top = 21
            Width = 22
            Height = 13
            Caption = 'City'
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
          object Label3: TLabel
            Left = 5
            Top = 44
            Width = 43
            Height = 13
            Caption = 'Date In'
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
          object Label13: TLabel
            Left = 5
            Top = 67
            Width = 34
            Height = 13
            Caption = 'Agent'
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
            DataBinding.DataField = 'cities_id'
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
          object cxDBLookupComboBox6: TcxDBLookupComboBox
            Left = 87
            Top = 65
            DataBinding.DataField = 'Addressbook_id'
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
          object cxDBMemo1: TcxDBMemo
            Left = 87
            Top = 88
            DataBinding.DataField = 'remarks'
            DataBinding.DataSource = MasterDs
            TabOrder = 5
            Height = 46
            Width = 471
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM VouchersPackages'#13#10'WHERE VouchersPackages_id = :Vou' +
      'chersPackages_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'VouchersPackages_id'
        ParamType = ptInput
      end>
    Left = 112
    Top = 8
  end
  inherited MasterDsp: TDataSetProvider
    Left = 142
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    Left = 175
    Top = 8
    object MasterCdsvoucherspackages_id: TIntegerField
      FieldName = 'voucherspackages_id'
    end
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object MasterCdsfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
    end
    object MasterCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdsto_date: TSQLTimeStampField
      FieldName = 'to_date'
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 200
    end
  end
  inherited MasterDs: TDataSource
    Left = 205
    Top = 8
  end
  inherited PopupMenu1: TPopupMenu
    Left = 41
    Top = 175
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Cities_id, c.City, s.State'#13#10'FROM Cities c '#13#10'LEFT JOIN S' +
      'tates s ON c.States_id = s.States_id'#13#10'WHERE NightHalt = 1'#13#10'ORDER' +
      ' BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 72
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 600
    Top = 72
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 616
    Top = 72
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
    Left = 640
    Top = 72
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT *, Organisation + '#39', '#39' + City AS OrgCity FROM dbo.fn_addr' +
      'essbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 104
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 600
    Top = 104
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 616
    Top = 104
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
    Left = 632
    Top = 104
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
    Left = 584
    Top = 176
  end
  object PackageDsp: TDataSetProvider
    DataSet = PackageSds
    Left = 610
    Top = 178
  end
  object PackageCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'From_Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'PackageDsp'
    Left = 624
    Top = 176
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
    Left = 648
    Top = 176
  end
end
