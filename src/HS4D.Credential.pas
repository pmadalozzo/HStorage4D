unit HS4D.Credential;

interface

uses
  HS4D.Interfaces;


type
  THS4DCredential = class(TInterfacedObject, iHS4DCredential)
    private
      [weak]
      FParent : iHS4D;
      FBaseURL : string;
      FEndPoint : string;
    public
      constructor Create(Parent : iHS4D);
      destructor Destroy; override;
      class function New(aParent : iHS4D) : iHS4DCredential;

      function BaseURL(const aValue : string) : iHS4DCredential; overload;
      function BaseURL : string; overload;
      function &End : iHS4D;
  end;


implementation

{ THS4DCredential }

function THS4DCredential.BaseURL(const aValue : string) : iHS4DCredential;
begin
  Result:= Self;
  FBaseURL:= aValue;
end;

function THS4DCredential.&End: iHS4D;
begin
  Result:= FParent;
end;

function THS4DCredential.BaseURL: string;
begin
  Result:= FBaseURL;
end;

constructor THS4DCredential.Create(Parent: iHS4D);
begin
  FParent:= Parent;
end;

destructor THS4DCredential.Destroy;
begin

  inherited;
end;

class function THS4DCredential.New(aParent: iHS4D): iHS4DCredential;
begin
  result:= Self.Create(aParent);
end;

end.

