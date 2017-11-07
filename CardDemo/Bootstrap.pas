unit Bootstrap;

interface

uses
  Spring.Container,
  ICardInterface,
  DibsProvider,
  QuickpayProvider;

procedure BuildUpContainer(aContainer: TContainer);

implementation

procedure BuildUpContainer(aContainer: TContainer);
begin
  //aContainer.RegisterType<ICard,TDibs>('dibs');

  aContainer.RegisterType<TDibs>.Implements<ICard>('dibs').DelegateTo(
                                                                        function : TDibs
                                                                        begin
                                                                          Result := TDibs.Create('dsfsdsffds');
                                                                        end
                                                                      );


  aContainer.RegisterType<ICard,TQuickpay>('quickpay');


  aContainer.Build;
end;

end.
