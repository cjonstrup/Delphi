unit QuickpayProvider;

interface

uses
  ICardInterface;

type
   TQuickpay = class(TInterfacedObject, ICard)
   public
     function Collect(AValue: double; out AResponse: string) : Boolean;
   end;

implementation

{ TQuickpay }

function TQuickpay.Collect(AValue: double; out AResponse: string): Boolean;
begin
  AResponse := 'Quickpay collect ok';
  Result := True;

  if AValue <= 0 then
  begin
    AResponse := 'Quickpay collect fail';
    Result := False;
  end;
end;

end.
