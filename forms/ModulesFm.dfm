inherited ModulesForm: TModulesForm
  Left = 290
  Top = 97
  Width = 512
  Height = 565
  Caption = 'Modules Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 22
    Caption = 
      '...................................................Modules......' +
      '.....................................................'
    Height = 468
    Width = 504
    inherited CustomMasterCxGrid: TcxGrid
      Width = 498
      Height = 447
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1AdmModule: TcxGridDBColumn
          Caption = 'Module'
          DataBinding.FieldName = 'AdmModule'
          SortIndex = 0
          SortOrder = soAscending
          Width = 351
        end
        object CustomMasterCxGridDBTableView1AdmModuleNo: TcxGridDBColumn
          Caption = 'Module No'
          DataBinding.FieldName = 'AdmModuleNo'
          Width = 140
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 490
    Width = 504
    inherited KeyIdDbText: TDBText
      Left = 320
      Top = 11
      DataField = 'admmodules_id'
      Visible = False
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 411
      Top = 4
    end
  end
  inherited Panel2: TPanel
    Width = 504
    Height = 22
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'admmodules'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsAdmModules_id: TIntegerField
      FieldName = 'AdmModules_id'
    end
    object MasterCdsAdmModule: TStringField
      FieldName = 'AdmModule'
      Size = 150
    end
    object MasterCdsAdmModuleNo: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AdmModuleNo'
    end
  end
end
