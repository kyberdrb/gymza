unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Memo3: TMemo;
    Label3: TLabel;
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
  FZoznam: TextFile;
  FZoznamPriezviska: TextFile;
  FZoznamVsetko: TextFile;
  meno: String;
  meno2: String;
begin
  AssignFile(FZoznam, 'zoznam_mena.txt');  //priradenie premennej k suboru
  Reset(FZoznam); //citaj premennu fzoznam
  AssignFile(FZoznamPriezviska, 'zoznam_priezviska.txt');
  Reset(FZoznamPriezviska);
  //AssignFile(FZoznamVsetko, 'zoznam_vsetko.txt');
  //ReWrite(FZoznamVsetko);

  while NOT EOF(FZoznam) do  //pokial NIE JE funkcia EOF pravdiva
  begin
    ReadLN(FZoznam, meno);   //citaj jeden riadok z premennej meno
    Memo1.Lines.Add(meno);   //pridaj riadok do Mema
    ReadLN(FZoznamPriezviska, meno2);
    Memo2.Lines.Add(meno2);
    //ReWrite(FZoznamVsetko);
    Memo3.Lines.Add(meno + ' ' + meno2);
  end;

  while NOT EOF(FZoznam) do  //pokial NIE JE funkcia EOF pravdiva
  begin
    WriteLN(FZoznam, meno);
    WriteLN(FZoznamPriezviska, meno2);
    //citaj prvy riadok z prveho suboru a prvy riadok z druheho suboru a spoj ich do jedneho Mema
    WriteLN(FZoznamVsetko, meno + meno2);
  end;

  try
    Memo3.Lines.SaveToFile('zoznam_vsetko.txt');
  finally

  end;

  CloseFile(FZoznam);  //uzavriet subor a ulozit zmeny
  CloseFile(FZoznamPriezviska);
  //CloseFile(FZoznamVsetko);


end;

end.
