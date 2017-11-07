unit Dibs;

interface
uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TDibsTest = class(TObject)
  private
    //Card: ICard;

  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation



{ TDibsTest }

procedure TDibsTest.Setup;
begin

end;

procedure TDibsTest.TearDown;
begin

end;

procedure TDibsTest.Test1;
begin

end;

procedure TDibsTest.Test2(const AValue1, AValue2: Integer);
begin

end;

initialization
  TDUnitX.RegisterTestFixture(TDibsTest);
end.
