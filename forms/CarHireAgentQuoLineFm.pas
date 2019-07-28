unit CarHireAgentQuoLineFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxControls, cxContainer, cxEdit,
  cxGroupBox, dxSkinsCore, dxSkinsDefaultPainters, FMTBcd, DB, DBClient,
  Provider, SqlExpr;

type
  TCarHireAgentQuoLineForm = class(TForm)
    cxGroupBox5: TcxGroupBox;
    Label26: TLabel;
    Label16: TLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    Panel2: TPanel;
    cxCloseBtn: TcxButton;
    QuoLinesSds: TSQLDataSet;
    QuoLinesDsp: TDataSetProvider;
    QuoLinesCds: TClientDataSet;
    QuoLinesDs: TDataSource;
    QuoLinesCdsQuoLines_id: TIntegerField;
    QuoLinesCdsCarHireAgents_id: TIntegerField;
    QuoLinesCdsVehicles_id: TIntegerField;
    VehicleSds: TSQLDataSet;
    VehicleDsp: TDataSetProvider;
    VehicleCds: TClientDataSet;
    VehicleCdsvehicles_id: TIntegerField;
    VehicleCdsvehicle: TStringField;
    VehicleCdsAddressBook_id: TIntegerField;
    VehicleDs: TDataSource;
    QuoLinesCdsDriveTypes_id: TIntegerField;
    procedure cxCloseBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QuoLinesCdsAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarHireAgentQuoLineForm: TCarHireAgentQuoLineForm;
  _CarHireAgentQuoLineForm_QuoLines_id: integer;

implementation

uses QuoCitywiseFm, BackOfficeDM;

{$R *.dfm}

procedure TCarHireAgentQuoLineForm.cxCloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TCarHireAgentQuoLineForm.FormCreate(Sender: TObject);
begin
  QuoLinesCds.Active := False;
  QuoLinesCds.Filter := 'QuoLines_id = ' + IntToStr(_CarHireAgentQuoLineForm_QuoLines_id);
  QuoLinesCds.Filtered := True;
  QuoLinesCds.Active := True;

  BackOfficeDataModule.AgentCds.Active := False;
  BackOfficeDataModule.AgentCds.Active := True;

  VehicleCds.Close;
  VehicleSds.Close;

  if QuoLinesCds['DriveTypes_id'] = 1 then
    VehicleSds.CommandText :=
      'SELECT DISTINCT v.Vehicle, ch.Vehicles_id, ch.AddressBook_id ' +
      'FROM CarHire ch LEFT JOIN Vehicles v ON ch.Vehicles_id = v.Vehicles_id ' +
      'WHERE ch.Addressbook_id = :CarHireAgents_id ' +
      'ORDER BY Vehicle'
  else if QuoLinesCds['DriveTypes_id'] = 2 then
    VehicleSds.CommandText :=
      'SELECT DISTINCT v.Vehicle, ch.Vehicles_id, ch.AddressBook_id ' +
      'FROM CarHireP2P ch LEFT JOIN Vehicles v ON ch.Vehicles_id = v.Vehicles_id ' +
      'WHERE ch.Addressbook_id = :CarHireAgents_id ' +
      'ORDER BY Vehicle'
  else if QuoLinesCds['DriveTypes_id'] = 3 then
    VehicleSds.CommandText := 
      'SELECT DISTINCT v.Vehicle, ch.Vehicles_id, ch.AddressBook_id ' +
      'FROM CarHireGroupCosts ch LEFT JOIN Vehicles v ON ch.Vehicles_id = v.Vehicles_id ' +
      'WHERE ch.Addressbook_id = :CarHireAgents_id ' +
      'ORDER BY Vehicle';

  VehicleSds.Open;
  VehicleCds.Open;

end;

procedure TCarHireAgentQuoLineForm.QuoLinesCdsAfterPost(DataSet: TDataSet);
begin
  QuoLinesCds.ApplyUpdates(0);
end;

procedure TCarHireAgentQuoLineForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (QuoLinesCds.State = dsEdit) or (QuoLinesCds.State = dsInsert) then
    QuoLinesCds.Post;

end;

end.
