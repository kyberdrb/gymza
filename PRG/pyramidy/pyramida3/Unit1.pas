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
  x, y, z: integer;
  i, j: integer;
  pocet: integer;
begin
  pocet:=SpinEdit1.Value;
  x:=0;
  z := 0;
  y:=Image1.Height;
  for i := pocet downto 1 do
  begin
    for j := 1 to i do
    begin
      Image1.Canvas.Rectangle(x, y-20, x+20, y);
      x:=x+20;
    end;
    z := z + 10;
    x:=z;
    y:=y-20;
  end;

end;

end.
