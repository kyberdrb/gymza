unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    SpinEditVyska: TSpinEdit;
    SpinEditVaha: TSpinEdit;
    EditMeno: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    Label5: TLabel;
    LabelMeno: TLabel;
    LabelVyska: TLabel;
    LabelVaha: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TOsoba = record
    vyska: byte;
    vaha: byte;
    meno: string;
  end;

var
  Form1: TForm1;
  osoba: array [1..255] of TOsoba;
  n: byte;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  inc(n); //zvacsi poradove cislo osoby o +1

  with osoba[n] do
  begin
    vyska := SpinEditVyska.Value;
    vaha := SpinEditVaha.Value;
    meno :=   EditMeno.Text;
  end;

  //priradenie udajov z osoby do labelov "Posledna pridana osoba"
  begin
    LabelVyska.Caption := 'Výška: ' + IntToStr(osoba[n].vyska) + 'cm';
    LabelVaha.Caption := 'Váha: ' + IntToStr(osoba[n].vaha) + 'kg';
    LabelMeno.Caption := 'Meno: ' + osoba[n].meno;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  //vypis vsetky osoby do mema, kazdy udaj na osobitny riadok, vynechad 1 riadok medzi osobami
  Memo1.Lines.Clear;

  for I := 1 to n do
    begin
      with Memo1 do
      begin
        Lines.Add('Poradové è. ' + IntToStr(n));
        Lines.Add(osoba[n].meno);
        Lines.Add(IntToStr(osoba[n].vyska) + ' cm');
        Lines.Add(IntToStr(osoba[n].vaha) + ' kg');
        Lines.Add('');
      end;
    end;
end;

end.
