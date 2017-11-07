unit DibsProvider;

interface

uses
  ICardInterface;

type
   TDibs = class(TInterfacedObject, ICard)
   Const
     AUTH_URL = 'https://payment.architrade.com/cgi-ssl/auth.cgi';
   public
     function Collect(AValue: double; out AResponse: string) : Boolean;
   end;


implementation

{ TDibs }

function TDibs.Collect(AValue: double; out AResponse: string): Boolean;
begin
  AResponse := 'Dibs collect ok';
  Result := True;

  if AValue <= 0 then
  begin
    AResponse := 'Dibs collect fail';
    Result := True;
  end;
end;

end.
