unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
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
//rozostupy 20, dlzka neparnej ciary 200, dlzka parnej ciary 100
var
  x,yp, yn, rozostup, i : Integer;
begin
  yp := 100;
  yn := 200;
  x := 0;
  rozostup := 20;

  Image1.Canvas.Rectangle(-1, -1, Image1.Width+1, Image1.Height+1);
  for i := 0 to SpinEdit1.Value do
    begin
    //parne
    if SpinEdit1.Value mod 2 = 0 then
    begin

      Image1.Canvas.MoveTo(x+rozostup, 0);
      Image1.Canvas.LineTo(x+rozostup, yp);

    end
    else
    if SpinEdit1.Value mod 2 = 1 then

    //neparne
    begin

      Image1.Canvas.MoveTo(x+2*rozostup, 0);
      Image1.Canvas.LineTo(x+2*rozostup, yn);

    end;
    x := x + rozostup;
  end;

end;

end.
