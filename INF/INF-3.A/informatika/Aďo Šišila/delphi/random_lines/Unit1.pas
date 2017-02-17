unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
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

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var i : integer;
begin
for i := 1 to 100 do

begin
Image1.Canvas.Pen.Color:=random(256*256*256);
Image1.Canvas.MoveTo(0, 0);
Image1.Canvas.LineTo(4*i, 600);

end
end;

procedure TForm1.Button2Click(Sender: TObject);

var i : integer;
begin
for i := 0 to 31 do

begin


Image1.Canvas.MoveTo(10*i, 0);
Image1.Canvas.LineTo(0, 300-10*i);





end;
end;


end.
