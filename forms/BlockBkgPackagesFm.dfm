inherited BlockBkgPackagesForm: TBlockBkgPackagesForm
  Left = 149
  Top = 113
  Width = 1014
  Height = 575
  Caption = 'Block Booking Packages Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 48
    Caption = ''
    TabOrder = 1
    Height = 406
    Width = 1006
    inherited CustomMasterCxGrid: TcxGrid
      Width = 1000
      Height = 385
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'blockbookingpackages_id'
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1From_Date: TcxGridDBColumn
          Caption = 'From Date'
          DataBinding.FieldName = 'from_date'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 83
        end
        object CustomMasterCxGridDBTableView1packages_id: TcxGridDBColumn
          Caption = 'Package'
          DataBinding.FieldName = 'packages_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Packages_id'
          Properties.ListColumns = <
            item
              FieldName = 'Package'
            end>
          Properties.ListSource = BackOfficeDataModule.PackagesDS
          Width = 90
        end
        object CustomMasterCxGridDBTableView1from_time: TcxGridDBColumn
          Caption = 'From Time'
          DataBinding.FieldName = 'from_time'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          Width = 80
        end
        object CustomMasterCxGridDBTableView1from_place: TcxGridDBColumn
          Caption = 'From Place'
          DataBinding.FieldName = 'from_place'
          Width = 88
        end
        object CustomMasterCxGridDBTableView1to_time: TcxGridDBColumn
          Caption = 'To Time'
          DataBinding.FieldName = 'to_time'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          SortIndex = 0
          SortOrder = soAscending
          Width = 84
        end
        object CustomMasterCxGridDBTableView1to_place: TcxGridDBColumn
          Caption = 'To Place'
          DataBinding.FieldName = 'to_place'
          Width = 76
        end
        object CustomMasterCxGridDBTableView1tourref: TcxGridDBColumn
          Caption = 'Tour Number'
          DataBinding.FieldName = 'tourref'
          Width = 98
        end
        object CustomMasterCxGridDBTableView1noofpax: TcxGridDBColumn
          Caption = 'Blocked'
          DataBinding.FieldName = 'noofpax'
          Width = 71
        end
        object CustomMasterCxGridDBTableView1noconfirmed: TcxGridDBColumn
          Caption = 'Confirmed'
          DataBinding.FieldName = 'noconfirmed'
          Width = 75
        end
        object CustomMasterCxGridDBTableView1reservedon: TcxGridDBColumn
          Caption = 'Reserved On'
          DataBinding.FieldName = 'reservedon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 85
        end
        object CustomMasterCxGridDBTableView1confirmedon: TcxGridDBColumn
          Caption = 'Confirmed On'
          DataBinding.FieldName = 'confirmedon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 86
        end
        object CustomMasterCxGridDBTableView1cancelledon: TcxGridDBColumn
          Caption = 'Cancelled On'
          DataBinding.FieldName = 'cancelledon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 83
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 454
    Width = 1006
    Height = 87
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 807
      Top = 61
      DataField = 'blockbookingpackages_id'
    end
    inherited SearchLbl: TcxLabel
      Top = 59
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Top = 54
      TabOrder = 2
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 919
      Top = 53
    end
    object GroupBox3: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = ' Set for current agent and date range '
      TabOrder = 0
      Height = 47
      Width = 1004
      object SpeedButton1: TSpeedButton
        Left = 153
        Top = 23
        Width = 21
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 426
        Top = 23
        Width = 21
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 681
        Top = 23
        Width = 21
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 970
        Top = 23
        Width = 21
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        OnClick = SpeedButton4Click
      end
      object Label6: TcxLabel
        Left = 5
        Top = 27
        Caption = 'No.Confirmed'
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 237
        Top = 27
        Caption = 'Confirmed on'
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 493
        Top = 27
        Caption = 'Reserved on'
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 778
        Top = 27
        Caption = 'Cancelled on'
        Transparent = True
      end
      object NumConfirmed: TcxTextEdit
        Left = 86
        Top = 23
        Style.Color = 16247513
        TabOrder = 0
        Width = 66
      end
      object ConfirmedDate: TcxDateEdit
        Left = 314
        Top = 23
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 1
        Width = 111
      end
      object ReservedDate: TcxDateEdit
        Left = 570
        Top = 23
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 2
        Width = 111
      end
      object CancelledDate: TcxDateEdit
        Left = 858
        Top = 23
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 3
        Width = 111
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1006
    Height = 48
    TabOrder = 0
    object GroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 0
      Height = 46
      Width = 1004
      object Label1: TcxLabel
        Left = 10
        Top = 25
        Caption = 'City'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 250
        Top = 25
        Caption = 'Hotel'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 684
        Top = 25
        Caption = 'From'
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 857
        Top = 25
        Caption = 'To'
        Transparent = True
      end
      object CityLCMB: TcxLookupComboBox
        Left = 42
        Top = 22
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            Caption = 'City'
            MinWidth = 150
            FieldName = 'city'
          end
          item
            Caption = 'State'
            MinWidth = 150
            FieldName = 'state'
          end>
        Properties.ListSource = BackOfficeDataModule.CitiesDS
        Properties.ValidateOnEnter = False
        Properties.OnCloseUp = CityLCMBPropertiesCloseUp
        Properties.OnEditValueChanged = CityLCMBPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        OnExit = CityLCMBExit
        OnKeyPress = CityLCMBKeyPress
        Width = 169
      end
      object FromDateEdit: TcxDateEdit
        Left = 725
        Top = 22
        EditValue = 36526d
        Style.Color = 16247513
        TabOrder = 2
        OnExit = FromDateEditExit
        OnKeyPress = FromDateEditKeyPress
        Width = 121
      end
      object ToDateEdit: TcxDateEdit
        Left = 877
        Top = 22
        EditValue = 36526d
        Style.Color = 16247513
        TabOrder = 3
        OnExit = ToDateEditExit
        OnKeyPress = ToDateEditKeyPress
        Width = 121
      end
      object HotelLCMB: TcxLookupComboBox
        Left = 290
        Top = 22
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'Addressbook_id'
        Properties.ListColumns = <
          item
            FieldName = 'Organisation'
          end>
        Properties.ListSource = HotelDs
        Properties.ValidateOnEnter = False
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 1
        OnExit = HotelLCMBExit
        OnKeyPress = HotelLCMBKeyPress
        Width = 300
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'blockbookingpackages'
    Left = 688
    Top = 240
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 712
    Top = 240
  end
  inherited MasterDS: TDataSource
    Left = 728
    Top = 240
  end
  inherited MasterCds: TClientDataSet
    Left = 744
    Top = 240
    object MasterCdsblockbookingpackages_id: TIntegerField
      FieldName = 'blockbookingpackages_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
    end
    object MasterCdsfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object MasterCdsfrom_place: TStringField
      FieldName = 'from_place'
      Size = 30
    end
    object MasterCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object MasterCdsto_time: TSQLTimeStampField
      FieldName = 'to_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object MasterCdsto_place: TStringField
      FieldName = 'to_place'
      Size = 30
    end
    object MasterCdstourref: TStringField
      Alignment = taCenter
      FieldName = 'tourref'
      Size = 10
    end
    object MasterCdsreservedby: TStringField
      FieldName = 'reservedby'
      Size = 30
    end
    object MasterCdsreservedon: TSQLTimeStampField
      FieldName = 'reservedon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsnoconfirmed: TIntegerField
      Alignment = taCenter
      FieldName = 'noconfirmed'
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsnoofpax: TIntegerField
      Alignment = taCenter
      FieldName = 'noofpax'
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'H'#39') where cities_id = :Citie' +
      's_id'#13#10
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 432
    Top = 8
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 448
    Top = 8
  end
  object HotelCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 464
    Top = 8
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object HotelCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 480
    Top = 8
  end
end
