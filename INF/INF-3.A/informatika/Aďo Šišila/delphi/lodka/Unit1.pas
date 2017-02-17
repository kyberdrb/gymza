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
begin


Image1.Canvas.MoveTo(20, 100);
Image1.Canvas.LineTo(50, 200);

Image1.Canvas.MoveTo(50, 200);
Image1.Canvas.LineTo(190, 200);

Image1.Canvas.MoveTo(190, 200);
Image1.Canvas.LineTo(220, 100);

Image1.Canvas.MoveTo(220, 100);
Image1.Canvas.LineTo(20, 100);



Image1.Canvas.Brush.Color:= clBlack;
Image1.Canvas.Rectangle(110, 40, 130, 70);

Image1.Canvas.Brush.Color:= clBlue;
Image1.Canvas.Rectangle(70, 70, 160, 100);

Image1.Canvas.Brush.Color:= clWhite;
Image1.Canvas.Ellipse(75, 75, 100, 100);

Image1.Canvas.Brush.Color:= clWhite;
Image1.Canvas.Ellipse(120, 75, 145, 100);

end;

end.
