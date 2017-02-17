unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  I, cislo, zvysok, sucet,x, y: Integer;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
//timer start
Timer1.Enabled := True;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
//timer stop
Timer1.Enabled := False;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
//ciferny sucet - treba dokoncit - zamrza
  repeat
  zvysok := cislo mod 10;
  cislo := cislo div 10;
  sucet := cislo + zvysok;
  Image1.Canvas.TextOut(x, y+30, IntToStr(sucet));
  until cislo > 0;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Timer1.Enabled := False;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  cislo := random(999999)+1;
  Image1.Canvas.Font.Height := 30;
  x := 300;
  y := 100;
  Image1.Canvas.Rectangle(-1, -1, Image1.Width -1, Image1.Height -1);
    repeat
        zvysok := cislo mod 10;
        cislo := cislo div 10;
        Image1.Canvas.Font.Color := RGB(random(256), random(256), random(256));
        Image1.Canvas.TextOut(x, y, IntToStr(zvysok));
        x := x-30;
    until cislo=0;
end;



end.
