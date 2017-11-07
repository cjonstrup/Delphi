unit DibsProvider;

interface

uses
  ICardInterface,
  IdHTTP,
  Classes;

type
   TDibs = class(TInterfacedObject, ICard)
   private
     LKey: string;
     Client: TIdHTTP;
   Const
     AUTH_URL = 'https://payment.architrade.com/cgi-ssl/auth.cgi';
   public
     function Collect(AValue: double; out AResponse: string) : Boolean;
     constructor Create(AKey: string);
     destructor Destroy; override;
   end;


implementation

{ TDibs }

function TDibs.Collect(AValue: double; out AResponse: string): Boolean;
var
  Buffer: String;
  PostData: TStringList;
begin
  PostData := TStringList.Create;
  PostData.Add('merchant=53453453&amount=100&transact=208&cardno=4711100000000000&cvc=684&md5key=cfcd208495d565ef66e7dff9f98764da&expmon=06&expyear=24&orderid=1234&test=1');
  Client := TIdHTTP.Create;

  try
    Buffer := Client.Post(AUTH_URL,PostData);
  finally
    Client.Free;
    PostData.Free;
  end;


  AResponse := 'Dibs collect ok';
  Result := True;

  if AValue <= 0 then
  begin
    AResponse := 'Dibs collect fail';
    Result := False;
  end;
end;

constructor TDibs.Create(AKey: string);
begin
  LKey := AKey;
end;

destructor TDibs.Destroy;
begin

  inherited;
end;

end.
