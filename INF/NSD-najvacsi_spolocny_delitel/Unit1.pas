unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Button1: TButton;
    Memo1: TMemo;
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
  a, b: integer;
begin
  a:=SpinEdit1.Value;
  b:=SpinEdit2.Value;

  while a <> b do
  begin
    if a > b then
    begin
      a:= a-b;
    end

    else
    begin
      b:=b-a;
    end;
  end;
  Memo1.Lines.Clear;
  Memo1.Lines.Add(IntToStr(a));
end;

end.
