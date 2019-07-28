inherited CancellationChargesForm: TCancellationChargesForm
  Left = 515
  Top = 105
  Width = 720
  Height = 598
  Caption = 'Cancellation Charges'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 704
    Height = 50
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 480
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 670
      Top = 13
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object cxAgentLCMB: TcxLookupComboBox
      Left = 53
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          Width = 300
          FieldName = 'Organisation'
        end
        item
          Width = 100
          FieldName = 'City'
        end>
      Properties.ListSource = AgentDS
      Properties.OnEditValueChanged = cxAgentLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 356
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 517
      Top = 14
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 148
    end
  end
  inherited Panel2: TPanel
    Top = 518
    Width = 704
    Height = 42
    inherited cxButtonClose: TcxButton
      Left = 608
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 532
    end
  end
  inherited Panel3: TPanel
    Top = 50
    Width = 704
    Height = 468
    inherited cxPageControl1: TcxPageControl
      Width = 702
      Height = 466
      ClientRectBottom = 460
      ClientRectRight = 696
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Cancellation Charges'
        inherited cxGrid1: TcxGrid
          Width = 693
          Height = 434
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'cancellationcharges_id'
            object cxGrid1DBBandedTableView1CancellationCharges_id: TcxGridDBBandedColumn
              Caption = 'CancellationCharges_id'
              DataBinding.FieldName = 'cancellationcharges_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              SortIndex = 0
              SortOrder = soDescending
              Width = 137
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              Options.Sorting = False
              Width = 136
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Class_id: TcxGridDBBandedColumn
              Caption = 'Class'
              DataBinding.FieldName = 'class_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'Class_id'
              Properties.ListColumns = <
                item
                  FieldName = 'class'
                end>
              Properties.ListSource = ClassDs
              Width = 202
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1MinimumKm: TcxGridDBBandedColumn
              Caption = 'Minimum Km.'
              DataBinding.FieldName = 'minimumkm'
              Options.Filtering = False
              Options.Sorting = False
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cost: TcxGridDBBandedColumn
              Caption = 'Cost'
              DataBinding.FieldName = 'cost'
              Options.Filtering = False
              Options.Sorting = False
              Width = 103
              Position.BandIndex = 0
              Position.ColIndex = 5
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
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CancellationCharges'#13#10'WHERE Wef >= :Wef'#13#10'AND Addres' +
      'sbook_id = :Addressbook_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    Left = 528
    Top = 424
  end
  inherited MasterDsp: TDataSetProvider
    Left = 558
    Top = 424
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 591
    Top = 424
    object MasterCdscancellationcharges_id: TIntegerField
      FieldName = 'cancellationcharges_id'
    end
    object MasterCdsclass_id: TIntegerField
      FieldName = 'class_id'
    end
    object MasterCdsminimumkm: TIntegerField
      FieldName = 'minimumkm'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdscost: TBCDField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 621
    Top = 424
  end
  inherited PopupMenu1: TPopupMenu
    Left = 57
    Top = 463
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 16
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 152
    Top = 16
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 168
    Top = 16
    object AgentCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AgentCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AgentCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 184
    Top = 16
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Addressbook_id, Wef FROM CancellationCharges'#13#10'WH' +
      'ERE Addressbook_id = :Addressbook_id'#13#10'ORDER BY Wef DESC'#13#10
    DataSource = AgentDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 536
    Top = 27
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 552
    Top = 27
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = AgentDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'WefDsp'
    Left = 568
    Top = 27
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object WefCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 584
    Top = 27
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 64
    Top = 144
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdscode: TStringField
      FieldName = 'code'
      Size = 5
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 96
    Top = 144
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 40
    Top = 147
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, class, code, tickets_id FROM class ORDER BY cla' +
      'ss'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 24
    Top = 144
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 464
    Top = 154
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 478
    Top = 155
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 496
    Top = 154
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
    Left = 516
    Top = 154
  end
end
