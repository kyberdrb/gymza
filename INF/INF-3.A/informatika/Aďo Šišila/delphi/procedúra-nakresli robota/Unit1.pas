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
  procedure hlava;
  begin
    Image1.Canvas.Brush.Color:= clred;
    Image1.Canvas.Rectangle(50,50,400,400);
  end;

  procedure oci ;
  begin
    Image1.Canvas.Brush.Color:= clpurple;
    Image1.Canvas.Rectangle(100,75,160,135);
    Image1.Canvas.Rectangle(300,75,360,135);
  end;

  procedure nos ;
  begin
    Image1.Canvas.Brush.Color:= clnavy;
    Image1.Canvas.Rectangle(200,200,250,270);
  end;

  procedure usta ;
  begin
    Image1.Canvas.Brush.Color:= clmaroon;
    Image1.Canvas.Rectangle(75,320,375,375);
  end;
begin
hlava;
oci;
nos;
usta;
end;

end.
