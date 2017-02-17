unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
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
var i,j,x,y,r:integer;
begin
  Image1.Canvas.Brush.Color:= clRed;

    r:=10;
    y:=30;

  for j := 1 to 10 do;
begin
  x:=50;
  for i := 1 to j do;
begin
  Image1.Canvas.Ellipse(x-r,y-r,x+r,x+r);
    x:=x+2*r;
end;
  y:=y+2*r;
end;
end;
end.
