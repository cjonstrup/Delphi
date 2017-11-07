unit Dibs;

interface

uses
  DUnitX.TestFramework,
  ICardInterface,
  DibsProvider;

type

  [TestFixture('Dibs','General Example Tests')]
  TDibsTest = class(TObject)
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

procedure TDibsTest.Collect(const AValue1: double);
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

procedure TDibsTest.Setup;
begin
  Card := TDibs.Create;
end;

procedure TDibsTest.TearDown;
begin
end;


initialization
  TDUnitX.RegisterTestFixture(TDibsTest);
end.
