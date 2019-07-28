inherited BookingsForm: TBookingsForm
  Left = 111
  Top = 3
  Caption = 'Bookings'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 409
  end
  inherited Splitter2: TSplitter
    Top = 249
  end
  inherited Splitter3: TSplitter
    Height = 216
  end
  inherited Panel2: TPanel
    Top = 612
    Height = 46
    inherited cxRadioGroup: TcxRadioGroup
      Properties.Columns = 4
      Properties.Items = <
        item
          Caption = 'Ref'
        end
        item
          Caption = 'ID'
        end
        item
          Caption = 'Name'
        end
        item
          Caption = 'Tour Code'
        end>
      Width = 334
    end
    inherited cxSearchTextEdit: TcxTextEdit
      Left = 442
      OnKeyPress = cxSearchTextEditKeyPress
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Left = 587
      Top = 6
      Width = 114
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      DataSource = MasterDs
      LookAndFeel.NativeStyle = True
    end
  end
  inherited Panel3: TPanel
    Top = 412
    Height = 200
    inherited cxPageControl4: TcxPageControl
      Height = 198
      ActivePage = cxTabSheetTickets
      Images = BackOfficeDataModule.ImageList1
      ClientRectBottom = 192
      ClientRectTop = 27
      inherited cxTabSheetTickets: TcxTabSheet
        inherited cxGrid4: TcxGrid
          Height = 165
          inherited cxGridDBBandedTableView4: TcxGridDBBandedTableView
            DataController.DataSource = BkgTicketsDs
            DataController.KeyFieldNames = 'bookingstickets_id'
            object cxGridDBBandedTableView4bookingstickets_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingstickets_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4bookings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookings_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4Agent_Cities_id: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'Agent_Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4AgentLookup: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView4AgentLookupPropertiesButtonClick
              Width = 164
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4tickets_id: TcxGridDBBandedColumn
              Caption = 'Mode'
              DataBinding.FieldName = 'tickets_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'tickets_id'
              Properties.ListColumns = <
                item
                  FieldName = 'details'
                end>
              Properties.ListSource = TicketsDs
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4nooftickets: TcxGridDBBandedColumn
              Caption = 'Tickets'
              DataBinding.FieldName = 'nooftickets'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4traveldate: TcxGridDBBandedColumn
              Caption = 'Travel Date'
              DataBinding.FieldName = 'traveldate'
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4from_cities_id: TcxGridDBBandedColumn
              Caption = 'From City'
              DataBinding.FieldName = 'from_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4to_cities_id: TcxGridDBBandedColumn
              Caption = 'To City'
              DataBinding.FieldName = 'to_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4flightno: TcxGridDBBandedColumn
              Caption = 'Travel Option'
              DataBinding.FieldName = 'flightno'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView4flightnoPropertiesButtonClick
              Width = 89
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4FromTrainStationLookup: TcxGridDBBandedColumn
              Caption = 'From Station'
              DataBinding.FieldName = 'FromTrainStationLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView4FromTrainStationLookupPropertiesButtonClick
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4ToTrainStationLookup: TcxGridDBBandedColumn
              Caption = 'To Station'
              DataBinding.FieldName = 'ToTrainStationLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView4ToTrainStationLookupPropertiesButtonClick
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4ClassLookup: TcxGridDBBandedColumn
              Caption = 'Class'
              DataBinding.FieldName = 'ClassLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView4ClassLookupPropertiesButtonClick
              Width = 104
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4etd: TcxGridDBBandedColumn
              Caption = 'ETD'
              DataBinding.FieldName = 'etd'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 47
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4eta: TcxGridDBBandedColumn
              Caption = 'ETA'
              DataBinding.FieldName = 'eta'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 56
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4tourcode: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'TourCode'
              Properties.ListColumns = <
                item
                  FieldName = 'TourCode'
                end>
              Properties.ListSource = TourCodeDs
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4tourdate: TcxGridDBBandedColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              Options.Editing = False
              Width = 76
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4bookedon: TcxGridDBBandedColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4confirmedon: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4cancelledon: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              Width = 92
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4quoted: TcxGridDBBandedColumn
              Caption = 'Quotation'
              DataBinding.FieldName = 'quoted'
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4nobooked: TcxGridDBBandedColumn
              Caption = 'Booked'
              DataBinding.FieldName = 'nobooked'
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4nocancelled: TcxGridDBBandedColumn
              Caption = 'Cancelled'
              DataBinding.FieldName = 'nocancelled'
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4noofpax_resident: TcxGridDBBandedColumn
              Caption = 'Resident Pax'
              DataBinding.FieldName = 'noofpax_resident'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4nocancelled_resident: TcxGridDBBandedColumn
              Caption = 'Residents Cancelled'
              DataBinding.FieldName = 'nocancelled_resident'
              Visible = False
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4generatevoucher: TcxGridDBBandedColumn
              Caption = 'Gen Voucher'
              DataBinding.FieldName = 'generatevoucher'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4Vouchers_id: TcxGridDBBandedColumn
              Caption = 'Voucher No'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'VoucherNo'
                end>
              Properties.ListSource = VoucherDs
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheetAcc: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Height = 165
          inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
            DataController.DataSource = BkgAccDs
            DataController.KeyFieldNames = 'bookingsaccommodation_id'
            object cxGridDBBandedTableView1bookingsaccommodation_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingsaccommodation_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1bookings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Hotel_Cities_id: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'Hotel_Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1HotelLookup: TcxGridDBBandedColumn
              Caption = 'Hotel'
              DataBinding.FieldName = 'HotelLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView1HotelLookupPropertiesButtonClick
              Width = 134
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1datein: TcxGridDBBandedColumn
              Caption = 'Date In'
              DataBinding.FieldName = 'datein'
              Width = 92
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1dateout: TcxGridDBBandedColumn
              Caption = 'Date Out'
              DataBinding.FieldName = 'dateout'
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Nights'
              Width = 49
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1singles: TcxGridDBBandedColumn
              Caption = 'Singles'
              DataBinding.FieldName = 'singles'
              Width = 53
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1doubles: TcxGridDBBandedColumn
              Caption = 'Doubles'
              DataBinding.FieldName = 'doubles'
              Width = 56
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1triples: TcxGridDBBandedColumn
              Caption = 'Triples'
              DataBinding.FieldName = 'triples'
              Width = 49
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1twins: TcxGridDBBandedColumn
              Caption = 'Twins'
              DataBinding.FieldName = 'twins'
              Width = 49
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ac: TcxGridDBBandedColumn
              Caption = 'AC'
              DataBinding.FieldName = 'ac'
              Width = 28
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1RoomTypeLookup: TcxGridDBBandedColumn
              Caption = 'Room Type'
              DataBinding.FieldName = 'RoomTypeLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView1RoomTypeLookupPropertiesButtonClick
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1mealplans_id: TcxGridDBBandedColumn
              Caption = 'Meal Plan'
              DataBinding.FieldName = 'mealplans_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'mealplans_id'
              Properties.ListColumns = <
                item
                  FieldName = 'plan'
                end>
              Properties.ListSource = MealPlanDs
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1tourcode: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              Options.Editing = False
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1tourdate: TcxGridDBBandedColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              Options.Editing = False
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1bookedon: TcxGridDBBandedColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              Width = 81
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1confirmedon: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1cancelledon: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1quoted: TcxGridDBBandedColumn
              Caption = 'Quotation'
              DataBinding.FieldName = 'quoted'
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1generatevoucher: TcxGridDBBandedColumn
              Caption = 'Gen Voucher'
              DataBinding.FieldName = 'generatevoucher'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Vouchers_id: TcxGridDBBandedColumn
              Caption = 'Voucher No'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'VoucherNo'
                end>
              Properties.ListSource = VoucherDs
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheetSs: TcxTabSheet
        inherited cxGrid5: TcxGrid
          Height = 165
          inherited cxGridDBBandedTableView5: TcxGridDBBandedTableView
            DataController.DataSource = BkgSsDs
            object cxGridDBBandedTableView5bookingsservices_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingsservices_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5bookings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5date: TcxGridDBBandedColumn
              Caption = 'Date'
              DataBinding.FieldName = 'date'
              Width = 89
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5service_cities_id: TcxGridDBBandedColumn
              Caption = 'Service City'
              DataBinding.FieldName = 'service_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5ServicesLookup: TcxGridDBBandedColumn
              Caption = 'Service'
              DataBinding.FieldName = 'ServicesLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView5ServicesLookupPropertiesButtonClick
              Width = 137
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5guide: TcxGridDBBandedColumn
              Caption = 'Guide'
              DataBinding.FieldName = 'guide'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5entrancefees: TcxGridDBBandedColumn
              Caption = 'Entrance Fees'
              DataBinding.FieldName = 'entrancefees'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5AgentLookup: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView5AgentLookupPropertiesButtonClick
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5hotel_addressbook_id: TcxGridDBBandedColumn
              Caption = 'Hotel'
              DataBinding.FieldName = 'hotel_addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
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
              Properties.ListSource = HotelDs
              Width = 97
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5Transport: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Transport'
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5vehicles_id: TcxGridDBBandedColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'vehicles_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Vehicles_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Vehicle'
                end>
              Properties.ListSource = VehicleDS
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5ac: TcxGridDBBandedColumn
              Caption = 'A/C'
              DataBinding.FieldName = 'ac'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5NoOfVehicles: TcxGridDBBandedColumn
              Caption = 'No Of Vehicles'
              DataBinding.FieldName = 'NoOfVehicles'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5eta: TcxGridDBBandedColumn
              Caption = 'Timing'
              DataBinding.FieldName = 'eta'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 53
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5tourcode: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5tourdate: TcxGridDBBandedColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              Options.Editing = False
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5bookedon: TcxGridDBBandedColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5confirmedon: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5cancelledon: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              Width = 88
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5quoted: TcxGridDBBandedColumn
              Caption = 'Quotation'
              DataBinding.FieldName = 'quoted'
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5vouchers_id: TcxGridDBBandedColumn
              Caption = 'Voucher No'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'voucherno'
                end>
              Properties.ListSource = VoucherDs
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView5generatevoucher: TcxGridDBBandedColumn
              DataBinding.FieldName = 'generatevoucher'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheetTrsf: TcxTabSheet
        inherited cxGrid6: TcxGrid
          Height = 165
          inherited cxGridDBBandedTableView6: TcxGridDBBandedTableView
            DataController.DataSource = BkgTrsfDs
            DataController.KeyFieldNames = 'bookingsservices_id'
            object cxGridDBBandedTableView6bookingsservices_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingsservices_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6bookings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6transfertypes_id: TcxGridDBBandedColumn
              Caption = 'Transfer Type'
              DataBinding.FieldName = 'transfertypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'transfertypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'transfercode'
                end>
              Properties.ListSource = TransferTypesDs
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6date: TcxGridDBBandedColumn
              Caption = 'Date'
              DataBinding.FieldName = 'date'
              Width = 89
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6from_cities_id: TcxGridDBBandedColumn
              Caption = 'From City'
              DataBinding.FieldName = 'from_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6to_cities_id: TcxGridDBBandedColumn
              Caption = 'To City'
              DataBinding.FieldName = 'to_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6service_cities_id: TcxGridDBBandedColumn
              Caption = 'Service City'
              DataBinding.FieldName = 'service_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6ServicesLookup: TcxGridDBBandedColumn
              Caption = 'Service'
              DataBinding.FieldName = 'ServicesLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView6ServicesLookupPropertiesButtonClick
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6AgentLookup: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView6AgentLookupPropertiesButtonClick
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6hotel_addressbook_id: TcxGridDBBandedColumn
              Caption = 'Hotel'
              DataBinding.FieldName = 'hotel_addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Organisation'
                end>
              Properties.ListSource = HotelDs
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6flightno: TcxGridDBBandedColumn
              Caption = 'Trvl Option'
              DataBinding.FieldName = 'flightno'
              Width = 86
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6eta: TcxGridDBBandedColumn
              Caption = 'Timing'
              DataBinding.FieldName = 'eta'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 47
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6vehicles_id: TcxGridDBBandedColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'vehicles_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Vehicles_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Vehicle'
                end>
              Properties.ListSource = VehicleDS
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6NoOfVehicles: TcxGridDBBandedColumn
              Caption = 'No Of Vehicles'
              DataBinding.FieldName = 'NoOfVehicles'
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6ac: TcxGridDBBandedColumn
              Caption = 'A/C'
              DataBinding.FieldName = 'ac'
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6tourcode: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6tourdate: TcxGridDBBandedColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              Options.Editing = False
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6bookedon: TcxGridDBBandedColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6confirmedon: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              Width = 93
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6cancelledon: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              Width = 97
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6quoted: TcxGridDBBandedColumn
              Caption = 'Quotation'
              DataBinding.FieldName = 'quoted'
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6vouchers_id: TcxGridDBBandedColumn
              Caption = 'Voucher'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'voucherno'
                end>
              Properties.ListSource = VoucherDs
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6generatevoucher: TcxGridDBBandedColumn
              Caption = 'Gen Voucher'
              DataBinding.FieldName = 'generatevoucher'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheetPack: TcxTabSheet
        inherited cxGrid7: TcxGrid
          Height = 165
          inherited cxGridDBBandedTableView7: TcxGridDBBandedTableView
            DataController.DataSource = BkgPackDs
            DataController.KeyFieldNames = 'bookingspackages_id'
            object cxGridDBBandedTableView7bookingspackages_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingspackages_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7bookings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7packages_id: TcxGridDBBandedColumn
              Caption = 'Package'
              DataBinding.FieldName = 'packages_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'Packages_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Package'
                end>
              Properties.ListSource = PackagesDs
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7addressbook_id: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
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
              Properties.ListSource = AgentDs
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7from_date: TcxGridDBBandedColumn
              Caption = 'From Date'
              DataBinding.FieldName = 'from_date'
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7from_place: TcxGridDBBandedColumn
              Caption = 'From Place'
              DataBinding.FieldName = 'from_place'
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7from_time: TcxGridDBBandedColumn
              Caption = 'From Time'
              DataBinding.FieldName = 'from_time'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 141
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7to_place: TcxGridDBBandedColumn
              Caption = 'To Place'
              DataBinding.FieldName = 'to_place'
              Width = 112
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7to_time: TcxGridDBBandedColumn
              Caption = 'To Time'
              DataBinding.FieldName = 'to_time'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7from_addressbook_id: TcxGridDBBandedColumn
              Caption = 'From Agent'
              DataBinding.FieldName = 'from_addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
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
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7transport: TcxGridDBBandedColumn
              Caption = 'Transport'
              DataBinding.FieldName = 'transport'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7ac: TcxGridDBBandedColumn
              Caption = 'A/C'
              DataBinding.FieldName = 'ac'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7vehicles_id: TcxGridDBBandedColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'vehicles_id'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView7vehicles_idPropertiesButtonClick
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7noofvehicles: TcxGridDBBandedColumn
              Caption = 'No. Of Vehicles'
              DataBinding.FieldName = 'noofvehicles'
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7tourcode: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7tourdate: TcxGridDBBandedColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              Options.Editing = False
              Width = 118
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7bookedon: TcxGridDBBandedColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              Width = 63
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7confirmedon: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7cancelledon: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7generatevoucher: TcxGridDBBandedColumn
              Caption = 'Gen Voucher'
              DataBinding.FieldName = 'generatevoucher'
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7quoted: TcxGridDBBandedColumn
              Caption = 'Quotation'
              DataBinding.FieldName = 'quoted'
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7vouchers_id: TcxGridDBBandedColumn
              Caption = 'Voucher No'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'VoucherNo'
                end>
              Properties.ListSource = VoucherDs
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheetTrans: TcxTabSheet
        inherited cxGrid8: TcxGrid
          Height = 165
          inherited cxGridDBBandedTableView8: TcxGridDBBandedTableView
            DataController.DataSource = BkgTransDs
            DataController.KeyFieldNames = 'bookingstransport_id'
            object cxGridDBBandedTableView8bookingstransport_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingstransport_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8bookings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8from_cities_id: TcxGridDBBandedColumn
              Caption = 'From City'
              DataBinding.FieldName = 'from_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8fromplace: TcxGridDBBandedColumn
              Caption = 'From Place'
              DataBinding.FieldName = 'fromplace'
              Width = 79
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8to_cities_id: TcxGridDBBandedColumn
              Caption = 'To City'
              DataBinding.FieldName = 'to_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8toplace: TcxGridDBBandedColumn
              Caption = 'To Place'
              DataBinding.FieldName = 'toplace'
              Width = 106
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8fromdate: TcxGridDBBandedColumn
              Caption = 'From Date'
              DataBinding.FieldName = 'fromdate'
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8fromtime: TcxGridDBBandedColumn
              Caption = 'From Time'
              DataBinding.FieldName = 'fromtime'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8todate: TcxGridDBBandedColumn
              Caption = 'To Date'
              DataBinding.FieldName = 'todate'
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8totime: TcxGridDBBandedColumn
              Caption = 'To Time'
              DataBinding.FieldName = 'totime'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8noofpax: TcxGridDBBandedColumn
              Caption = 'No Of Pax'
              DataBinding.FieldName = 'noofpax'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8Agent_Cities_id: TcxGridDBBandedColumn
              Caption = 'Agent City'
              DataBinding.FieldName = 'Agent_Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8AgentLookup: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'AgentLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView8AgentLookupPropertiesButtonClick
              Width = 121
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8VehicleLookup: TcxGridDBBandedColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'VehicleLookup'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView8VehicleLookupPropertiesButtonClick
              Width = 136
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8ac: TcxGridDBBandedColumn
              Caption = 'A/C'
              DataBinding.FieldName = 'ac'
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8noofvehicles: TcxGridDBBandedColumn
              Caption = 'No Of Vehicles'
              DataBinding.FieldName = 'noofvehicles'
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8dropoffdays: TcxGridDBBandedColumn
              Caption = 'Drop Off Days'
              DataBinding.FieldName = 'dropoffdays'
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8dropoffkms: TcxGridDBBandedColumn
              Caption = 'Drop Off Kms'
              DataBinding.FieldName = 'dropoffkms'
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8tourcode: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8tourdate: TcxGridDBBandedColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              Options.Editing = False
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8bookedon: TcxGridDBBandedColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8confirmedon: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              Width = 94
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8cancelledon: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8quoted: TcxGridDBBandedColumn
              Caption = 'Quotation'
              DataBinding.FieldName = 'quoted'
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8vouchers_id: TcxGridDBBandedColumn
              Caption = 'Voucher No'
              DataBinding.FieldName = 'vouchers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vouchers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'VoucherNo'
                end>
              Properties.ListSource = VoucherDs
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView8generatevoucher: TcxGridDBBandedColumn
              Caption = 'Gen Voucher'
              DataBinding.FieldName = 'generatevoucher'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheetHistory: TcxTabSheet
        object Label5: TLabel
          Left = 4
          Top = 1
          Width = 40
          Height = 13
          Caption = 'History'
          Transparent = True
        end
        object Label7: TLabel
          Left = 4
          Top = 85
          Width = 96
          Height = 13
          Caption = 'Notes for Sit List'
          Transparent = True
        end
        object cxDBMemo1: TcxDBMemo
          Left = 3
          Top = 16
          DataBinding.DataField = 'history'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 65
          Width = 1070
        end
        object cxDBMemo2: TcxDBMemo
          Left = 3
          Top = 98
          DataBinding.DataField = 'notes'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Height = 65
          Width = 1070
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 252
    inherited cxPageControl3: TcxPageControl
      inherited cxTabSheet3: TcxTabSheet
        inherited cxGrid3: TcxGrid
          inherited cxGridDBBandedTableView3: TcxGridDBBandedTableView
            DataController.DataSource = Detail2Ds
            DataController.KeyFieldNames = 'bookingsclients_id'
            object cxGridDBBandedTableView3bookingsclients_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingsclients_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3name: TcxGridDBBandedColumn
              Caption = 'Name'
              DataBinding.FieldName = 'name'
              Width = 129
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3male: TcxGridDBBandedColumn
              Caption = 'Sex'
              DataBinding.FieldName = 'male'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'Mr.'
                'Ms.')
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3dateofbirth: TcxGridDBBandedColumn
              Caption = 'Date of Birth'
              DataBinding.FieldName = 'dateofbirth'
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3passportno: TcxGridDBBandedColumn
              Caption = 'Passport No'
              DataBinding.FieldName = 'passportno'
              Width = 106
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3dateofissue: TcxGridDBBandedColumn
              Caption = 'Issue Date'
              DataBinding.FieldName = 'dateofissue'
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3placeofissue: TcxGridDBBandedColumn
              Caption = 'Place of Issue'
              DataBinding.FieldName = 'placeofissue'
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3validto: TcxGridDBBandedColumn
              Caption = 'Valid To'
              DataBinding.FieldName = 'validto'
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3countries_id: TcxGridDBBandedColumn
              Caption = 'Country'
              DataBinding.FieldName = 'countries_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Countries_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Country'
                end>
              Properties.ListSource = CountriesDs
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3bookings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3roomno: TcxGridDBBandedColumn
              DataBinding.FieldName = 'roomno'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3resident_countries_id: TcxGridDBBandedColumn
              Caption = 'Reisdent Of'
              DataBinding.FieldName = 'resident_countries_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Countries_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Country'
                end>
              Properties.ListSource = CountriesDs
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3LeadPaxOrder: TcxGridDBBandedColumn
              Caption = 'Lead Pax Order'
              DataBinding.FieldName = 'LeadPaxOrder'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3Email: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Email'
              Visible = False
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3TravelEmail: TcxGridDBBandedColumn
              Caption = 'Travel Email'
              DataBinding.FieldName = 'TravelEmail'
              Visible = False
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3PreferredPhone: TcxGridDBBandedColumn
              Caption = 'Preferred Phone'
              DataBinding.FieldName = 'PreferredPhone'
              Visible = False
              Width = 132
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3EmergencyContact: TcxGridDBBandedColumn
              Caption = 'Emergency Contact'
              DataBinding.FieldName = 'EmergencyContact'
              Visible = False
              Width = 147
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3EmergencyEmail: TcxGridDBBandedColumn
              Caption = 'Emergency Email'
              DataBinding.FieldName = 'EmergencyEmail'
              Visible = False
              Width = 112
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3EmergencyHomePhone: TcxGridDBBandedColumn
              Caption = 'Emergency Home Phone'
              DataBinding.FieldName = 'EmergencyHomePhone'
              Visible = False
              Width = 139
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3EmergencyMobilePhone: TcxGridDBBandedColumn
              Caption = 'Emergency Mobile Phone'
              DataBinding.FieldName = 'EmergencyMobilePhone'
              Visible = False
              Width = 158
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3PaxPassportName: TcxGridDBBandedColumn
              Caption = 'Passport Name'
              DataBinding.FieldName = 'PaxPassportName'
              Width = 124
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited Panel5: TPanel
    Height = 216
    inherited cxPageControl1: TcxPageControl
      Height = 214
      ClientRectBottom = 208
      inherited cxTabSheet1: TcxTabSheet
        inherited DBText2: TDBText
          DataSource = MasterDs
        end
        inherited AgentLCB: TcxDBLookupComboBox
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 450
          Properties.ListColumns = <
            item
              Width = 300
              FieldName = 'Organisation'
            end
            item
              Width = 150
              FieldName = 'City'
            end>
          Properties.ListSource = PrinAgentDS
        end
        inherited cxDBLookupComboBox2: TcxDBLookupComboBox
          DataBinding.DataSource = MasterDs
          Properties.ListSource = WebUsersDs
        end
        inherited cxDBLookupComboBox1: TcxDBLookupComboBox
          DataBinding.DataSource = MasterDs
          Properties.ListSource = CountriesDs
        end
        inherited cxDBLookupComboBox4: TcxDBLookupComboBox
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'Currencies_id'
          Properties.ListSource = CurrenciesDs
        end
        inherited cxDBTextEdit2: TcxDBTextEdit
          DataBinding.DataSource = MasterDs
        end
      end
    end
  end
  inherited Panel6: TPanel
    Height = 216
    inherited cxPageControl2: TcxPageControl
      Height = 214
      ClientRectBottom = 208
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid2: TcxGrid
          Height = 182
          inherited cxGridDBBandedTableView2: TcxGridDBBandedTableView
            DataController.DataSource = Detail1Ds
            DataController.KeyFieldNames = 'bookingstours_id'
            object cxGridDBBandedTableView2bookingstours_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookingstours_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2bookings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bookings_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2tourcode: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'TourCode'
              Properties.ListColumns = <
                item
                  FieldName = 'TourCode'
                end>
              Properties.ListSource = TourCodeDs
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2tourdate: TcxGridDBBandedColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2tourleader: TcxGridDBBandedColumn
              Caption = 'TL'
              DataBinding.FieldName = 'tourleader'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2tourleadertrainee: TcxGridDBBandedColumn
              Caption = 'TTL'
              DataBinding.FieldName = 'tourleadertrainee'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2bookedon: TcxGridDBBandedColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              Width = 113
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2confirmedon: TcxGridDBBandedColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cancelledon: TcxGridDBBandedColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              Width = 136
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    inherited MasterCdscountries_id: TIntegerField
      OnChange = MasterCdscountries_idChange
    end
  end
  inherited Detail1Cds: TClientDataSet
    AfterInsert = Detail1CdsAfterInsert
  end
  inherited Detail2Cds: TClientDataSet
    AfterInsert = Detail2CdsAfterInsert
    inherited Detail2Cdsmale: TBooleanField
      DisplayValues = 'Mr.;Ms.'
    end
  end
  inherited BkgTicketsCds: TClientDataSet
    AfterInsert = BkgTicketsCdsAfterInsert
    Left = 72
    inherited BkgTicketsCdstraveldate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTicketsCdstourdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTicketsCdsbookedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTicketsCdsconfirmedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTicketsCdscancelledon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTicketsCdsetd: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    inherited BkgTicketsCdseta: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    object BkgTicketsCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 100
      Lookup = True
    end
    object BkgTicketsCdsFromTrainStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'FromTrainStationLookup'
      LookupDataSet = TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'station'
      KeyFields = 'from_trainstations_id'
      Size = 100
      Lookup = True
    end
    object BkgTicketsCdsToTrainStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ToTrainStationLookup'
      LookupDataSet = TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'station'
      KeyFields = 'to_trainstations_id'
      Size = 100
      Lookup = True
    end
    object BkgTicketsCdsClassLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassLookup'
      LookupDataSet = ClassCds
      LookupKeyFields = 'Class_id'
      LookupResultField = 'class'
      KeyFields = 'classid'
      Size = 50
      Lookup = True
    end
  end
  inherited BkgAccCds: TClientDataSet
    AfterInsert = BkgAccCdsAfterInsert
    OnCalcFields = BkgAccCdsCalcFields
    Left = 208
    inherited BkgAccCdsdatein: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgAccCdsdateout: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgAccCdstourdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgAccCdsbookedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgAccCdsconfirmedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgAccCdseta: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    inherited BkgAccCdscancelledon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    object BkgAccCdsHotelLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookup'
      LookupDataSet = HotelCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 100
      Lookup = True
    end
    object BkgAccCdsRoomTypeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RoomTypeLookup'
      LookupDataSet = RoomTypeCds
      LookupKeyFields = 'roomtypes_id'
      LookupResultField = 'roomtype'
      KeyFields = 'roomtypes_id'
      Size = 100
      Lookup = True
    end
    object BkgAccCdsNights: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Nights'
      Calculated = True
    end
  end
  inherited BkgSsCds: TClientDataSet
    AfterInsert = BkgSsCdsAfterInsert
    inherited BkgSsCdsdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgSsCdseta: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    inherited BkgSsCdstourdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgSsCdsbookedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgSsCdsconfirmedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgSsCdscancelledon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    object BkgSsCdsServicesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = ServicesCds
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Description'
      KeyFields = 'services_id'
      Size = 100
      Lookup = True
    end
    object BkgSsCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 100
      Lookup = True
    end
  end
  inherited BkgSsDs: TDataSource
    DataSet = BkgSsCds
  end
  inherited BkgTrsfCds: TClientDataSet
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    AfterInsert = BkgTrsfCdsAfterInsert
    inherited BkgTrsfCdsdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTrsfCdseta: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    inherited BkgTrsfCdstourdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTrsfCdsbookedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTrsfCdsconfirmedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTrsfCdscancelledon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    object BkgTrsfCdsServicesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = ServicesCds
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Description'
      KeyFields = 'services_id'
      Size = 100
      Lookup = True
    end
    object BkgTrsfCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 100
      Lookup = True
    end
  end
  inherited BkgTrsfDs: TDataSource
    DataSet = BkgTrsfCds
  end
  inherited BkgPackCds: TClientDataSet
    AfterInsert = BkgPackCdsAfterInsert
    inherited BkgPackCdsfrom_date: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgPackCdsfrom_time: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    inherited BkgPackCdsto_time: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    inherited BkgPackCdstourdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgPackCdsbookedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgPackCdsconfirmedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgPackCdscancelledon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  inherited BkgPackDs: TDataSource
    DataSet = BkgPackCds
  end
  inherited BkgTransCds: TClientDataSet
    AfterInsert = BkgTransCdsAfterInsert
    inherited BkgTransCdsfromdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTransCdsfromtime: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    inherited BkgTransCdstodate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTransCdstotime: TSQLTimeStampField
      DisplayFormat = 'HH:mm'
    end
    inherited BkgTransCdstourdate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTransCdsbookedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTransCdsconfirmedon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited BkgTransCdscancelledon: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    object BkgTransCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 100
      Lookup = True
    end
    object BkgTransCdsVehicleLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VehicleLookup'
      LookupDataSet = VehicleCds
      LookupKeyFields = 'Vehicles_id'
      LookupResultField = 'Vehicle'
      KeyFields = 'vehicles_id'
      Size = 100
      Lookup = True
    end
  end
  inherited BkgTransDs: TDataSource
    DataSet = BkgTransCds
  end
  object PrinAgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 952
    Top = 88
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 968
    Top = 88
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
    Left = 984
    Top = 88
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
  object PrinAgentDS: TDataSource
    DataSet = PrinAgentCds
    Left = 1000
    Top = 88
  end
  object WebUsersSds: TSQLDataSet
    CommandText = 
      'SELECT web_users_id, CAST( (username +  '#39' - '#39'+ CASE WHEN male = ' +
      '1 THEN '#39'Mr '#39' ELSE '#39'Ms '#39' end '#13#10' + FirstName + '#39' '#39'+ LastName) AS V' +
      'ARCHAR) AS web_user, UserName FROM web_users '#13#10'UNION ALL'#13#10'SELECT' +
      ' 0, CAST('#39'<None>'#39' AS VARCHAR), CAST('#39' '#39' AS VARCHAR)'#13#10'ORDER BY 3'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 952
    Top = 120
  end
  object WebUsersDsp: TDataSetProvider
    DataSet = WebUsersSds
    Left = 960
    Top = 120
  end
  object WebUsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WebUsersDSP'
    Left = 976
    Top = 120
    object WebUsersCdsweb_users_id: TIntegerField
      FieldName = 'web_users_id'
    end
    object WebUsersCdsweb_user: TStringField
      FieldName = 'web_user'
      Size = 30
    end
    object WebUsersCdsusername: TStringField
      FieldName = 'username'
      Size = 30
    end
  end
  object WebUsersDs: TDataSource
    DataSet = WebUsersCds
    Left = 992
    Top = 120
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'SELECT Countries_id, Country'#13#10'FROM Countries c'#13#10'ORDER BY Country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 952
    Top = 152
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    Left = 968
    Top = 152
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    Left = 984
    Top = 152
    object CountriesCdsCountries_id: TIntegerField
      FieldName = 'Countries_id'
    end
    object CountriesCdsCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
  end
  object CountriesDs: TDataSource
    DataSet = CountriesCds
    Left = 1008
    Top = 152
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'SELECT Currencies_id, Currency FROM Currencies'#13#10'ORDER BY Currenc' +
      'y'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 952
    Top = 184
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    Left = 968
    Top = 187
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    Left = 992
    Top = 184
    object CurrenciesCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrenciesCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrenciesDs: TDataSource
    DataSet = CurrenciesCds
    Left = 1016
    Top = 184
  end
  object TourCodeSds: TSQLDataSet
    CommandText = 
      'SELECT TourCodes_id, TourCode '#13#10'FROM TourCodes'#13#10'ORDER BY TourCod' +
      'e'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 960
    Top = 224
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 976
    Top = 224
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 992
    Top = 224
    object TourCodeCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
  end
  object TourCodeDs: TDataSource
    DataSet = TourCodeCds
    Left = 1008
    Top = 224
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City, State, Country'#13#10'FROM Cities c '#13#10'LEFT JOI' +
      'N States s ON c.States_id = s.States_id'#13#10'LEFT JOIN Countries ON ' +
      'c.Countries_id = Countries.Countries_id'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 88
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 824
    Top = 88
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 840
    Top = 88
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object CitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object CitiesDS: TDataSource
    DataSet = CitiesCds
    Left = 864
    Top = 88
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 128
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 824
    Top = 128
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 840
    Top = 128
    object IntegerField1: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField1: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField2: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 856
    Top = 128
  end
  object TicketsSds: TSQLDataSet
    CommandText = 'select tickets_id, details from tickets order by details'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 163
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    Left = 824
    Top = 163
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketsDSP'
    Left = 840
    Top = 163
    object TicketsCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketsCdsdetails: TStringField
      FieldName = 'details'
      Size = 15
    end
  end
  object TicketsDs: TDataSource
    DataSet = TicketsCds
    Left = 856
    Top = 163
  end
  object TrainStationSds: TSQLDataSet
    CommandText = 'select * from trainstations'#13#10'order by station'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 200
  end
  object TrainStationDsp: TDataSetProvider
    DataSet = TrainStationSds
    Left = 824
    Top = 200
  end
  object TrainStationCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainStationDsp'
    Left = 840
    Top = 200
    object TrainStationCdstrainstations_id: TIntegerField
      FieldName = 'trainstations_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TrainStationCdsstation: TStringField
      FieldName = 'station'
      Size = 50
    end
    object TrainStationCdsrailwaycode: TStringField
      FieldName = 'railwaycode'
    end
    object TrainStationCdsstationname: TStringField
      FieldName = 'stationname'
      Size = 50
    end
    object TrainStationCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object TrainStationCdsin_use: TBooleanField
      FieldName = 'in_use'
    end
  end
  object TrainStationDs: TDataSource
    DataSet = TrainStationCds
    Left = 856
    Top = 200
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, class, code, tickets_id FROM class ORDER BY cla' +
      'ss'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 672
    Top = 88
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 690
    Top = 90
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 712
    Top = 88
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
    Left = 744
    Top = 88
  end
  object VoucherSds: TSQLDataSet
    CommandText = 'EXEC [p_VoucherListInBookings] :Bookings_id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Bookings_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 672
    Top = 124
  end
  object VoucherDsp: TDataSetProvider
    DataSet = VoucherSds
    Left = 688
    Top = 124
  end
  object VoucherCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherDsp'
    Left = 704
    Top = 124
    object VoucherCdsVouchers_id: TIntegerField
      FieldName = 'Vouchers_id'
    end
    object VoucherCdsVoucherNo: TIntegerField
      FieldName = 'VoucherNo'
    end
  end
  object VoucherDs: TDataSource
    DataSet = VoucherCds
    Left = 720
    Top = 124
  end
  object HotelSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'H'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 672
    Top = 160
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 688
    Top = 160
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 704
    Top = 160
    object IntegerField2: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField3: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField6: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 720
    Top = 160
  end
  object RoomTypeSds: TSQLDataSet
    CommandText = 'SELECT * FROM RoomTypes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 672
    Top = 200
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 688
    Top = 200
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 704
    Top = 200
    object RoomTypeCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RoomTypeCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object RoomTypeCdsac: TBooleanField
      FieldName = 'ac'
    end
  end
  object RoomTypeDs: TDataSource
    DataSet = RoomTypeCds
    Left = 720
    Top = 200
  end
  object RoomSizeSds: TSQLDataSet
    CommandText = 'SELECT * FROM RoomSizes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 88
  end
  object RoomSizeDsp: TDataSetProvider
    DataSet = RoomSizeSds
    Left = 600
    Top = 88
  end
  object RoomSizeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomSizeDsp'
    Left = 616
    Top = 88
    object RoomSizeCdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object RoomSizeCdsroomsize: TStringField
      FieldName = 'roomsize'
      Size = 10
    end
    object RoomSizeCdspax: TIntegerField
      FieldName = 'pax'
    end
  end
  object RoomSizeDS: TDataSource
    DataSet = RoomSizeCds
    Left = 632
    Top = 88
  end
  object MealPlanSds: TSQLDataSet
    CommandText = 'SELECT * FROM MealPlans'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 128
  end
  object MealPlanDsp: TDataSetProvider
    DataSet = MealPlanSds
    Left = 600
    Top = 128
  end
  object MealPlanCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlanDsp'
    Left = 616
    Top = 128
    object MealPlanCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MealPlanCdsmealplan: TStringField
      FieldName = 'mealplan'
      Size = 15
    end
    object MealPlanCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
  end
  object MealPlanDs: TDataSource
    DataSet = MealPlanCds
    Left = 632
    Top = 128
  end
  object ServicesSds: TSQLDataSet
    CommandText = 
      'SELECT Services_id, Service, Description, Active FROM Services'#13#10 +
      'ORDER BY Service'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 576
    Top = 168
  end
  object ServicesDsp: TDataSetProvider
    DataSet = ServicesSds
    Left = 592
    Top = 168
  end
  object ServicesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServicesDSP'
    Left = 608
    Top = 168
    object ServicesCdsServices_id: TIntegerField
      FieldName = 'Services_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ServicesCdsService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object ServicesCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServicesCdsActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object ServicesDs: TDataSource
    DataSet = ServicesCds
    Left = 624
    Top = 168
  end
  object TransferTypesSds: TSQLDataSet
    CommandText = 'select * from transfertypes order by transfercode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 576
    Top = 203
  end
  object TransferTypesDsp: TDataSetProvider
    DataSet = TransferTypesSds
    Left = 592
    Top = 203
  end
  object TransferTypesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TransferTypesDSP'
    Left = 608
    Top = 203
    object TransferTypesCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object TransferTypesCdstransfer: TStringField
      FieldName = 'transfer'
      Size = 25
    end
    object TransferTypesCdstransfercode: TStringField
      FieldName = 'transfercode'
      Size = 3
    end
  end
  object TransferTypesDs: TDataSource
    DataSet = TransferTypesCds
    Left = 624
    Top = 203
  end
  object VehicleSds: TSQLDataSet
    CommandText = 'select Vehicles_id, Vehicle from Vehicles'#13#10'ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 576
    Top = 240
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 592
    Top = 240
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 608
    Top = 240
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDS: TDataSource
    DataSet = VehicleCds
    Left = 624
    Top = 240
  end
  object PackagesSds: TSQLDataSet
    CommandText = 
      'SELECT p.Packages_id, p.Package, a.Addressbook_id, a.Organisatio' +
      'n '#13#10'FROM Packages p'#13#10'LEFT JOIN Addressbook a ON p.addressbook_id' +
      ' = a.addressbook_id'#13#10'ORDER BY p.Package'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 456
    Top = 88
  end
  object PackagesDsp: TDataSetProvider
    DataSet = PackagesSds
    Left = 472
    Top = 88
  end
  object PackagesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PackagesDSP'
    Left = 488
    Top = 88
    object PackagesCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object PackagesCdsPackage: TStringField
      FieldName = 'Package'
      Size = 50
    end
    object PackagesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object PackagesCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object PackagesDs: TDataSource
    DataSet = PackagesCds
    Left = 504
    Top = 88
  end
end
