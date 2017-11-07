unit Main;

interface

uses
  Spring.Container,
  ICardInterface,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFormMain = class(TForm)
    CardProviders: TRadioGroup;
    EditAmount: TEdit;
    BtnCollect: TButton;
    StatusBar1: TStatusBar;
    procedure CardProvidersClick(Sender: TObject);
    procedure BtnCollectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  Card: ICard;

implementation

{$R *.dfm}

procedure TFormMain.BtnCollectClick(Sender: TObject);
var
  Response: string;
begin
  if Card.Collect(strtofloat(EditAmount.Text), Response) then
  begin
    StatusBar1.SimpleText := Response;
  end;
end;

procedure TFormMain.CardProvidersClick(Sender: TObject);
begin
  Card := GlobalContainer.Resolve<ICard>(AnsiLowerCase(CardProviders.Items[CardProviders.ItemIndex]));
  BtnCollect.Enabled := Assigned(Card);
end;

end.
