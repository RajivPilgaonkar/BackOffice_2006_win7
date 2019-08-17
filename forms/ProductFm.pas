unit ProductFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Custom1M1DFm, FMTBcd, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxGroupBox,
  DBClient, Provider, SqlExpr, ExtCtrls, cxCalendar, DBCtrls, cxNavigator,
  cxDBNavigator, Menus, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TProductForm = class(TCustom1M1DForm)
    cxGroupBox1: TcxGroupBox;
    TypeLbl: TLabel;
    AgentLbl: TLabel;
    HotelLbl: TLabel;
    FromCityLbl: TLabel;
    ToCityLbl: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1roomtypes_id: TcxGridDBColumn;
    cxGrid1DBTableView1roomsizes_id: TcxGridDBColumn;
    cxGrid1DBTableView1wef: TcxGridDBColumn;
    cxGrid1DBTableView1wet: TcxGridDBColumn;
    cxGrid1DBTableView1cost: TcxGridDBColumn;
    cxGrid1DBTableView1mealplans_id: TcxGridDBColumn;
    cxGrid1DBTableView1currencies_id: TcxGridDBColumn;
    cxGrid1DBTableView1tickets_id: TcxGridDBColumn;
    cxGrid1DBTableView1services_id: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    CloseBtn: TcxButton;
    MasterCdsProductTypes_id: TIntegerField;
    MasterCdsDescription: TStringField;
    KeyIDText: TDBText;
    TypeLCmb: TcxLookupComboBox;
    AgentSds: TSQLDataSet;
    AgentDsp: TDataSetProvider;
    AgentDs: TDataSource;
    AgentCds: TClientDataSet;
    cxDBNavigator1: TcxDBNavigator;
    FromCityLCmb: TcxLookupComboBox;
    ToCityLCmb: TcxLookupComboBox;
    AgentLCmb: TcxLookupComboBox;
    HotelLCmb: TcxLookupComboBox;
    HotelSds: TSQLDataSet;
    HotelDsp: TDataSetProvider;
    HotelDs: TDataSource;
    HotelCds: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    AgentCdsAddressbook_id: TIntegerField;
    AgentCdsOrganisation: TStringField;
    AgentCdsCity: TStringField;
    AgentCdsCities_id: TIntegerField;
    AgentCdsContact: TStringField;
    Detail1Cdsproducts_id: TIntegerField;
    Detail1Cdsaddressbook_id: TIntegerField;
    Detail1Cdsroomtypes_id: TIntegerField;
    Detail1Cdsroomsizes_id: TIntegerField;
    Detail1Cdswef: TSQLTimeStampField;
    Detail1Cdswet: TSQLTimeStampField;
    Detail1Cdscost: TBCDField;
    Detail1Cdsagent_addressbook_id: TIntegerField;
    Detail1Cdsmealplans_id: TIntegerField;
    Detail1Cdsproducttypes_id: TIntegerField;
    Detail1Cdscurrencies_id: TIntegerField;
    Detail1Cdsproduct: TStringField;
    Detail1Cdsdivisions_id: TIntegerField;
    Detail1Cdsfromcities_id: TIntegerField;
    Detail1Cdstocities_id: TIntegerField;
    Detail1Cdstickets_id: TIntegerField;
    Detail1Cdsservices_id: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FilterCosts;
    procedure ShowCombos;
    procedure Detail1CdsAfterInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforeInsert(DataSet: TDataSet);
    procedure Detail1CdsBeforePost(DataSet: TDataSet);
    procedure Detail1CdsAfterPost(DataSet: TDataSet);
    procedure TypeLCmbKeyPress(Sender: TObject; var Key: Char);
    procedure TypeLCmbPropertiesChange(Sender: TObject);
    procedure FromCityLCmbKeyPress(Sender: TObject; var Key: Char);
    procedure ToCityLCmbKeyPress(Sender: TObject; var Key: Char);
    procedure AgentLCmbKeyPress(Sender: TObject; var Key: Char);
    procedure HotelLCmbKeyPress(Sender: TObject; var Key: Char);
    procedure FromCityLCmbPropertiesEditValueChanged(Sender: TObject);
    procedure ToCityLCmbPropertiesEditValueChanged(Sender: TObject);
    procedure AgentLCmbPropertiesEditValueChanged(Sender: TObject);
    procedure HotelLCmbPropertiesEditValueChanged(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductForm: TProductForm;
  _ProductForm_Level : Integer;

implementation

uses BackOfficeDM, Math;

{$R *.dfm}

procedure TProductForm.FormCreate(Sender: TObject);
begin
  MasterCdsName := 'ProductTypes';
  MasterKeyField := 'ProductTypes_id';

  Detail1CdsName := 'Products';
  Detail1KeyField := 'Products_id';

  AdmLevel := _ProductForm_Level;

  inherited;

  BackOfficeDataModule.CitiesSds.Active := False;
  BackOfficeDataModule.CitiesCds.Active := False;

  BackOfficeDataModule.CitiesSds.Active := True;
  BackOfficeDataModule.CitiesCds.Active := True;

  BackOfficeDataModule.RoomTypeSds.Active := False;
  BackOfficeDataModule.RoomTypeCds.Active := False;

  BackOfficeDataModule.RoomTypeSds.Active := True;
  BackOfficeDataModule.RoomTypeCds.Active := True;

  BackOfficeDataModule.RoomSizeSds.Active := False;
  BackOfficeDataModule.RoomSizeCds.Active := False;

  BackOfficeDataModule.RoomSizeSds.Active := True;
  BackOfficeDataModule.RoomSizeCds.Active := True;

  BackOfficeDataModule.MealPlanSds.Active := False;
  BackOfficeDataModule.MealPlanCds.Active := False;

  BackOfficeDataModule.MealPlanSds.Active := True;
  BackOfficeDataModule.MealPlanCds.Active := True;

  BackOfficeDataModule.TicketsSDS.Active := False;
  BackOfficeDataModule.TicketsCDS.Active := False;

  BackOfficeDataModule.TicketsSDS.Active := True;
  BackOfficeDataModule.TicketsCDS.Active := True;

  BackOfficeDataModule.ServicesSDS.Active := False;
  BackOfficeDataModule.ServicesCDS.Active := False;

  BackOfficeDataModule.ServicesSDS.Active := True;
  BackOfficeDataModule.ServicesCDS.Active := True;

  BackOfficeDataModule.CurrenciesSds.Active := False;
  BackOfficeDataModule.CurrenciesCds.Active := False;

  BackOfficeDataModule.CurrenciesSds.Active := True;
  BackOfficeDataModule.CurrenciesCds.Active := True;

  AgentSds.Active := False;
  AgentCds.Active := False;

  AgentSds.Active := True;
  AgentCds.Active := True;

  HotelSds.Active := False;
  HotelCds.Active := False;

  HotelSds.Active := False;
  HotelCds.Active := True;

  TypeLCmb.EditValue := 0;

  FilterCosts;

end;

procedure TProductForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ProductForm := nil;
end;

procedure TProductForm.CloseBtnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TProductForm.FilterCosts;
var
  HotelID, AgentID, CityID, ToCityID: Integer;
begin

  ShowCombos;

  if HotelLCmb.EditValue > 0 then
    HotelID := HotelLCmb.EditValue
  else
    HotelID := 0;

  if AgentLCmb.EditValue > 0 then
    AgentID := AgentLCmb.EditValue
  else
    AgentID := 0;

  //if TypeLCmb.EditValue > 0 then
  //  ProductTypeID := TypeLCmb.EditValue
  //else
  //  ProductTypeID := 0;

  if FromCityLCmb.EditValue > 0 then
    CityID := FromCityLCmb.EditValue
  else
    CityID := 0;

  if ToCityLCmb.EditValue > 0 then
    ToCityID := ToCityLCmb.EditValue
  else
    ToCityID := 0;

  Detail1Cds.Active := False;

  //Accommodation
  if TypeLCmb.EditValue = 1 then
    begin

      Detail1Sds.Active := False;
      Detail1Cds.Active := False;

      Detail1Sds.CommandText := 'SELECT * FROM Products WHERE ProductTypes_id = 1 ' +
                      ' AND Addressbook_id = ' + IntToStr(HotelID) ;

      Detail1Sds.Active := True;
      Detail1Cds.Active := True;

    end

  //Tickets
  else if TypeLCmb.EditValue = 2 then
    begin

      Detail1Sds.Active := False;
      Detail1Cds.Active := False;

      Detail1Sds.CommandText := '';
      Detail1Sds.CommandText := 'SELECT * FROM Products WHERE ProductTypes_id = 2 ' +
        ' AND Agent_Addressbook_id = ' + IntToStr(AgentID) +
        ' AND FromCities_id = ' + IntToStr(CityID) + ' ' +
        ' AND ToCities_id = ' + IntToStr(ToCityID) + ' ';

      Detail1Sds.Active := True;
      Detail1Cds.Active := True;

    end

  //Services
  else if TypeLCmb.EditValue = 3 then
    begin

      Detail1Sds.Active := False;
      Detail1Cds.Active := False;

{
      if FromCityLCMB.EditValue <> null then
        begin
          AgentCds.Close;
          AgentSds.Close;
          Agentsds.CommandText := 'SELECT * FROM fn_Addressbook(2,''A'') ' +
            'WHERE Cities_id = ' + IntToStr(FromCityLCMB.EditValue);
          AgentSds.Open;
          AgentCds.Open;
        end;
}        

      Detail1Sds.CommandText := '';
      Detail1Sds.CommandText := 'SELECT * FROM Products WHERE ProductTypes_id = 3 ' +
        ' AND Agent_Addressbook_id = ' + IntToStr(AgentID) +
        ' AND FromCities_id = ' + IntToStr(CityID) + ' ';

      Detail1Sds.Active := True;
      Detail1Cds.Active := True;

    end;



end;

procedure TProductForm.ShowCombos;
begin

//   ****   Accommodation   ****   //
  if TypeLCmb.EditValue = 1 then
    begin
      HotelLCmb.Visible := True;
      HotelLCmb.Enabled := True;
      HotelLbl.Visible := True;

      AgentLCmb.Visible := False;
      AgentLCmb.Enabled := False;
      AgentLCmb.EditValue := -1;
      AgentLbl.Visible := False;

      FromCityLCmb.Visible := True;
      FromCityLCmb.Enabled := True;
      FromCityLbl.Caption := 'City';
      FromCityLbl.Visible := True;

      ToCityLCmb.Visible := False;
      ToCityLCmb.Enabled := False;
      ToCityLCmb.EditValue := -1;
      ToCityLbl.Visible := False;

      cxGrid1DBTableView1.Columns[2].Visible := True;
      cxGrid1DBTableView1.Columns[3].Visible := True;
      cxGrid1DBTableView1.Columns[4].Visible := True;
      cxGrid1DBTableView1.Columns[5].Visible := False;
      cxGrid1DBTableView1.Columns[6].Visible := False;
    end;

  //   ****   Services   ****   //
  if TypeLCmb.EditValue = 3 then
    begin

      HotelLCmb.Visible := False;
      HotelLCmb.Enabled := False;
      HotelLbl.Visible := False;

      AgentLCmb.Visible := True;
      AgentLCmb.Enabled := True;
      AgentLbl.Visible := True;

      FromCityLCmb.Visible := True;
      FromCityLCmb.Enabled := True;
      FromCityLbl.Caption := 'City';
      FromCityLbl.Visible := True;

      ToCityLCmb.Visible := False;
      ToCityLCmb.Enabled := False;
      ToCityLCmb.EditValue := -1;
      ToCityLbl.Visible := False;

      cxGrid1DBTableView1.Columns[2].Visible := False;
      cxGrid1DBTableView1.Columns[3].Visible := False;
      cxGrid1DBTableView1.Columns[4].Visible := False;
      cxGrid1DBTableView1.Columns[5].Visible := False;
      cxGrid1DBTableView1.Columns[6].Visible := True;
      cxGrid1DBTableView1.Columns[7].Visible := True;
      cxGrid1DBTableView1.Columns[8].Visible := True;

    end;


//   ****   Tickets    ****    //
  if TypeLCmb.EditValue = 2 then
    begin
      HotelLCmb.Visible := False;
      HotelLCmb.Enabled := False;
      HotelLCmb.EditValue := -1;
      HotelLbl.Visible := False;

      AgentLCmb.Visible := True;
      AgentLCmb.Enabled := True;
      AgentLbl.Visible := True;

      FromCityLCmb.Visible := True;
      FromCityLCmb.Enabled := True;
      FromCityLbl.Caption := 'From City';
      FromCityLbl.Visible := True;

      ToCityLCmb.Visible := True;
      ToCityLCmb.Enabled := True;
      ToCityLbl.Caption := 'To City';
      ToCityLbl.Visible := True;

      cxGrid1DBTableView1.Columns[2].Visible := False;
      cxGrid1DBTableView1.Columns[3].Visible := False;
      cxGrid1DBTableView1.Columns[4].Visible := False;
      cxGrid1DBTableView1.Columns[5].Visible := True;
      cxGrid1DBTableView1.Columns[6].Visible := False;
    end;
end;

procedure TProductForm.Detail1CdsAfterInsert(DataSet: TDataSet);
begin
  inherited;

  Detail1Cds['ProductTypes_id'] := TypeLCmb.EditValue;

  If TypeLCmb.EditValue = 1 then
    Detail1Cds['Addressbook_id'] := HotelLCmb.EditValue;

  If TypeLCmb.EditValue = 2 then
    Detail1Cds['Agent_Addressbook_id'] := AgentLCmb.EditValue;

end;

procedure TProductForm.Detail1CdsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (TypeLCmb.EditValue = 0) then
    raise Exception.Create('Please enter the Type');

  If TypeLCmb.EditValue = 1 then
    begin
      if (HotelLCmb.EditValue = 0) or (HotelLCmb.EditValue = Null) then
        raise Exception.Create('Please enter the Hotel');
    end;

  If TypeLCmb.EditValue = 2 then
    begin
      if (AgentLCmb.EditValue = 0) or (AgentLCmb.EditValue = Null) then
        raise Exception.Create('Please enter the Agent');
    end;

end;

procedure TProductForm.Detail1CdsBeforePost(DataSet: TDataSet);
begin
  inherited;

  //   ***   Accommodation   ***   //
  if TypeLCmb.EditValue = 1 then
    begin
      if HotelLCmb.EditValue = null then
        raise exception.create ('Please enter agent');
      if Detail1Cds['RoomSizes_id'] = null then
        raise exception.create ('Please enter the room size');
      if Detail1Cds['RoomTypes_id'] = null then
        raise exception.create ('Please enter the room type');
      if Detail1Cds['MealPlans_id'] = null then
        raise exception.create ('Please enter the meal plan');

      Detail1Cds['FromCities_id'] := FromCityLCmb.EditValue;
      Detail1Cds['Addressbook_id'] := HotelLCmb.EditValue;
    end;

  //   ***   Tickets   ***   //
  if TypeLCmb.EditValue = 2 then
    begin
      if FromCityLCmb.EditValue = null then
        raise exception.create ('Please enter from city');
      if ToCityLCmb.EditValue = null then
        raise exception.create ('Please enter to city');
      if AgentLCmb.EditValue = null then
        raise exception.create ('Please enter agent');
      if Detail1Cds['Tickets_id'] = null then
        raise exception.create ('Please enter the ticket type');

      Detail1Cds['FromCities_id'] := FromCityLCmb.EditValue;
      Detail1Cds['ToCities_id'] := ToCityLCmb.EditValue;
      Detail1Cds['Agent_Addressbook_id'] := AgentLCmb.EditValue;
    end;

  //   ***   Services   ***   //
  if TypeLCmb.EditValue = 3 then
    begin
      if FromCityLCmb.EditValue = null then
        raise exception.create ('Please enter the service city');
      if AgentLCmb.EditValue = null then
        raise exception.create ('Please enter agent');
      if Detail1Cds['Services_id'] = null then
        raise exception.create ('Please enter the service');

      Detail1Cds['FromCities_id'] := FromCityLCmb.EditValue;
      Detail1Cds['Agent_Addressbook_id'] := AgentLCmb.EditValue;
    end;

end;

procedure TProductForm.Detail1CdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  Detail1Cds.ApplyUpdates(0);
end;

procedure TProductForm.TypeLCmbKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterCosts;
end;

procedure TProductForm.TypeLCmbPropertiesChange(Sender: TObject);
begin
  inherited;
  FilterCosts;
end;

procedure TProductForm.FromCityLCmbKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterCosts;
end;

procedure TProductForm.ToCityLCmbKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterCosts;
end;

procedure TProductForm.AgentLCmbKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterCosts;
end;

procedure TProductForm.HotelLCmbKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    FilterCosts;
end;

procedure TProductForm.FromCityLCmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if FromCityLCmb.EditValue <> null then
      begin
        BackOfficeDataModule.CitiesCds.Locate('Cities_id',FromCityLCmb.EditValue,[]);
        FilterCosts;
      end;
  except
  end;
end;

procedure TProductForm.ToCityLCmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
    if ToCityLCmb.EditValue <> null then
      begin
        BackOfficeDataModule.CitiesCds.Locate('Cities_id',ToCityLCmb.EditValue,[]);
        FilterCosts;
      end;
  except
  end;
end;

procedure TProductForm.AgentLCmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
    FilterCosts;
end;

procedure TProductForm.HotelLCmbPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
    FilterCosts;
end;

end.
