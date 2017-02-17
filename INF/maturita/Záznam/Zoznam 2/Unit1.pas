unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Label10: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation  {$R *.dfm}

Type Tosoba = record    // Definovanie z·znamu Type n·zov = record
  meno : string;
  Vaha : byte;         // Definujeme prvky, ktorÈ bude obsahovaù
  Vyska : byte;
end;

var osoba: array [1..255] of Tosoba;
    n : byte;
    // mÙûeme vytvoriù pole z·znamov

procedure TForm1.Button1Click(Sender: TObject);

  begin

    inc(n);

    osoba[n].meno:=edit1.text;
    osoba[n].vaha:=spinedit1.Value;
    osoba[n].vyska:=spinedit2.Value;
      // prid·vanie hodnÙù po kliknutÌ

    label1.Caption :=('Poradie: ' + inttostr(n) + '.');
    label2.Caption :=('Meno: ' + osoba[n].meno);
    label3.Caption :=('V·ha: ' + inttostr(osoba[n].vaha) + ' kg');
    label4.Caption :=('V˝öka: ' + inttostr(osoba[n].vyska) + ' cm');
       // vypÌöe posledn˙ zadan˙ hodnotu
  end;

procedure TForm1.Button2Click(Sender: TObject);
  var
    i : byte;
  begin
    memo1.lines.clear;
    For i := 1 to n do begin
      Memo1.lines.Add('Poradie: ' + inttostr(i) + '.');
      Memo1.lines.Add('Meno: ' + osoba[i].meno);
      Memo1.lines.Add('V·ha: ' + inttostr(osoba[i].vaha) + ' kg');
      Memo1.lines.Add('V˝öka: ' + inttostr(osoba[i].vyska) + ' cm');
      Memo1.lines.Add(' ');
        // zapÌsanie vöetk˝ch hodnÙt do mema.
    end;
  end;
end.
