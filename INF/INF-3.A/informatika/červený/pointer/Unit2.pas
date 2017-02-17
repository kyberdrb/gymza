unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  P: Pointer;
  PInt: ^Integer;
  I, J: Integer;
begin
  i :=17;
  P := @I;
  Memo1.Lines.Add(IntToStr(I));
  J := Integer (P);
  Memo1.Lines.Add(IntToStr(J));
  PInt := @I;
  PInt^ := 20;
  Memo1.Lines.Add(IntToStr(I));
end;

end.
