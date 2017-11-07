unit ICardInterface;

interface

 type
   // An interface definition
   ICard = Interface(IInterface)
     ['{396E7FDB-9B06-4712-AAEC-431DCA13FCC9}']
     function Collect(AValue: double; out AResponse: string) : Boolean;
   end;

implementation

end.
