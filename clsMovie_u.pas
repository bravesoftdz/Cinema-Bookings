unit clsMovie_u;

interface

uses
  System.SysUtils, Vcl.Graphics;

type
  clsMovie = Class
    public
      Name, Description, Rating, CoverImage : String;
      ID : Integer;
      Times, Dates : Array[1..3] of String;
      procedure SetTimesDates(sTimes, sDates : String);
    private

  End;
implementation

{ clsMovie }

procedure clsMovie.SetTimesDates(sTimes, sDates: String);
var
  i, j : Integer;
begin
  for i := 1 to 3 do
    begin
      Times[i] := Copy(sTimes, Pos(',', sTimes)+1, 2) + ':' + Copy(sTimes, Pos(',', sTimes)+3, 2);
      Delete(sTimes, Pos(',', sTimes)+1, 5);
    end;
  for i := 1 to 3 do
    begin
      Dates[i] := Copy(sDates, Pos(',', sDates)+1, 2) + '/' + Copy(sDates, Pos(',', sDates)+3, 2) + '/' + Copy(sDates, Pos(',', sDates)+5, 2);
      Delete(sDates, Pos(',', sDates)+1, 7);
    end;


    //080013001800
end;

end.
