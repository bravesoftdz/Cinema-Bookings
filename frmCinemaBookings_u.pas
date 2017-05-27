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
    GroupBox1: TGroupBox;
    imgCoverImage: TImage;
    lblMovieTitle: TLabel;
    redMovieDescription: TRichEdit;
    imgMovieStar: TImage;
    lblMovieRating: TLabel;
    GroupBox2: TGroupBox;
    cbDate: TComboBox;
    cbTime: TComboBox;
    btnBook: TButton;
    tblMoviesTimes: TWideStringField;
    tblMoviesDates: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnMenuViewMoviesClick(Sender: TObject);
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
implementation

{$R *.dfm}

procedure TfrmCinemaBookings.btnMenuViewMoviesClick(Sender: TObject);
begin
  pcMainView.TabIndex := 2;
end;

procedure TfrmCinemaBookings.FormCreate(Sender: TObject);
var
  sUserID : String;
  i, iFeaturedID : Integer;
begin
  //TEST VARIABLES
  sUserID := 'test';
  //END

  //Get the current directory for locading image files
  sCurrentDir := GetCurrentDir;

  //Set the tables to active
  tblMovies.Active := True;
  tblUsers.Active := True;

  //--tblMovieTimes.Active := True;

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

  imgFeatured.Picture.LoadFromFile('Images/' + Movies[iFeaturedID].CoverImage);
  lblFeaturedMovie.Caption := Movies[iFeaturedID].Name;
  redFeaturedMovie.Lines.Add(Movies[iFeaturedID].Description);
  lblFeaturedRating.Caption := Movies[iFeaturedID].Rating;

  //Customise message with users name
  lblWelcome.Caption := 'Welcome ' + User.Name + '!';

  //Load first movie for preview
  imgCoverImage.Picture.LoadFromFile(sCurrentDir + '/Images/' + Movies[1].CoverImage);
  lblMovieTitle.Caption := Movies[1].Name;
  redMovieDescription.Lines.Add(Movies[1].Description);
  lblMovieRating.Caption := Movies[1].Rating;
  for i := 1 to 3 do
    cbTime.Items.Add(Movies[1].Times[i]);

  for i := 1 to 3 do
    cbDate.Items.Add(Movies[1].Dates[i]);
end;

end.
