unit CifernySucet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  cislo, zvysok, sucet, x: Integer;
begin
  sucet:=0;
  x := 130;
  cislo:= StrToInt(Edit1.Text); //123
  while cislo > 0 do
  begin
    zvysok := cislo mod 10;  //3
    cislo := cislo div 10;   //12
    sucet := sucet + zvysok; //0+3
    Image1.Canvas.TextOut(x,0, IntToStr(zvysok));
    x := x+15;
  end;
  Image1.Canvas.Font.Color := random(RGB(255, 255, 255));
  Image1.Canvas.TextOut(0,0, IntToStr(sucet));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Font.Height := 32;
end;

end.
