unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
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
AMsgTyp: TMsgDlgType;
ATlacidla: TMsgDlgButtons;
ASprava: String;
AVysledok: Integer;
begin
  ASprava := Edit1.Text;
  //message type
  case RadioGroup1.ItemIndex of
    0:  AMsgTyp := mtInformation;
    1:  AMsgTyp := mtWarning;
    2:  AMsgTyp := mtError;
  end;
  //buttons
  ATlacidla := [];
    if CheckBox1.Checked then Include(ATlacidla, mbYes);
    if CheckBox2.Checked then Include(ATlacidla, mbNo);
    if CheckBox3.Checked then Include(ATlacidla, mbCancel);

    //result
    AVysledok := MessageDlg(ASprava , AMsgTyp, ATlacidla, 0);
end;

end.
