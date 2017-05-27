program frmCinemaBookings_p;

uses
  Vcl.Forms,
  frmCinemaBookings_u in 'frmCinemaBookings_u.pas' {frmCinemaBookings},
  dmConnect_u in 'dmConnect_u.pas' {dmConnect: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCinemaBookings, frmCinemaBookings);
  Application.CreateForm(TdmConnect, dmConnect);
  Application.Run;
end.
