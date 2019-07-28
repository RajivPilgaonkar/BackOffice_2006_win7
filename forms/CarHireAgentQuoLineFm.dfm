object CarHireAgentQuoLineForm: TCarHireAgentQuoLineForm
  Left = 377
  Top = 42
  Width = 694
  Height = 122
  Caption = 'Car Hire Agent'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox5: TcxGroupBox
    Left = 18
    Top = 4
    TabOrder = 0
    Height = 43
    Width = 650
    object Label26: TLabel
      Left = 12
      Top = 23
      Width = 57
      Height = 13
      Caption = 'Car Agent'
      Transparent = True
    end
    object Label16: TLabel
      Left = 444
      Top = 23
      Width = 43
      Height = 13
      Caption = 'Vehicle'
      Transparent = True
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox
      Left = 79
      Top = 20
      DataBinding.DataField = 'CarHireAgents_id'
      DataBinding.DataSource = QuoLinesDs
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
      Properties.ListSource = BackOfficeDataModule.AgentDS
      Style.Color = 16247513
      TabOrder = 0
      Width = 152
    end
    object cxDBLookupComboBox8: TcxDBLookupComboBox
      Left = 491
      Top = 20
      DataBinding.DataField = 'Vehicles_id'
      DataBinding.DataSource = QuoLinesDs
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Vehicles_id'
      Properties.ListColumns = <
        item
          FieldName = 'Vehicle'
        end>
      Properties.ListSource = VehicleDs
      Style.Color = 16247513
      TabOrder = 1
      Width = 150
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 686
    Height = 35
    Align = alBottom
    TabOrder = 1
    object cxCloseBtn: TcxButton
      Left = 602
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxCloseBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object QuoLinesSds: TSQLDataSet
    CommandText = 'QuoLines'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 104
    Top = 48
  end
  object QuoLinesDsp: TDataSetProvider
    DataSet = QuoLinesSds
    Left = 128
    Top = 48
  end
  object QuoLinesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'QuoLinesDsp'
    AfterPost = QuoLinesCdsAfterPost
    Left = 160
    Top = 48
    object QuoLinesCdsQuoLines_id: TIntegerField
      FieldName = 'QuoLines_id'
    end
    object QuoLinesCdsCarHireAgents_id: TIntegerField
      FieldName = 'CarHireAgents_id'
    end
    object QuoLinesCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object QuoLinesCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
  end
  object QuoLinesDs: TDataSource
    DataSet = QuoLinesCds
    Left = 176
    Top = 46
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT v.Vehicle, ch.Vehicles_id, ch.AddressBook_id'#13#10'FR' +
      'OM CarHire ch LEFT JOIN Vehicles v ON ch.Vehicles_id = v.Vehicle' +
      's_id'#13#10'WHERE ch.Addressbook_id = :CarHireAgents_id'#13#10'ORDER BY Vehi' +
      'cle'
    DataSource = QuoLinesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CarHireAgents_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 520
    Top = 32
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 536
    Top = 32
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AddressBook_id'
    MasterFields = 'CarHireAgents_id'
    MasterSource = QuoLinesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 552
    Top = 32
    object VehicleCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object VehicleCdsvehicle: TStringField
      FieldName = 'vehicle'
      Size = 35
    end
    object VehicleCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 560
    Top = 32
  end
end
