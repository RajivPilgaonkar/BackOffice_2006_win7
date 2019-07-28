inherited TravelScheduleForm: TTravelScheduleForm
  Width = 567
  Height = 295
  Caption = 'Travel Schedule'
  Font.Style = [fsBold]
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 2
    Top = 0
    Width = 54
    Height = 13
    Caption = 'Schedule'
  end
  inherited SrchEF: TEdit
    Left = 215
  end
  inherited QryGrid: TDBGrid
    Left = 0
    Top = 13
    Width = 553
    Height = 206
    Columns = <
      item
        Expanded = False
        FieldName = 'Day'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'From City'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'To City'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FlightNo'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TrainNo'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Departure'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Arrival'
        Width = 100
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Top = 220
    Width = 559
  end
  inherited SearchCDS: TClientDataSet
    FieldDefs = <
      item
        Name = 'Day'
        DataType = ftInteger
      end
      item
        Name = 'From City'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'To City'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FlightNo'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TrainNo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Departure'
        DataType = ftTimeStamp
      end
      item
        Name = 'Arrival'
        DataType = ftTimeStamp
      end>
    object SearchCDSDay: TIntegerField
      FieldName = 'Day'
    end
    object SearchCDSFromCity: TStringField
      FieldName = 'From City'
      Size = 50
    end
    object SearchCDSToCity: TStringField
      FieldName = 'To City'
      Size = 50
    end
    object SearchCDSFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
    end
    object SearchCDSTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object SearchCDSDeparture: TSQLTimeStampField
      FieldName = 'Departure'
    end
    object SearchCDSArrival: TSQLTimeStampField
      FieldName = 'Arrival'
    end
  end
  inherited SearchQry: TSQLQuery
    SQL.Strings = (
      
        'SELECT MT.day as Day, FC.city as [From City], TC.City as [To Cit' +
        'y],  '
      
        'MT.flightno as FlightNo, MT.trainno as TrainNo,  MT.departure as' +
        ' Departure ,  MT.arrival as Arrival'
      
        'FROM mastertickets MT  LEFT JOIN cities FC ON FC.cities_id = MT.' +
        'from_cities_id  '
      'LEFT JOIN cities TC ON TC.cities_id = MT.to_cities_id  '
      ''
      ''
      ''
      '  '
      ''
      ''
      ''
      '')
  end
end
