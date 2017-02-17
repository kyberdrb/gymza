unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  TeeProcs, TeCanvas;


procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  P: TPoint;
  R: TRect;
begin
  P.X := X;
  P.Y := Y;
  if PointInEllipse(P, 10,60,300,245) then
    Label1.Caption := 'Elipsa'
  else
  if PointInPolygon(P, [Point(180, 20), Point(350, 20), Point(350, 300), Point(180, 300)]) then
    Label1.Caption := 'obdlznik'
  else
    Label1.Caption := '???';
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  with PaintBox1.Canvas do
  begin
    Brush.Color := clRed;
    Rectangle(180, 20, 350, 300);
    Brush.Color := clBlue;
    Ellipse(10,60,300,245);

  end;
end;

end.
