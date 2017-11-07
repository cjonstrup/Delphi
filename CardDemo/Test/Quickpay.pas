unit Quickpay;

interface

uses
  DUnitX.TestFramework,
  ICardInterface,
  QuickpayProvider;

type

  [TestFixture('Quickpay','General Example Tests')]
  TQuickpayTest = class(TObject)
  private
    Card: ICard;

  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', '120')]
    [TestCase('TestB', '-45.67')]
    procedure Collect(const AValue1 : double);
  end;

implementation



{ TDibsTest }

procedure TQuickpayTest.Collect(const AValue1: double);
var
  Result: string;
begin
  if AValue1 > 0 then
  begin
    Assert.IsTrue(Card.Collect(AValue1, Result));
  end;

  if AValue1 < 0 then
  begin
    Assert.IsFalse(Card.Collect(AValue1, Result));
  end;
end;

procedure TQuickpayTest.Setup;
begin
  Card := TQuickpay.Create('key');
end;

procedure TQuickpayTest.TearDown;
begin
end;


initialization
  TDUnitX.RegisterTestFixture(TQuickpayTest);
end.
