unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Image1: TImage;
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
    cislo, pomoc, nove:integer;
begin

  cislo:=14286;
  pomoc:=cislo;
  nove:=0;

  while pomoc <> 0 do //znak <> znamen·, ûe premenn· m· byù rÙzna od nuly
    begin
      nove:=nove*10 + pomoc mod 10;
      pomoc:= pomoc div 10;
  end;
  Image1.Canvas.Font.Height :=30;
  Image1.Canvas.TextOut(20,50, 'prevr·tenÈ ' + IntToStr(cislo) + ' je ' + IntToStr(nove));

end;

end.
