unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
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
  x, y, a: integer;
  I: Integer;
begin
  for I := 1 to SpinEdit1.Value do
  begin
    x:=random(Image1.Width-100);
    y:=random(Image1.Height-100);
    a:=random(100);
    Image1.Canvas.Rectangle(x, y, x+a, y+a);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Image1.Canvas.FillRect(Rect(0,0,Image1.Width, Image1.Height));
end;

end.
