unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
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
var
  x, y: integer;
  i, j: integer;
  pocet: integer;
begin
  x:=0;
  y:=390;
  pocet:=SpinEdit1.Value;
  Image1.Canvas.FillRect(Rect(0,0,Image1.Width, Image1.Height));

  for j := 1 to pocet do
  begin
    for i := 1 to pocet do
    begin
      Image1.Canvas.Rectangle(x, y-20, x+20, y);
      x:=x+10;
      y:=y-20;
    end;

    pocet:=pocet-1;
    y:=390;
    x:=20;
  end;

end;

end.
