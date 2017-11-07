unit Bootstrap;

interface

uses
  Spring.Container,
  ICardInterface;

 type
   TDibs = class(TInterfacedObject, ICard)
   Const
     AUTH_URL = 'https://payment.architrade.com/cgi-ssl/auth.cgi';
   public
     function Collect(AValue: double; out AResponse: string) : Boolean;
   end;

   TQuickpay = class(TInterfacedObject, ICard)
   public
     function Collect(AValue: double; out AResponse: string) : Boolean;
   end;

procedure BuildUpContainer(aContainer: TContainer);

implementation

procedure BuildUpContainer(aContainer: TContainer);
begin
  aContainer.RegisterType<ICard,TDibs>('dibs');
  aContainer.RegisterType<ICard,TQuickpay>('quickpay');
  aContainer.Build;
end;



{ TDibs }

function TDibs.Collect(AValue: double; out AResponse: string): Boolean;
begin
  AResponse := 'Dibs collect ok';
  Result := True;
end;

{ TQuickpay }

function TQuickpay.Collect(AValue: double; out AResponse: string): Boolean;
begin
  AResponse := 'Quickpay collect ok';
  Result := True;
end;

end.
