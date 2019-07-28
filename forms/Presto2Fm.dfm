inherited Presto2Form: TPresto2Form
  Left = 195
  Top = 5
  Width = 1261
  Height = 725
  Caption = 'Presto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1245
    object cxTrialLabel: TcxLabel
      Left = 528
      Top = 9
      Caption = 'TRIAL AREA'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  inherited Panel2: TPanel
    Top = 646
    Width = 1245
    inherited cxButtonUtilities: TcxButton
      DropDownMenu = PopupMenu1
    end
    inherited cxButtonClose: TcxButton
      Left = 1156
      Top = 5
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      Left = 1085
      DataBinding.DataField = 'QuoCities_id'
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      Left = 1084
      DataBinding.DataField = 'Quotations_id'
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Left = 356
    end
    object cxButtonStatus: TcxButton
      Left = 227
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Status'
      TabOrder = 5
      Visible = False
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDownButton
    end
    object cxButton1: TcxButton
      Left = 104
      Top = -1
      Width = 105
      Height = 21
      Caption = 'Auto Create'
      TabOrder = 6
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 20
      Width = 105
      Height = 21
      Caption = 'Check Integrity'
      TabOrder = 7
    end
    object cx_RefOpt: TcxRadioButton
      Left = 660
      Top = 11
      Width = 39
      Height = 17
      Caption = 'Ref'
      Checked = True
      TabOrder = 8
      TabStop = True
    end
    object cx_NoOpt: TcxRadioButton
      Left = 708
      Top = 11
      Width = 42
      Height = 17
      Caption = 'No.'
      TabOrder = 9
    end
    object cx_NameOpt: TcxRadioButton
      Left = 752
      Top = 11
      Width = 59
      Height = 17
      Caption = 'Name'
      TabOrder = 10
    end
    object cx_IdOpt: TcxRadioButton
      Left = 812
      Top = 11
      Width = 39
      Height = 17
      Caption = 'ID'
      TabOrder = 11
    end
    object cxSearchEdit: TcxTextEdit
      Left = 922
      Top = 10
      TabOrder = 12
      OnKeyPress = cxSearchEditKeyPress
      Width = 122
    end
    object cx_CodeOpt: TcxRadioButton
      Left = 854
      Top = 11
      Width = 59
      Height = 17
      Caption = 'Code'
      TabOrder = 13
    end
  end
  inherited cxPageControl3: TcxPageControl
    Width = 1245
    Height = 605
    ClientRectBottom = 599
    ClientRectRight = 1239
    inherited cxTabSheet3: TcxTabSheet
      inherited Splitter1: TSplitter
        Top = 300
        Width = 1236
      end
      inherited Panel3: TPanel
        Width = 1236
        Height = 300
        inherited cxPageControl1: TcxPageControl
          Width = 1234
          Height = 298
          ClientRectBottom = 292
          ClientRectRight = 1228
          inherited cxTabSheet1: TcxTabSheet
            object Splitter2: TSplitter
              Left = 942
              Top = 0
              Height = 266
              Align = alRight
            end
            object Panel5: TPanel
              Left = 945
              Top = 0
              Width = 280
              Height = 266
              Align = alRight
              TabOrder = 0
              object Panel11: TPanel
                Left = 1
                Top = 143
                Width = 278
                Height = 122
                Align = alClient
                BevelInner = bvLowered
                Color = 15263976
                TabOrder = 0
                object Label10: TLabel
                  Left = 5
                  Top = 33
                  Width = 54
                  Height = 13
                  Caption = 'Starts On'
                  Transparent = True
                end
                object Label23: TLabel
                  Left = 5
                  Top = 54
                  Width = 55
                  Height = 13
                  Caption = 'Arrives In'
                  Transparent = True
                end
                object Label31: TLabel
                  Left = 5
                  Top = 75
                  Width = 49
                  Height = 13
                  Caption = 'Ends On'
                  Transparent = True
                end
                object Label32: TLabel
                  Left = 5
                  Top = 96
                  Width = 59
                  Height = 13
                  Caption = 'Dept From'
                  Transparent = True
                end
                object Label13: TLabel
                  Left = 5
                  Top = 12
                  Width = 60
                  Height = 13
                  Caption = 'Tour Code'
                  Transparent = True
                end
                object cxDBDateEdit1: TcxDBDateEdit
                  Left = 74
                  Top = 31
                  DataBinding.DataField = 'StartDate'
                  DataBinding.DataSource = MasterDs
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  TabOrder = 0
                  Width = 121
                end
                object cxDBLookupComboBox2: TcxDBLookupComboBox
                  Left = 74
                  Top = 73
                  DataBinding.DataField = 'StartCities_id'
                  DataBinding.DataSource = MasterDs
                  Properties.KeyFieldNames = 'Cities_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'City'
                    end>
                  Style.Color = 16247513
                  TabOrder = 1
                  Width = 121
                end
                object cxDBDateEdit4: TcxDBDateEdit
                  Left = 74
                  Top = 52
                  DataBinding.DataField = 'EndDate'
                  DataBinding.DataSource = MasterDs
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  TabOrder = 2
                  Width = 122
                end
                object cxDBLookupComboBox11: TcxDBLookupComboBox
                  Left = 74
                  Top = 94
                  DataBinding.DataField = 'EndCities_id'
                  DataBinding.DataSource = MasterDs
                  Properties.KeyFieldNames = 'Cities_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'City'
                    end>
                  Style.Color = 16247513
                  TabOrder = 3
                  Width = 122
                end
                object cxDBTextEdit1: TcxDBTextEdit
                  Left = 74
                  Top = 10
                  DataBinding.DataField = 'TourCode'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 4
                  Width = 81
                end
              end
              object Panel12: TPanel
                Left = 1
                Top = 1
                Width = 278
                Height = 142
                Align = alTop
                BevelInner = bvLowered
                TabOrder = 1
                object Label12: TLabel
                  Left = 5
                  Top = 6
                  Width = 50
                  Height = 13
                  Caption = 'Principal'
                  Transparent = True
                end
                object ConsultantLabel: TLabel
                  Left = 5
                  Top = 27
                  Width = 61
                  Height = 13
                  Caption = 'Consultant'
                  Transparent = True
                end
                object ReferenceLabel: TLabel
                  Left = 5
                  Top = 48
                  Width = 60
                  Height = 13
                  Caption = 'Reference'
                  Transparent = True
                end
                object Label15: TLabel
                  Left = 5
                  Top = 69
                  Width = 44
                  Height = 13
                  Caption = 'Country'
                  Transparent = True
                end
                object Label17: TLabel
                  Left = 5
                  Top = 90
                  Width = 51
                  Height = 13
                  Caption = 'Currency'
                  Transparent = True
                end
                object EmailLabel: TLabel
                  Left = 5
                  Top = 111
                  Width = 31
                  Height = 13
                  Caption = 'Email'
                  Transparent = True
                end
                object AgentLCB: TcxDBLookupComboBox
                  Left = 73
                  Top = 4
                  DataBinding.DataField = 'PrincipalAgents_id'
                  DataBinding.DataSource = MasterDs
                  Properties.ClearKey = 46
                  Properties.DropDownWidth = 300
                  Properties.KeyFieldNames = 'Addressbook_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Organisation'
                    end>
                  Properties.ListSource = PrinAgentDS
                  Properties.OnEditValueChanged = AgentLCBPropertiesEditValueChanged
                  Style.Color = 16247513
                  TabOrder = 0
                  Width = 183
                end
                object ConsultantLCB: TcxDBLookupComboBox
                  Left = 73
                  Top = 25
                  DataBinding.DataField = 'Consultants_id'
                  DataBinding.DataSource = MasterDs
                  Properties.ClearKey = 46
                  Properties.DropDownWidth = 300
                  Properties.KeyFieldNames = 'Consultants_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Consultant'
                    end>
                  Properties.ListSource = ConsultantDs
                  Properties.OnEditValueChanged = ConsultantLCBPropertiesEditValueChanged
                  Style.Color = 16247513
                  TabOrder = 1
                  OnEnter = ConsultantLCBEnter
                  Width = 183
                end
                object cxReferenceEdit: TcxDBTextEdit
                  Left = 73
                  Top = 46
                  DataBinding.DataField = 'Reference'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 2
                  Width = 136
                end
                object CountryLCB: TcxDBLookupComboBox
                  Left = 73
                  Top = 67
                  DataBinding.DataField = 'Countries_id'
                  DataBinding.DataSource = MasterDs
                  Properties.ClearKey = 46
                  Properties.DropDownWidth = 200
                  Properties.KeyFieldNames = 'countries_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'country'
                    end>
                  Properties.ListSource = CountriesDs
                  Style.Color = 16247513
                  TabOrder = 3
                  Width = 136
                end
                object CurrencyLCB: TcxDBLookupComboBox
                  Left = 73
                  Top = 88
                  DataBinding.DataField = 'Currencies_id'
                  DataBinding.DataSource = MasterDs
                  Properties.ClearKey = 46
                  Properties.DropDownWidth = 200
                  Properties.KeyFieldNames = 'currencies_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'currency'
                    end>
                  Properties.ListSource = CurrencyDs
                  Style.Color = 16247513
                  TabOrder = 4
                  Width = 136
                end
                object EmailEdit: TcxDBTextEdit
                  Left = 73
                  Top = 109
                  DataBinding.DataField = 'Email'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 5
                  Width = 181
                end
              end
            end
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 942
              Height = 266
              Align = alClient
              Caption = 'Panel6'
              TabOrder = 1
              object Panel7: TPanel
                Left = 1
                Top = 210
                Width = 940
                Height = 55
                Align = alClient
                Color = 15263976
                TabOrder = 0
                object Label16: TLabel
                  Left = 5
                  Top = 6
                  Width = 43
                  Height = 13
                  Caption = 'Vehicle'
                  Transparent = True
                end
                object Label33: TLabel
                  Left = 0
                  Top = 30
                  Width = 58
                  Height = 13
                  Caption = 'Comments'
                  Transparent = True
                end
                object LabelCancel: TLabel
                  Left = 596
                  Top = 3
                  Width = 106
                  Height = 20
                  Caption = 'CANCELLED'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object cxDBLookupComboBox8: TcxDBLookupComboBox
                  Left = 67
                  Top = 4
                  DataBinding.DataField = 'Vehicles_id'
                  DataBinding.DataSource = MasterDs
                  Properties.DropDownWidth = 300
                  Properties.KeyFieldNames = 'Vehicles_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Vehicle'
                    end>
                  Properties.ListSource = VehicleDs
                  Style.Color = 16247513
                  TabOrder = 0
                  Width = 150
                end
                object cxDBTextEdit9: TcxDBTextEdit
                  Left = 67
                  Top = 28
                  DataBinding.DataField = 'Comment'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 1
                  Width = 520
                end
                object Panel15: TPanel
                  Left = 705
                  Top = 1
                  Width = 234
                  Height = 53
                  Align = alRight
                  BevelInner = bvLowered
                  TabOrder = 2
                  object Label1: TLabel
                    Left = 6
                    Top = 6
                    Width = 63
                    Height = 13
                    Caption = 'Created By'
                    Transparent = True
                  end
                  object Label2: TLabel
                    Left = 6
                    Top = 30
                    Width = 61
                    Height = 13
                    Caption = 'Access To'
                    Transparent = True
                  end
                  object cxDBLookupComboBox4: TcxDBLookupComboBox
                    Left = 81
                    Top = 4
                    DataBinding.DataField = 'AdmUsers_id'
                    DataBinding.DataSource = MasterDs
                    Properties.DropDownWidth = 300
                    Properties.KeyFieldNames = 'AdmUsers_id'
                    Properties.ListColumns = <
                      item
                        FieldName = 'uid'
                      end>
                    Properties.ListSource = UsersDs
                    Style.Color = 16247513
                    TabOrder = 0
                    Width = 148
                  end
                  object cxDBLookupComboBox5: TcxDBLookupComboBox
                    Left = 82
                    Top = 28
                    DataBinding.DataField = 'Managers_id'
                    DataBinding.DataSource = MasterDs
                    Properties.KeyFieldNames = 'AdmUsers_id'
                    Properties.ListColumns = <
                      item
                        FieldName = 'uid'
                      end>
                    Properties.ListSource = UsersDs
                    Style.Color = 16247513
                    TabOrder = 1
                    Width = 146
                  end
                end
              end
              object Panel8: TPanel
                Left = 1
                Top = 107
                Width = 940
                Height = 51
                Align = alTop
                Color = 15263976
                TabOrder = 1
                object Label4: TLabel
                  Left = 4
                  Top = 6
                  Width = 57
                  Height = 13
                  Caption = 'Travellers'
                  Transparent = True
                end
                object Label6: TLabel
                  Left = 124
                  Top = 6
                  Width = 42
                  Height = 13
                  Caption = 'Singles'
                  Transparent = True
                end
                object Label7: TLabel
                  Left = 225
                  Top = 6
                  Width = 47
                  Height = 13
                  Caption = 'Doubles'
                  Transparent = True
                end
                object Label26: TLabel
                  Left = 330
                  Top = 6
                  Width = 34
                  Height = 13
                  Caption = 'Twins'
                  Transparent = True
                end
                object Label30: TLabel
                  Left = 421
                  Top = 6
                  Width = 39
                  Height = 13
                  Caption = 'Triples'
                  Transparent = True
                end
                object Label11: TLabel
                  Left = 659
                  Top = 6
                  Width = 97
                  Height = 13
                  Caption = 'Hotel Preference'
                  Transparent = True
                end
                object Label8: TLabel
                  Left = 659
                  Top = 30
                  Width = 57
                  Height = 13
                  Caption = 'Meal Plan'
                  Transparent = True
                end
                object cxDBTextEdit5: TcxDBTextEdit
                  Left = 64
                  Top = 4
                  DataBinding.DataField = 'NumPax'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 0
                  Width = 42
                end
                object cxDBTextEdit6: TcxDBTextEdit
                  Left = 170
                  Top = 4
                  DataBinding.DataField = 'NumSingles'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 1
                  Width = 42
                end
                object cxDBTextEdit7: TcxDBTextEdit
                  Left = 276
                  Top = 4
                  DataBinding.DataField = 'NumDoubles'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 2
                  Width = 42
                end
                object cxDBTextEdit15: TcxDBTextEdit
                  Left = 367
                  Top = 4
                  DataBinding.DataField = 'NumTwins'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 3
                  Width = 42
                end
                object cxDBTextEdit12: TcxDBTextEdit
                  Left = 463
                  Top = 4
                  DataBinding.DataField = 'NumTriples'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 4
                  Width = 42
                end
                object cxDBCheckBox4: TcxDBCheckBox
                  Left = 4
                  Top = 28
                  Caption = 'Extra Bed'
                  DataBinding.DataField = 'ExtraBed'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 5
                  Transparent = True
                  Width = 76
                end
                object cxDBLookupComboBox3: TcxDBLookupComboBox
                  Left = 761
                  Top = 4
                  DataBinding.DataField = 'HotelTypes_id'
                  DataBinding.DataSource = MasterDs
                  Properties.KeyFieldNames = 'HotelTypes_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'HotelType'
                    end
                    item
                      Caption = 'Select Fit'
                      FieldName = 'SelectFit'
                    end>
                  Properties.ListSource = HotelTypesDs
                  Style.Color = 16247513
                  TabOrder = 6
                  Width = 173
                end
                object cxDBLookupComboBox1: TcxDBLookupComboBox
                  Left = 761
                  Top = 28
                  DataBinding.DataField = 'MealPlans_id'
                  DataBinding.DataSource = MasterDs
                  Properties.KeyFieldNames = 'mealplans_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'plan'
                    end>
                  Properties.ListSource = MealPlansDs
                  Style.Color = 16247513
                  TabOrder = 7
                  Width = 173
                end
                object cxDBCheckBox3: TcxDBCheckBox
                  Left = 124
                  Top = 28
                  Caption = 'Guide'
                  DataBinding.DataField = 'Guide'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 8
                  Transparent = True
                  Width = 81
                end
                object cxDBCheckBox5: TcxDBCheckBox
                  Left = 225
                  Top = 28
                  Caption = 'Entrance Fees'
                  DataBinding.DataField = 'EntranceFees'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 9
                  Transparent = True
                  Width = 105
                end
              end
              object ValidityPanel: TPanel
                Left = 1
                Top = 80
                Width = 940
                Height = 27
                Align = alTop
                TabOrder = 2
                Visible = False
                object ValidFromLabel: TLabel
                  Left = 4
                  Top = 6
                  Width = 60
                  Height = 13
                  Caption = 'Valid From'
                  Transparent = True
                  Visible = False
                end
                object ValidToLabel: TLabel
                  Left = 204
                  Top = 6
                  Width = 48
                  Height = 13
                  Caption = 'Valid To'
                  Transparent = True
                  Visible = False
                end
                object cxValidFromEdit: TcxDBDateEdit
                  Left = 68
                  Top = 4
                  DataBinding.DataField = 'ValidFrom'
                  DataBinding.DataSource = MasterDs
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  TabOrder = 0
                  Visible = False
                  Width = 101
                end
                object cxValidToEdit: TcxDBDateEdit
                  Left = 253
                  Top = 4
                  DataBinding.DataField = 'ValidTo'
                  DataBinding.DataSource = MasterDs
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  TabOrder = 1
                  Visible = False
                  Width = 121
                end
              end
              object Panel10: TPanel
                Left = 1
                Top = 1
                Width = 940
                Height = 79
                Align = alTop
                TabOrder = 3
                object QuoRefLabel: TLabel
                  Left = 4
                  Top = 6
                  Width = 56
                  Height = 13
                  Caption = 'Quo. Ref.'
                  Transparent = True
                end
                object Label3: TLabel
                  Left = 365
                  Top = 6
                  Width = 76
                  Height = 13
                  Caption = 'Quotation No'
                  Transparent = True
                end
                object LeadNameLabel: TLabel
                  Left = 4
                  Top = 30
                  Width = 65
                  Height = 13
                  Caption = 'Lead Name'
                  Transparent = True
                end
                object Label9: TLabel
                  Left = 362
                  Top = 30
                  Width = 60
                  Height = 13
                  Caption = 'Tour Code'
                  Transparent = True
                end
                object Label25: TLabel
                  Left = 551
                  Top = 30
                  Width = 47
                  Height = 13
                  Caption = 'Tour No'
                  Transparent = True
                end
                object cxQuoRefEdit: TcxDBTextEdit
                  Left = 73
                  Top = 4
                  DataBinding.DataField = 'QuotationRef'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 0
                  Width = 274
                end
                object cxDBTextEdit2: TcxDBTextEdit
                  Left = 448
                  Top = 4
                  DataBinding.DataField = 'QuotationNo'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 1
                  Width = 81
                end
                object QuoLeadNameEdit: TcxDBTextEdit
                  Left = 72
                  Top = 28
                  DataBinding.DataField = 'PaxName'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 2
                  Width = 274
                end
                object cxDBTextEdit14: TcxDBTextEdit
                  Left = 448
                  Top = 28
                  DataBinding.DataField = 'TourCode'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 3
                  Width = 81
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 607
                  Top = 28
                  DataBinding.DataField = 'TourNo'
                  DataBinding.DataSource = MasterDs
                  Style.Color = 16247513
                  TabOrder = 4
                  Width = 63
                end
                object cxWebCkb: TcxDBCheckBox
                  Left = 4
                  Top = 54
                  Caption = 'Web'
                  DataBinding.DataField = 'WebQuotation'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 5
                  Transparent = True
                  OnClick = cxWebCkbClick
                  Width = 46
                end
                object Panel14: TPanel
                  Left = 705
                  Top = 1
                  Width = 234
                  Height = 77
                  Align = alRight
                  BevelInner = bvLowered
                  Color = 15263976
                  TabOrder = 6
                  object TourDateLbl: TLabel
                    Left = 6
                    Top = 6
                    Width = 65
                    Height = 13
                    Caption = 'Entered On'
                    Transparent = True
                  end
                  object Label36: TLabel
                    Left = 6
                    Top = 30
                    Width = 81
                    Height = 13
                    Caption = 'Booking Recd'
                    Transparent = True
                  end
                  object Label38: TLabel
                    Left = 6
                    Top = 54
                    Width = 87
                    Height = 13
                    Caption = 'Quotation Date'
                    Transparent = True
                  end
                  object TourDateEdit: TcxDBDateEdit
                    Left = 104
                    Top = 4
                    DataBinding.DataField = 'QuotationDate'
                    DataBinding.DataSource = MasterDs
                    Properties.ShowTime = False
                    Style.Color = 16247513
                    TabOrder = 0
                    Width = 122
                  end
                  object cxDBDateEdit5: TcxDBDateEdit
                    Left = 104
                    Top = 28
                    DataBinding.DataField = 'BookingRecdDate'
                    DataBinding.DataSource = MasterDs
                    Properties.ShowTime = False
                    Style.Color = 16247513
                    TabOrder = 1
                    Width = 122
                  end
                  object cxDBDateEdit7: TcxDBDateEdit
                    Left = 104
                    Top = 52
                    DataBinding.DataField = 'QuotationSendDate'
                    DataBinding.DataSource = MasterDs
                    Properties.ShowTime = False
                    Style.Color = 16247513
                    TabOrder = 2
                    Width = 122
                  end
                end
              end
              object Panel13: TPanel
                Left = 1
                Top = 158
                Width = 940
                Height = 52
                Align = alTop
                TabOrder = 4
                Visible = False
              end
            end
          end
        end
      end
      inherited Panel4: TPanel
        Top = 303
        Width = 1236
        Height = 270
        inherited cxPageControl2: TcxPageControl
          Width = 1234
          Height = 268
          ClientRectBottom = 262
          ClientRectRight = 1228
          inherited cxTabSheet2: TcxTabSheet
            inherited cxGrid1: TcxGrid
              Width = 1225
              Height = 236
              inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
                OnDblClick = cxGrid1DBBandedTableView1DblClick
                DataController.KeyFieldNames = 'QuoCities_id'
                Styles.OnGetContentStyle = cxGrid1DBBandedTableView1StylesGetContentStyle
                object cxGrid1DBBandedTableView1QuoCities_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'QuoCities_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1Quotations_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Quotations_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1DateIn: TcxGridDBBandedColumn
                  Caption = 'Date In'
                  DataBinding.FieldName = 'DateIn'
                  Width = 74
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1DateOut: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DateOut'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1TimeIn: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'TimeIn'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1TimeOut: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'TimeOut'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1FromCities_id: TcxGridDBBandedColumn
                  Caption = 'City'
                  DataBinding.FieldName = 'FromCities_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.DropDownWidth = 250
                  Properties.KeyFieldNames = 'Cities_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'City'
                    end>
                  Properties.ListSource = CitiesDs
                  Width = 87
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'ToCities_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1Nights: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Nights'
                  Width = 52
                  Position.BandIndex = 0
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoAccommodation_id: TcxGridDBBandedColumn
                  Caption = 'Hotel'
                  DataBinding.FieldName = 'QuoAccommodation_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.DropDownWidth = 300
                  Properties.KeyFieldNames = 'QuoAccommodation_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Organisation'
                    end>
                  Properties.ListSource = AccDs
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1ModeOfTravel: TcxGridDBBandedColumn
                  Caption = 'Mode'
                  DataBinding.FieldName = 'ModeOfTravel'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 10
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1ModeString: TcxGridDBBandedColumn
                  Caption = 'Mode'
                  DataBinding.FieldName = 'ModeString'
                  Width = 139
                  Position.BandIndex = 0
                  Position.ColIndex = 17
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'QuoTickets_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 11
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoServices_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'QuoServices_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 12
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoArrTransfers_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'QuoArrTransfers_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 13
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoDepTransfers_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'QuoDepTransfers_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 14
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1Status: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Status'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 15
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1StartCity: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'StartCity'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 16
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoTicketsOk: TcxGridDBBandedColumn
                  Caption = 'Tickets'
                  DataBinding.FieldName = 'QuoTicketsOk'
                  Options.Editing = False
                  Width = 51
                  Position.BandIndex = 0
                  Position.ColIndex = 18
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoAccommodationOk: TcxGridDBBandedColumn
                  Caption = 'Acc'
                  DataBinding.FieldName = 'QuoAccommodationOk'
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 19
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoSightSeeingOk: TcxGridDBBandedColumn
                  Caption = 'SS'
                  DataBinding.FieldName = 'QuoSightSeeingOk'
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 20
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QuoTransfersOk: TcxGridDBBandedColumn
                  Caption = 'Trsf'
                  DataBinding.FieldName = 'QuoTransfersOk'
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 21
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1ErrorNo: TcxGridDBBandedColumn
                  Caption = 'Error No'
                  DataBinding.FieldName = 'ErrorNo'
                  Styles.OnGetContentStyle = cxGrid1DBBandedTableView1ErrorNoStylesGetContentStyle
                  Position.BandIndex = 0
                  Position.ColIndex = 22
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1ErrorDesc: TcxGridDBBandedColumn
                  Caption = 'Error Desc'
                  DataBinding.FieldName = 'ErrorDesc'
                  Width = 148
                  Position.BandIndex = 0
                  Position.ColIndex = 23
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1DriveStartTime: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DriveStartTime'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 24
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1WarnDesc: TcxGridDBBandedColumn
                  Caption = 'Warning'
                  DataBinding.FieldName = 'WarnDesc'
                  Width = 130
                  Position.BandIndex = 0
                  Position.ColIndex = 25
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QcCarHireAgents_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'QcCarHireAgents_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 26
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QcCarHireCities_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'QcCarHireCities_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 27
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1QcVehicles_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'QcVehicles_id'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 28
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1P2P: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'P2P'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 29
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1IsRemarksOther: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'IsRemarksOther'
                  Visible = False
                  Options.Editing = False
                  Position.BandIndex = 0
                  Position.ColIndex = 30
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1RemarksOther: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'RemarksOther'
                  Visible = False
                  Options.Editing = False
                  Width = 119
                  Position.BandIndex = 0
                  Position.ColIndex = 31
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1ModuleQuotations_id: TcxGridDBBandedColumn
                  Caption = 'Module'
                  DataBinding.FieldName = 'ModuleQuotations_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.DropDownWidth = 400
                  Properties.KeyFieldNames = 'Quotations_id'
                  Properties.ListColumns = <
                    item
                      Width = 200
                      FieldName = 'PaxName'
                    end
                    item
                      Width = 100
                      FieldName = 'QuotationRef'
                    end
                    item
                      Width = 100
                      FieldName = 'QuotationDate'
                    end>
                  Properties.ListSource = ModQuoDs
                  Width = 210
                  Position.BandIndex = 0
                  Position.ColIndex = 32
                  Position.RowIndex = 0
                end
              end
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM Quotations'#13#10'WHERE QuotationDate BETWEEN :FromDate ' +
      'AND :ToDate'#13#10'AND Trial = :Trial'#13#10'ORDER BY QuotationDate, Quotati' +
      'onNo'
    Params = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'ToDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Trial'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object MasterCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
    object MasterCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object MasterCdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object MasterCdsEconomyPax: TBooleanField
      FieldName = 'EconomyPax'
    end
    object MasterCdsTimePax: TBooleanField
      FieldName = 'TimePax'
    end
    object MasterCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object MasterCdsNumSingles: TIntegerField
      FieldName = 'NumSingles'
    end
    object MasterCdsNumDoubles: TIntegerField
      FieldName = 'NumDoubles'
    end
    object MasterCdsStartDate: TSQLTimeStampField
      FieldName = 'StartDate'
    end
    object MasterCdsQuotationDate: TSQLTimeStampField
      FieldName = 'QuotationDate'
    end
    object MasterCdsQuotationNo: TIntegerField
      FieldName = 'QuotationNo'
    end
    object MasterCdsQuotationYearRef: TIntegerField
      FieldName = 'QuotationYearRef'
    end
    object MasterCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
    object MasterCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object MasterCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object MasterCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object MasterCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object MasterCdsDateOfArrival: TSQLTimeStampField
      FieldName = 'DateOfArrival'
    end
    object MasterCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 30
    end
    object MasterCdsPlaceFrom: TStringField
      FieldName = 'PlaceFrom'
      Size = 30
    end
    object MasterCdsPaxFirstName: TStringField
      FieldName = 'PaxFirstName'
      Size = 50
    end
    object MasterCdsNumTriples: TIntegerField
      FieldName = 'NumTriples'
    end
    object MasterCdsCarHireAgents_id: TIntegerField
      FieldName = 'CarHireAgents_id'
    end
    object MasterCdsCarHireCities_id: TIntegerField
      FieldName = 'CarHireCities_id'
    end
    object MasterCdsETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object MasterCdsHotelTypes_id: TIntegerField
      FieldName = 'HotelTypes_id'
    end
    object MasterCdsReference: TStringField
      FieldName = 'Reference'
      Size = 50
    end
    object MasterCdsCountries_id: TIntegerField
      FieldName = 'Countries_id'
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object MasterCdsExtraBed: TBooleanField
      FieldName = 'ExtraBed'
    end
    object MasterCdsDateOfDeparture: TSQLTimeStampField
      FieldName = 'DateOfDeparture'
    end
    object MasterCdsFlightNoDept: TStringField
      FieldName = 'FlightNoDept'
      Size = 30
    end
    object MasterCdsPlaceTo: TStringField
      FieldName = 'PlaceTo'
      Size = 30
    end
    object MasterCdsETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object MasterCdsPrincipalAgents_id: TIntegerField
      FieldName = 'PrincipalAgents_id'
    end
    object MasterCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object MasterCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object MasterCdsdomestic: TBooleanField
      FieldName = 'domestic'
    end
    object MasterCdsStartCities_id: TIntegerField
      FieldName = 'StartCities_id'
    end
    object MasterCdsTourNo: TIntegerField
      FieldName = 'TourNo'
    end
    object MasterCdsManagers_id: TIntegerField
      FieldName = 'Managers_id'
    end
    object MasterCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object MasterCdsNumTwins: TIntegerField
      FieldName = 'NumTwins'
    end
    object MasterCdsDeptDomestic: TBooleanField
      FieldName = 'DeptDomestic'
    end
    object MasterCdsEndCities_id: TIntegerField
      FieldName = 'EndCities_id'
    end
    object MasterCdsEndDate: TSQLTimeStampField
      FieldName = 'EndDate'
    end
    object MasterCdsConfirmed: TBooleanField
      FieldName = 'Confirmed'
    end
    object MasterCdsWeb: TIntegerField
      FieldName = 'Web'
    end
    object MasterCdsTrial: TIntegerField
      FieldName = 'Trial'
    end
    object MasterCdsConsultants_id: TIntegerField
      FieldName = 'Consultants_id'
    end
    object MasterCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
    object MasterCdsComment: TStringField
      FieldName = 'Comment'
      Size = 100
    end
    object MasterCdsPrincipalClient: TStringField
      FieldName = 'PrincipalClient'
      Size = 100
    end
    object MasterCdsBookingRecdDate: TSQLTimeStampField
      FieldName = 'BookingRecdDate'
    end
    object MasterCdsBookingEntryDate: TSQLTimeStampField
      FieldName = 'BookingEntryDate'
    end
    object MasterCdsQuotationSendDate: TSQLTimeStampField
      FieldName = 'QuotationSendDate'
    end
    object MasterCdsBasicRate: TFMTBCDField
      FieldName = 'BasicRate'
      Precision = 18
      Size = 4
    end
    object MasterCdsBasicAmt: TFMTBCDField
      FieldName = 'BasicAmt'
      Precision = 18
      Size = 4
    end
    object MasterCdsServiceTaxPerc: TFMTBCDField
      FieldName = 'ServiceTaxPerc'
      Precision = 18
      Size = 4
    end
    object MasterCdsServiceTaxAmt: TFMTBCDField
      FieldName = 'ServiceTaxAmt'
      Precision = 18
      Size = 4
    end
    object MasterCdsQuotationAmt: TFMTBCDField
      FieldName = 'QuotationAmt'
      Precision = 18
      Size = 4
    end
    object MasterCdsAdvanceAmt: TFMTBCDField
      FieldName = 'AdvanceAmt'
      Precision = 18
      Size = 4
    end
    object MasterCdsDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
    end
    object MasterCdsWebQuotation: TBooleanField
      FieldName = 'WebQuotation'
    end
    object MasterCdsValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
    end
    object MasterCdsValidTo: TSQLTimeStampField
      FieldName = 'ValidTo'
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoCities WHERE Quotations_id = :Quotations_id'
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = DetailCdsAfterInsert
    object DetailCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object DetailCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object DetailCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object DetailCdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
    end
    object DetailCdsTimeIn: TSQLTimeStampField
      FieldName = 'TimeIn'
    end
    object DetailCdsTimeOut: TSQLTimeStampField
      FieldName = 'TimeOut'
    end
    object DetailCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object DetailCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
      OnChange = DetailCdsToCities_idChange
    end
    object DetailCdsModeOfTravel: TIntegerField
      FieldName = 'ModeOfTravel'
    end
    object DetailCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object DetailCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object DetailCdsQuoTickets_id: TIntegerField
      FieldName = 'QuoTickets_id'
    end
    object DetailCdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object DetailCdsQuoArrTransfers_id: TIntegerField
      FieldName = 'QuoArrTransfers_id'
    end
    object DetailCdsQuoDepTransfers_id: TIntegerField
      FieldName = 'QuoDepTransfers_id'
    end
    object DetailCdsStatus: TIntegerField
      FieldName = 'Status'
    end
    object DetailCdsStartCity: TBooleanField
      FieldName = 'StartCity'
    end
    object DetailCdsQuoTicketsOk: TBooleanField
      FieldName = 'QuoTicketsOk'
    end
    object DetailCdsQuoAccommodationOk: TBooleanField
      FieldName = 'QuoAccommodationOk'
    end
    object DetailCdsQuoSightSeeingOk: TBooleanField
      FieldName = 'QuoSightSeeingOk'
    end
    object DetailCdsQuoTransfersOk: TBooleanField
      FieldName = 'QuoTransfersOk'
    end
    object DetailCdsErrorNo: TIntegerField
      FieldName = 'ErrorNo'
    end
    object DetailCdsErrorDesc: TStringField
      FieldName = 'ErrorDesc'
      Size = 100
    end
    object DetailCdsDriveStartTime: TSQLTimeStampField
      FieldName = 'DriveStartTime'
    end
    object DetailCdsModeString: TStringField
      FieldName = 'ModeString'
      Size = 50
    end
    object DetailCdsWarnDesc: TStringField
      FieldName = 'WarnDesc'
      Size = 100
    end
    object DetailCdsQcCarHireAgents_id: TIntegerField
      FieldName = 'QcCarHireAgents_id'
    end
    object DetailCdsQcCarHireCities_id: TIntegerField
      FieldName = 'QcCarHireCities_id'
    end
    object DetailCdsQcVehicles_id: TIntegerField
      FieldName = 'QcVehicles_id'
    end
    object DetailCdsP2P: TIntegerField
      FieldName = 'P2P'
    end
    object DetailCdsIsRemarksOther: TIntegerField
      FieldName = 'IsRemarksOther'
    end
    object DetailCdsRemarksOther: TStringField
      FieldName = 'RemarksOther'
      Size = 250
    end
    object DetailCdsModuleQuotations_id: TIntegerField
      FieldName = 'ModuleQuotations_id'
    end
  end
  object HotelTypesSds: TSQLDataSet
    CommandText = 'SELECT HotelTypes_id, HotelType, SelectFit'#13#10'FROM HotelTypes'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 776
    Top = 178
  end
  object HotelTypesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelTypesDsp'
    Left = 816
    Top = 178
    object HotelTypesCdsHotelTypes_id: TIntegerField
      FieldName = 'HotelTypes_id'
    end
    object HotelTypesCdsHotelType: TStringField
      FieldName = 'HotelType'
    end
    object HotelTypesCdsSelectFit: TBooleanField
      FieldName = 'SelectFit'
    end
  end
  object HotelTypesDs: TDataSource
    DataSet = HotelTypesCds
    Left = 836
    Top = 178
  end
  object MealPlansSds: TSQLDataSet
    CommandText = 'SELECT * FROM MealPlans ORDER BY [Plan]'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 800
    Top = 232
  end
  object MealPlansDsp: TDataSetProvider
    DataSet = MealPlansSds
    Left = 816
    Top = 232
  end
  object MealPlansDs: TDataSource
    DataSet = MealPlansCds
    Left = 848
    Top = 232
  end
  object MealPlansCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlansDsp'
    Left = 832
    Top = 232
    object MealPlansCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MealPlansCdsmealplan: TStringField
      FieldName = 'mealplan'
      Size = 15
    end
    object MealPlansCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT v.Vehicle, ch.Vehicles_id'#13#10'FROM CarHire ch INNER' +
      ' JOIN Vehicles v ON ch.Vehicles_id = v.Vehicles_id'#13#10'ORDER BY Veh' +
      'icle'
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 128
    Top = 296
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 144
    Top = 296
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 160
    Top = 296
    object VehicleCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object VehicleCdsvehicle: TStringField
      FieldName = 'vehicle'
      Size = 35
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 168
    Top = 296
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 824
    Top = 298
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 838
    Top = 299
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 856
    Top = 298
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
    Left = 868
    Top = 298
  end
  object PrinAgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1080
    Top = 88
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 1096
    Top = 88
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
    Left = 1112
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
    Left = 1128
    Top = 88
  end
  object ConsultantSds: TSQLDataSet
    CommandText = 'SELECT * FROM Consultants WHERE Addressbook_id = :Addressbook_id'
    DataSource = PrinAgentDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1080
    Top = 112
  end
  object ConsultantDsp: TDataSetProvider
    DataSet = ConsultantSds
    Left = 1096
    Top = 112
  end
  object ConsultantCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = BackOfficeDataModule.PrinAgentDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ConsultantDsp'
    Left = 1112
    Top = 112
  end
  object ConsultantDs: TDataSource
    DataSet = ConsultantCds
    Left = 1120
    Top = 112
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'SELECT Countries_id, Country'#13#10'FROM Countries c'#13#10'ORDER BY Country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1056
    Top = 152
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    Left = 1072
    Top = 152
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    Left = 1088
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
    Left = 1112
    Top = 152
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1056
    Top = 186
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 1080
    Top = 186
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 1096
    Top = 186
    object CurrencyCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrencyCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CurrencyCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrencyDs: TDataSource
    DataSet = CurrencyCds
    Left = 1112
    Top = 186
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE NightHalt = 1'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 442
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 94
    Top = 443
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 112
    Top = 442
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 124
    Top = 442
  end
  object AccSds: TSQLDataSet
    CommandText = 
      'SELECT qa.QuoAccommodation_id, a.Organisation FROM QuoAccommodat' +
      'ion qa, Addressbook a'#13#10'WHERE qa.HotelAddressbook_id = a.Addressb' +
      'ook_id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 442
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    Left = 222
    Top = 443
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccDsp'
    Left = 240
    Top = 442
    object AccCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object AccCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 252
    Top = 442
  end
  object ModQuoSds: TSQLDataSet
    CommandText = 
      'SELECT Quotations_id, QuotationRef, PaxName, QuotationDate'#13#10'  FR' +
      'OM Quotations'#13#10' WHERE Trial = 3'#13#10' ORDER BY PaxName'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 440
  end
  object ModQuoDsp: TDataSetProvider
    DataSet = ModQuoSds
    Left = 672
    Top = 440
  end
  object ModQuoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ModQuoDsp'
    Left = 688
    Top = 440
    object ModQuoCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object ModQuoCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
    object ModQuoCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object ModQuoCdsQuotationDate: TSQLTimeStampField
      FieldName = 'QuotationDate'
    end
  end
  object ModQuoDs: TDataSource
    DataSet = ModQuoCds
    Left = 712
    Top = 440
  end
  object PopupMenu1: TPopupMenu
    Left = 31
    Top = 589
    object DisplayItinerary2: TMenuItem
      Caption = 'Display Itinerary'
      OnClick = DisplayItinerary2Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object PostProcess1: TMenuItem
      Caption = 'Post Process'
      object CreateModule3: TMenuItem
        Caption = 'Create Module'
        OnClick = CreateModule3Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object CreateBookings1: TMenuItem
        Caption = 'Enter Bookings'
        OnClick = CreateBookings1Click
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object mnuCreateMasters: TMenuItem
        Caption = 'Create Masters'
        OnClick = mnuCreateMastersClick
      end
      object mnuDeleteMasters: TMenuItem
        Caption = 'Delete Masters'
        OnClick = mnuDeleteMastersClick
      end
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object MoveTo1: TMenuItem
      Caption = 'Move To '
      object mnuMoveToTrial: TMenuItem
        Caption = 'Trial'
        OnClick = mnuMoveToTrialClick
      end
      object mnuMoveToLive: TMenuItem
        Caption = 'Live'
        OnClick = mnuMoveToLiveClick
      end
      object mnuMoveToWeb: TMenuItem
        Caption = 'Web'
        OnClick = mnuMoveToWebClick
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object mnuCopyTrial: TMenuItem
        Caption = 'Make a copy of Trial'
        OnClick = mnuCopyTrialClick
      end
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object ModifyStartDate2: TMenuItem
      Caption = 'Modify Start Date'
      OnClick = ModifyStartDate2Click
    end
    object N26: TMenuItem
      Caption = '-'
    end
    object SaveAsExcel2: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel2Click
    end
    object N27: TMenuItem
      Caption = '-'
    end
    object AutoCreate2: TMenuItem
      Caption = 'Auto Create'
      object All4: TMenuItem
        Caption = 'All'
        OnClick = All4Click
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object Accommodation5: TMenuItem
        Caption = 'Accommodation'
        OnClick = Accommodation5Click
      end
      object SightSeeing6: TMenuItem
        Caption = 'Sightseeing'
        OnClick = SightSeeing6Click
      end
      object ransfers6: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers6Click
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object SetTiming1: TMenuItem
        Caption = 'Set Timing'
        OnClick = SetTiming1Click
      end
    end
    object N31: TMenuItem
      Caption = '-'
    end
    object Edit2: TMenuItem
      Caption = 'Edit'
      object Day2: TMenuItem
        Caption = 'Day'
        OnClick = Day2Click
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object ickets4: TMenuItem
        Caption = 'Tickets'
        OnClick = ickets4Click
      end
      object Accommodation6: TMenuItem
        Caption = 'Accommodation'
        OnClick = Accommodation6Click
      end
      object Sightseeing7: TMenuItem
        Caption = 'Sightseeing'
        OnClick = Sightseeing7Click
      end
      object ransfers7: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers7Click
      end
    end
    object N33: TMenuItem
      Caption = '-'
    end
    object CheckIntegrity2: TMenuItem
      Caption = 'Check Integrity'
      object All5: TMenuItem
        Caption = 'All'
        OnClick = All5Click
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object ickets5: TMenuItem
        Caption = 'Tickets'
        OnClick = ickets5Click
      end
      object Accommodation7: TMenuItem
        Caption = 'Accommodation'
        OnClick = Accommodation7Click
      end
      object Sightseeing8: TMenuItem
        Caption = 'Sightseeing'
        OnClick = Sightseeing8Click
      end
      object ransfers8: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers8Click
      end
    end
    object N35: TMenuItem
      Caption = '-'
    end
    object Delete2: TMenuItem
      Caption = 'Delete'
      object All6: TMenuItem
        Caption = 'All'
        OnClick = All6Click
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object ickets6: TMenuItem
        Caption = 'Tickets'
        OnClick = ickets6Click
      end
      object Accommodation8: TMenuItem
        Caption = 'Accommodation'
        OnClick = Accommodation8Click
      end
      object Sightseeing9: TMenuItem
        Caption = 'Sightseeing'
        OnClick = Sightseeing9Click
      end
      object ransfers9: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers9Click
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object DeleteSingleLine2: TMenuItem
        Caption = 'Delete Single Line'
        object ickets7: TMenuItem
          Caption = 'Tickets'
          OnClick = ickets7Click
        end
        object Accommodation9: TMenuItem
          Caption = 'Accommodation'
          OnClick = Accommodation9Click
        end
        object Sightseeing10: TMenuItem
          Caption = 'Sightseeing'
          OnClick = Sightseeing10Click
        end
        object ransfers10: TMenuItem
          Caption = 'Transfers'
          OnClick = ransfers10Click
        end
      end
    end
  end
  object scExcelExport: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -11
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = -11
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 144
    Top = 417
  end
  object PopupMenu2: TPopupMenu
    Left = 207
    Top = 589
    object ConfirmationStatus1: TMenuItem
      Caption = 'Confirmation Status'
      OnClick = ConfirmationStatus1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FITStatusList1: TMenuItem
      Caption = 'FIT Status List'
      OnClick = FITStatusList1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SendMails1: TMenuItem
      Caption = 'Send Mails'
      OnClick = SendMails1Click
    end
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 696
    Top = 8
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12320733
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16766935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13559807
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 12320767
    end
    object cxStyleRed2: TcxStyle
      AssignedValues = [svColor]
      Color = 8947967
    end
    object cxStyleGrey: TcxStyle
      AssignedValues = [svColor]
      Color = 14079702
    end
  end
  object HotelTypesDsp: TDataSetProvider
    DataSet = HotelTypesSds
    Left = 798
    Top = 179
  end
end
