program frmCinemaBookings_p;

uses
  Vcl.Forms,
  frmCinemaBookings_u in 'frmCinemaBookings_u.pas' {frmMain},
  dmConnect_u in 'dmConnect_u.pas' {dmConnect: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmConnect, dmConnect);
  Application.Run;
end.
