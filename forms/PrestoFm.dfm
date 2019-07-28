inherited PrestoForm: TPrestoForm
  Left = 166
  Top = 22
  Width = 1261
  Height = 716
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
    Top = 637
    Width = 1245
    OnClick = Panel2Click
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
      Left = 316
      Top = 9
      Width = 260
      Height = 21
      LookAndFeel.NativeStyle = True
    end
    object cxButtonStatus: TcxButton
      Left = 217
      Top = 0
      Width = 75
      Height = 20
      Caption = 'Status'
      TabOrder = 5
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDownButton
    end
    object cxButtonAutoCreate: TcxButton
      Left = 104
      Top = -1
      Width = 105
      Height = 21
      Caption = 'Auto Create'
      TabOrder = 6
      OnClick = cxButtonAutoCreateClick
    end
    object cxButtonCheckIntegrity: TcxButton
      Left = 104
      Top = 20
      Width = 105
      Height = 21
      Caption = 'Check Integrity'
      TabOrder = 7
      OnClick = cxButtonCheckIntegrityClick
    end
    object cx_RefOpt: TcxRadioButton
      Left = 700
      Top = 11
      Width = 39
      Height = 17
      Caption = 'Ref'
      Checked = True
      TabOrder = 8
      TabStop = True
    end
    object cx_NoOpt: TcxRadioButton
      Left = 748
      Top = 11
      Width = 42
      Height = 17
      Caption = 'No.'
      TabOrder = 9
    end
    object cx_NameOpt: TcxRadioButton
      Left = 792
      Top = 11
      Width = 59
      Height = 17
      Caption = 'Name'
      TabOrder = 10
    end
    object cx_IdOpt: TcxRadioButton
      Left = 852
      Top = 11
      Width = 39
      Height = 17
      Caption = 'ID'
      TabOrder = 11
    end
    object cxSearchEdit: TcxTextEdit
      Left = 954
      Top = 10
      TabOrder = 12
      OnKeyPress = cxSearchEditKeyPress
      Width = 122
    end
    object cx_CodeOpt: TcxRadioButton
      Left = 894
      Top = 11
      Width = 59
      Height = 17
      Caption = 'Code'
      TabOrder = 13
    end
    object ckbAutoTickets: TcxCheckBox
      Left = 216
      Top = 22
      Caption = 'Auto Tickets'
      TabOrder = 14
      Visible = False
      Width = 99
    end
    object cxButtonSave: TcxButton
      Left = 599
      Top = 0
      Width = 75
      Height = 20
      Caption = 'Save'
      TabOrder = 15
      OnClick = cxButtonSaveClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object cxButtonCancel: TcxButton
      Left = 600
      Top = 20
      Width = 75
      Height = 19
      Caption = 'Cancel'
      TabOrder = 16
      OnClick = cxButtonCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  inherited cxPageControl3: TcxPageControl
    Width = 1245
    Height = 596
    ActivePage = cxTabSheet3
    OnChange = cxPageControl3Change
    ClientRectBottom = 590
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
              TabOrder = 1
              object Panel11: TPanel
                Left = 1
                Top = 143
                Width = 278
                Height = 122
                Align = alClient
                BevelInner = bvLowered
                Color = 15263976
                TabOrder = 1
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
                  ParentFont = False
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 121
                end
                object cxDBLookupComboBox2: TcxDBLookupComboBox
                  Left = 74
                  Top = 52
                  DataBinding.DataField = 'StartCities_id'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.KeyFieldNames = 'Cities_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'City'
                    end>
                  Properties.ListSource = CitiesDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 121
                end
                object cxDBDateEdit4: TcxDBDateEdit
                  Left = 74
                  Top = 73
                  DataBinding.DataField = 'EndDate'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  Width = 122
                end
                object cxDBLookupComboBox11: TcxDBLookupComboBox
                  Left = 74
                  Top = 94
                  DataBinding.DataField = 'EndCities_id'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.KeyFieldNames = 'Cities_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'City'
                    end>
                  Properties.ListSource = CitiesDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 4
                  Width = 122
                end
                object cxDBTextEdit1: TcxDBTextEdit
                  Left = 74
                  Top = 10
                  DataBinding.DataField = 'TourCode'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 0
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
                TabOrder = 0
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
                  ParentFont = False
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
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 183
                end
                object ConsultantLCB: TcxDBLookupComboBox
                  Left = 73
                  Top = 25
                  DataBinding.DataField = 'Consultants_id'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
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
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  OnEnter = ConsultantLCBEnter
                  Width = 183
                end
                object cxReferenceEdit: TcxDBTextEdit
                  Left = 73
                  Top = 46
                  DataBinding.DataField = 'Reference'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 136
                end
                object CountryLCB: TcxDBLookupComboBox
                  Left = 73
                  Top = 67
                  DataBinding.DataField = 'Countries_id'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.ClearKey = 46
                  Properties.DropDownWidth = 200
                  Properties.KeyFieldNames = 'countries_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'country'
                    end>
                  Properties.ListSource = CountriesDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  Width = 136
                end
                object CurrencyLCB: TcxDBLookupComboBox
                  Left = 73
                  Top = 88
                  DataBinding.DataField = 'Currencies_id'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.ClearKey = 46
                  Properties.DropDownWidth = 200
                  Properties.KeyFieldNames = 'currencies_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'currency'
                    end>
                  Properties.ListSource = CurrencyDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 4
                  Width = 136
                end
                object EmailEdit: TcxDBTextEdit
                  Left = 73
                  Top = 109
                  DataBinding.DataField = 'Email'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
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
              TabOrder = 0
              object Panel7: TPanel
                Left = 1
                Top = 210
                Width = 940
                Height = 55
                Align = alClient
                Color = 15263976
                TabOrder = 4
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
                  ParentFont = False
                  Properties.DropDownWidth = 300
                  Properties.KeyFieldNames = 'Vehicles_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Vehicle'
                    end>
                  Properties.ListSource = VehicleDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 150
                end
                object cxDBTextEdit9: TcxDBTextEdit
                  Left = 67
                  Top = 28
                  DataBinding.DataField = 'Comment'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 633
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
                    ParentFont = False
                    Properties.DropDownWidth = 300
                    Properties.KeyFieldNames = 'AdmUsers_id'
                    Properties.ListColumns = <
                      item
                        FieldName = 'uid'
                      end>
                    Properties.ListSource = UsersDs
                    Style.Color = 16247513
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'MS Sans Serif'
                    Style.Font.Style = [fsBold]
                    Style.IsFontAssigned = True
                    TabOrder = 0
                    Width = 148
                  end
                  object cxDBLookupComboBox5: TcxDBLookupComboBox
                    Left = 82
                    Top = 28
                    DataBinding.DataField = 'Managers_id'
                    DataBinding.DataSource = MasterDs
                    ParentFont = False
                    Properties.KeyFieldNames = 'AdmUsers_id'
                    Properties.ListColumns = <
                      item
                        FieldName = 'uid'
                      end>
                    Properties.ListSource = UsersDs
                    Style.Color = 16247513
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'MS Sans Serif'
                    Style.Font.Style = [fsBold]
                    Style.IsFontAssigned = True
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
                TabOrder = 2
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
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 42
                end
                object cxDBTextEdit6: TcxDBTextEdit
                  Left = 170
                  Top = 4
                  DataBinding.DataField = 'NumSingles'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 42
                end
                object cxDBTextEdit7: TcxDBTextEdit
                  Left = 276
                  Top = 4
                  DataBinding.DataField = 'NumDoubles'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 42
                end
                object cxDBTextEdit15: TcxDBTextEdit
                  Left = 367
                  Top = 4
                  DataBinding.DataField = 'NumTwins'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  Width = 42
                end
                object cxDBTextEdit12: TcxDBTextEdit
                  Left = 463
                  Top = 4
                  DataBinding.DataField = 'NumTriples'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
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
                  ParentFont = False
                  Properties.KeyFieldNames = 'HotelTypes_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'HotelType'
                    end>
                  Properties.ListSource = HotelTypesDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 8
                  Width = 173
                end
                object cxDBLookupComboBox1: TcxDBLookupComboBox
                  Left = 761
                  Top = 28
                  DataBinding.DataField = 'MealPlans_id'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.KeyFieldNames = 'mealplans_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'plan'
                    end>
                  Properties.ListSource = MealPlansDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 9
                  Width = 173
                end
                object cxDBCheckBox3: TcxDBCheckBox
                  Left = 124
                  Top = 28
                  Caption = 'Guide'
                  DataBinding.DataField = 'Guide'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 6
                  Transparent = True
                  Width = 81
                end
                object cxDBCheckBox5: TcxDBCheckBox
                  Left = 225
                  Top = 28
                  Caption = 'Entrance Fees'
                  DataBinding.DataField = 'EntranceFees'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 7
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
                TabOrder = 1
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
                  ParentFont = False
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Visible = False
                  Width = 101
                end
                object cxValidToEdit: TcxDBDateEdit
                  Left = 253
                  Top = 4
                  DataBinding.DataField = 'ValidTo'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
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
                TabOrder = 0
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
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 274
                end
                object cxDBTextEdit2: TcxDBTextEdit
                  Left = 448
                  Top = 4
                  DataBinding.DataField = 'QuotationNo'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 81
                end
                object QuoLeadNameEdit: TcxDBTextEdit
                  Left = 72
                  Top = 28
                  DataBinding.DataField = 'PaxName'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 274
                end
                object cxDBTextEdit14: TcxDBTextEdit
                  Left = 448
                  Top = 28
                  DataBinding.DataField = 'TourCode'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  Width = 81
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 607
                  Top = 28
                  DataBinding.DataField = 'TourNo'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 4
                  Width = 63
                end
                object cxWebCkb: TcxDBCheckBox
                  Left = 4
                  Top = 54
                  Caption = 'Web'
                  DataBinding.DataField = 'WebQuotation'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 6
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
                  TabOrder = 5
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
                    ParentFont = False
                    Properties.ShowTime = False
                    Style.Color = 16247513
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'MS Sans Serif'
                    Style.Font.Style = [fsBold]
                    Style.IsFontAssigned = True
                    TabOrder = 0
                    Width = 122
                  end
                  object cxDBDateEdit5: TcxDBDateEdit
                    Left = 104
                    Top = 28
                    DataBinding.DataField = 'BookingRecdDate'
                    DataBinding.DataSource = MasterDs
                    ParentFont = False
                    Properties.ShowTime = False
                    Style.Color = 16247513
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'MS Sans Serif'
                    Style.Font.Style = [fsBold]
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Width = 122
                  end
                  object cxDBDateEdit7: TcxDBDateEdit
                    Left = 104
                    Top = 52
                    DataBinding.DataField = 'QuotationSendDate'
                    DataBinding.DataSource = MasterDs
                    ParentFont = False
                    Properties.ShowTime = False
                    Style.Color = 16247513
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'MS Sans Serif'
                    Style.Font.Style = [fsBold]
                    Style.IsFontAssigned = True
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
                TabOrder = 3
                object Label14: TLabel
                  Left = 4
                  Top = 6
                  Width = 60
                  Height = 13
                  Caption = 'Arrives On'
                  Transparent = True
                end
                object Label19: TLabel
                  Left = 226
                  Top = 6
                  Width = 52
                  Height = 13
                  Caption = 'Arr. From'
                  Transparent = True
                end
                object Label35: TLabel
                  Left = 386
                  Top = 6
                  Width = 12
                  Height = 13
                  Caption = 'at'
                  Transparent = True
                end
                object Label24: TLabel
                  Left = 470
                  Top = 6
                  Width = 56
                  Height = 13
                  Caption = 'Flight No.'
                  Transparent = True
                end
                object Label18: TLabel
                  Left = 4
                  Top = 30
                  Width = 48
                  Height = 13
                  Caption = 'Dept On'
                  Transparent = True
                end
                object Label20: TLabel
                  Left = 226
                  Top = 30
                  Width = 51
                  Height = 13
                  Caption = 'Dept. To'
                  Transparent = True
                end
                object Label21: TLabel
                  Left = 386
                  Top = 30
                  Width = 12
                  Height = 13
                  Caption = 'at'
                  Transparent = True
                end
                object Label22: TLabel
                  Left = 470
                  Top = 30
                  Width = 56
                  Height = 13
                  Caption = 'Flight No.'
                  Transparent = True
                end
                object cxDBDateEdit3: TcxDBDateEdit
                  Left = 67
                  Top = 4
                  DataBinding.DataField = 'DateOfArrival'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 152
                end
                object cxDBLookupComboBox9: TcxDBLookupComboBox
                  Left = 281
                  Top = 4
                  DataBinding.DataField = 'PlaceFrom'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.DropDownListStyle = lsEditList
                  Properties.KeyFieldNames = 'City'
                  Properties.ListColumns = <
                    item
                      FieldName = 'City'
                    end>
                  Properties.ListSource = AllCitiesDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 98
                end
                object cxDBTimeEdit3: TcxDBTimeEdit
                  Left = 404
                  Top = 4
                  DataBinding.DataField = 'ETA'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.TimeFormat = tfHourMin
                  Properties.UseCtrlIncrement = True
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 60
                end
                object cxDBTextEdit11: TcxDBTextEdit
                  Left = 529
                  Top = 4
                  DataBinding.DataField = 'FlightNo'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  Width = 121
                end
                object cxDBCheckBox6: TcxDBCheckBox
                  Left = 655
                  Top = 6
                  Caption = 'Dom. A/P'
                  DataBinding.DataField = 'Domestic'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 4
                  Transparent = True
                  Width = 76
                end
                object cxDBDateEdit2: TcxDBDateEdit
                  Left = 67
                  Top = 28
                  DataBinding.DataField = 'DateOfDeparture'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.ShowTime = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 5
                  Width = 152
                end
                object cxDBLookupComboBox10: TcxDBLookupComboBox
                  Left = 281
                  Top = 28
                  DataBinding.DataField = 'PlaceTo'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.DropDownListStyle = lsEditList
                  Properties.KeyFieldNames = 'City'
                  Properties.ListColumns = <
                    item
                      FieldName = 'City'
                    end>
                  Properties.ListSource = AllCitiesDs
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 6
                  Width = 98
                end
                object cxDBTimeEdit1: TcxDBTimeEdit
                  Left = 404
                  Top = 28
                  DataBinding.DataField = 'ETD'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Properties.TimeFormat = tfHourMin
                  Properties.UseCtrlIncrement = True
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 7
                  Width = 60
                end
                object cxDBTextEdit13: TcxDBTextEdit
                  Left = 529
                  Top = 28
                  DataBinding.DataField = 'FlightNoDept'
                  DataBinding.DataSource = MasterDs
                  ParentFont = False
                  Style.Color = 16247513
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'MS Sans Serif'
                  Style.Font.Style = [fsBold]
                  Style.IsFontAssigned = True
                  TabOrder = 8
                  Width = 121
                end
                object cxDBCheckBox1: TcxDBCheckBox
                  Left = 655
                  Top = 30
                  Caption = 'Dom. A/P'
                  DataBinding.DataField = 'DeptDomestic'
                  DataBinding.DataSource = MasterDs
                  TabOrder = 9
                  Transparent = True
                  Width = 76
                end
              end
            end
          end
        end
      end
      inherited Panel4: TPanel
        Top = 303
        Width = 1236
        Height = 261
        inherited cxPageControl2: TcxPageControl
          Width = 1234
          Height = 259
          ClientRectBottom = 253
          ClientRectRight = 1228
          inherited cxTabSheet2: TcxTabSheet
            inherited cxGrid1: TcxGrid
              Width = 1225
              Height = 227
              inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
                PopupMenu = PopupMenu3
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
                  SortIndex = 0
                  SortOrder = soAscending
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
                  Properties.ListSource = NightHaltDs
                  Visible = False
                  Width = 87
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn
                  Caption = 'City'
                  DataBinding.FieldName = 'ToCities_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.DropDownWidth = 200
                  Properties.KeyFieldNames = 'Cities_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'City'
                    end>
                  Properties.ListSource = NightHaltDs
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
                  Properties.ReadOnly = True
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
                  Options.Editing = False
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
                  Options.Editing = False
                  Styles.OnGetContentStyle = cxGrid1DBBandedTableView1ErrorNoStylesGetContentStyle
                  Position.BandIndex = 0
                  Position.ColIndex = 22
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableView1ErrorDesc: TcxGridDBBandedColumn
                  Caption = 'Error Desc'
                  DataBinding.FieldName = 'ErrorDesc'
                  Options.Editing = False
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
                  Options.Editing = False
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
    inherited cxTabSheet10: TcxTabSheet
      object Panel16: TPanel
        Left = 0
        Top = 523
        Width = 1236
        Height = 41
        Align = alBottom
        TabOrder = 0
        object cxButton3: TcxButton
          Left = 225
          Top = 8
          Width = 145
          Height = 25
          Caption = 'Recreate Itinerary'
          TabOrder = 0
          OnClick = cxButton3Click
        end
        object cxButton4: TcxButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Utilities'
          TabOrder = 1
          DropDownMenu = PopupMenu4
          Kind = cxbkDropDownButton
        end
        object cxButton5: TcxButton
          Left = 104
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Reports'
          TabOrder = 2
          DropDownMenu = PopupMenu5
          Kind = cxbkDropDownButton
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1236
        Height = 41
        Align = alTop
        TabOrder = 1
      end
      object cxGridQuoLines: TcxGrid
        Left = 0
        Top = 41
        Width = 1236
        Height = 482
        Align = alClient
        TabOrder = 2
        object cxGridDBBandedTableViewQuoLines: TcxGridDBBandedTableView
          PopupMenu = PopupMenu8
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = QuoLinesDs
          DataController.KeyFieldNames = 'QuoLines_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBBandedTableViewQuoLinesCost
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBBandedTableViewQuoLinesServiceTax
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBBandedTableViewQuoLinesTotalCost
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBBandedTableViewQuoLinesQuoCost
            end
            item
              Format = '#,##0'
              Kind = skSum
              Column = cxGridDBBandedTableViewQuoLinesFCurrQuoCost
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentEven = cxStyleBlue
          Styles.ContentOdd = cxStyleGreen
          Bands = <
            item
            end>
          object cxGridDBBandedTableViewQuoLinesQuoLines_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoLines_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesQuotations_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quotations_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesLineNum: TcxGridDBBandedColumn
            Caption = 'Sr No'
            DataBinding.FieldName = 'LineNum'
            SortIndex = 0
            SortOrder = soAscending
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesQuoDate: TcxGridDBBandedColumn
            Caption = 'Date'
            DataBinding.FieldName = 'QuoDate'
            Width = 102
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesDayNo: TcxGridDBBandedColumn
            Caption = 'Day No'
            DataBinding.FieldName = 'DayNo'
            Width = 48
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesQuoTime: TcxGridDBBandedColumn
            Caption = 'Time'
            DataBinding.FieldName = 'QuoTime'
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesCity: TcxGridDBBandedColumn
            DataBinding.FieldName = 'City'
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesTrsType: TcxGridDBBandedColumn
            Caption = 'Type'
            DataBinding.FieldName = 'TrsType'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesCarAgent: TcxGridDBBandedColumn
            Caption = 'Car Agent'
            DataBinding.FieldName = 'CarAgent'
            Width = 102
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesPackage: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Package'
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesCost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesServiceTax: TcxGridDBBandedColumn
            Caption = 'GST'
            DataBinding.FieldName = 'ServiceTax'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesTotalCost: TcxGridDBBandedColumn
            Caption = 'Total Cost'
            DataBinding.FieldName = 'TotalCost'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesQuoCost: TcxGridDBBandedColumn
            Caption = 'Quote'
            DataBinding.FieldName = 'QuoCost'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesFCurrQuoCost: TcxGridDBBandedColumn
            Caption = 'Forex'
            DataBinding.FieldName = 'FCurrQuoCost'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesCurrencyCode: TcxGridDBBandedColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'CurrencyCode'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesMargin: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Margin'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesQuoStringPax: TcxGridDBBandedColumn
            Caption = 'String for Pax'
            DataBinding.FieldName = 'QuoStringPax'
            Width = 211
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesQuoString: TcxGridDBBandedColumn
            Caption = 'String for Costing'
            DataBinding.FieldName = 'QuoString'
            Width = 118
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesMasterMargin: TcxGridDBBandedColumn
            Caption = 'Master Margin'
            DataBinding.FieldName = 'MasterMargin'
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesDriveType: TcxGridDBBandedColumn
            Caption = 'Drive Type'
            DataBinding.FieldName = 'DriveType'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesCar: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Car'
            Width = 41
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesNewCar: TcxGridDBBandedColumn
            Caption = 'New Car'
            DataBinding.FieldName = 'NewCar'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesP2P: TcxGridDBBandedColumn
            DataBinding.FieldName = 'P2P'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesNewDriveLine: TcxGridDBBandedColumn
            Caption = 'New Drive Line'
            DataBinding.FieldName = 'NewDriveLine'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesNumPax: TcxGridDBBandedColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'NumPax'
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesNumSingles: TcxGridDBBandedColumn
            Caption = 'Singles'
            DataBinding.FieldName = 'NumSingles'
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesNumDoubles: TcxGridDBBandedColumn
            Caption = 'Doubles'
            DataBinding.FieldName = 'NumDoubles'
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesTriples: TcxGridDBBandedColumn
            Caption = 'Triples'
            DataBinding.FieldName = 'NumTriples'
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableViewQuoLinesTwins: TcxGridDBBandedColumn
            Caption = 'Twins'
            DataBinding.FieldName = 'NumTwins'
            Width = 351
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
        end
        object cxGridLevelQuoLines: TcxGridLevel
          GridView = cxGridDBBandedTableViewQuoLines
        end
      end
    end
    inherited cxTabSheet11: TcxTabSheet
      inherited Splitter3: TSplitter
        Top = 180
        Width = 1236
      end
      object Panel19: TPanel [1]
        Left = 0
        Top = 523
        Width = 1236
        Height = 41
        Align = alBottom
        TabOrder = 0
        object cxButton1: TcxButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Utilities'
          TabOrder = 0
          DropDownMenu = PopupMenu6
          Kind = cxbkDropDownButton
        end
        object cxButton2: TcxButton
          Left = 104
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Reports'
          TabOrder = 1
          DropDownMenu = PopupMenu7
          Kind = cxbkDropDownButton
        end
        object cxButton8: TcxButton
          Left = 209
          Top = 8
          Width = 160
          Height = 25
          Caption = 'Create Composite Report'
          TabOrder = 2
          OnClick = cxButton8Click
        end
      end
      inherited Panel20: TPanel
        Width = 1236
        Height = 180
        TabOrder = 1
        object cxPageControl4: TcxPageControl
          Left = 1
          Top = 1
          Width = 1234
          Height = 178
          ActivePage = cxTabSheet4
          Align = alClient
          TabOrder = 0
          ClientRectBottom = 172
          ClientRectLeft = 3
          ClientRectRight = 1228
          ClientRectTop = 26
          object cxTabSheet4: TcxTabSheet
            Caption = 'Quotation Info'
            ImageIndex = 0
            object cxLabel1: TcxLabel
              Left = 6
              Top = 2
              Caption = 'Lead Name'
              Transparent = True
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 119
              Top = 1
              DataBinding.DataField = 'PaxInfo'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 688
            end
            object cxLabel3: TcxLabel
              Left = 6
              Top = 23
              Caption = 'Starting Info'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 5
              Top = 65
              Caption = 'Booking Info'
              Transparent = True
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 119
              Top = 22
              DataBinding.DataField = 'StartingInfo'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 688
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 119
              Top = 64
              DataBinding.DataField = 'BookingInfo'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 688
            end
            object cxLabel14: TcxLabel
              Left = 4
              Top = 86
              Caption = 'Emergency Contact'
              Transparent = True
              Visible = False
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 119
              Top = 85
              DataBinding.DataField = 'EmergencyContact'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 5
              Visible = False
              Width = 688
            end
            object cxLabel16: TcxLabel
              Left = 4
              Top = 107
              Caption = 'Company Contact'
              Transparent = True
              Visible = False
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 119
              Top = 106
              DataBinding.DataField = 'CompanyContact'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 6
              Visible = False
              Width = 688
            end
            object cxLabel23: TcxLabel
              Left = 6
              Top = 44
              Caption = 'Ending Info'
              Transparent = True
            end
            object cxDBTextEdit31: TcxDBTextEdit
              Left = 119
              Top = 43
              DataBinding.DataField = 'EndingInfo'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 688
            end
          end
          object cxTabSheet7: TcxTabSheet
            Caption = 'Request Details'
            ImageIndex = 1
            object cxLabel2: TcxLabel
              Left = 6
              Top = 2
              Caption = 'Request From'
              Transparent = True
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 90
              Top = 1
              DataBinding.DataField = 'QuoRequest'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 320
            end
            object cxDBMemo1: TcxDBMemo
              Left = 90
              Top = 24
              DataBinding.DataField = 'QuoRequestDetails'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              Height = 60
              Width = 320
            end
            object cxLabel5: TcxLabel
              Left = 422
              Top = 2
              Caption = 'Request For'
              Transparent = True
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 506
              Top = 1
              DataBinding.DataField = 'QuoFor'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 320
            end
            object cxDBMemo2: TcxDBMemo
              Left = 506
              Top = 24
              DataBinding.DataField = 'QuoForDetails'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 5
              Height = 60
              Width = 320
            end
            object cxButtonUpdate: TcxButton
              Left = 832
              Top = 56
              Width = 57
              Height = 25
              Caption = 'Update'
              TabOrder = 6
              OnClick = cxButtonUpdateClick
            end
          end
          object cxTabSheet8: TcxTabSheet
            Caption = 'Quotation'
            ImageIndex = 2
            object SpeedButton1: TSpeedButton
              Left = 170
              Top = 24
              Width = 23
              Height = 22
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
                73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
                0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
                0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
                0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
                0333337F777777737F333308888888880333337F333333337F33330888888888
                03333373FFFFFFFF733333700000000073333337777777773333}
              NumGlyphs = 2
              OnClick = SpeedButton1Click
            end
            object cxLabel6: TcxLabel
              Left = 6
              Top = 2
              Caption = 'Estimate'
              Transparent = True
            end
            object cxDBTextEdit20: TcxDBTextEdit
              Left = 71
              Top = 1
              DataBinding.DataField = 'QuoEstimate'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 487
            end
            object cxLabel7: TcxLabel
              Left = 6
              Top = 26
              Caption = 'Basic Rate'
              Transparent = True
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 85
              Top = 25
              DataBinding.DataField = 'BasicRate'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 83
            end
            object cxLabel8: TcxLabel
              Left = 308
              Top = 26
              Caption = 'Basic Amt'
              Transparent = True
            end
            object cxBasicAmtTextEdit: TcxDBTextEdit
              Left = 376
              Top = 25
              DataBinding.DataField = 'BasicAmt'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 114
            end
            object cxLabel9: TcxLabel
              Left = 6
              Top = 50
              Caption = 'Serv. Tax %'
              Transparent = True
            end
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 86
              Top = 49
              DataBinding.DataField = 'ServiceTaxPerc'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 81
            end
            object cxLabel10: TcxLabel
              Left = 307
              Top = 50
              Caption = 'Serv. Amt'
              Transparent = True
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 376
              Top = 49
              DataBinding.DataField = 'ServiceTaxAmt'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 5
              Width = 114
            end
            object cxLabel11: TcxLabel
              Left = 663
              Top = 2
              Caption = 'Quoted'
              Transparent = True
            end
            object cxDBTextEdit24: TcxDBTextEdit
              Left = 756
              Top = 1
              DataBinding.DataField = 'QuotationAmt'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 6
              Width = 113
            end
            object cxLabel12: TcxLabel
              Left = 663
              Top = 26
              Caption = 'Advance'
              Transparent = True
            end
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 755
              Top = 25
              DataBinding.DataField = 'AdvanceAmt'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 113
            end
            object cxLabel13: TcxLabel
              Left = 882
              Top = 26
              Caption = 'Adv. Due Date'
              Transparent = True
            end
            object cxDBDateEdit6: TcxDBDateEdit
              Left = 980
              Top = 25
              DataBinding.DataField = 'AdvDueDate'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 8
              Width = 113
            end
            object cxPaxLabel: TcxLabel
              Left = 200
              Top = 26
              Caption = 'cxPaxLabel'
              Transparent = True
            end
            object cxButton6: TcxButton
              Left = 0
              Top = 96
              Width = 161
              Height = 25
              Caption = 'Sync this Quote with Web'
              TabOrder = 19
              OnClick = cxButton6Click
            end
            object cxCurrencyLabel: TcxLabel
              Left = 88
              Top = 73
              Caption = 'cxPaxLabel'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
            end
            object cxLabel15: TcxLabel
              Left = 6
              Top = 74
              Caption = 'Currency'
              Transparent = True
            end
            object cxLabel17: TcxLabel
              Left = 663
              Top = 98
              Caption = 'Balance Due'
              Transparent = True
            end
            object cxDBTextEdit26: TcxDBTextEdit
              Left = 755
              Top = 97
              DataBinding.DataField = 'BalanceAmt'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Properties.ReadOnly = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 9
              Width = 113
            end
            object cxLabel18: TcxLabel
              Left = 882
              Top = 98
              Caption = 'Bal. Due Date'
              Transparent = True
            end
            object cxDBDateEdit8: TcxDBDateEdit
              Left = 980
              Top = 97
              DataBinding.DataField = 'DueDate'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 10
              Width = 113
            end
            object cxLabel19: TcxLabel
              Left = 307
              Top = 74
              Caption = 'Email'
              Transparent = True
            end
            object cxDBTextEdit27: TcxDBTextEdit
              Left = 376
              Top = 73
              DataBinding.DataField = 'Email'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 25
              Width = 274
            end
            object cxLabel20: TcxLabel
              Left = 526
              Top = 50
              Caption = 'Pax'
              Transparent = True
            end
            object cxDBTextEdit28: TcxDBTextEdit
              Left = 568
              Top = 49
              DataBinding.DataField = 'NumPax'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 27
              Width = 41
            end
            object cxButton7: TcxButton
              Left = 880
              Top = 48
              Width = 113
              Height = 25
              Caption = 'Show Payments'
              TabOrder = 28
              OnClick = cxButton7Click
            end
            object cxLabel21: TcxLabel
              Left = 663
              Top = 50
              Caption = 'Paid'
              Transparent = True
            end
            object cxDBTextEdit29: TcxDBTextEdit
              Left = 755
              Top = 49
              DataBinding.DataField = 'RecdAmt'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Properties.ReadOnly = True
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 30
              Width = 113
            end
            object cxLabel22: TcxLabel
              Left = 663
              Top = 74
              Caption = 'Advance Due'
              Transparent = True
            end
            object cxDBTextEdit30: TcxDBTextEdit
              Left = 755
              Top = 73
              DataBinding.DataField = 'AdvDueAmt'
              DataBinding.DataSource = QuoPrintDs
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 32
              Width = 113
            end
          end
        end
      end
      inherited Panel21: TPanel
        Top = 183
        Width = 1236
        Height = 340
        TabOrder = 2
        object Panel22: TPanel
          Left = 1
          Top = 1
          Width = 1234
          Height = 338
          Align = alClient
          TabOrder = 0
          object Splitter4: TSplitter
            Left = 401
            Top = 1
            Width = 8
            Height = 336
          end
          object cxPageControl5: TcxPageControl
            Left = 1
            Top = 1
            Width = 400
            Height = 336
            ActivePage = cxTabSheet6
            Align = alLeft
            TabOrder = 0
            ClientRectBottom = 330
            ClientRectLeft = 3
            ClientRectRight = 394
            ClientRectTop = 26
            object cxTabSheet6: TcxTabSheet
              Caption = 'Basic Itinerary'
              ImageIndex = 0
              object cxGrid3: TcxGrid
                Left = 0
                Top = 0
                Width = 391
                Height = 304
                Align = alClient
                TabOrder = 0
                object cxGridDBBandedTableView2: TcxGridDBBandedTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = ItineraryDs
                  DataController.KeyFieldNames = 'QuoPrintItineraries_id'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.FocusCellOnTab = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.Appending = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  OptionsView.BandHeaders = False
                  Styles.ContentEven = cxStyleBlue
                  Styles.ContentOdd = cxStyleGreen
                  Bands = <
                    item
                    end>
                  object cxGrid1DBBandedTableView1QuoPrintItineraries_id: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'QuoPrintItineraries_id'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGrid1DBBandedTableView1QuoPrint_id: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'QuoPrint_id'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGrid1DBBandedTableView1SrNo: TcxGridDBBandedColumn
                    Caption = 'Sr No'
                    DataBinding.FieldName = 'SrNo'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGrid1DBBandedTableView1DayInfo: TcxGridDBBandedColumn
                    Caption = 'Day Info'
                    DataBinding.FieldName = 'DayInfo'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Width = 278
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object cxGrid1DBBandedTableView1DaySummaryInfo: TcxGridDBBandedColumn
                    Caption = 'Summary'
                    DataBinding.FieldName = 'DaySummaryInfo'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.LineCount = 2
                    Position.RowIndex = 1
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = cxGridDBBandedTableView2
                end
              end
            end
            object cxTabSheet12: TcxTabSheet
              Caption = 'Detailed Itinerary'
              ImageIndex = 2
              object cxGrid4: TcxGrid
                Left = 0
                Top = 0
                Width = 391
                Height = 304
                Align = alClient
                TabOrder = 0
                object cxGridDBBandedTableView3: TcxGridDBBandedTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = DetailItinDs
                  DataController.KeyFieldNames = 'QuoPrintDays_id'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.FocusCellOnTab = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.Appending = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  OptionsView.BandHeaders = False
                  Styles.ContentEven = cxStyleBlue
                  Styles.ContentOdd = cxStyleGreen
                  Bands = <
                    item
                    end>
                  object cxGridDBBandedTableView3QuoPrintDays_id: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'QuoPrintDays_id'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView3QuoPrint_id: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'QuoPrint_id'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView3SrNo: TcxGridDBBandedColumn
                    Caption = 'Sr No'
                    DataBinding.FieldName = 'SrNo'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    SortIndex = 0
                    SortOrder = soAscending
                    Width = 47
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView3DayInfo: TcxGridDBBandedColumn
                    Caption = 'Day Info'
                    DataBinding.FieldName = 'DayInfo'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Width = 311
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView3DaySummaryInfo: TcxGridDBBandedColumn
                    Caption = 'Summary'
                    DataBinding.FieldName = 'DaySummaryInfo'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.LineCount = 2
                    Position.RowIndex = 1
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = cxGridDBBandedTableView3
                end
              end
            end
            object cxTabSheet9: TcxTabSheet
              Caption = 'Inclusions'
              ImageIndex = 1
              object cxGrid5: TcxGrid
                Left = 0
                Top = 0
                Width = 391
                Height = 304
                Align = alClient
                TabOrder = 0
                object cxGridDBBandedTableView4: TcxGridDBBandedTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = InclusionsDs
                  DataController.KeyFieldNames = 'QuoPrintInclusions_id'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.FocusCellOnTab = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.Appending = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  OptionsView.BandHeaders = False
                  Styles.ContentEven = cxStyleBlue
                  Styles.ContentOdd = cxStyleGreen
                  Bands = <
                    item
                    end>
                  object cxGridDBBandedColumn1: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'QuoPrintInclusions_id'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn2: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'QuoPrint_id'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn3: TcxGridDBBandedColumn
                    Caption = 'Order No'
                    DataBinding.FieldName = 'OrderNo'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    SortIndex = 0
                    SortOrder = soAscending
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn4: TcxGridDBBandedColumn
                    Caption = 'Sr No'
                    DataBinding.FieldName = 'SrNo'
                    Options.Filtering = False
                    Options.Sorting = False
                    SortIndex = 1
                    SortOrder = soAscending
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn5: TcxGridDBBandedColumn
                    Caption = 'Type'
                    DataBinding.FieldName = 'ServiceType'
                    PropertiesClassName = 'TcxComboBoxProperties'
                    Properties.DropDownListStyle = lsFixedList
                    Properties.Items.Strings = (
                      'Tickets'
                      'Accommodation'
                      'Services'
                      'Transport')
                    Options.Sorting = False
                    Width = 271
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn6: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'Remarks'
                    Options.Filtering = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.LineCount = 2
                    Position.RowIndex = 1
                  end
                end
                object cxGridLevel4: TcxGridLevel
                  GridView = cxGridDBBandedTableView4
                end
              end
            end
            object cxTabSheet5: TcxTabSheet
              Caption = 'Exclusions'
              ImageIndex = 3
              object cxButton9: TcxButton
                Left = 200
                Top = 8
                Width = 177
                Height = 25
                Caption = 'Exclusions for this quotation'
                TabOrder = 0
                OnClick = cxButton9Click
              end
            end
          end
          object cxPageControl6: TcxPageControl
            Left = 409
            Top = 1
            Width = 824
            Height = 336
            ActivePage = cxTabSheet13
            Align = alClient
            TabOrder = 1
            ClientRectBottom = 330
            ClientRectLeft = 3
            ClientRectRight = 818
            ClientRectTop = 26
            object cxTabSheet13: TcxTabSheet
              Caption = 'Places'
              ImageIndex = 0
              object cxGrid6: TcxGrid
                Left = 0
                Top = 0
                Width = 815
                Height = 304
                Align = alClient
                TabOrder = 0
                object cxGridDBBandedTableView5: TcxGridDBBandedTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = SubDetailDs
                  DataController.KeyFieldNames = 'QuoPrintPlaces_id'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,##0.00'
                      Kind = skSum
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.CellHints = True
                  OptionsBehavior.FocusCellOnTab = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsCustomize.ColumnsQuickCustomization = True
                  OptionsData.Appending = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  OptionsView.BandHeaders = False
                  Styles.ContentEven = cxStyleBlue
                  Styles.ContentOdd = cxStyleGreen
                  Bands = <
                    item
                    end>
                  object cxGridDBBandedTableView1QuoPrintPlaces_id: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'QuoPrintPlaces_id'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView1QuoPrintDays_id: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'QuoPrintDays_id'
                    Visible = False
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView1SrNo: TcxGridDBBandedColumn
                    Caption = 'Sr No'
                    DataBinding.FieldName = 'SrNo'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    SortIndex = 0
                    SortOrder = soAscending
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView1Place: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'Place'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Width = 377
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView1PlaceInfo: TcxGridDBBandedColumn
                    Caption = 'Place Info'
                    DataBinding.FieldName = 'PlaceInfo'
                    PropertiesClassName = 'TcxMemoProperties'
                    Options.Filtering = False
                    Options.Grouping = False
                    Options.Sorting = False
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.LineCount = 2
                    Position.RowIndex = 1
                  end
                end
                object cxGridLevel5: TcxGridLevel
                  GridView = cxGridDBBandedTableView5
                end
              end
            end
          end
        end
      end
    end
    inherited cxTabSheet14: TcxTabSheet
      object Panel23: TPanel
        Left = 0
        Top = 0
        Width = 1236
        Height = 41
        Align = alTop
        TabOrder = 0
      end
      object Panel18: TPanel
        Left = 0
        Top = 523
        Width = 1236
        Height = 41
        Align = alBottom
        TabOrder = 1
        object cxButtonUpdateAgents: TcxButton
          Left = 9
          Top = 8
          Width = 145
          Height = 25
          Caption = 'Update Agents'
          TabOrder = 0
          OnClick = cxButtonUpdateAgentsClick
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 41
        Width = 1236
        Height = 482
        Align = alClient
        TabOrder = 2
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = AgentListDs
          DataController.KeyFieldNames = 'Quo_AgentList_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentEven = cxStyleBlue
          Styles.ContentOdd = cxStyleGreen
          Bands = <
            item
            end>
          object cxGridDBBandedTableView1Quo_AgentList_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quo_AgentList_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Quotations_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quotations_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Selected: TcxGridDBBandedColumn
            Caption = 'Display'
            DataBinding.FieldName = 'Selected'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Addressbook_id: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'Addressbook_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                FieldName = 'Organisation'
              end>
            Properties.ListSource = AddressbookDs
            Width = 298
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Alt_Addressbook_id: TcxGridDBBandedColumn
            Caption = 'Alternate Agent'
            DataBinding.FieldName = 'Alt_Addressbook_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                FieldName = 'Organisation'
              end>
            Properties.ListSource = AddressbookDs
            Width = 361
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBBandedTableView1
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
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  inherited MasterDs: TDataSource
    OnStateChange = MasterDsStateChange
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
  inherited DetailDs: TDataSource
    OnStateChange = DetailDsStateChange
  end
  object HotelTypesSds: TSQLDataSet [11]
    CommandText = 
      'SELECT h.HotelTypes_id,h.HotelType '#13#10'  FROM HotelTypes h'#13#10'      ' +
      ' INNER JOIN Categories c ON h.Categories_id = c.Categories_id'#13#10' ' +
      'WHERE InclHotelReport = 1'#13#10' ORDER BY OrderHotelReport'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 776
    Top = 178
  end
  object HotelTypesCds: TClientDataSet [12]
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
  end
  object HotelTypesDs: TDataSource [13]
    DataSet = HotelTypesCds
    Left = 836
    Top = 178
  end
  object MealPlansSds: TSQLDataSet [14]
    CommandText = 'SELECT * FROM MealPlans ORDER BY [Plan]'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 800
    Top = 232
  end
  object MealPlansDsp: TDataSetProvider [15]
    DataSet = MealPlansSds
    Left = 816
    Top = 232
  end
  object MealPlansDs: TDataSource [16]
    DataSet = MealPlansCds
    Left = 848
    Top = 232
  end
  object MealPlansCds: TClientDataSet [17]
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
  object VehicleSds: TSQLDataSet [18]
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
  object VehicleDsp: TDataSetProvider [19]
    DataSet = VehicleSds
    Left = 144
    Top = 296
  end
  object VehicleCds: TClientDataSet [20]
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
  object VehicleDs: TDataSource [21]
    DataSet = VehicleCds
    Left = 168
    Top = 296
  end
  object UsersSds: TSQLDataSet [22]
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 824
    Top = 298
  end
  object UsersDsp: TDataSetProvider [23]
    DataSet = UsersSds
    Left = 838
    Top = 299
  end
  object UsersCds: TClientDataSet [24]
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
  object UsersDs: TDataSource [25]
    DataSet = UsersCds
    Left = 868
    Top = 298
  end
  object PrinAgentSds: TSQLDataSet [26]
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1080
    Top = 88
  end
  object PrinAgentDsp: TDataSetProvider [27]
    DataSet = PrinAgentSds
    Left = 1096
    Top = 88
  end
  object PrinAgentCds: TClientDataSet [28]
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
  object PrinAgentDS: TDataSource [29]
    DataSet = PrinAgentCds
    Left = 1128
    Top = 88
  end
  object ConsultantSds: TSQLDataSet [30]
    CommandText = 
      'SELECT * FROM Consultants '#13#10'WHERE Addressbook_id = :Addressbook_' +
      'id'#13#10'ORDER BY Consultant'
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
  object ConsultantDsp: TDataSetProvider [31]
    DataSet = ConsultantSds
    Left = 1096
    Top = 112
  end
  object ConsultantCds: TClientDataSet [32]
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = PrinAgentDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ConsultantDsp'
    Left = 1112
    Top = 112
    object ConsultantCdsConsultants_id: TIntegerField
      FieldName = 'Consultants_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ConsultantCdsConsultant: TStringField
      FieldName = 'Consultant'
      Size = 60
    end
    object ConsultantCdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object ConsultantCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object ConsultantCdsWriteUp: TMemoField
      FieldName = 'WriteUp'
      BlobType = ftMemo
    end
    object ConsultantCdsPwd: TStringField
      FieldName = 'Pwd'
      Size = 30
    end
    object ConsultantCdsactive: TBooleanField
      FieldName = 'active'
    end
  end
  object ConsultantDs: TDataSource [33]
    DataSet = ConsultantCds
    Left = 1120
    Top = 112
  end
  object CountriesSds: TSQLDataSet [34]
    CommandText = 'SELECT Countries_id, Country'#13#10'FROM Countries c'#13#10'ORDER BY Country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1056
    Top = 152
  end
  object CountriesDsp: TDataSetProvider [35]
    DataSet = CountriesSds
    Left = 1072
    Top = 152
  end
  object CountriesCds: TClientDataSet [36]
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
  object CountriesDs: TDataSource [37]
    DataSet = CountriesCds
    Left = 1112
    Top = 152
  end
  object CurrencySds: TSQLDataSet [38]
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1056
    Top = 186
  end
  object CurrencyDsp: TDataSetProvider [39]
    DataSet = CurrencySds
    Left = 1080
    Top = 186
  end
  object CurrencyCds: TClientDataSet [40]
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
  object CurrencyDs: TDataSource [41]
    DataSet = CurrencyCds
    Left = 1112
    Top = 186
  end
  object CitiesSds: TSQLDataSet [42]
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE NightHalt = 1'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 442
  end
  object CitiesDsp: TDataSetProvider [43]
    DataSet = CitiesSds
    Left = 94
    Top = 443
  end
  object CitiesCds: TClientDataSet [44]
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
  object CitiesDs: TDataSource [45]
    DataSet = CitiesCds
    Left = 124
    Top = 442
  end
  object AccSds: TSQLDataSet [46]
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
  object AccDsp: TDataSetProvider [47]
    DataSet = AccSds
    Left = 222
    Top = 443
  end
  object AccCds: TClientDataSet [48]
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
  object AccDs: TDataSource [49]
    DataSet = AccCds
    Left = 252
    Top = 442
  end
  object ModQuoSds: TSQLDataSet [50]
    CommandText = 
      'SELECT Quotations_id, QuotationRef, PaxName, QuotationDate'#13#10'  FR' +
      'OM Quotations'#13#10' WHERE Trial = 3'#13#10'AND DATEDIFF(yy, QuotationDate,' +
      ' :FromDate) < :x_Years'#13#10' ORDER BY PaxName'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'FromDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'x_Years'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 440
  end
  object ModQuoDsp: TDataSetProvider [51]
    DataSet = ModQuoSds
    Left = 672
    Top = 440
  end
  object ModQuoCds: TClientDataSet [52]
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
  object ModQuoDs: TDataSource [53]
    DataSet = ModQuoCds
    Left = 712
    Top = 440
  end
  object PopupMenu1: TPopupMenu [54]
    Left = 39
    Top = 629
    object DsiplayTravel1: TMenuItem
      Caption = 'DisplayTravel'
      OnClick = DsiplayTravel1Click
    end
    object DisplayItinerary2: TMenuItem
      Caption = 'Display Itinerary'
      Visible = False
      OnClick = DisplayItinerary2Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object PostProcess1: TMenuItem
      Caption = 'Post Process'
      object mnuCreateModule: TMenuItem
        Caption = 'Create Module'
        OnClick = mnuCreateModuleClick
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
      object N6: TMenuItem
        Caption = '-'
      end
      object ChangeModuleMasterVoucherDatestocurrentQuotation1: TMenuItem
        Caption = 'Change Module/Master/Voucher Dates to current Quotation'
        OnClick = ChangeModuleMasterVoucherDatestocurrentQuotation1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object ChangePaxinbetweenTour1: TMenuItem
        Caption = 'Change Pax in between Tour'
        OnClick = ChangePaxinbetweenTour1Click
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
      object mnuRiksjaAll: TMenuItem
        Caption = 'Make copy of all Riksja Modules'
        OnClick = mnuRiksjaAllClick
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
      object Packages1: TMenuItem
        Caption = 'Packages'
        OnClick = Packages1Click
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
    object N3: TMenuItem
      Caption = '-'
    end
    object RestrictModuleListTo1: TMenuItem
      Caption = 'Restrict Module List To'
      object N1Year1: TMenuItem
        Caption = '1 Year'
        OnClick = N1Year1Click
      end
      object N2Years1: TMenuItem
        Caption = '2 Years'
        OnClick = N2Years1Click
      end
      object Unsrestricted1: TMenuItem
        Caption = 'Unsrestricted'
        OnClick = Unsrestricted1Click
      end
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object sp1: TMenuItem
      Caption = 'Tsp'
      OnClick = sp1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object OpenOldPresto1: TMenuItem
      Caption = 'Open Old Presto'
      OnClick = OpenOldPresto1Click
    end
  end
  object scExcelExport: TscExcelExport [55]
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
    Left = 408
    Top = 145
  end
  object PopupMenu2: TPopupMenu [56]
    Left = 367
    Top = 597
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
    object N10: TMenuItem
      Caption = '-'
    end
    object FutureBookings1: TMenuItem
      Caption = 'Future Bookings'
      OnClick = FutureBookings1Click
    end
  end
  object CxStyleRepository1: TcxStyleRepository [57]
    Left = 664
    Top = 16
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
      AssignedValues = [svColor, svFont]
      Color = 12320767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8947967
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleGrey: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14079702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object HotelTypesDsp: TDataSetProvider [58]
    DataSet = HotelTypesSds
    Left = 798
    Top = 179
  end
  object AllCitiesSds: TSQLDataSet [59]
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'ORDER BY c.City'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 442
  end
  object AllCitiesDsp: TDataSetProvider [60]
    DataSet = AllCitiesSds
    Left = 342
    Top = 443
  end
  object AllCitiesCds: TClientDataSet [61]
    Aggregates = <>
    Params = <>
    ProviderName = 'AllCitiesDsp'
    Left = 360
    Top = 442
    object IntegerField2: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField2: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object AllCitiesDs: TDataSource [62]
    DataSet = AllCitiesCds
    Left = 372
    Top = 442
  end
  object NightHaltSds: TSQLDataSet [63]
    CommandText = 
      'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE EXISTS (SELECT ' +
      'td.Cities_id FROM TrainDetails td'#13#10'WHERE td.Cities_id IS NOT NUL' +
      'L'#13#10'AND td.Cities_id = c.Cities_id)'#13#10'OR (COALESCE(c.NightHalt,0) ' +
      '= 1)'#13#10'ORDER BY c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 440
    Top = 434
  end
  object NightHaltDsp: TDataSetProvider [64]
    DataSet = NightHaltSds
    Left = 454
    Top = 435
  end
  object NightHaltCds: TClientDataSet [65]
    Aggregates = <>
    Params = <>
    ProviderName = 'NightHaltDsp'
    Left = 472
    Top = 434
    object IntegerField1: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField1: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object NightHaltDs: TDataSource [66]
    DataSet = NightHaltCds
    Left = 484
    Top = 434
  end
  object PopupMenu3: TPopupMenu [67]
    Left = 304
    Top = 473
    object MenuItem1: TMenuItem
      Caption = 'Edit Day'
      OnClick = MenuItem1Click
    end
  end
  object PopupMenu4: TPopupMenu [68]
    Left = 48
    Top = 560
    object DisplayCost1: TMenuItem
      Caption = 'Compute Cost'
      OnClick = DisplayCost1Click
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object DisplayTravel1: TMenuItem
      Caption = 'Display Travel'
      OnClick = DisplayTravel1Click
    end
    object DriversItinerary1: TMenuItem
      Caption = 'Driver'#39's Itinerary'
      OnClick = DriversItinerary1Click
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MarginMaster1: TMenuItem
      Caption = 'Margin Master'
      OnClick = MarginMaster1Click
    end
    object SetMargins1: TMenuItem
      Caption = 'Set Margins'
      Visible = False
      OnClick = SetMargins1Click
    end
    object SetMarginforthislineonly1: TMenuItem
      Caption = 'Set Margin for this line only'
      OnClick = SetMarginforthislineonly1Click
    end
  end
  object SaveDialog: TSaveDialog [69]
    Left = 451
    Top = 145
  end
  object dxComponentPrinter: TdxComponentPrinter [70]
    CurrentLink = dxComponentPrinterLink1
    Version = 0
    Left = 484
    Top = 145
    object dxComponentPrinterLink1: TdxGridReportLink
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      ReportDocument.CreationDate = 39255.608278530090000000
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      BuiltInReportLink = True
    end
  end
  object PopupMenu5: TPopupMenu [71]
    Left = 152
    Top = 568
    object MenuItem18: TMenuItem
      Caption = 'Itinerary'
      OnClick = MenuItem18Click
    end
    object MenuItem19: TMenuItem
      Caption = 'Inclusions'
      OnClick = MenuItem19Click
    end
    object MenuItem20: TMenuItem
      Caption = 'Detailed Itinerary'
      Visible = False
      OnClick = MenuItem20Click
    end
    object MenuItem21: TMenuItem
      Caption = 'Welcome Letter'
      OnClick = MenuItem21Click
    end
    object MenuItem22: TMenuItem
      Caption = 'Detailed Itinerary'
      OnClick = MenuItem22Click
    end
    object MenuItem24: TMenuItem
      Caption = '-'
    end
    object MenuItem25: TMenuItem
      Caption = 'Hotels && Agents Listing'
      OnClick = MenuItem25Click
    end
    object MenuItem26: TMenuItem
      Caption = 'Hotels Listing'
      OnClick = MenuItem26Click
    end
    object MenuItem27: TMenuItem
      Caption = 'Agents Listing'
      OnClick = MenuItem27Click
    end
    object MenuItem28: TMenuItem
      Caption = '-'
    end
    object MenuItem15: TMenuItem
      Caption = 'Save As Excel'
      OnClick = MenuItem15Click
    end
    object MenuItem16: TMenuItem
      Caption = 'Print'
      OnClick = MenuItem16Click
    end
  end
  object AddressbookSds: TSQLDataSet [72]
    CommandText = 
      'SELECT Addressbook_id, Organisation + '#39','#39' + City AS Organisation' +
      ' '#13#10'FROM dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 600
    Top = 152
  end
  object AddressbookDsp: TDataSetProvider [73]
    DataSet = AddressbookSds
    Left = 624
    Top = 152
  end
  object AddressbookCds: TClientDataSet [74]
    Aggregates = <>
    Params = <>
    ProviderName = 'AddressbookDsp'
    Left = 640
    Top = 152
    object AddressbookCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AddressbookCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object AddressbookDs: TDataSource [75]
    DataSet = AddressbookCds
    Left = 656
    Top = 152
  end
  inherited DetailItinSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoPrintDays'#13#10'WHERE QuoPrint_id = :QuoPrint_id'#13#10
    DataSource = QuoPrintDs
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoPrint_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 808
    Top = 8
  end
  inherited DetailItinDsp: TDataSetProvider
    Left = 830
    Top = 8
  end
  inherited DetailItinCds: TClientDataSet
    IndexFieldNames = 'QuoPrint_id'
    MasterFields = 'QuoPrint_id'
    MasterSource = QuoPrintDs
    PacketRecords = 0
    Left = 847
    Top = 8
    object DetailItinCdsQuoPrintDays_id: TIntegerField
      FieldName = 'QuoPrintDays_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DetailItinCdsQuoPrint_id: TIntegerField
      FieldName = 'QuoPrint_id'
    end
    object DetailItinCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object DetailItinCdsDayInfo: TStringField
      FieldName = 'DayInfo'
      Size = 100
    end
    object DetailItinCdsDaySummaryInfo: TMemoField
      FieldName = 'DaySummaryInfo'
      BlobType = ftMemo
    end
  end
  inherited DetailItinDs: TDataSource
    OnStateChange = DetailItinDsStateChange
    Left = 861
    Top = 8
  end
  inherited ItinerarySds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoPrintItineraries'#13#10'WHERE QuoPrint_id = :QuoPrint' +
      '_id'#13#10
    DataSource = QuoPrintDs
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoPrint_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 904
    Top = 8
  end
  inherited ItineraryDsp: TDataSetProvider
    Left = 918
    Top = 8
  end
  inherited ItineraryCds: TClientDataSet
    IndexFieldNames = 'QuoPrint_id'
    MasterFields = 'QuoPrint_id'
    MasterSource = QuoPrintDs
    PacketRecords = 0
    Left = 935
    Top = 8
    object ItineraryCdsQuoPrintItineraries_id: TIntegerField
      FieldName = 'QuoPrintItineraries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ItineraryCdsQuoPrint_id: TIntegerField
      FieldName = 'QuoPrint_id'
    end
    object ItineraryCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object ItineraryCdsDayInfo: TStringField
      FieldName = 'DayInfo'
      Size = 100
    end
    object ItineraryCdsDaySummaryInfo: TMemoField
      FieldName = 'DaySummaryInfo'
      BlobType = ftMemo
    end
  end
  inherited ItineraryDs: TDataSource
    OnStateChange = ItineraryDsStateChange
    Left = 949
    Top = 8
  end
  inherited InclusionsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoPrintInclusions'#13#10'WHERE QuoPrint_id = :QuoPrint_' +
      'id'#13#10
    DataSource = QuoPrintDs
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoPrint_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 992
    Top = 8
  end
  inherited InclusionsDsp: TDataSetProvider
    Left = 1006
    Top = 8
  end
  inherited InclusionsCds: TClientDataSet
    IndexFieldNames = 'QuoPrint_id'
    MasterFields = 'QuoPrint_id'
    MasterSource = QuoPrintDs
    PacketRecords = 0
    Left = 1023
    Top = 8
    object InclusionsCdsQuoPrintInclusions_id: TIntegerField
      FieldName = 'QuoPrintInclusions_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object InclusionsCdsQuoPrint_id: TIntegerField
      FieldName = 'QuoPrint_id'
    end
    object InclusionsCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object InclusionsCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object InclusionsCdsServiceType: TStringField
      FieldName = 'ServiceType'
    end
    object InclusionsCdsRemarks: TMemoField
      FieldName = 'Remarks'
      BlobType = ftMemo
    end
  end
  inherited InclusionsDs: TDataSource
    OnStateChange = InclusionsDsStateChange
    Left = 1037
    Top = 8
  end
  inherited SubDetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoPrintPlaces'#13#10'WHERE QuoPrintDays_id= :QuoPrintDa' +
      'ys_id'#13#10
    DataSource = DetailItinDs
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoPrintDays_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 1080
    Top = 8
  end
  inherited SubDetailDsp: TDataSetProvider
    Left = 1094
    Top = 8
  end
  inherited SubDetailCds: TClientDataSet
    IndexFieldNames = 'QuoPrintDays_id'
    MasterFields = 'QuoPrintDays_id'
    MasterSource = DetailItinDs
    PacketRecords = 0
    Left = 1111
    Top = 8
    object SubDetailCdsQuoPrintPlaces_id: TIntegerField
      FieldName = 'QuoPrintPlaces_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SubDetailCdsQuoPrintDays_id: TIntegerField
      FieldName = 'QuoPrintDays_id'
    end
    object SubDetailCdsSrNo: TIntegerField
      FieldName = 'SrNo'
    end
    object SubDetailCdsPlace: TStringField
      FieldName = 'Place'
      Size = 100
    end
    object SubDetailCdsPlaceInfo: TMemoField
      FieldName = 'PlaceInfo'
      BlobType = ftMemo
    end
  end
  inherited SubDetailDs: TDataSource
    OnStateChange = SubDetailDsStateChange
    Left = 1125
    Top = 8
  end
  inherited QuoPrintSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoPrint'#13#10'WHERE Quotations_id = :Quotations_id'#13#10
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited QuoPrintDsp: TDataSetProvider
    Left = 734
  end
  inherited QuoPrintCds: TClientDataSet
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDs
    PacketRecords = 0
    OnCalcFields = QuoPrintCdsCalcFields
    Left = 751
    object QuoPrintCdsQuoPrint_id: TIntegerField
      FieldName = 'QuoPrint_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QuoPrintCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object QuoPrintCdsPaxInfo: TStringField
      FieldName = 'PaxInfo'
      Size = 100
    end
    object QuoPrintCdsStartingInfo: TStringField
      FieldName = 'StartingInfo'
      Size = 100
    end
    object QuoPrintCdsBookingInfo: TStringField
      FieldName = 'BookingInfo'
      Size = 100
    end
    object QuoPrintCdsQuoRequest: TStringField
      FieldName = 'QuoRequest'
      Size = 100
    end
    object QuoPrintCdsQuoRequestDetails: TMemoField
      FieldName = 'QuoRequestDetails'
      BlobType = ftMemo
    end
    object QuoPrintCdsQuoFor: TStringField
      FieldName = 'QuoFor'
      Size = 100
    end
    object QuoPrintCdsQuoForDetails: TMemoField
      FieldName = 'QuoForDetails'
      BlobType = ftMemo
    end
    object QuoPrintCdsQuoEstimate: TStringField
      FieldName = 'QuoEstimate'
      Size = 100
    end
    object QuoPrintCdsBasicRate: TFMTBCDField
      FieldName = 'BasicRate'
      Precision = 18
      Size = 4
    end
    object QuoPrintCdsBasicAmt: TFMTBCDField
      FieldName = 'BasicAmt'
      Precision = 18
      Size = 4
    end
    object QuoPrintCdsServiceTaxPerc: TFMTBCDField
      FieldName = 'ServiceTaxPerc'
      Precision = 18
      Size = 4
    end
    object QuoPrintCdsServiceTaxAmt: TFMTBCDField
      FieldName = 'ServiceTaxAmt'
      Precision = 18
      Size = 4
    end
    object QuoPrintCdsQuotationAmt: TFMTBCDField
      FieldName = 'QuotationAmt'
      Precision = 18
      Size = 4
    end
    object QuoPrintCdsAdvanceAmt: TFMTBCDField
      FieldName = 'AdvanceAmt'
      Precision = 18
      Size = 4
    end
    object QuoPrintCdsDueDate: TSQLTimeStampField
      FieldName = 'DueDate'
    end
    object QuoPrintCdsRecdAmt: TFMTBCDField
      FieldName = 'RecdAmt'
      Precision = 18
      Size = 4
    end
    object QuoPrintCdsEmergencyContact: TStringField
      FieldName = 'EmergencyContact'
      Size = 150
    end
    object QuoPrintCdsCompanyContact: TStringField
      FieldName = 'CompanyContact'
      Size = 150
    end
    object QuoPrintCdsAdvDueDate: TSQLTimeStampField
      FieldName = 'AdvDueDate'
    end
    object QuoPrintCdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object QuoPrintCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object QuoPrintCdsBalanceAmt: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BalanceAmt'
      Calculated = True
    end
    object QuoPrintCdsAdvDueAmt: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AdvDueAmt'
      Calculated = True
    end
    object QuoPrintCdsEndingInfo: TStringField
      FieldName = 'EndingInfo'
      Size = 100
    end
  end
  inherited QuoPrintDs: TDataSource
    OnStateChange = QuoPrintDsStateChange
    Left = 765
  end
  inherited QuoLinesSds: TSQLDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited QuoLinesCds: TClientDataSet
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDs
    PacketRecords = 0
    object QuoLinesCdsQuoLines_id: TIntegerField
      FieldName = 'QuoLines_id'
    end
    object QuoLinesCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object QuoLinesCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object QuoLinesCdsQuoDate: TSQLTimeStampField
      FieldName = 'QuoDate'
    end
    object QuoLinesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object QuoLinesCdsTrsType: TStringField
      FieldName = 'TrsType'
      Size = 6
    end
    object QuoLinesCdsQuoString: TStringField
      FieldName = 'QuoString'
      Size = 254
    end
    object QuoLinesCdsCar: TStringField
      FieldName = 'Car'
      Size = 3
    end
    object QuoLinesCdsCost: TFloatField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsQuoTime: TSQLTimeStampField
      FieldName = 'QuoTime'
      DisplayFormat = 'HH:mm'
    end
    object QuoLinesCdsQuoStringPax: TStringField
      FieldName = 'QuoStringPax'
      Size = 254
    end
    object QuoLinesCdsNewCar: TIntegerField
      FieldName = 'NewCar'
    end
    object QuoLinesCdsNewDriveLine: TIntegerField
      FieldName = 'NewDriveLine'
    end
    object QuoLinesCdsQuoCost: TFloatField
      FieldName = 'QuoCost'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsServiceTax: TFloatField
      FieldName = 'ServiceTax'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsP2P: TIntegerField
      FieldName = 'P2P'
    end
    object QuoLinesCdsMargin: TFloatField
      FieldName = 'Margin'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsMasterMargin: TFloatField
      FieldName = 'MasterMargin'
    end
    object QuoLinesCdsDriveType: TStringField
      FieldName = 'DriveType'
      Size = 50
    end
    object QuoLinesCdsCarAgent: TStringField
      FieldName = 'CarAgent'
      Size = 100
    end
    object QuoLinesCdsCarMode: TIntegerField
      FieldName = 'CarMode'
    end
    object QuoLinesCdsDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object QuoLinesCdsExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 18
      Size = 4
    end
    object QuoLinesCdsFCurrQuoCost: TFloatField
      FieldName = 'FCurrQuoCost'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      Size = 10
    end
    object QuoLinesCdsTotalCost: TFloatField
      FieldName = 'TotalCost'
      DisplayFormat = '#,##0.00'
    end
    object QuoLinesCdsNumPax: TIntegerField
      FieldName = 'NumPax'
    end
    object QuoLinesCdsNumSingles: TIntegerField
      FieldName = 'NumSingles'
    end
    object QuoLinesCdsNumDoubles: TIntegerField
      FieldName = 'NumDoubles'
    end
    object QuoLinesCdsNumTriples: TIntegerField
      FieldName = 'NumTriples'
    end
    object QuoLinesCdsNumTwins: TIntegerField
      FieldName = 'NumTwins'
    end
    object QuoLinesCdsPackage: TStringField
      FieldName = 'Package'
      Size = 50
    end
    object QuoLinesCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object QuoLinesCdsQuoTrsType: TIntegerField
      FieldName = 'QuoTrsType'
    end
  end
  object PopupMenu6: TPopupMenu [100]
    Left = 104
    Top = 584
    object SendEmail1: TMenuItem
      Caption = 'Send Email (Proposal + Quotation)'
      OnClick = SendEmail1Click
    end
    object SendEmailHotelsDetailedItin1: TMenuItem
      Caption = 'Send Email (Hotels + Detailed Itin)'
      OnClick = SendEmailHotelsDetailedItin1Click
    end
    object SendEmailAllattachments1: TMenuItem
      Caption = 'Send Email (All attachments)'
      OnClick = SendEmailAllattachments1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Delete3: TMenuItem
      Caption = 'Delete'
      object Delete1: TMenuItem
        Caption = 'Delete Composite Report'
        OnClick = Delete1Click
      end
    end
    object MenuItem6: TMenuItem
      Caption = '-'
    end
    object Exclusions1: TMenuItem
      Caption = 'Exclusions Master'
      Visible = False
      OnClick = Exclusions1Click
    end
    object Exclusions2: TMenuItem
      Caption = 'Exclusions for this Quotation'
      Visible = False
      OnClick = Exclusions2Click
    end
  end
  object PopupMenu7: TPopupMenu [101]
    Left = 200
    Top = 584
    object MenuItem7: TMenuItem
      Caption = 'Print Itinerary'
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Print Inclusions'
      OnClick = MenuItem8Click
    end
    object MenuItem9: TMenuItem
      Caption = 'Print Detailed Itinerary'
      OnClick = MenuItem9Click
    end
    object MenuItem10: TMenuItem
      Caption = 'Print Detailed Itinerary (with Images)'
      OnClick = MenuItem10Click
    end
    object MenuItem11: TMenuItem
      Caption = '-'
    end
    object MenuItem12: TMenuItem
      Caption = 'Print Composite Report'
      OnClick = MenuItem12Click
    end
    object MenuItem13: TMenuItem
      Caption = 'Print Composite Report (Riksja)'
      OnClick = MenuItem13Click
    end
    object MenuItem17: TMenuItem
      Caption = 'Print Hotel Listing with Images'
      OnClick = MenuItem17Click
    end
    object MenuItem29: TMenuItem
      Caption = 'Print Hotel Listing with Images (Compressed)'
      OnClick = MenuItem29Click
    end
    object MenuItem30: TMenuItem
      Caption = '-'
    end
    object MenuItem31: TMenuItem
      Caption = 'Print Quotation'
      Visible = False
      OnClick = MenuItem31Click
    end
    object MenuItem32: TMenuItem
      Caption = 'Save Quotation As Excel'
      object MenuItem33: TMenuItem
        Caption = 'Service Tax per Invoice Format'
        OnClick = MenuItem33Click
      end
      object MenuItem34: TMenuItem
        Caption = 'Service Tax per Item Format'
        OnClick = MenuItem34Click
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object MenuItem14: TMenuItem
      Caption = 'Write Web Text File'
      OnClick = MenuItem14Click
    end
  end
  object QRCompositeReport1: TQRCompositeReport [102]
    OnAddReports = QRCompositeReport1AddReports
    Options = []
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = Letter
    Left = 464
    Top = 328
  end
  inherited AgentListCds: TClientDataSet
    object AgentListCdsQuo_AgentList_id: TIntegerField
      FieldName = 'Quo_AgentList_id'
    end
    object AgentListCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object AgentListCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentListCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
    object AgentListCdsAlt_Addressbook_id: TIntegerField
      FieldName = 'Alt_Addressbook_id'
    end
  end
  inherited AgentListDs: TDataSource
    OnStateChange = AgentListDsStateChange
  end
  object PopupMenu8: TPopupMenu
    Left = 283
    Top = 171
    object DisplayCostBreakup2: TMenuItem
      Caption = 'Display Cost Breakup'
      OnClick = DisplayCostBreakup2Click
    end
    object DisplayMarginBreakupforAccommodation2: TMenuItem
      Caption = 'Display Margin Breakup for Accommodation'
      Visible = False
      OnClick = DisplayMarginBreakupforAccommodation2Click
    end
  end
end
