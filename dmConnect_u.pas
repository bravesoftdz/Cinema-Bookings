unit dmConnect_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmConnect = class(TDataModule)
    dbConnect: TADOConnection;
    tblUsers: TADOTable;
    dsUsers: TDataSource;
    dsMovies: TDataSource;
    dsFeatured: TDataSource;
    tblMovies: TADOTable;
    tblMoviesID: TAutoIncField;
    tblMoviesName: TWideStringField;
    tblMoviesDescription: TWideMemoField;
    tblMoviesCoverImage: TWideStringField;
    tblMoviesRating: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConnect: TdmConnect;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
