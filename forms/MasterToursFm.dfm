inherited MasterToursForm: TMasterToursForm
  Left = 218
  Top = 28
  Caption = ''
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter2: TSplitter
    Top = 133
  end
  inherited Panel1: TPanel
    Height = 133
    inherited cxActiveCkb: TcxCheckBox
      Properties.OnEditValueChanged = cxActiveCkbPropertiesEditValueChanged
    end
    inherited cxFromDateEdit: TcxDateEdit
      Properties.OnEditValueChanged = cxFromDateEditPropertiesEditValueChanged
    end
    inherited cxToDateEdit: TcxDateEdit
      Properties.OnEditValueChanged = cxToDateEditPropertiesEditValueChanged
    end
    inherited cxTourNameTextEdit: TcxTextEdit
      Properties.OnEditValueChanged = cxTourNameTextEditPropertiesEditValueChanged
      OnKeyPress = cxTourNameTextEditKeyPress
    end
    inherited cxTourCodeTextEdit: TcxTextEdit
      Properties.OnEditValueChanged = cxTourCodeTextEditPropertiesEditValueChanged
      OnKeyPress = cxTourCodeTextEditKeyPress
    end
    inherited cxGrid3: TcxGrid
      Width = 184
      Height = 104
      inherited cxGrid3DBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'MasterFitAgents_id'
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid3DBTableView1MasterFitAgents_id: TcxGridDBColumn
          DataBinding.FieldName = 'MasterFitAgents_id'
          Visible = False
          Options.Editing = False
        end
        object cxGrid3DBTableView1Masters_id: TcxGridDBColumn
          DataBinding.FieldName = 'Masters_id'
          Visible = False
          Options.Editing = False
        end
        object cxGrid3DBTableView1FitAgents_id: TcxGridDBColumn
          Caption = 'FIT Agent'
          DataBinding.FieldName = 'FitAgents_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'FitAgents_id'
          Properties.ListColumns = <
            item
              FieldName = 'FitAgent'
            end>
          Properties.ListSource = FitAgentQryDs
          Width = 150
        end
      end
    end
    inherited cxGrid4: TcxGrid
      Width = 242
      Height = 103
      inherited cxGridDBTableView2: TcxGridDBTableView
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView2tourcalendar_id: TcxGridDBColumn
          DataBinding.FieldName = 'tourcalendar_id'
          Visible = False
          Options.Editing = False
          Width = 120
        end
        object cxGridDBTableView2tourcodes_id: TcxGridDBColumn
          Caption = 'Tour Code'
          DataBinding.FieldName = 'tourcodes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'TourCodes_id'
          Properties.ListColumns = <
            item
              FieldName = 'TourCode'
            end>
          Properties.ListSource = TourCodeQryDs
          Width = 123
        end
        object cxGridDBTableView2daysoffset: TcxGridDBColumn
          Caption = 'Offset'
          DataBinding.FieldName = 'daysoffset'
          Width = 88
        end
        object cxGridDBTableView2masters_id: TcxGridDBColumn
          DataBinding.FieldName = 'masters_id'
          Visible = False
          Options.Editing = False
        end
      end
    end
    inherited cxTmRB: TcxRadioButton
      OnClick = cxTmRBClick
    end
    inherited cxFitRB: TcxRadioButton
      OnClick = cxFitRBClick
    end
    inherited cxGroupRB: TcxRadioButton
      OnClick = cxGroupRBClick
    end
  end
  inherited Panel2: TPanel
    inherited cxButtonUtilities: TcxButton
      Visible = True
      DropDownMenu = PopupMenu1
    end
  end
  inherited Panel5: TPanel
    Top = 136
    Height = 476
    inherited cxPageControl1: TcxPageControl
      Height = 474
      ActivePage = cxTabSheet2
      ClientRectBottom = 468
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Height = 442
          inherited cxGrid1DBTableView1: TcxGridDBTableView
            DataController.KeyFieldNames = 'Masters_id'
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1Masters_id: TcxGridDBColumn
              DataBinding.FieldName = 'Masters_id'
              Visible = False
              Options.Editing = False
            end
            object cxGrid1DBTableView1mastercode: TcxGridDBColumn
              Caption = 'Code'
              DataBinding.FieldName = 'mastercode'
              SortIndex = 0
              SortOrder = soAscending
              Width = 72
            end
            object cxGrid1DBTableView1MasterName: TcxGridDBColumn
              Caption = 'Name'
              DataBinding.FieldName = 'MasterName'
              Width = 193
            end
            object cxGrid1DBTableView1Fit: TcxGridDBColumn
              Caption = 'FIT'
              DataBinding.FieldName = 'Fit'
              Visible = False
            end
            object cxGrid1DBTableView1tailormade: TcxGridDBColumn
              Caption = 'TM'
              DataBinding.FieldName = 'tailormade'
              Visible = False
            end
            object cxGrid1DBTableView1active: TcxGridDBColumn
              Caption = 'Active'
              DataBinding.FieldName = 'active'
              Visible = False
              Width = 50
            end
            object cxGrid1DBTableView1PrincipalAgent: TcxGridDBColumn
              Caption = 'Principal Agent'
              DataBinding.FieldName = 'PrincipalAgent'
              Width = 233
            end
            object cxGrid1DBTableView1Domestic: TcxGridDBColumn
              DataBinding.FieldName = 'Domestic'
              Visible = False
              Width = 64
            end
            object cxGrid1DBTableView1LpDay: TcxGridDBColumn
              Caption = 'Lp Day'
              DataBinding.FieldName = 'LpDay'
              Width = 52
            end
            object cxGrid1DBTableView1city: TcxGridDBColumn
              Caption = 'Lp City'
              DataBinding.FieldName = 'city'
              Width = 69
            end
            object cxGrid1DBTableView1Bank: TcxGridDBColumn
              DataBinding.FieldName = 'Bank'
              Width = 86
            end
            object cxGrid1DBTableView1DeptDate: TcxGridDBColumn
              Caption = 'Departure'
              DataBinding.FieldName = 'DeptDate'
              Width = 148
            end
          end
        end
      end
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid2: TcxGrid
          Height = 442
          inherited cxGridDBTableView1: TcxGridDBTableView
            DataController.KeyFieldNames = 'TourCodes_id'
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGridDBTableView1TourCodes_id: TcxGridDBColumn
              DataBinding.FieldName = 'TourCodes_id'
              Visible = False
              Options.Editing = False
            end
            object cxGridDBTableView1TourCode: TcxGridDBColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'TourCode'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGridDBTableView1TourName: TcxGridDBColumn
              Caption = 'Name'
              DataBinding.FieldName = 'TourName'
              Width = 215
            end
            object cxGridDBTableView1Fit: TcxGridDBColumn
              Caption = 'FIT'
              DataBinding.FieldName = 'Fit'
              Visible = False
            end
            object cxGridDBTableView1tailormade: TcxGridDBColumn
              Caption = 'TM'
              DataBinding.FieldName = 'tailormade'
              Visible = False
            end
            object cxGridDBTableView1active: TcxGridDBColumn
              Caption = 'Active'
              DataBinding.FieldName = 'active'
              Visible = False
              Width = 60
            end
            object cxGridDBTableView1city: TcxGridDBColumn
              Caption = 'City'
              DataBinding.FieldName = 'city'
              Width = 97
            end
            object cxGridDBTableView1TransferAgent: TcxGridDBColumn
              Caption = 'Transfer Agent'
              DataBinding.FieldName = 'TransferAgent'
              Width = 150
            end
            object cxGridDBTableView1Hotel: TcxGridDBColumn
              DataBinding.FieldName = 'Hotel'
              Width = 137
            end
            object cxGridDBTableView1SingleConstituent: TcxGridDBColumn
              Caption = 'Single Constituent'
              DataBinding.FieldName = 'SingleConstituent'
              Width = 94
            end
            object cxGridDBTableView1DeptDate: TcxGridDBColumn
              Caption = 'Departure'
              DataBinding.FieldName = 'DeptDate'
              Width = 100
            end
          end
        end
      end
    end
  end
  inherited MasterTourSds: TSQLDataSet
    CommandText = 
      'SELECT m.Masters_id, m.mastercode, m.name As MasterName, m.Fit, ' +
      'm.tailormade, m.active, '#13#10'       a.organisation as PrincipalAgen' +
      't, m.Domestic, m.LpDay, c.city, b.organisation as Bank,'#13#10'       ' +
      '(SELECT MAX(mdd1.TourDate) FROM masterdeparturedates mdd1'#13#10'     ' +
      '    WHERE mdd1.masters_id = m.masters_id'#13#10'           AND mdd1.to' +
      'urdate BETWEEN '#39'01/01/2013'#39' AND '#39'01/01/2014'#39') AS DeptDate'#13#10'  FRO' +
      'M masters m '#13#10'       LEFT JOIN addressbook a ON m.addressbook_id' +
      ' = a.addressbook_id'#13#10'       LEFT JOIN cities c ON m.LpCities_id ' +
      '= c.cities_id'#13#10'       LEFT JOIN addressbook b ON m.LpBanks_id = ' +
      'b.addressbook_id'#13#10' WHERE EXISTS (SELECT * FROM masterdepartureda' +
      'tes mdd'#13#10'                WHERE mdd.masters_id = m.masters_id'#13#10'  ' +
      '                AND tourdate BETWEEN '#39'01/01/2013'#39' AND '#39'01/01/201' +
      '4'#39')'#13#10
  end
  inherited MasterTourCds: TClientDataSet
    object MasterTourCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object MasterTourCdsmastercode: TStringField
      FieldName = 'mastercode'
      Size = 50
    end
    object MasterTourCdsMasterName: TStringField
      FieldName = 'MasterName'
      Size = 50
    end
    object MasterTourCdsFit: TBooleanField
      FieldName = 'Fit'
    end
    object MasterTourCdstailormade: TBooleanField
      FieldName = 'tailormade'
    end
    object MasterTourCdsactive: TBooleanField
      FieldName = 'active'
    end
    object MasterTourCdsPrincipalAgent: TStringField
      FieldName = 'PrincipalAgent'
      Size = 60
    end
    object MasterTourCdsDomestic: TBooleanField
      FieldName = 'Domestic'
    end
    object MasterTourCdsLpDay: TIntegerField
      FieldName = 'LpDay'
    end
    object MasterTourCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object MasterTourCdsBank: TStringField
      FieldName = 'Bank'
      Size = 60
    end
    object MasterTourCdsDeptDate: TSQLTimeStampField
      FieldName = 'DeptDate'
    end
  end
  inherited TourSds: TSQLDataSet
    CommandText = 
      'SELECT t.TourCodes_id, t.TourCode, t.tour As TourName, t.Fit, t.' +
      'tailormade, t.active, '#13#10'       c.city, a.organisation as Transfe' +
      'rAgent, h.organisation as Hotel, t.SingleConstituent,  '#13#10'       ' +
      '(SELECT MAX(tdd1.TourDate) FROM TourDepartureDates tdd1 WHERE td' +
      'd1.TourCodes_id = t.TourCodes_id '#13#10'           AND tdd1.tourdate ' +
      'BETWEEN '#39'02/28/2014'#39' AND '#39'11/28/2014'#39') AS DeptDate '#13#10'          F' +
      'ROM TourCodes t LEFT JOIN addressbook a ON t.agent_addressbook_i' +
      'd = a.addressbook_id '#13#10'                         LEFT JOIN cities' +
      ' c ON t.Cities_id = c.cities_id '#13#10'                         LEFT ' +
      'JOIN addressbook h ON t.Hotel_Addressbook_id = h.addressbook_id ' +
      #13#10'          WHERE ((EXISTS (SELECT * FROM TourDepartureDates tdd' +
      ' '#13#10'                           WHERE tdd.TourCodes_id = t.TourCod' +
      'es_id '#13#10'                            AND tourdate BETWEEN '#39'02/28/' +
      '2014'#39' AND '#39'11/28/2014'#39')) '#13#10'                  OR (NOT EXISTS (SEL' +
      'ECT * FROM TourDepartureDates tdd WHERE tdd.TourCodes_id = t.Tou' +
      'rCodes_id )))  '#13#10'              AND (TailorMade = 1) '#13#10
  end
  inherited TourCds: TClientDataSet
    object TourCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object TourCdsTourName: TStringField
      FieldName = 'TourName'
      Size = 50
    end
    object TourCdsFit: TBooleanField
      FieldName = 'Fit'
    end
    object TourCdstailormade: TBooleanField
      FieldName = 'tailormade'
    end
    object TourCdsactive: TBooleanField
      FieldName = 'active'
    end
    object TourCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object TourCdsTransferAgent: TStringField
      FieldName = 'TransferAgent'
      Size = 60
    end
    object TourCdsHotel: TStringField
      FieldName = 'Hotel'
      Size = 60
    end
    object TourCdsSingleConstituent: TBooleanField
      FieldName = 'SingleConstituent'
    end
    object TourCdsDeptDate: TSQLTimeStampField
      FieldName = 'DeptDate'
    end
  end
  inherited TourCalSds: TSQLDataSet
    DataSource = MasterTourDs
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited TourCalCds: TClientDataSet
    IndexFieldNames = 'masters_id'
    MasterFields = 'Masters_id'
    MasterSource = MasterTourDs
    PacketRecords = 0
    AfterInsert = TourCalCdsAfterInsert
    object TourCalCdstourcalendar_id: TIntegerField
      FieldName = 'tourcalendar_id'
    end
    object TourCalCdsdaysoffset: TIntegerField
      FieldName = 'daysoffset'
    end
    object TourCalCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object TourCalCdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
  end
  inherited FitAgentSds: TSQLDataSet
    DataSource = MasterTourDs
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Value = 0
      end>
  end
  inherited FitAgentCds: TClientDataSet
    IndexFieldNames = 'Masters_id'
    MasterFields = 'Masters_id'
    MasterSource = MasterTourDs
    PacketRecords = 0
    object FitAgentCdsMasterFitAgents_id: TIntegerField
      FieldName = 'MasterFitAgents_id'
    end
    object FitAgentCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object FitAgentCdsFitAgents_id: TIntegerField
      FieldName = 'FitAgents_id'
    end
  end
  object FitAgentQrySds: TSQLDataSet
    CommandText = 'SELECT * FROM FitAgents'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 872
    Top = 296
  end
  object FitAgentQryDsp: TDataSetProvider
    DataSet = FitAgentQrySds
    Left = 888
    Top = 296
  end
  object FitAgentQryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FitAgentQryDsp'
    Left = 904
    Top = 296
    object FitAgentQryCdsFitAgents_id: TIntegerField
      FieldName = 'FitAgents_id'
    end
    object FitAgentQryCdsFitAgent: TStringField
      FieldName = 'FitAgent'
      Size = 50
    end
  end
  object FitAgentQryDs: TDataSource
    DataSet = FitAgentQryCds
    Left = 920
    Top = 296
  end
  object TourCodeQrySds: TSQLDataSet
    CommandText = 
      'SELECT TourCodes_id, TourCode'#13#10'FROM TourCodes'#13#10'ORDER BY TourCode' +
      #13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 872
    Top = 336
  end
  object TourCodeQryDsp: TDataSetProvider
    DataSet = TourCodeQrySds
    Left = 888
    Top = 336
  end
  object TourCodeQryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeQryDsp'
    Left = 904
    Top = 336
    object TourCodeQryCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeQryCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
  end
  object TourCodeQryDs: TDataSource
    DataSet = TourCodeQryCds
    Left = 920
    Top = 336
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 620
    object DepartureDates1: TMenuItem
      Caption = 'Departure Dates'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      OnClick = Edit1Click
    end
    object Add1: TMenuItem
      Caption = 'Add'
      OnClick = Add1Click
    end
  end
end
