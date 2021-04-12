unit HS4D.Interfaces;

interface

uses
  System.Classes,
  {$IFDEF HAS_FMX}
    FMX.Objects;
  {$ELSE}
    Vcl.ExtCtrls;
  {$ENDIF}

type
  iHS4DSend = interface;
  iHS4DGet = interface;
  iHS4DCredential = interface;

  iHS4D = interface
  ['{9AF66D6B-D72D-4918-88F7-C65043C46079}']
  function SendFile : iHS4DSend;
  function GetFile : iHS4DGet;
  function Credential : iHS4DCredential;
  end;

  iHS4DSend = interface
  ['{09E77C1A-3405-4210-BA2D-52B246F9D7F7}']
  function Send : iHS4DSend;
  function FileName( aValue : String ) : iHS4DSend;
  function ContentType( aValue : String ) : iHS4DSend;
  function EndPoint(aValue : string) : iHS4DSend;
  function Path(aValue : string) : iHS4DSend;
  function FileStream( aValue : TBytesStream ) : iHS4DSend; overload;
  function FileStream( aValue : TImage ) : iHS4DSend; overload;
  function ToString : string;
  end;

  iHS4DGet = interface
  ['{9D869884-D8A3-4BF0-8826-07CFFCD48695}']
  function Get(var aImage : TImage) : iHS4DGet;
  function FileName(aName : string) : iHS4DGet;
  end;

  iHS4DCredential = interface
  ['{73FC2594-C32E-48A4-A8AE-82CD8ED26F27}']
  function BaseURL(const aValue : string) : iHS4DCredential; overload;
  function BaseURL : string; overload;
  function &End : iHS4D;
  end;

implementation

end.

