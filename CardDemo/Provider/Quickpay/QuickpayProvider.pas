unit QuickpayProvider;

interface

uses
  ICardInterface;

type
   TQuickpay = class(TInterfacedObject, ICard)
   private
     LKey: string;
   public
     function Collect(AValue: double; out AResponse: string) : Boolean;
     constructor Create(AKey: string);
     destructor Destroy; override;
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

constructor TQuickpay.Create(AKey: string);
begin
  LKey := AKey;
end;

destructor TQuickpay.Destroy;
begin

  inherited;
end;

end.
