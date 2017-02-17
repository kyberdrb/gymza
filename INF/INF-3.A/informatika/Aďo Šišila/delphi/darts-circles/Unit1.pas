unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i,j,r,x,y:integer;
begin
x:=100;
y:=200;
for j := 1 to 4 do
begin
for i := 10 downto 1 do begin

  r:=7*i;
  Image1.Canvas.Pen.Color:=random (256*256*256);
  Image1.Canvas.Brush.Color:=random (256*256*256);
  Image1.Canvas.Ellipse(x+r,y+r,x-r,y-r);
end;

x:=x+140;

end;

end;

end.
