unit frmCinemaBookings_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.jpeg, Data.Win.ADODB, Vcl.Imaging.pngimage, clsUser_u, clsMovie_u;

type
    TUser = Class(clsUser);
    TMovie = Class(clsMovie);
    TMovies = Array[1..64] of TMovie;
  TfrmCinemaBookings = class(TForm)
    pcMainView: TPageControl;
    tsDashboard: TTabSheet;
    lblWelcome: TLabel;
    gbMenu: TGroupBox;
    lblWhatToDo: TLabel;
    btnMenuViewMovies: TButton;
    btnMenuViewTickets: TButton;
    btnMenuDocumentation: TButton;
    btnMenuViewCinemas: TButton;
    gbFeaturedMovie: TGroupBox;
    redFeaturedMovie: TRichEdit;
    btnLogOut: TButton;
    lblFeaturedMovie: TLabel;
    imgFeatured: TImage;
    dbConnect: TADOConnection;
    tblMovies: TADOTable;
    tblMoviesID: TAutoIncField;
    tblMoviesName: TWideStringField;
    tblMoviesDescription: TWideMemoField;
    tblMoviesCoverImage: TWideStringField;
    tblMoviesRating: TFloatField;
    tblUsers: TADOTable;
    lblFeaturedRating: TLabel;
    imgFeaturedStar: TImage;
    tsAccount: TTabSheet;
    tsUpcoming: TTabSheet;
    gbMovies: TGroupBox;
    imgCoverImage: TImage;
    lblMovieTitle: TLabel;
    redMovieDescription: TRichEdit;
    imgMovieStar: TImage;
    lblMovieRating: TLabel;
    gbBookings: TGroupBox;
    cbDate: TComboBox;
    cbTime: TComboBox;
    btnBook: TButton;
    tblMoviesTimes: TWideStringField;
    tblMoviesDates: TWideStringField;
    btnLeft: TButton;
    btnRight: TButton;
    lblError: TLabel;
    gbSeats: TGroupBox;
    sgSeats: TStringGrid;
    redDisplay: TRichEdit;
    tblTickets: TADOTable;
    tblTicketsID: TAutoIncField;
    tblTicketsUserID: TWideStringField;
    tblTicketsMovieID: TIntegerField;
    tblTicketsTime: TWideStringField;
    tblTicketsDate: TWideStringField;
    tblTicketsSeats: TWideStringField;
    edtNumSeats: TEdit;
    udNumSeats: TUpDown;
    lblNumSeats: TLabel;
    gbAccountDetails: TGroupBox;
    lblAccountName: TLabel;
    lblAccountSurname: TLabel;
    lblAccountEmail: TLabel;
    lblAccountPassword: TLabel;
    edtAccountName: TEdit;
    edtAccountSurname: TEdit;
    edtAccountEmail: TEdit;
    edtAccountPassword: TEdit;
    btnAccountUpdate: TButton;
    gbTickets: TGroupBox;
    qryTickets: TADOQuery;
    qryTicketsID: TAutoIncField;
    qryTicketsUserID: TWideStringField;
    qryTicketsMovieID: TIntegerField;
    qryTicketsTime: TWideStringField;
    qryTicketsDate: TWideStringField;
    qryTicketsSeats: TWideStringField;
    redTickets: TRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnMenuViewMoviesClick(Sender: TObject);
    procedure DisplayMovie(iMovie: Integer);
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnBookClick(Sender: TObject);
    procedure sgSeatsSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbDateChange(Sender: TObject);
    procedure cbTimeChange(Sender: TObject);
    procedure DisplayTickets();
  private
    { Private declarations }
  public
    { Public declarations }
    sCurrentDir : String;
  end;

var
  frmCinemaBookings: TfrmCinemaBookings;
  User : TUser;
  FeaturedMovie : TMovie;
  Movies : TMovies;
  iCurrentMovie, iMovieCount,iNumSeats : Integer;
  arrTickets : array[1..64] of String;
  bSeatSelected : Boolean;
const
  sLetters : String = 'ABCDEFG';
  rTValue : Real = 55.0;
implementation

{$R *.dfm}

procedure TfrmCinemaBookings.btnBookClick(Sender: TObject);
var
  Bookings : TextFile;
  i, j : Integer;
  sRow, sTickets : String;
begin
  if NOT((cbTime.ItemIndex = -1) OR (cbDate.ItemIndex = -1) OR (btnBook.Caption = 'Book')) OR (NOT(bSeatSelected) AND (btnBook.Caption = 'Book')) then
    begin
      lblError.Visible := False;
      gbMovies.Visible := False;
      gbSeats.Visible := True;
      AssignFile(Bookings, sCurrentDir + '/Movies/' + IntToStr(iCurrentMovie) + '/' + IntToStr(cbDate.ItemIndex) + IntToStr(cbTime.ItemIndex) + '_SEATS.txt');
      Reset(Bookings);
      btnBook.Caption := 'Book';
      for i := 1 to 6 do
        begin
          sgSeats.Cells[i, 0] := IntToStr(i);
        end;
      for i := 1 to 7 do
        begin
          sgSeats.Cells[0, i] := sLetters[i];
        end;
      for i := 1 to 7 do
        begin
          ReadLn(Bookings, sRow);
          for j := 1 to 6 do
            begin
              sgSeats.Cells[j, i] := sRow[j];
            end;
        end;
      sgSeats.DefaultColWidth := 27;
      sgSeats.DefaultRowHeight := 27;
    end else
    begin
      if btnBook.Caption = 'Book' then
        begin
          if NOT(bSeatSelected) then
            begin
              ShowMessage('Please select your seats.');
            end
            else
            begin
              with tblTickets do
                begin;
                  Insert;
                  for i := 1 to iNumSeats do
                    sTickets := sTickets + arrTickets[i] + ', ';
                  FieldByName('Seats').Value := sTickets;
                  FieldByName('UserID').Value := User.ID;
                  FieldByName('MovieID').Value := iCurrentMovie;
                  FieldByName('Time').Value := cbTime.Items[cbTime.ItemIndex];
                  FieldByName('Date').Value := cbDate.Items[cbDate.ItemIndex];
                  Post;
                end;
              gbMovies.Visible := True;
              gbSeats.Visible := False;
              btnBook.Caption := 'Proceed to bookings';
              redDisplay.Lines.Clear();
            end;
        end
        else
        begin
          lblError.Visible := True;
        end;
    end;
end;

procedure TfrmCinemaBookings.btnLeftClick(Sender: TObject);
begin
  if NOT(iCurrentMovie = 1) then
    iCurrentMovie := iCurrentMovie - 1;
  DisplayMovie(iCurrentMovie);
end;

procedure TfrmCinemaBookings.btnMenuViewMoviesClick(Sender: TObject);
begin
  pcMainView.TabIndex := 2;
end;

procedure TfrmCinemaBookings.btnRightClick(Sender: TObject);
begin
  if NOT(iCurrentMovie = iMovieCount) then
    iCurrentMovie := iCurrentMovie + 1;
  DisplayMovie(iCurrentMovie);
end;

procedure TfrmCinemaBookings.cbDateChange(Sender: TObject);
begin
  if btnBook.Caption = 'Book' then
    btnBookClick(Self);
  redDisplay.Lines.Clear();
  redDisplay.Lines.Add('Your Tickets:');
end;

procedure TfrmCinemaBookings.cbTimeChange(Sender: TObject);
begin
  if btnBook.Caption = 'Book' then
    btnBookClick(Self);
  redDisplay.Lines.Clear();
  redDisplay.Lines.Add('Your Tickets:');
end;

procedure TfrmCinemaBookings.DisplayMovie(iMovie: Integer);
var
  i : Integer;
begin
  redMovieDescription.Lines.Clear;
  imgCoverImage.Picture.LoadFromFile(sCurrentDir + '/Movies/' + IntToStr(iCurrentMovie) + '/' + Movies[iMovie].CoverImage);
  lblMovieTitle.Caption := Movies[iMovie].Name;
  redMovieDescription.Lines.Add(Movies[iMovie].Description);
  lblMovieRating.Caption := Movies[iMovie].Rating;
  cbTime.Items.Clear;
  cbDate.Items.Clear;
  for i := 1 to 3 do
    cbTime.Items.Add(Movies[iMovie].Times[i]);
  for i := 1 to 3 do
    cbDate.Items.Add(Movies[iMovie].Dates[i]);
end;

procedure TfrmCinemaBookings.DisplayTickets;
var
  i : Integer;
begin
  with redTickets do
    begin
      Lines.Clear;
      Paragraph.TabCount := 5;
      Paragraph.Tab[2] := 1;
      Paragraph.Tab[3] := 20;
      Paragraph.Tab[4] := 130;
      Lines.Add('No' + #9 + 'Movie' + #9 + 'Seats' + #9 + 'Date/Time');
    end;
  qryTickets.SQL.Clear;
  qryTickets.SQL.Add('SELECT * FROM Tickets WHERE UserID = ''' + User.ID + '''');
  qryTickets.Active := True;
  for i := 1 to qryTickets.RecordCount do
    begin
      with qryTickets do
        begin
          redTickets.Lines.Add(IntToSTr(i) + ':' + #9 + Movies[StrToInt(FieldByName('MovieID').Value)].Name + #9 + FieldByName('Seats').Value + #9 + FieldByName('Date').Value + ' - ' + FieldByName('Time').Value);
        end;
    end;
end;

procedure TfrmCinemaBookings.FormCreate(Sender: TObject);
var
  sUserID, sDBConnection : String;
  i, iFeaturedID : Integer;
begin
  //TEST VARIABLES
  sUserID := 'test';
  //END

  //Get the current directory for locading image files
  sCurrentDir := GetCurrentDir;

  //Set the tables to active
  sDBConnection := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + sCurrentDir + '\CinemaBookings.mdb;Mode=ReadWrite;Persist Security Info=False';
  dbConnect.ConnectionString := sDBConnection;
  dbConnect.Connected := True;
  tblMovies.Active := True;
  tblUsers.Active := True;
  tblTickets.Active := True;

  //Get the users details and create the user class
  tblUsers.Filtered := True;
  tblUsers.Filter := 'ID = ''' + sUserID + '''';
  User := TUser.Create();
  with User do
    begin
      Name := tblUsers.FieldByName('Name').Value;
      Surname := tblUsers.FieldByName('Surname').Value;
      Email := tblUsers.FieldByName('E-Mail').Value;
      ID := tblUsers.FieldByName('ID').Value;
    end;

  //Set a random movie as featured movie and get details
  iFeaturedID := Random(tblMovies.RecordCount) + 1;
  tblMovies.First;
  for i := 1 to tblMovies.RecordCount do
    begin
      Movies[i] := TMovie.Create;
      with Movies[i] do
        begin
          Name := tblMovies.FieldByName('Name').Value;
          Description := tblMovies.FieldByName('Description').Value;
          Rating := tblMovies.FieldByName('Rating').Value;
          CoverImage := tblMovies.FieldByName('CoverImage').Value;
          SetTimesDates(tblMovies.FieldByName('Times').Value, tblMovies.FieldByName('Dates').Value);
        end;
      tblMovies.Next;
    end;
  iMovieCount := tblMovies.RecordCount;

  imgFeatured.Picture.LoadFromFile(sCurrentDir + '/Movies/' + IntToStr(iFeaturedID) + '/' + Movies[iFeaturedID].CoverImage);
  lblFeaturedMovie.Caption := Movies[iFeaturedID].Name;
  redFeaturedMovie.Lines.Add(Movies[iFeaturedID].Description);
  lblFeaturedRating.Caption := Movies[iFeaturedID].Rating;

  //Customise message with users name
  lblWelcome.Caption := 'Welcome ' + User.Name + '!';

  //Load first movie for preview
  iCurrentMovie := 1;
  DisplayMovie(iCurrentMovie);
  iNumSeats := 0;
  DisplayTickets();
end;

procedure TfrmCinemaBookings.sgSeatsSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  i : Integer;
  sTickets : String;
  bIsBooked : Boolean;
begin
  if bSeatSelected then
    begin
      bSeatSelected := False;
      btnBookClick(Self);
    end;
  iNumSeats := StrToInt(edtNumSeats.Text);
  if (iNumSeats + ACol) > 7 then
    begin
      bSeatSelected := False;
      btnBookClick(Self);
      ShowMessage('Sorry but you cant book that amount of seats there.');
      redDisplay.Lines.Clear();
      redDisplay.Lines.Add('Your Tickets: ');
      bSeatSelected := False;
    end
    else
    begin
      for i := ACol to (iNumSeats + ACol) - 1 do
        begin
          if (sgSeats.Cells[i, ARow] = 'x') then
          begin
            ShowMessage('Sorry but this seat(s) is already booked.');
            bIsBooked := True;
            redDisplay.Lines.Clear();
            redDisplay.Lines.Add('Your Tickets: ');
            bSeatSelected := False;
          end;
        end;
      if NOT(bIsBooked) then
        begin
          for i := ACol to (iNumSeats + ACol) - 1 do
            begin
              if NOT(sgSeats.Cells[i, ARow] = 'x') then
                begin
                  sgSeats.Cells[i, ARow] := 'S';
                  arrTickets[i] := IntToStr(i) + sLetters[ARow];
                end
                else
                begin
                  ShowMessage('Sorry but this seat(s) is already booked.');
                  redDisplay.Lines.Clear();
                  redDisplay.Lines.Add('Your Tickets: ');
                end;
            end;
          redDisplay.Lines.Clear();
          redDisplay.Lines.Add('Your Tickets: ' + FloatToStrF(rTValue*iNumSeats, ffCurrency, 8, 2));
          for i := ACol to (iNumSeats + ACol) - 1 do
            sTickets := sTickets + arrTickets[i] + ', ';
          redDisplay.Lines.Add(sTickets);
          bSeatSelected := True;
        end;
    end;
end;

end.
