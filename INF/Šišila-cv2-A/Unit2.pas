unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Spin;

type
  TForm2 = class(TForm)
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Image1: TImage;
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
i, z: Integer;
begin
   z := 0;
   for i := 1 to SpinEdit1.Value do
   begin
      if SpinEdit1.Value mod 2 = 0 then
      begin
        z := z+20;
        Image1.Canvas.MoveTo(0+z, 0);
        Image1.Canvas.LineTo(0+z, 100);
      end;
      if SpinEdit1.Value mod 2 = 1 then
      begin
        z := z+20;
        Image1.Canvas.MoveTo(10+z, 0);
        Image1.Canvas.LineTo(10+z, 200);
      end;
   end;

end;

end.
