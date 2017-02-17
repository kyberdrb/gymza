unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Sprava, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    PageControl_Ulohy: TPageControl;
    TabSheet_Ulohy: TTabSheet;
    ListBox1: TListBox;
    Splitter1: TSplitter;
    Edit1: TEdit;
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
begin
  //ListBox1.AddItem();
end;

end.
