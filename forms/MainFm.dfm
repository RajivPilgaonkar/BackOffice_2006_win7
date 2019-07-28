object MainForm: TMainForm
  Left = 285
  Top = 119
  Width = 939
  Height = 600
  Caption = 'BackOffice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIForm
  Menu = MainMnu
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LoginGB: TcxGroupBox
    Left = 18
    Top = 28
    Caption = 'Login'
    ParentFont = False
    Style.TextStyle = [fsBold]
    TabOrder = 0
    OnClick = LoginGBClick
    Height = 121
    Width = 281
    object Label1: TLabel
      Left = 12
      Top = 27
      Width = 63
      Height = 13
      Caption = 'User Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 12
      Top = 52
      Width = 55
      Height = 13
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object UsernameEdit: TEdit
      Left = 88
      Top = 24
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = UsernameEditKeyPress
    end
    object PasswordEdit: TEdit
      Left = 88
      Top = 52
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      OnKeyPress = PasswordEditKeyPress
    end
    object LoginBB: TcxButton
      Left = 88
      Top = 80
      Width = 121
      Height = 25
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = LoginBBClick
    end
  end
  object DivisionGB: TcxGroupBox
    Left = 16
    Top = 251
    TabStop = True
    Caption = 'Select Division'
    ParentFont = False
    Style.TextStyle = [fsBold]
    TabOrder = 1
    Height = 86
    Width = 281
    object DivisionConnectBB: TcxButton
      Left = 152
      Top = 48
      Width = 121
      Height = 25
      Caption = 'Connect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = DivisionConnectBBClick
    end
    object DivisionCmb: TDBLookupComboBox
      Left = 16
      Top = 20
      Width = 257
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'Divisions_id'
      ListField = 'Division'
      ListSource = DivisionDS
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DivisionCmbKeyPress
    end
  end
  object FinancialYearGB: TcxGroupBox
    Left = 16
    Top = 347
    TabStop = True
    Caption = 'Select Financial Year'
    ParentFont = False
    Style.TextStyle = [fsBold]
    TabOrder = 2
    Height = 85
    Width = 281
    object FYConnectBB: TcxButton
      Left = 152
      Top = 48
      Width = 121
      Height = 25
      Caption = 'Connect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = FYConnectBBClick
    end
    object FinancialYearCmb: TDBLookupComboBox
      Left = 16
      Top = 20
      Width = 257
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'FinancialYears_id'
      ListField = 'FinancialYearAlias'
      ListSource = FyDS
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FinancialYearCmbKeyPress
    end
  end
  object CompanyGB: TcxGroupBox
    Left = 16
    Top = 160
    TabStop = True
    Caption = 'Select Company'
    ParentFont = False
    Style.TextStyle = [fsBold]
    TabOrder = 3
    Height = 85
    Width = 281
    object CompanyConnectBB: TcxButton
      Left = 152
      Top = 48
      Width = 121
      Height = 25
      Caption = 'Connect'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = CompanyConnectBBClick
    end
    object CompanyCmb: TDBLookupComboBox
      Left = 17
      Top = 20
      Width = 257
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'companies_id'
      ListField = 'name'
      ListSource = CompanyDS
      ParentFont = False
      TabOrder = 0
      OnKeyPress = CompanyCmbKeyPress
    end
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 923
    Height = 6
    Caption = 'ToolBar'
    TabOrder = 4
  end
  object MainMnu: TMainMenu
    OwnerDraw = True
    Left = 400
    Top = 48
    object mnuFile: TMenuItem
      Caption = 'File'
      object mnuLogout: TMenuItem
        Tag = 1000
        Caption = 'Logout'
        OnClick = mnuLogoutClick
      end
      object N40: TMenuItem
        Caption = '-'
      end
      object ChangeCompany1: TMenuItem
        Tag = 1010
        Caption = 'Change Company'
        OnClick = ChangeCompany1Click
      end
      object ChangeUnit1: TMenuItem
        Tag = 1020
        Caption = 'Change Division'
        OnClick = ChangeUnit1Click
      end
      object ChangeFinancialYear1: TMenuItem
        Tag = 1030
        Caption = 'Change Financial Year'
        OnClick = ChangeFinancialYear1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Backup1: TMenuItem
        Tag = 1040
        Caption = 'Backup'
        Visible = False
      end
      object N26: TMenuItem
        Caption = '-'
        Visible = False
      end
      object mnuExit: TMenuItem
        Tag = 1050
        Caption = 'Exit'
        OnClick = mnuExitClick
      end
    end
    object mnuMasters: TMenuItem
      Caption = 'Masters'
      object ours1: TMenuItem
        Caption = 'Tours'
        object MasterTours2: TMenuItem
          Tag = 2000
          Caption = 'Master Tours'
          OnClick = MasterTours2Click
        end
        object N4: TMenuItem
          Caption = '-'
        end
        object ourCategories1: TMenuItem
          Tag = 2010
          Caption = 'Master Categories'
          OnClick = ourCategories1Click
        end
        object MasterToursNew1: TMenuItem
          Caption = 'MasterTours (New)'
          OnClick = MasterToursNew1Click
        end
      end
      object ickets1: TMenuItem
        Caption = 'Tickets'
        object Airlines1: TMenuItem
          Caption = 'Airlines'
          object Airlines2: TMenuItem
            Tag = 2020
            Caption = 'Airlines'
            OnClick = Airlines2Click
          end
          object Class2: TMenuItem
            Tag = 2030
            Caption = 'Class'
            OnClick = Class2Click
          end
          object AircraftTypes1: TMenuItem
            Tag = 2040
            Caption = 'Aircraft Types'
            OnClick = AircraftTypes1Click
          end
        end
        object rains1: TMenuItem
          Caption = 'Trains'
          object TrainCategories1: TMenuItem
            Tag = 2050
            Caption = 'Train Categories'
            OnClick = TrainCategories1Click
          end
          object rains2: TMenuItem
            Tag = 2060
            Caption = 'Trains'
            OnClick = rains2Click
          end
          object SectorwiseFares1: TMenuItem
            Caption = 'Train-wise Fares'
            OnClick = SectorwiseFares1Click
          end
          object N36: TMenuItem
            Caption = '-'
          end
          object Class3: TMenuItem
            Tag = 2070
            Caption = 'Class'
            OnClick = Class3Click
          end
          object Stations1: TMenuItem
            Tag = 2080
            Caption = 'Stations'
            OnClick = Stations1Click
          end
          object N38: TMenuItem
            Caption = '-'
          end
          object rackTrainSectors1: TMenuItem
            Caption = 'Track Train Sectors'
            OnClick = rackTrainSectors1Click
          end
        end
        object Coach1: TMenuItem
          Caption = 'Coach'
          object Class1: TMenuItem
            Tag = 2090
            Caption = 'Class'
            OnClick = Class1Click
          end
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object icketCharges1: TMenuItem
          Tag = 2100
          Caption = 'Ticket Charges'
          OnClick = icketCharges1Click
        end
        object SupplementaryCharges1: TMenuItem
          Tag = 2110
          Caption = 'Supplementary Charges'
          OnClick = SupplementaryCharges1Click
        end
        object CacellationCharges1: TMenuItem
          Tag = 2120
          Caption = 'Cancellation Charges'
          OnClick = CacellationCharges1Click
        end
        object N44: TMenuItem
          Caption = '-'
        end
        object rainCategoryClasses1: TMenuItem
          Caption = 'Train Category Classes'
          OnClick = rainCategoryClasses1Click
        end
        object rainExtraCharges1: TMenuItem
          Caption = 'Train Extra Charges'
          OnClick = rainExtraCharges1Click
        end
        object N21: TMenuItem
          Caption = '-'
        end
        object rainDeadlineDays1: TMenuItem
          Caption = 'Train Deadline Days'
          OnClick = rainDeadlineDays1Click
        end
      end
      object Accomodation1: TMenuItem
        Caption = 'Accomodation'
        object RoomTypes1: TMenuItem
          Tag = 2130
          Caption = 'RoomTypes'
          OnClick = RoomTypes1Click
        end
        object MealPlans1: TMenuItem
          Tag = 2140
          Caption = 'Meal Plans'
          OnClick = MealPlans1Click
        end
      end
      object Services1: TMenuItem
        Caption = 'Services'
        object Services21: TMenuItem
          Caption = 'Services'
          OnClick = Services21Click
        end
        object Packages1: TMenuItem
          Tag = 2160
          Caption = 'Packages'
          OnClick = Packages1Click
        end
        object Automobiles1: TMenuItem
          Tag = 2170
          Caption = 'Automobiles'
          OnClick = Automobiles1Click
        end
        object CarHireAgents1: TMenuItem
          Tag = 2180
          Caption = 'Car Hire Agents'
          OnClick = CarHireAgents1Click
        end
      end
      object General1: TMenuItem
        Caption = 'General'
        object Countries1: TMenuItem
          Tag = 2190
          Caption = 'Countries'
          OnClick = Countries1Click
        end
        object States1: TMenuItem
          Tag = 2200
          Caption = 'States'
          OnClick = States1Click
        end
        object Cities21: TMenuItem
          Caption = 'Cities'
          OnClick = Cities21Click
        end
        object LatitudesLongitudes1: TMenuItem
          Tag = 2220
          Caption = 'Latitudes && Longitudes - Cities'
          OnClick = LatitudesLongitudes1Click
        end
        object LatitudesLongitudesStates1: TMenuItem
          Caption = 'Latitudes && Longitudes - States'
          OnClick = LatitudesLongitudesStates1Click
        end
        object Distances1: TMenuItem
          Tag = 2230
          Caption = 'Distances'
          OnClick = Distances1Click
        end
        object ShortestDrive1: TMenuItem
          Tag = 2240
          Caption = 'Shortest Drive'
          OnClick = ShortestDrive1Click
        end
        object ransferCityPairs1: TMenuItem
          Caption = 'Transfer City Pairs'
          OnClick = ransferCityPairs1Click
        end
        object DefaultCarAgentPerKm1: TMenuItem
          Tag = 2250
          Caption = 'Default Car Agent (Per Km)'
          OnClick = DefaultCarAgentPerKm1Click
        end
        object Consultants1: TMenuItem
          Caption = 'Consultants'
          OnClick = Consultants1Click
        end
        object PrincipalAgentCancellationPolicy1: TMenuItem
          Caption = 'Principal Agent Cancellation Policy'
          OnClick = PrincipalAgentCancellationPolicy1Click
        end
        object PrincipalAgentBoardCaptions1: TMenuItem
          Caption = 'Principal Agent Board Captions'
          OnClick = PrincipalAgentBoardCaptions1Click
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object Categories1: TMenuItem
          Tag = 2260
          Caption = 'Categories'
          OnClick = Categories1Click
        end
        object N37: TMenuItem
          Caption = '-'
        end
        object Regions1: TMenuItem
          Caption = 'Regions'
          OnClick = Regions1Click
        end
        object FixedItineraries1: TMenuItem
          Caption = 'Itinerary Ideas'
          OnClick = FixedItineraries1Click
        end
        object ItineraryIdesRiksja1: TMenuItem
          Caption = 'Modules (Riksja)'
          OnClick = ItineraryIdesRiksja1Click
        end
        object ReadyTours1: TMenuItem
          Caption = 'Ready Tours'
          OnClick = ReadyTours1Click
        end
        object Themes: TMenuItem
          Caption = 'Themes'
          OnClick = ThemesClick
        end
        object SubThemes1: TMenuItem
          Caption = 'Sub Themes'
          OnClick = SubThemes1Click
        end
        object Web1: TMenuItem
          Caption = 'Web'
          OnClick = Web1Click
        end
        object WebPages1: TMenuItem
          Caption = 'Web Pages'
          OnClick = WebPages1Click
        end
        object Images1: TMenuItem
          Caption = 'Images'
          OnClick = Images1Click
        end
      end
      object F1: TMenuItem
        Caption = 'Finance'
        object Currencies21: TMenuItem
          Caption = 'Currencies'
          OnClick = Currencies21Click
        end
        object ExchangeRate1: TMenuItem
          Tag = 2280
          Caption = 'Exchange Rate'
          OnClick = ExchangeRate1Click
        end
        object axes1: TMenuItem
          Tag = 2290
          Caption = 'Taxes'
          OnClick = axes1Click
        end
        object CentralTaxes1: TMenuItem
          Tag = 2300
          Caption = 'Central Taxes'
          OnClick = CentralTaxes1Click
        end
        object AccountHeads1: TMenuItem
          Tag = 2310
          Caption = 'Account Heads'
          OnClick = AccountHeads1Click
        end
      end
      object Invoices1: TMenuItem
        Caption = 'Invoices'
        object Products1: TMenuItem
          Tag = 2320
          Caption = 'Products'
          OnClick = Products1Click
        end
      end
      object Presto2: TMenuItem
        Caption = 'Presto'
        object Exclusions1: TMenuItem
          Tag = 2320
          Caption = 'Exclusions'
          OnClick = Exclusions1Click
        end
      end
    end
    object mnuBookings: TMenuItem
      Caption = 'Bookings'
      object Display1: TMenuItem
        Tag = 3000
        Caption = 'Display'
        OnClick = Display1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object Reports1: TMenuItem
        Caption = 'Reports'
        object SitList1: TMenuItem
          Tag = 3010
          Caption = 'Sit List'
          OnClick = SitList1Click
        end
        object ransfer1: TMenuItem
          Caption = 'Transfer'
          object Arrival1: TMenuItem
            Tag = 3020
            Caption = 'Extra Arrivals'
            OnClick = Arrival1Click
          end
          object Departure1: TMenuItem
            Tag = 3020
            Caption = 'Extra Departure'
            OnClick = Departure1Click
          end
          object N16: TMenuItem
            Caption = '-'
          end
          object AllArrivals2: TMenuItem
            Caption = 'All Arrivals (Masters)'
            OnClick = AllArrivals2Click
          end
          object AllDepartures2: TMenuItem
            Caption = 'All Departures (Masters)'
            OnClick = AllDepartures2Click
          end
          object N39: TMenuItem
            Caption = '-'
          end
          object AllArrivalsVouchers1: TMenuItem
            Caption = 'All Arrivals (Vouchers)'
            OnClick = AllArrivalsVouchers1Click
          end
          object AllDeparturesVouchers1: TMenuItem
            Caption = 'All Departures (Vouchers)'
            OnClick = AllDeparturesVouchers1Click
          end
        end
        object ExtraAccommodation1: TMenuItem
          Tag = 3030
          Caption = 'Extra Accommodation'
          OnClick = ExtraAccommodation1Click
        end
        object GroupTours1: TMenuItem
          Caption = '--- Group Tours ---'
        end
        object NoofPaxDeadlineforTickets1: TMenuItem
          Tag = 3040
          Caption = 'No. of Pax Deadline for Tickets'
          OnClick = NoofPaxDeadlineforTickets1Click
        end
        object NameofPaxDeadlineforTickets1: TMenuItem
          Tag = 3050
          Caption = 'Name of Pax Deadline for Tickets'
          OnClick = NameofPaxDeadlineforTickets1Click
        end
        object ChecklistforallTourDeadlines1: TMenuItem
          Tag = 3060
          Caption = 'Checklist for all Tour Deadlines'
          OnClick = ChecklistforallTourDeadlines1Click
        end
        object FIT1: TMenuItem
          Caption = '   ---- FIT ----'
        end
        object icketConfirmations1: TMenuItem
          Tag = 3070
          Caption = 'Ticket Confirmations'
          OnClick = icketConfirmations1Click
        end
        object AccommodationConfirmaton1: TMenuItem
          Tag = 3080
          Caption = 'Accommodation Confirmations'
          OnClick = AccommodationConfirmaton1Click
        end
        object N17: TMenuItem
          Caption = '-'
        end
        object NumPaxonTours1: TMenuItem
          Tag = 3090
          Caption = 'Num Pax on Tours'
          OnClick = NumPaxonTours1Click
        end
        object NumPaxonToursAgentwise1: TMenuItem
          Tag = 3100
          Caption = 'Num Pax on Tours (Agent-wise)'
          OnClick = NumPaxonToursAgentwise1Click
        end
      end
    end
    object mnuTours: TMenuItem
      Caption = 'Tours'
      object MasterTours1: TMenuItem
        Caption = 'Master Tours'
        object Display2: TMenuItem
          Tag = 4000
          Caption = 'Display'
          OnClick = Display2Click
        end
        object Copy1: TMenuItem
          Tag = 4010
          Caption = 'Copy'
          OnClick = Copy1Click
        end
        object Delete1: TMenuItem
          Tag = 4020
          Caption = 'Delete'
          OnClick = Delete1Click
        end
      end
      object orItinerary1: TMenuItem
        Caption = 'Tour Itinerary'
        object Display3: TMenuItem
          Tag = 4030
          Caption = 'Display'
          OnClick = Display3Click
        end
        object Delete2: TMenuItem
          Tag = 4040
          Caption = 'Delete'
          OnClick = Delete2Click
        end
      end
      object BlockBookings1: TMenuItem
        Caption = 'Block Bookings'
        object ickets2: TMenuItem
          Tag = 4050
          Caption = 'Tickets'
          OnClick = ickets2Click
        end
        object Accomodation2: TMenuItem
          Tag = 4060
          Caption = 'Accomodation'
          OnClick = Accomodation2Click
        end
        object Packages2: TMenuItem
          Tag = 4070
          Caption = 'Packages'
          OnClick = Packages2Click
        end
      end
    end
    object mnuVouchers: TMenuItem
      Caption = 'Vouchers'
      object AllVouchers1: TMenuItem
        Tag = 5000
        Caption = 'All Vouchers - in Current Financial Year'
        OnClick = AllVouchers1Click
      end
      object AllVouchersByMasterTour1: TMenuItem
        Tag = 5010
        Caption = 'All Vouchers - By Master Tour'
        OnClick = AllVouchersByMasterTour1Click
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object AllVouchersinCurrentFYnew1: TMenuItem
        Caption = 'All Vouchers in Current FY (new)'
        OnClick = AllVouchersinCurrentFYnew1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Vouchermanager1: TMenuItem
        Tag = 5020
        Caption = 'Voucher Manager'
        OnClick = Vouchermanager1Click
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object PrintVouchersinRange1: TMenuItem
        Tag = 5030
        Caption = 'Print Vouchers in Range'
        OnClick = PrintVouchersinRange1Click
      end
      object PrintSingleVouchersinRange1: TMenuItem
        Tag = 5040
        Caption = 'Print Single Vouchers in Range'
        OnClick = PrintSingleVouchersinRange1Click
      end
    end
    object mnuAccounts: TMenuItem
      Caption = 'Accounts'
      object Accounts21: TMenuItem
        Caption = 'Accounts Payable/Receivable'
        OnClick = Accounts21Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object DS1: TMenuItem
        Tag = 6010
        Caption = 'TDS'
        OnClick = DS1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object MultiInvoices1: TMenuItem
        Tag = 6020
        Caption = 'Multi Invoices'
        OnClick = MultiInvoices1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Invoices3: TMenuItem
        Caption = 'Tour Invoices'
        OnClick = Invoices3Click
      end
      object BoatInvoices1: TMenuItem
        Tag = 6040
        Caption = 'Boat Invoices'
        OnClick = BoatInvoices1Click
      end
      object CreditNotes1: TMenuItem
        Caption = 'Credit Notes'
        OnClick = CreditNotes1Click
      end
      object BillofSupply1: TMenuItem
        Caption = 'Bill of Supply'
        OnClick = BillofSupply1Click
      end
    end
    object mnuAddressBook1: TMenuItem
      Tag = 7000
      Caption = 'Address Book'
      OnClick = mnuAddressBook1Click
    end
    object mnuHotelInfo1: TMenuItem
      Tag = 8000
      Caption = 'Hotel Info'
      OnClick = mnuHotelInfo1Click
    end
    object mnuCosting1: TMenuItem
      Caption = 'Costing'
      object ickets3: TMenuItem
        Caption = 'Tickets'
        object Flight1: TMenuItem
          Tag = 9000
          Caption = 'Flight'
          OnClick = Flight1Click
        end
        object Coach2: TMenuItem
          Tag = 9010
          Caption = 'Bus'
          OnClick = Coach2Click
        end
        object rain1: TMenuItem
          Tag = 9020
          Caption = 'Train'
          OnClick = rain1Click
        end
        object Ferry1: TMenuItem
          Tag = 9030
          Caption = 'Ferry'
          OnClick = Ferry1Click
        end
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object Accommodation1: TMenuItem
        Tag = 9040
        Caption = 'Accommodation'
        OnClick = Accommodation1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object Services3: TMenuItem
        Tag = 9050
        Caption = 'Services'
        OnClick = Services3Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Coach3: TMenuItem
        Tag = 9060
        Caption = 'Transport'
        OnClick = Coach3Click
      end
      object ransportPointToPoint1: TMenuItem
        Tag = 9070
        Caption = 'Transport (Point To Point)'
        OnClick = ransportPointToPoint1Click
      end
      object ransportCityGroups1: TMenuItem
        Caption = 'Transport (City Groups)'
        object Costing1: TMenuItem
          Tag = 9080
          Caption = 'Costing'
          OnClick = Costing1Click
        end
        object CityGroups1: TMenuItem
          Tag = 9090
          Caption = 'City Groups'
          OnClick = CityGroups1Click
        end
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object Packages3: TMenuItem
        Tag = 9100
        Caption = 'Packages'
        OnClick = Packages3Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object Invoice1: TMenuItem
        Caption = 'Invoice '
        object CostingBlocks1: TMenuItem
          Tag = 9110
          Caption = 'Costing Blocks'
          OnClick = CostingBlocks1Click
        end
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object EntryTaxes1: TMenuItem
        Tag = 9120
        Caption = 'Entry Taxes'
        OnClick = EntryTaxes1Click
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object FITSlabs1: TMenuItem
        Tag = 9130
        Caption = 'FIT Slabs'
        OnClick = FITSlabs1Click
      end
      object N42: TMenuItem
        Caption = '-'
      end
      object FITContractRates1: TMenuItem
        Caption = 'FIT Contract Rates'
        object Accommodation2: TMenuItem
          Tag = 9130
          Caption = 'Contract Rates from Excel'
          OnClick = Accommodation2Click
        end
      end
      object N48: TMenuItem
        Caption = '-'
      end
      object Elements1: TMenuItem
        Caption = 'Modules'
        OnClick = Elements1Click
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object Elements2: TMenuItem
        Caption = 'Elements'
        OnClick = Elements2Click
      end
    end
    object mnuAdmin: TMenuItem
      Caption = 'Administration'
      object Users1: TMenuItem
        Tag = 10000
        Caption = 'Users'
        OnClick = Users1Click
      end
      object Modules1: TMenuItem
        Tag = 10010
        Caption = 'Modules'
        OnClick = Modules1Click
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object ChangePassword1: TMenuItem
        Tag = 10020
        Caption = 'Change Password'
        OnClick = ChangePassword1Click
      end
      object N28: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Dependencies1: TMenuItem
        Tag = 10030
        Caption = 'Dependencies'
        Visible = False
      end
      object N31: TMenuItem
        Caption = '-'
      end
      object ipsoftheDay1: TMenuItem
        Caption = 'Tips of the Day'
        OnClick = ipsoftheDay1Click
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object odoList1: TMenuItem
        Caption = 'To do List'
        OnClick = odoList1Click
      end
      object N33: TMenuItem
        Caption = '-'
      end
      object CopyBackuptoTrialDatabase1: TMenuItem
        Caption = 'Copy Backup to Trial Database'
      end
      object N41: TMenuItem
        Caption = '-'
      end
      object WebExport1: TMenuItem
        Caption = 'Web Export'
        OnClick = WebExport1Click
      end
    end
    object mnuMIS: TMenuItem
      Caption = 'MIS'
      object ours2: TMenuItem
        Tag = 11000
        Caption = 'Tours'
        OnClick = ours2Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object Profitability1: TMenuItem
        Tag = 11010
        Caption = 'Profitability'
        OnClick = Profitability1Click
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object Accommodation3: TMenuItem
        Caption = 'Accommodation'
        OnClick = Accommodation3Click
      end
      object FITProfitability1: TMenuItem
        Caption = 'FIT Profitability'
        OnClick = FITProfitability1Click
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object HotelNights1: TMenuItem
        Caption = 'Hotel Nights'
        OnClick = HotelNights1Click
      end
    end
    object mnuFitQuotations: TMenuItem
      Caption = 'Fit Quotations'
      object PrestoMnu: TMenuItem
        Tag = 12000
        Caption = 'Presto'
        object Presto1: TMenuItem
          Tag = 12000
          Caption = 'Presto'
          OnClick = Presto1Click
        end
        object rial1: TMenuItem
          Tag = 12000
          Caption = 'Trial'
          OnClick = rial1Click
        end
        object Web2: TMenuItem
          Tag = 12000
          Caption = 'Web'
          OnClick = Web2Click
        end
        object Riksja: TMenuItem
          Tag = 12000
          Caption = 'Riksja'
          OnClick = RiksjaClick
        end
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object RouteFinder1: TMenuItem
        Tag = 12010
        Caption = 'Route Finder'
        OnClick = RouteFinder1Click
      end
      object RouteFinderTrial1: TMenuItem
        Caption = 'Route Finder - Trial'
        Visible = False
        OnClick = RouteFinderTrial1Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object rainExceptions1: TMenuItem
        Caption = 'Exceptions'
        object rains3: TMenuItem
          Tag = 12020
          Caption = 'Trains'
          OnClick = rains3Click
        end
        object N25: TMenuItem
          Caption = '-'
        end
        object Hops1: TMenuItem
          Tag = 12030
          Caption = 'Train Classes'
          OnClick = Hops1Click
        end
        object N35: TMenuItem
          Caption = '-'
          Visible = False
        end
        object PreferredRoutes1: TMenuItem
          Caption = 'Preferred Routes'
          OnClick = PreferredRoutes1Click
        end
      end
      object N43: TMenuItem
        Caption = '-'
      end
      object ModuleQuotationsPresto1: TMenuItem
        Caption = 'Module Quotations - Presto'
        OnClick = ModuleQuotationsPresto1Click
      end
      object x2: TMenuItem
        Caption = 'Module Quotations - Trial'
        OnClick = x2Click
      end
      object ModuleQuotationsWeb1: TMenuItem
        Caption = 'Module Quotations - Web'
        OnClick = ModuleQuotationsWeb1Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object WebPymtStatus1: TMenuItem
        Caption = 'Web Pymt Status'
        OnClick = WebPymtStatus1Click
      end
      object N19: TMenuItem
        Caption = '-'
      end
    end
    object mnuImports: TMenuItem
      Caption = 'Imports'
      object ImportTrains1: TMenuItem
        Tag = 13000
        Caption = 'Import Trains'
        OnClick = ImportTrains1Click
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object ImportFlights1: TMenuItem
        Tag = 13010
        Caption = 'Import Flights'
        OnClick = ImportFlights1Click
      end
    end
  end
  object DivisionSQLQry: TSQLDataSet
    CommandText = 
      'select * from divisions where companies_id = :companies_id order' +
      ' by division'
    DataSource = CompanyDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'companies_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 264
    object DivisionSQLQrydivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object DivisionSQLQrydivision: TStringField
      FieldName = 'division'
      FixedChar = True
    end
    object DivisionSQLQrycompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
  end
  object CanLogin_sp: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftString
        Name = 'i_UserName'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_Pwd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'o_AdmUsers_id'
        ParamType = ptInputOutput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    StoredProcName = 'p_CanLogin'
    Left = 320
    Top = 120
  end
  object SQLDataSet1: TSQLDataSet
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 120
  end
  object CompanySQLQry: TSQLDataSet
    CommandText = 'select * from companies order by name'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 200
  end
  object CompanyDS: TDataSource
    DataSet = CompanyCDSQry
    Left = 400
    Top = 200
  end
  object CompanyDSP: TDataSetProvider
    DataSet = CompanySQLQry
    Left = 335
    Top = 203
  end
  object CompanyCDSQry: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CompanyDSP'
    Left = 376
    Top = 200
    object CompanyCDSQrycompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object CompanyCDSQryname: TStringField
      FieldName = 'name'
      FixedChar = True
      Size = 50
    end
  end
  object DivisionDS: TDataSource
    DataSet = DivisionCDSQry
    Left = 400
    Top = 264
  end
  object DivisionDSP: TDataSetProvider
    DataSet = DivisionSQLQry
    Left = 335
    Top = 263
  end
  object DivisionCDSQry: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'companies_id'
    MasterFields = 'companies_id'
    MasterSource = CompanyDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'DivisionDSP'
    Left = 376
    Top = 263
    object DivisionCDSQrydivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object DivisionCDSQrydivision: TStringField
      FieldName = 'division'
      FixedChar = True
    end
    object DivisionCDSQrycompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
  end
  object FYSQLQry: TSQLDataSet
    CommandText = 'select * from FinancialYears'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 376
  end
  object FYDSP: TDataSetProvider
    DataSet = FYSQLQry
    Left = 343
    Top = 379
  end
  object FyCDSQry: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FYDSP'
    Left = 384
    Top = 376
    object FyCDSQryFinancialYears_id: TIntegerField
      FieldName = 'FinancialYears_id'
      Required = True
    end
    object FyCDSQryFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
    end
    object FyCDSQryToDate: TSQLTimeStampField
      FieldName = 'ToDate'
    end
    object FyCDSQryStatus: TIntegerField
      FieldName = 'Status'
    end
    object FyCDSQryYearRef: TIntegerField
      FieldName = 'YearRef'
    end
    object FyCDSQryFinancialYearAlias: TStringField
      FieldName = 'FinancialYearAlias'
      FixedChar = True
      Size = 100
    end
    object FyCDSQryFromYearMonth: TIntegerField
      FieldName = 'FromYearMonth'
    end
    object FyCDSQryToYearMonth: TIntegerField
      FieldName = 'ToYearMonth'
    end
  end
  object FyDS: TDataSource
    DataSet = FyCDSQry
    Left = 408
    Top = 376
  end
  object CopyMastersSp: TSQLDataSet
    CommandText = 'p_CopyMasters'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'i_From_Masters_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'i_To_Masters_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 760
    Top = 112
  end
  object DeleteMastersSP: TSQLDataSet
    CommandText = 'p_DeleteMasters'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'i_Masters_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 760
    Top = 144
  end
  object dxSkinController1: TdxSkinController
    SkinName = 'Office2007Black'
    Left = 720
    Top = 248
  end
  object XPMenu1: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Color = clBtnFace
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = False
    Active = True
    Left = 592
    Top = 64
  end
end
