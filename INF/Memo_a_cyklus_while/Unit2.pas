unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
begin
  if Memo1.Lines.Count >= SpinEdit1.Value then
  begin
    Memo1.Lines.Add(Edit1.Text)
  end
  else
  begin
    while Memo1.Lines.Count < SpinEdit1.Value do
    begin
      Memo1.Lines.Add('');
    end;
    Memo1.Lines.Add(Edit1.Text);
  end;

end;

end.
