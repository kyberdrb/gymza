unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

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
  Fsubor: textfile;
  subor: string;
  PosX, PosY, FontSize: Integer;
begin
  AssignFile(Fsubor, 'subor.txt');
  Reset(Fsubor);
  Image1.Canvas.FillRect(Image1.ClientRect);

while NOT EOF(Fsubor) do
  begin
    ReadLN(Fsubor, subor);
    Read(Fsubor, PosX, PosY, FontSize);
    Image1.Canvas.Font.Size:= FontSize;
    Image1.Canvas.TextOut(PosX, PosY, subor);
    ReadLN(Fsubor);
  end;
end;

end.
