unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

 var //glob�lne prememnn� zad�vame pred proced�rou
 x:integer=10;
 y:integer=100;
procedure TForm2.Button1Click(Sender: TObject);
  procedure clean;
    begin
      Image1.Canvas.Brush.Color:=clwhite;
      Image1.Canvas.FillRect(Image1.ClientRect);
    end;
  procedure bowl;
    begin
      Image1.Canvas.Brush.Color:=clred;
      Image1.Canvas.Ellipse(x+30, y-15, x-0,y+15);
    end;
begin
  clean;
  bowl;
  x:=x+10;
  if x>Image1.Width then
  x:=-100;
end;
procedure TForm2.Button2Click(Sender: TObject);
procedure clean;
    begin
      Image1.Canvas.Brush.Color:=clwhite;
      Image1.Canvas.FillRect(Image1.ClientRect);
    end;
  procedure bowl;
    begin
      Image1.Canvas.Brush.Color:=clred;
      Image1.Canvas.Ellipse(x+30, y-15, x-0,y+15);
    end;
begin
  clean;
  bowl;
  x:=x-10;
  if x>Image1.Width then
  x:=+500;
end;


procedure TForm2.Button3Click(Sender: TObject);
procedure clean;
    begin
      Image1.Canvas.Brush.Color:=clwhite;
      Image1.Canvas.FillRect(Image1.ClientRect);
    end;
  procedure bowl;
    begin
      Image1.Canvas.Brush.Color:=clred;
      Image1.Canvas.Ellipse(x+30, y-15, x-0,y+15);
    end;
begin
  clean;
  bowl;
  y:=y-10;
  if x>Image1.Height then
  y:=500;
end;

procedure TForm2.Button4Click(Sender: TObject);
procedure clean;
    begin
      Image1.Canvas.Brush.Color:=clwhite;
      Image1.Canvas.FillRect(Image1.ClientRect);
    end;
  procedure bowl;
    begin
      Image1.Canvas.Brush.Color:=clred;
      Image1.Canvas.Ellipse(x+30, y-15, x-0,y+15);
    end;
begin
  clean;
  bowl;
  y:=y+10;
  if x>Image1.Height then
  y:=0;
end;

end.
