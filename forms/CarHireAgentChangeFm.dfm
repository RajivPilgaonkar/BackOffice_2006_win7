object CarHireAgentChangeForm: TCarHireAgentChangeForm
  Left = 258
  Top = 65
  Width = 698
  Height = 130
  Caption = 'Car Hire Agent'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox5: TcxGroupBox
    Left = 18
    Top = 6
    TabOrder = 0
    Height = 50
    Width = 650
    object Label26: TLabel
      Left = 12
      Top = 27
      Width = 57
      Height = 13
      Caption = 'Car Agent'
      Transparent = True
    end
    object Label27: TLabel
      Left = 243
      Top = 27
      Width = 49
      Height = 13
      Caption = 'Hire City'
      Transparent = True
    end
    object Label16: TLabel
      Left = 444
      Top = 27
      Width = 43
      Height = 13
      Caption = 'Vehicle'
      Transparent = True
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox
      Left = 79
      Top = 24
      DataBinding.DataField = 'QcCarHireAgents_id'
      DataBinding.DataSource = QuoCitywiseForm.Detail1DS
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
      Style.Color = 16247513
      TabOrder = 0
      Width = 152
    end
    object cxDBLookupComboBox7: TcxDBLookupComboBox
      Left = 310
      Top = 24
      DataBinding.DataField = 'QcCarHireCities_id'
      DataBinding.DataSource = QuoCitywiseForm.Detail1DS
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = QuoCitywiseForm.CitiesDs
      Style.Color = 16247513
      TabOrder = 1
      Width = 123
    end
    object cxDBLookupComboBox8: TcxDBLookupComboBox
      Left = 491
      Top = 24
      DataBinding.DataField = 'QcVehicles_id'
      DataBinding.DataSource = QuoCitywiseForm.Detail1DS
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Vehicles_id'
      Properties.ListColumns = <
        item
          FieldName = 'Vehicle'
        end>
      Properties.ListSource = QuoCitywiseForm.VehicleDs
      Style.Color = 16247513
      TabOrder = 2
      Width = 150
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 61
    Width = 690
    Height = 35
    Align = alBottom
    TabOrder = 1
    object cxCloseBtn: TcxButton
      Left = 602
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = cxCloseBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
end
