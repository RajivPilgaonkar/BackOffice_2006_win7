inherited ConsultantsForm: TConsultantsForm
  Left = 355
  Top = 60
  Width = 845
  Height = 599
  Caption = 'Consultants'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 829
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 87
      Height = 13
      Caption = 'Principal Agent'
      Transparent = True
    end
    object cxAgentLcmb: TcxLookupComboBox
      Left = 102
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
      Properties.ListSource = PrinAgentDS
      Properties.OnEditValueChanged = cxAgentLcmbPropertiesEditValueChanged
      TabOrder = 0
      Width = 232
    end
  end
  inherited Panel2: TPanel
    Top = 520
    Width = 829
  end
  inherited Panel3: TPanel
    Width = 829
    Height = 479
    inherited cxPageControl1: TcxPageControl
      Width = 827
      Height = 477
      ClientRectBottom = 471
      ClientRectRight = 821
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Consultants'
        object Splitter1: TSplitter [0]
          Left = 0
          Top = 353
          Width = 818
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        inherited cxGrid1: TcxGrid
          Width = 818
          Height = 353
          Align = alTop
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'Consultants_id'
            object cxGrid1DBBandedTableView1Consultants_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Consultants_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Consultant: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Consultant'
              Options.SortByDisplayText = isbtOn
              SortIndex = 0
              SortOrder = soAscending
              Width = 286
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Email: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Email'
              Options.Filtering = False
              Options.Sorting = False
              Width = 318
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Addressbook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Addressbook_id'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Pwd: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Pwd'
              Options.Filtering = False
              Options.Sorting = False
              Width = 128
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Active: TcxGridDBBandedColumn
              Caption = 'Active'
              DataBinding.FieldName = 'active'
              Options.Sorting = False
              Width = 58
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
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 356
          Align = alClient
          DataBinding.DataField = 'WriteUp'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Height = 89
          Width = 818
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM Consultants WHERE Addressbook_id = :Addressbook_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsConsultants_id: TIntegerField
      FieldName = 'Consultants_id'
    end
    object MasterCdsConsultant: TStringField
      FieldName = 'Consultant'
      Size = 60
    end
    object MasterCdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCdsWriteUp: TMemoField
      FieldName = 'WriteUp'
      BlobType = ftMemo
    end
    object MasterCdsPwd: TStringField
      FieldName = 'Pwd'
      Size = 30
    end
    object MasterCdsactive: TBooleanField
      FieldName = 'active'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 73
    Top = 527
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
    Left = 336
    Top = 8
    object IntegerField3: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField4: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField5: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object PrinAgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 8
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 320
    Top = 8
  end
  object PrinAgentDS: TDataSource
    DataSet = PrinAgentCds
    Left = 352
    Top = 8
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 576
    Top = 10
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 590
    Top = 11
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 608
    Top = 10
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
    Left = 620
    Top = 10
  end
end
