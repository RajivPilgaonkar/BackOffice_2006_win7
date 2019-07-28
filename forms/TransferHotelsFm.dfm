inherited TransferHotelsForm: TTransferHotelsForm
  Left = 612
  Top = 9
  Width = 411
  Height = 557
  Caption = 'Transfer Hotels'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 441
    Width = 403
    inherited CustomMasterCxGrid: TcxGrid
      Width = 397
      Height = 420
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'TransferHotels_id'
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1TransferHotels_id: TcxGridDBColumn
          DataBinding.FieldName = 'TransferHotels_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1Services_id: TcxGridDBColumn
          DataBinding.FieldName = 'Services_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1Addressbook_id: TcxGridDBColumn
          Caption = 'Hotel'
          DataBinding.FieldName = 'Addressbook_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              Caption = 'Hotel'
              MinWidth = 300
              FieldName = 'Organisation'
            end
            item
              MinWidth = 100
              FieldName = 'City'
            end>
          Properties.ListSource = BackOfficeDataModule.HoteDS
          SortIndex = 0
          SortOrder = soAscending
          Width = 300
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 482
    Width = 403
    inherited KeyIdDbText: TDBText
      Left = 224
      DataField = 'TransferHotels_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 304
    end
  end
  inherited Panel2: TPanel
    Width = 403
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'SELECT * FROM TransferHotels WHERE Services_id = :Services_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Services_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsTransferHotels_id: TIntegerField
      FieldName = 'TransferHotels_id'
    end
    object MasterCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
end
