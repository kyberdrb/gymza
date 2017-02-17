unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm2 = class(TForm)
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function mocnina(num, exp: integer): real;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  if (SpinEdit1.Value=0) AND (SpinEdit2.Value=0) then
  begin
    Label1.Caption:= 'Undefined';
  end

  else
    Label1.Caption:= FloatToStr(mocnina(SpinEdit1.Value, SpinEdit2.Value));
end;

function TForm2.mocnina(num, exp: Integer): real;
var
  tempnum, i: integer;
begin
  tempnum:=1;

  for I := 1 to abs(exp) do
  begin
    tempnum:= tempnum*num;
  end;

  if exp < 0 then
  begin
    Result:= 1 / tempnum;
  end

  else
  begin
    Result:= tempnum;
  end;
end;

end.
