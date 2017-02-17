unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
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
procedure stvorce(x,y,strana:integer);
begin
Image1.Canvas.Brush.Color:= random(256*256*256);
Image1.Canvas.Rectangle(x,y,x+strana,y+strana);
end;
  begin


  stvorce(50,150,50);
  stvorce(100,100,100);
  stvorce(200,50,150);



  end;

end.
