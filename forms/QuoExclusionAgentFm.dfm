inherited QuoExclusionAgentForm: TQuoExclusionAgentForm
  Left = 116
  Top = 142
  Width = 850
  Caption = 'Exclusions by Agent'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 834
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object cxAgentLCMB: TcxLookupComboBox
      Left = 69
      Top = 14
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = PrinAgentDS
      Properties.OnEditValueChanged = cxAgentLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 348
    end
  end
  inherited Panel2: TPanel
    Width = 834
    inherited cxButtonUtilities: TcxButton
      Visible = False
    end
    object cxButton1: TcxButton
      Left = 96
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Add Exclusions'
      TabOrder = 3
      OnClick = cxButton1Click
    end
  end
  inherited Panel3: TPanel
    Width = 834
    inherited cxPageControl1: TcxPageControl
      Width = 832
      ClientRectRight = 826
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Display Exclusions'
        inherited cxGrid1: TcxGrid
          Width = 823
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'QuoExclusionDetailsDisplay_id'
            OptionsData.Appending = False
            OptionsData.Inserting = False
            object cxGrid1DBBandedTableView1QuoExclusionDetailsDisplay_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QuoExclusionDetailsDisplay_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1QuoExclusionDetails_id: TcxGridDBBandedColumn
              Caption = 'Exclusion'
              DataBinding.FieldName = 'QuoExclusionDetails_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'QuoExclusionDetails_id'
              Properties.ListColumns = <
                item
                  FieldName = 'QuoExclusionDetail'
                end>
              Properties.ListSource = QuoExclDs
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 705
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Addressbook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Addressbook_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Display: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Display'
              Options.Filtering = False
              Options.Grouping = False
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoExclusionDetailsDisplay'#13#10' WHERE Addressbook_id ' +
      '= :Addressbook_id'#13#10'   AND EXISTS (SELECT * FROM QuoExclusions q'#13 +
      #10'                                           INNER JOIN QuoExclus' +
      'ionDetails qd ON q.QuoExclusions_id = qd.QuoExclusions_id'#13#10'     ' +
      '                     WHERE QuoExclusionDetailsDisplay.QuoExclusi' +
      'onDetails_id = qd.QuoExclusionDetails_id'#13#10'                      ' +
      '          AND q.QuoExclusions_id = :QuoExclusions_id)'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QuoExclusions_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsQuoExclusionDetailsDisplay_id: TIntegerField
      FieldName = 'QuoExclusionDetailsDisplay_id'
    end
    object MasterCdsQuoExclusionDetails_id: TIntegerField
      FieldName = 'QuoExclusionDetails_id'
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCdsDisplay: TBooleanField
      FieldName = 'Display'
    end
  end
  object QuoExclSds: TSQLDataSet
    CommandText = 
      'SELECT QuoExclusionDetails_id, '#13#10'SUBSTRING(QuoExclusionDetail, 1' +
      ', 100) AS QuoExclusionDetail'#13#10' FROM QuoExclusionDetails'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 336
  end
  object QuoExclDsp: TDataSetProvider
    DataSet = QuoExclSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 336
  end
  object QuoExclCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'QuoExclDsp'
    Left = 255
    Top = 336
    object QuoExclCdsQuoExclusionDetails_id: TIntegerField
      FieldName = 'QuoExclusionDetails_id'
    end
    object QuoExclCdsQuoExclusionDetail: TStringField
      FieldName = 'QuoExclusionDetail'
      Size = 100
    end
  end
  object QuoExclDs: TDataSource
    DataSet = QuoExclCds
    Left = 285
    Top = 336
  end
  object PrinAgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 584
    Top = 128
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 600
    Top = 128
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
    Left = 616
    Top = 128
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
    Left = 632
    Top = 128
  end
end
