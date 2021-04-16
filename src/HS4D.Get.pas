unit HS4D.Get;

interface

uses
  System.Net.URLClient,
  System.Net.HttpClient,
  System.Net.HttpClientComponent,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdHTTP,
  Vcl.ExtCtrls,
  Vcl.Imaging.jpeg,
  Vcl.Graphics,
  HS4D.Interfaces;

type
  THS4DGet = class(TInterfacedObject, iHS4DGet)
    private
      FParent : iHS4D;
      FFileName : string;
    procedure GetImageByUrl(URL: string; aImage : TImage);
    public
      constructor Create(Parent : iHS4D);
      destructor Destroy; override;
      class function New (aParent : iHS4D): iHS4DGet;

      function Get(var aImage : TImage) : iHS4DGet;
      function FileName(aName : string) : iHS4DGet;
  end;

implementation

uses
  System.Classes;

{ THS4DGet }

constructor THS4DGet.Create(Parent: iHS4D);
begin
  FParent:= Parent;
end;

destructor THS4DGet.Destroy;
begin

  inherited;
end;

function THS4DGet.FileName(aName: string): iHS4DGet;
begin
  Result:= Self;
  FFileName:= aName;
end;

function THS4DGet.Get(var aImage : TImage) : iHS4DGet;
begin
  result:= self;
  if pos('http', FFileName) > 0  then
   begin
     GetImageByUrl(FFileName, aImage);
   end else
    begin
      aImage.Picture.LoadFromFile(FFileName);
    end;
end;

procedure THS4DGet.GetImageByUrl(URL: string; aImage : TImage);
var
  Jpeg: TJPEGImage;
  Strm: TMemoryStream;
  vIdHTTP : TIdHTTP;
begin
  Jpeg := TJPEGImage.Create;
  Strm := TMemoryStream.Create;
  vIdHTTP := TIdHTTP.Create(nil);
  try
    vIdHTTP.Get(URL, Strm);
    if (Strm.Size > 0) then
    begin
      Strm.Position := 0;
      Jpeg.LoadFromStream(Strm);
      aImage.Picture.Assign(Jpeg);
    end;
  finally
    Strm.Free;
    Jpeg.Free;
    vIdHTTP.Free;
  end;
end;

class function THS4DGet.New(aParent : iHS4D): iHS4DGet;
begin
  result:= Self.Create(aParent);
end;

end.

