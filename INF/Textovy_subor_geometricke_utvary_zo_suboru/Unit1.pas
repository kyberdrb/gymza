unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Controls,
  StdCtrls, Classes, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
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
  krok=40;
var
  FKresba: TextFile;
  x, y, a, b: integer;
  znak: char;
begin
  AssignFile(FKresba, 'kresba.txt');
  Reset(FKresba);
  x:= Image1.Width div 2;
  y:= Image1.Height div 2;
  Image1.Canvas.Brush.Style:= bsClear;

  while NOT EOF(FKresba) do
  begin
    Read(FKresba, znak);
    case znak of
      'k':
      begin
        Read(FKresba, x, y, a);
        Image1.Canvas.Ellipse(x-a, y-a, x+a, y+a);
      end;
    end;

    case znak of
      's':
      begin
        Read(FKresba, x, y, a);
        Image1.Canvas.Rectangle(x-a, y-a, x+a, y+a);
      end;
    end;

    case znak of
      'o':
      begin
        Read(FKresba, x, y, a, b);
        Image1.Canvas.Rectangle(x, y, x+a, y+b);
      end;
    end;

    case znak of
      'u':
      begin
        Read(FKresba, x, y, a, b);
        with Image1.Canvas do
        begin
          MoveTo(x, y);
          LineTo(x+a, y+b);
        end;
      end;
    end;
    ReadLN(FKresba);
  end;
  CloseFile(FKresba);
end;

end.
