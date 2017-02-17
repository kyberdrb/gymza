unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
begin

Image1.Canvas.Brush.Color:= clYellow;
Image1.Canvas.Rectangle(10,10, 60, 110);


end;

procedure TForm1.Button2Click(Sender: TObject);
begin

Image1.Canvas.Brush.Color:= clRed;
Image1.Canvas.Ellipse(100, 100, 200, 200);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin

Image1.Canvas.Pen.Width:= 5;
Image1.Canvas.Pen.Color:= clBlue;
Image1.Canvas.MoveTo(10, 55);
Image1.Canvas.LineTo(110, 55 );
Image1.Canvas.MoveTo(55, 10);
Image1.Canvas.LineTo(55, 110 );


end;

procedure Tform1.Button4Click(Sender: TObject);
begin

Image1.Canvas.Font.Height:= 40;
Image1.Canvas.TextOut(160, 20, 'AHOJ!');


end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Image1.Canvas.Brush.Color:= clBlue;
Image1.Canvas.Rectangle(10, 40, 160, 100);
Image1.Canvas.Rectangle(50, 0, 120, 40);
Image1.Canvas.Brush.Color:= clRed;
Image1.Canvas.Ellipse(30, 85, 60, 115);
Image1.Canvas.Ellipse(110, 85, 140, 115);

end;

procedure TForm1.Button6Click(Sender: TObject);
begin

Image1.Canvas.Brush.Color:= clMaroon;
Image1.Canvas.Rectangle(250, 200, 300, 500);
Image1.Canvas.Brush.Color:= clGreen;
Image1.Canvas.Pen.Color:= clLime;
Image1.Canvas.Pen.Width:= 5;
Image1.Canvas.Ellipse(100, 0, 450, 300);

end;

end.
