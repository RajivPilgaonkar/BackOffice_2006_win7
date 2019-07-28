inherited BlockBkgTicketsForm: TBlockBkgTicketsForm
  Left = 9
  Top = 119
  Width = 1012
  Height = 585
  Caption = 'Block Booking Tickets Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Caption = ''
    TabOrder = 1
    Height = 431
    Width = 1004
    inherited CustomMasterCxGrid: TcxGrid
      Width = 998
      Height = 410
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'blockbookingtickets_id'
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1traveldate: TcxGridDBColumn
          Caption = 'Travel Date'
          DataBinding.FieldName = 'traveldate'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 93
        end
        object CustomMasterCxGridDBTableView1from_cities_id: TcxGridDBColumn
          Caption = 'From City'
          DataBinding.FieldName = 'from_cities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Width = 92
        end
        object CustomMasterCxGridDBTableView1to_cities_id: TcxGridDBColumn
          Caption = 'To City'
          DataBinding.FieldName = 'to_cities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Width = 86
        end
        object CustomMasterCxGridDBTableView1flightno: TcxGridDBColumn
          Caption = 'Flight No.'
          DataBinding.FieldName = 'flightno'
          Width = 80
        end
        object CustomMasterCxGridDBTableView1classid: TcxGridDBColumn
          Caption = 'Class'
          DataBinding.FieldName = 'classid'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'Class_id'
          Properties.ListColumns = <
            item
              FieldName = 'Class'
            end>
          Properties.ListSource = ClassDS
          Width = 94
        end
        object CustomMasterCxGridDBTableView1nooftickets: TcxGridDBColumn
          Caption = 'Blocked'
          DataBinding.FieldName = 'nooftickets'
          SortIndex = 0
          SortOrder = soAscending
          Styles.Content = BackOfficeDataModule.cxStyleFormBackground
          Width = 85
        end
        object CustomMasterCxGridDBTableView1noconfirmed: TcxGridDBColumn
          Caption = 'Confirmed'
          DataBinding.FieldName = 'noconfirmed'
          Styles.Content = BackOfficeDataModule.cxStyleFormBackground
          Width = 68
        end
        object CustomMasterCxGridDBTableView1tourref: TcxGridDBColumn
          Caption = 'Tour Number'
          DataBinding.FieldName = 'tourref'
          Width = 99
        end
        object CustomMasterCxGridDBTableView1reservedon: TcxGridDBColumn
          Caption = 'Reserved On'
          DataBinding.FieldName = 'reservedon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 98
        end
        object CustomMasterCxGridDBTableView1confirmedon: TcxGridDBColumn
          Caption = 'Confirmed On'
          DataBinding.FieldName = 'confirmedon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 102
        end
        object CustomMasterCxGridDBTableView1cancelledon: TcxGridDBColumn
          Caption = 'Cancelled On'
          DataBinding.FieldName = 'cancelledon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 100
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 472
    Width = 1004
    Height = 79
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 839
      Top = 56
      Width = 62
      Height = 13
      AutoSize = True
      DataField = 'blockbookingtickets_id'
    end
    inherited SearchLbl: TcxLabel
      Top = 55
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Top = 50
      TabOrder = 2
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 910
      Top = 50
    end
    object GroupBox3: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = ' Set for current agent and date range '
      TabOrder = 0
      Height = 45
      Width = 1002
      object SpeedButton1: TSpeedButton
        Left = 155
        Top = 21
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
        Left = 413
        Top = 21
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
        Left = 669
        Top = 21
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
        Left = 927
        Top = 21
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
        Top = 24
        Caption = 'No.Confirmed'
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 220
        Top = 24
        Caption = 'Confirmed on'
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 480
        Top = 24
        Caption = 'Reserved on'
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 734
        Top = 24
        Caption = 'Cancelled on'
        Transparent = True
      end
      object NumConfirmed: TcxTextEdit
        Left = 88
        Top = 21
        Style.Color = 16247513
        TabOrder = 0
        Width = 66
      end
      object ConfirmedDate: TcxDateEdit
        Left = 300
        Top = 21
        Style.Color = 16247513
        TabOrder = 1
        Width = 111
      end
      object ReservedDate: TcxDateEdit
        Left = 557
        Top = 21
        Style.Color = 16247513
        TabOrder = 2
        Width = 111
      end
      object CancelledDate: TcxDateEdit
        Left = 814
        Top = 21
        Style.Color = 16247513
        TabOrder = 3
        Width = 111
      end
    end
    object cxButton1: TcxButton
      Left = 221
      Top = 49
      Width = 129
      Height = 25
      Caption = 'Regenerate'
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 481
      Top = 50
      Width = 80
      Height = 25
      Caption = 'Print'
      TabOrder = 4
      OnClick = cxButton2Click
    end
  end
  inherited Panel2: TPanel
    Width = 1004
    TabOrder = 0
    object Label1: TcxLabel
      Left = 10
      Top = 15
      Caption = 'City'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 240
      Top = 15
      Caption = 'Agent'
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 647
      Top = 17
      Caption = 'From'
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 820
      Top = 17
      Caption = 'To'
      Transparent = True
    end
    object CityLCMB: TcxLookupComboBox
      Left = 42
      Top = 12
      Properties.DropDownWidth = 250
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
    object AgentLcb: TcxLookupComboBox
      Left = 288
      Top = 12
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = AgentDS
      Properties.ValidateOnEnter = False
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 1
      OnExit = AgentLcbExit
      OnKeyPress = AgentLcbKeyPress
      Width = 300
    end
    object FromDateEdit: TcxDateEdit
      Left = 688
      Top = 15
      EditValue = 36526d
      Style.Color = 16247513
      TabOrder = 2
      OnExit = FromDateEditExit
      OnKeyPress = FromDateEditKeyPress
      Width = 121
    end
    object ToDateEdit: TcxDateEdit
      Left = 840
      Top = 15
      EditValue = 36526d
      Style.Color = 16247513
      TabOrder = 3
      OnExit = ToDateEditExit
      OnKeyPress = ToDateEditKeyPress
      Width = 121
    end
  end
  inherited MasterSDS: TSQLDataSet
    Active = True
    CommandText = 'blockbookingtickets'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsblockbookingtickets_id: TIntegerField
      FieldName = 'blockbookingtickets_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdstraveldate: TSQLTimeStampField
      FieldName = 'traveldate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsnooftickets: TIntegerField
      FieldName = 'nooftickets'
    end
    object MasterCdstourref: TStringField
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
      FieldName = 'noconfirmed'
    end
    object MasterCdsflightno: TStringField
      FieldName = 'flightno'
      FixedChar = True
      Size = 10
    end
    object MasterCdsclassid: TIntegerField
      FieldName = 'classid'
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object AgentSDS: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'A'#39') where cities_id = :Citie' +
      's_id'
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
  object AgentDSP: TDataSetProvider
    DataSet = AgentSDS
    Left = 448
    Top = 8
  end
  object AgentCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDSP'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 464
    Top = 8
    object AgentCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCDSOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AgentCDSCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCDSCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AgentCDSContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCDS
    Left = 480
    Top = 8
  end
  object ClassSDS: TSQLDataSet
    CommandText = 'SELECT Class_id, Class FROM Class'#13#10'ORDER BY Class'
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
    Top = 88
  end
  object ClassDSP: TDataSetProvider
    DataSet = ClassSDS
    Left = 368
    Top = 88
  end
  object ClassCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDSP'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 384
    Top = 88
    object ClassCDSClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object ClassCDSClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
  end
  object ClassDS: TDataSource
    DataSet = ClassCDS
    Left = 400
    Top = 88
  end
end
