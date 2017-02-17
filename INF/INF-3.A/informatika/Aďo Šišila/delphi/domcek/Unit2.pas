unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var x1,y1,x2,y2:integer;
procedure stvorec;
begin
x1:=200;
x2:=400;
y1:=200;
y2:=400;
Image1.Canvas.Font.Size:=20;
Image1.Canvas.Font.Color:=clgreen;
Image1.Canvas.TextOut(200,430,'A.Š.');
Image1.Canvas.MoveTo(x1,y1);
Image1.Canvas.LineTo(300,100);
Image1.Canvas.MoveTo(x2,y1);
Image1.Canvas.LineTo(300,100);
Image1.Canvas.Brush.Color:=clblue;
Image1.Canvas.Rectangle(x1,y1,x2,y2);


end;
Begin
stvorec;
end;

end.
