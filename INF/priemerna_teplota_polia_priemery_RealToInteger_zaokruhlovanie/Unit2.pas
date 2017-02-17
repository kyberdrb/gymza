unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
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
  dni_v_tyzdni: array[1..31] of Integer;
  sucet: Integer;
  priemerna_teplota: Real;
  zaokruhlena_priemerna_teplota: Integer;
  prekrocenie_teploty: Integer;
  I: Integer;
begin
Memo1.Lines.Clear;
for I := 1 to 31 do
  begin
    dni_v_tyzdni[i]:= random(21)+5;
    Memo1.Lines.Add(IntToStr(dni_v_tyzdni[i]));
  end;

sucet := 0;
for I := 1 to 31 do
  begin
    sucet := dni_v_tyzdni[i] + sucet;
  end;

  priemerna_teplota:= sucet / 31;
  zaokruhlena_priemerna_teplota := Round(priemerna_teplota);
  Memo1.Lines.Add('Priemerná teplota je ' + IntToStr(zaokruhlena_priemerna_teplota) + '°C');

for I := 1 to 31 do
  begin
    if zaokruhlena_priemerna_teplota < dni_v_tyzdni[i] then
    begin
      Memo1.Lines.Add(IntToStr(i));
    end;
  end;




end;

end.
