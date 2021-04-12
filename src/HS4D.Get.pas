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
  THSD4Get = class(TInterfacedObject, iHS4DGet)
    private
      FParent : iHS4D;
      FFileName : string;
    procedure GetImageByUrl(URL: string; APicture: TPicture);
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

{ THSD4Get }

constructor THSD4Get.Create(Parent: iHS4D);
begin
  FParent:= Parent;
end;

destructor THSD4Get.Destroy;
begin

  inherited;
end;

function THSD4Get.FileName(aName: string): iHS4DGet;
begin
  Result:= Self;
  FFileName:= aName;
end;

function THSD4Get.Get(var aImage : TImage) : iHS4DGet;
begin
  result:= self;
  if pos('http', FFileName) > 0  then
   begin
     GetImageByUrl(FFileName, aImage.Picture);
   end else
    begin
      aImage.Picture.LoadFromFile(FFileName);
    end;
end;

procedure THSD4Get.GetImageByUrl(URL: string; APicture: TPicture);
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
      APicture.Assign(Jpeg);
    end;
  finally
    Strm.Free;
    Jpeg.Free;
    vIdHTTP.Free;
  end;
end;

class function THSD4Get.New(aParent : iHS4D): iHS4DGet;
begin
  result:= Self.Create(aParent);
end;

end.

