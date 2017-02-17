unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Image1: TImage;
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
  slovo : String;
  I, x : Integer;
  dlzka_slova : Integer;
begin
  slovo := Edit1.Text; //zadaj slovo
  dlzka_slova := length(slovo); //zisti dlzku slova
  x := 10; //zakladna x suradnica
  Image1.Canvas.Rectangle(-1, -1, Image1.Width+1, Image1.Height+1); // vymaz predosle slovo
  for I := 1 to dlzka_slova do // opakuj cyklus tolko krat, kolko pismen ma slovo
  begin
    if I mod 2 = 0 then // ak je cyklus parny
    begin
      Image1.Canvas.Font.Height := 30;
      Image1.Canvas.Font.Color := clRed;
    end
    else
    begin
      Image1.Canvas.Font.Height := 15;
      Image1.Canvas.Font.Color := clBlack;
    end;
    Image1.Canvas.TextOut(x, 10, slovo[I]); // vypis slovo
    x := x + 20; //prirad x suradnici posunutie o nejaky pocet pixelov
  end;


end;

end.
