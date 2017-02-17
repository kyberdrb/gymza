unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

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
const
  krok = 40;
var
  FObrazok:TextFile;
  x, y: Integer;
  znak: Char;
begin
  AssignFile(FObrazok, 'obrazok.txt');
  Reset(Fobrazok);
  x:= Image1.Width div 2;
  y:= Image1.Height div 2;
  Image1.Canvas.MoveTo(x, y);
  Image1.Canvas.Pen.Width := 3;
  while not EOF(Fobrazok) do
  begin
    Read(Fobrazok, znak);
    case znak of
      'v': Inc(x, krok);
      's': Dec(y, krok);
      'z': Dec(x, krok);
      'j': Inc(y, krok);
    end;
    Image1.Canvas.LineTo(x, y);
  end;
  CloseFile(Fobrazok);
end;

end.
