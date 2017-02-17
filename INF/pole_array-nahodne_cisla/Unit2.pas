unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
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
  pole : array[1..10] of integer;
  i : integer;
  max, index : integer;
begin
  Memo1.Lines.Clear;
  for I := 1 to 10 do
    begin
      pole[i] := random(100);
    end;

  for I := 1 to 10 do
    begin
      Memo1.Lines.Add(IntToStr(pole[i]));
    end;

  max := pole[1];
  index := 1;
  for I := 2 to 10 do
    begin
      if pole[i] > max then
      begin
       max := pole[i];
       index := i;
      end;
    end;
  Edit1.Text := 'Najvacsie je ' + IntToStr(max) + ' na pozicii ' + IntToStr(index);

  //presunut najvacsi prvok na prve miesto a prvy prvok presunut na miesto najvacsieho prvku

end;

end.
