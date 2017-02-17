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
var
x,y,x1,y1: integer;
procedure circle;
begin
  x:=100;
  y:=100;
  x1:=500;
  y1:=500;
  Image1.Canvas.Ellipse(x,y,x1,y1);
end;
  begin
  circle;
  end;

end.
