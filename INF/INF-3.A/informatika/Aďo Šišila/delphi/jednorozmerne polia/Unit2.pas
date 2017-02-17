unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
type //definovanie typu
  index= 1..20;
  pole = array [index]of Integer;
var // deklaracia premenných
  p:pole;
  i:index;
  x, sirka: Integer;
procedure TForm2.Button1Click(Sender: TObject);
begin
  Image1.Canvas.Brush.Color:= clWhite;
  Image1.Canvas.FillRect(Image1.ClientRect)  //zmaže plochu
  Randomize;
    for i := 1 to 20 do
      p[i] :=Random(256*256*256);
      sirka:=400 div 20
    for i := 1 to 20 do
      begin

      end;
end;

end.
