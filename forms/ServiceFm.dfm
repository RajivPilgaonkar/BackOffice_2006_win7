inherited ServiceForm: TServiceForm
  Left = 212
  Top = 56
  Width = 950
  Height = 716
  Caption = 'Services'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 471
    Width = 934
  end
  inherited Panel1: TPanel
    Width = 934
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object cxCityLcmb: TcxLookupComboBox
      Left = 54
      Top = 14
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = CityDs
      Properties.OnEditValueChanged = cxCityLcmbPropertiesEditValueChanged
      TabOrder = 0
      Width = 232
    end
    object cxRadioGroup: TcxRadioGroup
      Left = 309
      Top = 2
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Services'
        end
        item
          Caption = 'Transfers'
        end>
      Properties.OnEditValueChanged = cxRadioGroupPropertiesEditValueChanged
      ItemIndex = 0
      Style.LookAndFeel.SkinName = 'Office2007Black'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Black'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Black'
      StyleHot.LookAndFeel.SkinName = 'Office2007Black'
      TabOrder = 1
      Height = 38
      Width = 185
    end
    object cxActiveCkb: TcxCheckBox
      Left = 512
      Top = 16
      Caption = 'Display Active'
      Properties.OnEditValueChanged = cxActiveCkbPropertiesEditValueChanged
      State = cbsChecked
      TabOrder = 2
      Transparent = True
      Width = 121
    end
  end
  inherited Panel2: TPanel
    Top = 637
    Width = 934
    inherited cxButtonUtilities: TcxButton
      PopupMenu = PopupMenu1
      DropDownMenu = PopupMenu1
    end
  end
  inherited Panel3: TPanel
    Width = 934
    Height = 430
    inherited cxPageControl1: TcxPageControl
      Width = 932
      Height = 428
      ClientRectBottom = 422
      ClientRectRight = 926
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Services'
        inherited cxGrid1: TcxGrid
          Width = 923
          Height = 396
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = PopupMenu2
            object cxGrid1DBBandedTableView1services_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'services_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1service: TcxGridDBBandedColumn
              Caption = 'Service'
              DataBinding.FieldName = 'service'
              Options.Sorting = False
              Width = 123
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1description: TcxGridDBBandedColumn
              Caption = 'Description'
              DataBinding.FieldName = 'description'
              SortIndex = 1
              SortOrder = soAscending
              Width = 175
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ArrivalDescription: TcxGridDBBandedColumn
              Caption = 'Arrival Description'
              DataBinding.FieldName = 'ArrivalDescription'
              Options.Filtering = False
              Options.Sorting = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1addressbook_id: TcxGridDBBandedColumn
              Caption = 'Default Agent'
              DataBinding.FieldName = 'addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  Width = 200
                  FieldName = 'Organisation'
                end
                item
                  Width = 100
                  FieldName = 'City'
                end>
              Properties.ListSource = AgentDs
              Options.Sorting = False
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1private: TcxGridDBBandedColumn
              Caption = 'Private'
              DataBinding.FieldName = 'private'
              Visible = False
              Options.Sorting = False
              Width = 52
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1duration: TcxGridDBBandedColumn
              Caption = 'Duration'
              DataBinding.FieldName = 'duration'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.ClearKey = 46
              Properties.EditMask = '!00:00;1;_'
              Options.Filtering = False
              Options.Sorting = False
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CheckInDuration: TcxGridDBBandedColumn
              Caption = 'Check In'
              DataBinding.FieldName = 'CheckInDuration'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.ClearKey = 46
              Properties.EditMask = '!00:00;1;_'
              Options.Filtering = False
              Width = 49
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1defaultorder: TcxGridDBBandedColumn
              Caption = 'Default Order'
              DataBinding.FieldName = 'defaultorder'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1active: TcxGridDBBandedColumn
              Caption = 'Active'
              DataBinding.FieldName = 'active'
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tickets_id: TcxGridDBBandedColumn
              Caption = 'Tickets'
              DataBinding.FieldName = 'tickets_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Tickets_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Details'
                end>
              Properties.ListSource = TicketDs
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1transfertypes_id: TcxGridDBBandedColumn
              Caption = 'Transfer Type'
              DataBinding.FieldName = 'transfertypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'TransferTypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'TransferCode'
                end>
              Properties.ListSource = TransferTypeDs
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1to_cities_id: TcxGridDBBandedColumn
              Caption = 'Inter City'
              DataBinding.FieldName = 'to_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'City'
                end>
              Properties.ListSource = CityDs
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Guide: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Guide'
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TransportReqd: TcxGridDBBandedColumn
              Caption = 'Transport'
              DataBinding.FieldName = 'TransportReqd'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1owntransport: TcxGridDBBandedColumn
              Caption = 'Own Trans'
              DataBinding.FieldName = 'owntransport'
              Visible = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DaysName: TcxGridDBBandedColumn
              Caption = 'Days'
              DataBinding.FieldName = 'DaysName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGrid1DBBandedTableView1DaysNamePropertiesButtonClick
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Recommended: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Recommended'
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AdvBooking: TcxGridDBBandedColumn
              Caption = 'Adv Booking'
              DataBinding.FieldName = 'AdvBooking'
              Position.BandIndex = 0
              Position.ColIndex = 19
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
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1NotHotelAddressbook_id: TcxGridDBBandedColumn
              Caption = 'Hotel is Not'
              DataBinding.FieldName = 'NotHotelAddressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 400
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  Caption = 'Hotel'
                  Width = 300
                  FieldName = 'Organisation'
                end
                item
                  Width = 100
                  FieldName = 'City'
                end>
              Properties.ListSource = AgentDs
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 479
    Width = 934
    Height = 158
    object Splitter3: TSplitter [0]
      Left = 137
      Top = 1
      Height = 156
    end
    inherited cxPageControl2: TcxPageControl
      Width = 136
      Height = 156
      Align = alLeft
      ClientRectBottom = 150
      ClientRectRight = 130
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Alias'
        inherited cxGrid2: TcxGrid
          Width = 127
          Height = 124
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid2DBBandedTableView1servicetimings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'servicetimings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1services_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'services_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1starttime: TcxGridDBBandedColumn
              Caption = 'Start Time'
              DataBinding.FieldName = 'starttime'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              SortIndex = 0
              SortOrder = soAscending
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    object cxPageControl3: TcxPageControl
      Left = 140
      Top = 1
      Width = 793
      Height = 156
      ActivePage = cxTabSheet3
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 150
      ClientRectLeft = 3
      ClientRectRight = 787
      ClientRectTop = 26
      object cxTabSheet3: TcxTabSheet
        Caption = 'Service Info'
        ImageIndex = 0
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 65
          Height = 13
          Caption = 'Image Path'
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 30
          Width = 51
          Height = 13
          Caption = 'Write Up'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 82
          Top = 5
          DataBinding.DataField = 'image'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Width = 695
        end
        object cxDBMemo5: TcxDBMemo
          Left = 82
          Top = 27
          DataBinding.DataField = 'writeup'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Height = 96
          Width = 695
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Pop up Message'
        ImageIndex = 1
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'MessagePopup'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 124
          Width = 784
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Rep String'
        ImageIndex = 2
        object cxDBMemo2: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'RepString'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 124
          Width = 784
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM Services'#13#10'WHERE Active = :Active'#13#10'AND Transfer = :' +
      'Transfer'#13#10'AND Cities_id = :Cities_id'#13#10'ORDER BY Description'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftBoolean
        Name = 'Active'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = 'Transfer'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    Left = 704
    Top = 144
  end
  inherited MasterDsp: TDataSetProvider
    Left = 734
    Top = 144
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    OnCalcFields = MasterCdsCalcFields
    Left = 767
    Top = 144
    object MasterCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object MasterCdsservice: TStringField
      FieldName = 'service'
      Size = 25
    end
    object MasterCdsdescription: TStringField
      FieldName = 'description'
      Size = 100
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsprivate: TBooleanField
      FieldName = 'private'
    end
    object MasterCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object MasterCdsdefaultorder: TIntegerField
      FieldName = 'defaultorder'
    end
    object MasterCdsstarttime: TSQLTimeStampField
      FieldName = 'starttime'
    end
    object MasterCdsactive: TBooleanField
      FieldName = 'active'
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object MasterCdstransfer: TBooleanField
      FieldName = 'transfer'
    end
    object MasterCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object MasterCdswriteup: TMemoField
      FieldName = 'writeup'
      BlobType = ftMemo
    end
    object MasterCdsimage: TStringField
      FieldName = 'image'
      Size = 50
    end
    object MasterCdsdaysofoperation: TSmallintField
      FieldName = 'daysofoperation'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdsowntransport: TBooleanField
      FieldName = 'owntransport'
    end
    object MasterCdsRecommended: TBooleanField
      FieldName = 'Recommended'
    end
    object MasterCdsArrivalDescription: TStringField
      FieldName = 'ArrivalDescription'
      Size = 200
    end
    object MasterCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 30
      Calculated = True
    end
    object MasterCdsCheckInDuration: TStringField
      FieldName = 'CheckInDuration'
      Size = 5
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
    object MasterCdsAdvBooking: TBooleanField
      FieldName = 'AdvBooking'
    end
    object MasterCdsNotHotelAddressbook_id: TIntegerField
      FieldName = 'NotHotelAddressbook_id'
    end
    object MasterCdsMessagePopup: TStringField
      FieldName = 'MessagePopup'
      Size = 200
    end
    object MasterCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object MasterCdsTransportReqd: TBooleanField
      FieldName = 'TransportReqd'
    end
    object MasterCdsRepString: TStringField
      FieldName = 'RepString'
      Size = 100
    end
  end
  inherited MasterDs: TDataSource
    Left = 797
    Top = 144
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ServiceTimings'#13#10'WHERE Services_id = :Services_id'#13#10 +
      'ORDER BY CONVERT(VARCHAR(5),StartTime, 108)'#13#10
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'services_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 704
    Top = 176
  end
  inherited DetailDsp: TDataSetProvider
    Left = 734
    Top = 176
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'services_id'
    MasterFields = 'services_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Left = 767
    Top = 176
    object DetailCdsservicetimings_id: TIntegerField
      FieldName = 'servicetimings_id'
    end
    object DetailCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object DetailCdsstarttime: TSQLTimeStampField
      FieldName = 'starttime'
    end
  end
  inherited DetailDs: TDataSource
    Left = 797
    Top = 176
  end
  object CitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City'#13#10'FROM Cities'#13#10'ORDER BY City'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 88
    Top = 136
  end
  object CityDsp: TDataSetProvider
    DataSet = CitySds
    UpdateMode = upWhereKeyOnly
    Left = 118
    Top = 136
  end
  object CityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CityDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 151
    Top = 136
    object CityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CityDs: TDataSource
    DataSet = CityCds
    Left = 181
    Top = 136
  end
  object TransferTypeSds: TSQLDataSet
    CommandText = 
      'SELECT TransferTypes_id, Transfer, TransferCode'#13#10'FROM TransferTy' +
      'pes'#13#10'ORDER BY Transfer'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 88
    Top = 176
  end
  object TransferTypeDsp: TDataSetProvider
    DataSet = TransferTypeSds
    UpdateMode = upWhereKeyOnly
    Left = 118
    Top = 176
  end
  object TransferTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TransferTypeDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 151
    Top = 176
    object TransferTypeCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object TransferTypeCdsTransfer: TStringField
      FieldName = 'Transfer'
      Size = 25
    end
    object TransferTypeCdsTransferCode: TStringField
      FieldName = 'TransferCode'
      Size = 3
    end
  end
  object TransferTypeDs: TDataSource
    DataSet = TransferTypeCds
    Left = 181
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 641
  end
  object TicketSds: TSQLDataSet
    CommandText = 'SELECT Tickets_id, Details'#13#10'FROM Tickets'#13#10'ORDER BY Details'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 88
    Top = 216
  end
  object TicketDsp: TDataSetProvider
    DataSet = TicketSds
    UpdateMode = upWhereKeyOnly
    Left = 118
    Top = 216
  end
  object TicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 151
    Top = 216
    object TicketCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object TicketCdsDetails: TStringField
      FieldName = 'Details'
      Size = 15
    end
  end
  object TicketDs: TDataSource
    DataSet = TicketCds
    Left = 181
    Top = 216
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'A'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 88
    Top = 256
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    UpdateMode = upWhereKeyOnly
    Left = 118
    Top = 256
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 151
    Top = 256
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
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 181
    Top = 256
  end
  object PopupMenu2: TPopupMenu
    Left = 308
    Top = 140
    object Selecthotelfromtransfer1: TMenuItem
      Caption = 'Select hotel for transfer'
      OnClick = Selecthotelfromtransfer1Click
    end
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 664
    Top = 10
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 678
    Top = 11
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 696
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
    Left = 708
    Top = 10
  end
end
