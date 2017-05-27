program frmCinemaBookings_p;

uses
  Vcl.Forms,
  frmCinemaBookings_u in 'frmCinemaBookings_u.pas' {frmCinemaBookings},
  dmConnect_u in 'dmConnect_u.pas' {dmConnect: TDataModule},
  clsUser_u in 'clsUser_u.pas',
  clsMovie_u in 'clsMovie_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCinemaBookings, frmCinemaBookings);
  Application.CreateForm(TdmConnect, dmConnect);
  Application.Run;
end.
