unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  slovo : String;

begin
  slovo := Edit1.Text;

  slovo[SpinEdit1.Value] := Edit3.Text[1];
  Edit2.Text := slovo;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  I : Integer;
  slovo : String;
begin
  slovo := Edit1.Text;
    for I := 1 to length(slovo) do
    begin
        if slovo[I] = Edit4.Text[1]  then
        begin
           slovo[I] := Edit5.Text[1];
        end;
    end;
  Edit2.Text := slovo;
end;

end.
