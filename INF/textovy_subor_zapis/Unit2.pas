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
  FTextFile: TextFile;
  ZoznamTextu: String;
  meno: String;
  znak: Char;
  pocet_riadkov: Integer;
  pocet_medzier: Integer;
  pocet_znakov: Integer;
  pole_znakov: array['a'..'z'] of Integer;
  i: char;
begin
  AssignFile(FTextFile, 'beispiel.txt');
  Reset(FTextFile);
  Memo1.Lines.Clear;

  //vypisanie obsahu textoveho suboru do mema
  pocet_riadkov:=0;
  while NOT EOF(FTextFile) do
  begin
    ReadLN(FTextFile, meno);
    Memo1.Lines.Add(meno);
    inc(pocet_riadkov);
  end;

  Reset(FTextFile);
  pocet_medzier:=0;
  pocet_znakov:=0;
  while NOT EOF(FTextFile) do
  begin
    Read(FTextFile, znak);
    inc(pocet_znakov);
    if znak = ' ' then
    begin
      inc(pocet_medzier);
    end;
  end;

  {for i := 'a' to 'z' do
  begin
    pole_znakov[i]:= 0;
  end;}


Memo1.Lines.Add('');
Memo1.Lines.Add('tento subor ma ' + IntToStr(pocet_riadkov) + ' riadkov, ' + IntToStr(pocet_medzier) + ' medzier a celkovy pocet znakov je ' + IntToStr(pocet_znakov) + '.');
//Memo1.Lines.Add(IntToStr(pole_znakov[i]) + ' = ' + i);

end;

end.
