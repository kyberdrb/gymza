unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  i: integer;
  i_zvisle: integer;
  i_vodorovne: integer;
  pocet: integer;
begin
  pocet := SpinEdit1.Value;
  x:=0;
  y:=412;
  Image1.Canvas.FillRect(Rect(0,0,Image1.Width, Image1.Height));

  for i_zvisle := pocet downto 1 do
  begin

    for i_vodorovne := pocet downto 1 do
    begin
      Image1.Canvas.Rectangle(x, y-20, x+20, y);
      x:= x+20;
    end;
    pocet := pocet -1;
    y := y-20;
    x:=x-20*i_zvisle+1*pocet+7;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.FillRect(Rect(0,0,Image1.Width, Image1.Height));
end;

end.
