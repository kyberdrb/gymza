unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
var
  I, x: Integer;
begin
  x := 0;
    for I := 1 to SpinEdit1.Value do
    begin
      Image1.Canvas.Pen.Color := clBlack;
      Image1.Canvas.MoveTo(x, 0);
      Image1.Canvas.LineTo(x, 100);
      x := x+40;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I, x: Integer;
begin
  x := 20;
  for I := 1 to SpinEdit1.Value do
    begin
      Image1.Canvas.Pen.Color := clRed;
      Image1.Canvas.MoveTo(x, 0);
      Image1.Canvas.LineTo(x, 200);
      x := x+40;
    end;
end;

end.
