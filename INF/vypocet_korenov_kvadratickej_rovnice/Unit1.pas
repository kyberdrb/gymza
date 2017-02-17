unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpinEdit4: TSpinEdit;
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
var
  a, b, c, desatiny, rawdiskr: integer;
  diskr, x1, x2, citatel1, citatel2, menovatel: real;
  roundeddiskr, roundedx1, roundedx2: string;
begin
  a:= SpinEdit1.Value;
  b:= SpinEdit2.Value;
  c:= SpinEdit3.Value;
  desatiny:= SpinEdit4.Value;

  rawdiskr:= b*b-4*a*c;
  if rawdiskr < 0 then
  begin
    ShowMessage('Kvadraticka rovnica nema riesenie');
    // prerus proceduru / prerus podmienku if
    Abort;
  end
  else diskr:= sqrt(b*b-4*a*c);

  citatel1:=-b + diskr;
  citatel2:=-b - diskr;
  menovatel:=2*a;

  x1:=citatel1 / menovatel;
  x2:=citatel2 / menovatel;

  Str(diskr:0:desatiny, roundeddiskr);
  Str(x1:0:desatiny, roundedx1);
  Str(x2:0:desatiny, roundedx2);

  Label4.Caption:=('Diskriminant je ' + roundeddiskr + '. ');
  Label5.Caption:=('Korenmi kvadratickej rovnice su cisla ' + roundedx1 + ' a ' + roundedx2);
  //Label4.Caption:=('Diskriminant je ' + FloatToStr(diskr) + '. '{ + 'Citatel1 = ' + FloatToStr(citatel1) + ' Citatel2 = ' + FloatToStr(citatel2)});
  //Label5.Caption:=('Korenmi kvadratickej rovnice su cisla ' + FloatToStr(x1) + ' a ' + FloatToStr(x2));
end;

end.
