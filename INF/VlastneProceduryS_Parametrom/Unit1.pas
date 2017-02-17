unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    SpinEdit1: TSpinEdit;
    ColorBox1: TColorBox;
    procedure Button1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure stvorceky(Count, PosX, PosY, R ,G ,B: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Image1.Canvas.FillRect(Rect(0, 0, Image1.Width, Image1.Height));
  stvorceky(SpinEdit1.Value, 0, 0, 255, 0, 0);
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Image1.Canvas.FillRect(Rect(0, 0, Image1.Width, Image1.Height));
  stvorceky(SpinEdit1.Value,x,y, 255, 0, 0);
end;

procedure TForm1.stvorceky(Count, PosX, PosY, R, G, B: Integer);
var
  x, y: integer;
  i, j: integer;
begin
  x:=PosX;
  y:=PosY;

  Image1.Canvas.Brush.Color:= clWhite;
  Image1.Canvas.Rectangle(-1, -1, Image1.Width +1, Image1.Height +1);
  //hodit r, g, b na samostatne spinedity
  Image1.Canvas.Brush.Color:= RGB(R, G, B);


  for i := 1 to SpinEdit1.Value  do
  begin
    for j := 1 to SpinEdit1.Value do
    begin
      Image1.Canvas.Rectangle(x, y, x+10, y+10);
      x:= x+10;
    end;
    x:= PosX;
    y:=y+10;
  end;

end;

end.
