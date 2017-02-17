unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
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
  retaz : String;
  index : Integer;
begin
  retaz := Edit1.Text;
  while pos('Ahoj', retaz) > 0 do
  begin
    index := pos(Edit1.Text, retaz);
    delete (retaz, index, length(Edit1.Text));
    insert ('@!+*', retaz, length(Edit2.Text));
    Memo1.Lines.Add(Edit1.Text);
  end;

end;

end.
