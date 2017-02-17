unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  teploty: array [1..5] of integer;
  sirka: integer;
  i: integer;
  pocet_dni: Integer;
  teplota: integer;
  x: integer;
begin
  pocet_dni:=SpinEdit1.Value;
  x:=0;
  Image1.Canvas.FillRect(Rect(0, 0, Image1.Height, Image1.Width));

  for i := 1 to pocet_dni do
  begin
    teploty[i]:=StrToInt(InputBox('Teploty', 'Zadaj teplotu pre každý deò', ''));
  end;


  sirka:=Image1.Width div pocet_dni;
  for i := 1 to pocet_dni do
  begin
    Image1.Canvas.Brush.Color := clYellow;
    Image1.Canvas.Rectangle(x, teploty[i]*10, x+sirka, Image1.Width);
    x:=x+sirka;
    Image1.Canvas.Brush.Color := clBlack;
    if teploty[i]*10 > 10 then
    begin
    end;

end;



end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Image1.Canvas.FillRect(Rect(0, 0, Image1.Width, Image1.Height));
end;

end.
