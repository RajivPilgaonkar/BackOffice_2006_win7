inherited AgentBoardNameForm: TAgentBoardNameForm
  Width = 566
  Height = 537
  Caption = 'Car Hire Agents'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 550
  end
  inherited Panel2: TPanel
    Top = 458
    Width = 550
    inherited cxButtonClose: TcxButton
      Left = 472
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 396
    end
  end
  inherited Panel3: TPanel
    Width = 550
    Height = 417
    inherited cxPageControl1: TcxPageControl
      Width = 548
      Height = 415
      ClientRectBottom = 409
      ClientRectRight = 542
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Agent Board Names'
        inherited cxGrid1: TcxGrid
          Width = 539
          Height = 383
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'AgentData_id'
            object cxGrid1DBBandedTableView1AgentData_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AgentData_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Addressbook_id: TcxGridDBBandedColumn
              Caption = 'Principal Agent'
              DataBinding.FieldName = 'Addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Organisation'
                end>
              Properties.ListSource = AgentDS
              Width = 196
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BoardName: TcxGridDBBandedColumn
              Caption = 'Board Caption'
              DataBinding.FieldName = 'BoardName'
              Width = 277
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM AgentData'#13#10
    CommandType = ctQuery
    Left = 360
    Top = 368
  end
  inherited MasterDsp: TDataSetProvider
    Left = 390
    Top = 368
  end
  inherited MasterCds: TClientDataSet
    Left = 423
    Top = 368
    object MasterCdsAgentData_id: TIntegerField
      FieldName = 'AgentData_id'
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCdsBoardName: TStringField
      FieldName = 'BoardName'
      Size = 30
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 453
    Top = 368
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 48
    Top = 160
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
    Left = 64
    Top = 160
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 32
    Top = 160
  end
  object AgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 160
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 408
    Top = 114
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 422
    Top = 115
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 440
    Top = 114
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
    Left = 452
    Top = 114
  end
end
