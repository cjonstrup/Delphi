program CardDemo;

uses
  Spring.Container,
  Vcl.Forms,
  Bootstrap in 'Bootstrap.pas',
  Main in 'Main.pas' {FormMain},
  ICardInterface in 'Provider\ICardInterface.pas',
  DibsProvider in 'Provider\Dibs\DibsProvider.pas',
  QuickpayProvider in 'Provider\Quickpay\QuickpayProvider.pas';

{$R *.res}

var
  Container: TContainer;
  Card: ICard;

begin
  Container := GlobalContainer;
  BuildUpContainer(Container);

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
