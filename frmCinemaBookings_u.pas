unit frmCinemaBookings_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.jpeg, Data.Win.ADODB, Vcl.Imaging.pngimage;

type
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
    Image1: TImage;
    Label1: TLabel;
    RichEdit1: TRichEdit;
    Image2: TImage;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
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
  sUserID, sUserName, sUserEmail : String;
implementation

{$R *.dfm}

procedure TfrmCinemaBookings.btnMenuViewMoviesClick(Sender: TObject);
begin
  pcMainView.TabIndex := 2;
end;

procedure TfrmCinemaBookings.FormCreate(Sender: TObject);
var
  sFeaturedID : String;
begin
  //TEST VARIABLES
  sUserID := 'test';
  //END
  //Get the current directory for locating image files
  sCurrentDir := GetCurrentDir;
  //Set the tables to active
  tblMovies.Active := True;
  tblUsers.Active := True;
  //--tblMovieTimes.Active := True;
  //Get the users details
  tblUsers.Filtered := True;
  tblUsers.Filter := 'ID = ''' + sUserID + '''';
  sUserName := tblUsers.FieldByName('Name').Value;
  sUserEmail := tblUsers.FieldByName('E-Mail').Value;;
  //Set a random movie as featured movie and get details
  sFeaturedID := IntToStr(Random(tblMovies.RecordCount) + 1);
  tblMovies.Filtered := True;
  tblMovies.Filter := 'ID = ''' + sFeaturedID + '''';
  imgFeatured.Picture.LoadFromFile(sCurrentDir + '\Images\' + tblMovies.FieldByName('CoverImage').Value);
  lblFeaturedMovie.Caption := tblMovies.FieldByName('Name').Value;
  redFeaturedMovie.Lines.Add(tblMovies.FieldByName('Description').Value);
  lblFeaturedRating.Caption := tblMovies.FieldByName('Rating').Value;
  //Customise message with users name
  lblWelcome.Caption := 'Welcome ' + sUserName + '!';
end;

end.
