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

var i,x,y,r: integer;
begin
x:=250;
y:=250;
for i := 10 downto 1 do

begin
r:=50*i;
Image1.Canvas.Brush.Color:= random(256*256*256);
Image1.Canvas.Rectangle(x-r,y-r, x+r, y+r);



end;
end;

end.
