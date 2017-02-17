unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
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
  pole: array [0..100] of integer;
  i: Integer;
  sucet: integer;
  opakovanie: integer;
begin
  Memo1.Lines.Clear;
  opakovanie:= SpinEdit1.Value;
  sucet:=0;
    for i := 1 to opakovanie do
    begin
      pole[i]:=random(100)+1;

      if pole[i] < 30 then
      Memo1.Lines.Add(IntToStr(i) + '. ' + IntToStr(pole[i]+100));

      if (pole[i] >= 30) AND (pole[i] <= 60) then
      Memo1.Lines.Add(IntToStr(i) + '. ' + IntToStr(pole[i]));


      if pole[i] > 60 then
      begin
        Memo1.Lines.Add(IntToStr(i) + '. ' + IntToStr(pole[i]));
        sucet:=sucet+pole[i];
      end;

    end;
  Memo1.Lines.Add('Sucet prvkov vacsich ako 60 je ' + IntToStr(sucet) + '.');
end;

end.
