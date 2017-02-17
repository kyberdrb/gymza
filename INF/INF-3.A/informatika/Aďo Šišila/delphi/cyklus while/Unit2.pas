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
var
  x,velkost: integer;
    begin
      Image1.Canvas.Pen.Width:= 4;
      Image1.Canvas.Brush.Color:=clmaroon;
      x:=10;
      velkost:=10;
      while x+velkost<400 do
      begin
        Image1.Canvas.Rectangle(x,200,x+velkost,200-velkost);
        x:= x + velkost;
        velkost:= velkost + 15;
      end;

end;

end.
