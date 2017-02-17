unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

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
var i : integer;
begin
for i := 1 to 100 do begin

Image1.Canvas.Font.Color:=random(256*256*256);
Image1.Canvas.Brush.Color:=random(256*256*256);
Image1.Canvas.Font.Name:= 'Arial';
Image1.Canvas.Font.Size:= 20;
Image1.Canvas.TextOut(random(500),random(500),'Andrejko');

end;
end;

end.
