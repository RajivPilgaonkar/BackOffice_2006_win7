inherited AddressChargesForm: TAddressChargesForm
  Left = 614
  Top = 175
  Width = 730
  Height = 575
  Caption = 'Ticket Charges'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 714
    Height = 47
    object Label1: TLabel
      Left = 1
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 520
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 686
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
    object Label3: TLabel
      Left = 360
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Mode'
      Transparent = True
    end
    object cxAgentLCMB: TcxLookupComboBox
      Left = 41
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
      Width = 308
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 549
      Top = 14
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 2
      Width = 130
    end
    object cxTicketsLCMB: TcxLookupComboBox
      Left = 400
      Top = 14
      Properties.DropDownWidth = 150
      Properties.KeyFieldNames = 'tickets_id'
      Properties.ListColumns = <
        item
          FieldName = 'details'
        end>
      Properties.ListSource = TicketsDs
      Properties.OnEditValueChanged = cxTicketsLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 111
    end
  end
  inherited Panel2: TPanel
    Top = 496
    Width = 714
    inherited cxButtonClose: TcxButton
      Left = 512
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 436
    end
  end
  inherited Panel3: TPanel
    Top = 47
    Width = 714
    Height = 449
    inherited cxPageControl1: TcxPageControl
      Width = 712
      Height = 447
      ClientRectBottom = 441
      ClientRectRight = 706
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Ticket Charges'
        inherited cxGrid1: TcxGrid
          Width = 703
          Height = 415
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'TicketCharges_id'
            object cxGrid1DBBandedTableView1TicketCharges_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TicketCharges_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 112
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wef'
              SortIndex = 0
              SortOrder = soDescending
              Width = 138
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Wet: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wet'
              Options.Sorting = False
              Width = 128
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Commission_Dom: TcxGridDBBandedColumn
              Caption = 'Commission(Dom)'
              DataBinding.FieldName = 'Commission_Dom'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 122
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Commission_Int: TcxGridDBBandedColumn
              Caption = 'Commission(Int)'
              DataBinding.FieldName = 'Commission_Int'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CancellationFee: TcxGridDBBandedColumn
              Caption = 'Cancellation Fee'
              DataBinding.FieldName = 'CancellationFee'
              Options.Filtering = False
              Options.Sorting = False
              Width = 138
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BookingFee: TcxGridDBBandedColumn
              Caption = 'Booking Fee'
              DataBinding.FieldName = 'BookingFee'
              Options.Filtering = False
              Options.Sorting = False
              Width = 130
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BookingFee_Percentage: TcxGridDBBandedColumn
              Caption = 'Booking Fee (%)'
              DataBinding.FieldName = 'BookingFee_Percentage'
              Options.Filtering = False
              Options.Sorting = False
              Width = 134
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ServiceTax_Dom: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ServiceTax_Dom'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ServiceTax_int: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ServiceTax_int'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AirportTax: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AirportTax'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Tds: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Tds'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 27
              Position.BandIndex = 0
              Position.ColIndex = 11
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
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM TicketCharges'#13#10'WHERE Addressbook_id = :Addressbook' +
      '_id'#13#10'AND Tickets_id = :Tickets_id'#13#10'AND Wef = :Wef'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Tickets_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsTicketCharges_id: TIntegerField
      FieldName = 'TicketCharges_id'
    end
    object MasterCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object MasterCdsCommission_Dom: TBCDField
      FieldName = 'Commission_Dom'
      DisplayFormat = '#,##0.00'
      Precision = 4
      Size = 2
    end
    object MasterCdsCancellationFee: TBCDField
      FieldName = 'CancellationFee'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsBookingFee: TBCDField
      FieldName = 'BookingFee'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsCommission_Int: TBCDField
      FieldName = 'Commission_Int'
      EditFormat = '#,##0.00'
      Precision = 4
      Size = 2
    end
    object MasterCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object MasterCdsServiceTax_Dom: TBCDField
      FieldName = 'ServiceTax_Dom'
      DisplayFormat = '#,##0.00'
      Precision = 4
    end
    object MasterCdsServiceTax_int: TBCDField
      FieldName = 'ServiceTax_int'
      DisplayFormat = '#,##0.00'
      Precision = 4
      Size = 2
    end
    object MasterCdsAirportTax: TFMTBCDField
      FieldName = 'AirportTax'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object MasterCdsTds: TFMTBCDField
      FieldName = 'Tds'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object MasterCdsBookingFee_Percentage: TBCDField
      FieldName = 'BookingFee_Percentage'
      DisplayFormat = '#,##0.00'
      Precision = 4
      Size = 2
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 65
    Top = 471
  end
  object AgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 48
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 152
    Top = 48
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 168
    Top = 48
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
    Top = 48
  end
  object TicketsSds: TSQLDataSet
    CommandText = 'select tickets_id, details from tickets order by details'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 416
    Top = 51
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    Left = 432
    Top = 51
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketsDSP'
    Left = 448
    Top = 51
    object TicketsCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object TicketsCdsdetails: TStringField
      FieldName = 'details'
      Size = 15
    end
  end
  object TicketsDs: TDataSource
    DataSet = TicketsCds
    Left = 464
    Top = 51
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Wef '#13#10'FROM TicketCharges'#13#10'WHERE Addressbook_id =' +
      ' :Addressbook_id'#13#10'AND Tickets_id = :Tickets_id'#13#10'ORDER BY Wef DES' +
      'C'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Tickets_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 648
    Top = 51
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 664
    Top = 51
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 680
    Top = 51
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 696
    Top = 51
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 568
    Top = 98
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 582
    Top = 99
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 600
    Top = 98
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
    Left = 612
    Top = 98
  end
end
