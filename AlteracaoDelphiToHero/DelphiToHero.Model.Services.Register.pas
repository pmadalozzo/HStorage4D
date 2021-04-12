unit DelphiToHero.Model.Services.Register;
interface
type
  TModelServicesRegister = class
    private
      procedure RegisterAWS;
      procedure RegisterGoogleAPI;
      procedure RegisterHS;
    public
      constructor Create;
      destructor Destroy; override;
  end;
var
  aServicesRegister : TModelServicesRegister;

implementation
uses
  Bind4D;
{ TModelServicesRegister }
constructor TModelServicesRegister.Create;
begin
  RegisterAWS;
  RegisterHS;
  RegisterGoogleAPI;
end;
destructor TModelServicesRegister.Destroy;
begin
  inherited;
end;
procedure TModelServicesRegister.RegisterAWS;
begin
  TBind4D
    .New
      .AWSService
        .Credential
          .AccountKey('')
          .AccountName('')
          .StorageEndPoint('')
          .Bucket('')
        .&End;
end;
procedure TModelServicesRegister.RegisterGoogleAPI;
begin
    TBind4D.New
    .Translator
      .Google
        .Credential
          .Key('')
        .&End
        .Options
          .Cache(True)
        .&End
        .Params
          .Source('')
          .Target('')
        .&End;
end;
procedure TModelServicesRegister.RegisterHS;
begin
  TBind4D.New
    .HSD4Service
      .Credential
        .BaseURL('http://localhost:9000')
      .&End;
end;

initialization
  aServicesRegister := TModelServicesRegister.Create;
finalization
  aServicesRegister.Free;
end.
