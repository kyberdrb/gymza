unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo3: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  FCislaA, FCislaB, FSucet: TextFile;
  nahodne_dvojcislie, nahodne_dvojcislie2: integer;
  cislo1, cislo2, sucet : integer;

implementation

{$R *.dfm}

//Generuj - vygeneruje 5 nahodnych cisel od 1 - 99 do dvoch memo objektov a zapise do suboru cislaA.txt (1. stlpec) a cislaB.txt (2. stlpec)
//Spocitaj - spocita 1. cislo z 1. suboru a . cislo 2. suboru a zapise do suboru sucet.txt
procedure TForm2.Button1Click(Sender: TObject);
var
  i: integer;
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;

  for i := 1 to SpinEdit1.Value do
  begin
    nahodne_dvojcislie := random(99) +1;
    Memo1.Lines.Add(IntToStr(nahodne_dvojcislie));
  end;

  for i := 1 to SpinEdit1.Value do
  begin
    nahodne_dvojcislie2 := random(99) +1;
    Memo2.Lines.Add(IntToStr(nahodne_dvojcislie2));
  end;

  Memo1.Lines.SaveToFile('cislaA.txt');
  Memo2.Lines.SaveToFile('cislaB.txt');
  Memo3.Lines.Clear;

end;


procedure TForm2.Button2Click(Sender: TObject);
begin
  AssignFile(FCislaA, 'cislaA.txt');
  Reset(FCislaA);

  AssignFile(FCislaB, 'cislaB.txt');
  Reset(FCislaB);

  AssignFile(FSucet, 'sucet.txt');
  ReWrite(FSucet);

  Memo3.Lines.Clear;
  while NOT EOF(FCislaA) do
  begin
    ReadLN(FCislaA, cislo1);
    ReadLN(FCislaB, cislo2);
    sucet := cislo1 + cislo2;
    Memo3.Lines.Add(IntToStr(sucet));
    WriteLN(FSucet, sucet);
  end;

  CloseFile(FCislaA);
  CloseFile(FCislaB);
  CloseFile(FSucet);
end;

end.
