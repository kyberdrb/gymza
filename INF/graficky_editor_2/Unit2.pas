unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin;

type
  TForm2 = class(TForm)
    Image1: TImage;
    ColorBox1: TColorBox;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Button1: TButton;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    ComboBox2: TComboBox;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  xx, yy: Integer;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  //spust colordialog
  ColorDialog1.Execute();
  //farba obrysu sa preberie s colordialogu
  Image1.Canvas.Pen.Color:=ColorDialog1.Color;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Image1.Canvas.FillRect(Image1.ClientRect);
end;

procedure TForm2.ColorBox1Change(Sender: TObject);
begin
  //pri zmene farby v colorboxe, nastav tuto farbu
  Image1.Canvas.Pen.Color:= ColorBox1.Selected;
end;

procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
  i, z: Integer;
begin
  //ciara
  if (Shift=[ssLeft]) and (ComboBox1.ItemIndex=0)then
    begin
      Image1.Canvas.MoveTo(x, y);
      Image1.Canvas.Pen.Width:= SpinEdit1.Value;
      Image1.Canvas.Pen.Color:=ColorDialog1.Color;
    end;
  //stvorec (prerobit na zmenu rozmerov tahanim mysou)
  if (Shift=[ssLeft]) and (ComboBox1.ItemIndex=1) then
    begin
      Image1.Canvas.Pen.Width:= SpinEdit1.Value;
      Image1.Canvas.Rectangle(x, y, x+100, y+100);
    end;
  //elipsa (prerobit na zmenu rozmerov tahanim mysou)
  if (Shift=[ssLeft]) and (ComboBox1.ItemIndex=2) then
    begin
      Image1.Canvas.Pen.Width:= SpinEdit1.Value;
      Image1.Canvas.Ellipse(x, y, x+100, y+100);
    end;
  //sustredene stvorce
  if (Shift=[ssLeft]) and (ComboBox1.ItemIndex=3) then
    for i := SpinEdit2.Value downto 1 do
      begin
        x:=X;
        y:=Y;
        z:=10;
        Image1.Canvas.Pen.Color:=ColorDialog1.Color;
        Image1.Canvas.Pen.Width:= SpinEdit1.Value;
        Image1.Canvas.Rectangle(x-z*i, y-z*i, x+z*i, y+z*i);
      end;
  //sustredene kruhy
  if (Shift=[ssLeft]) and (ComboBox1.ItemIndex=4) then
    for i := SpinEdit2.Value downto 1 do
      begin
        x:=X;
        y:=Y;
        z:=10;
        Image1.Canvas.Pen.Color:=ColorDialog1.Color;
        Image1.Canvas.Pen.Width:= SpinEdit1.Value;
        Image1.Canvas.Ellipse(x-z*i, y-z*i, x+z*i, y+z*i);
      end;

end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (Shift=[ssLeft]) AND (ComboBox1.ItemIndex=0)then
    begin
      Image1.Canvas.LineTo(x, y);
    end;
  //if (Shift=[ssLeft]) AND (ComboBox1.ItemIndex=1) then Canvas.Rectangle(xx,yy, x, y); PROBLEM
end;

procedure TForm2.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  xx:=x;
  yy:=y;
  //stvorec
  if (Shift=[ssLeft]) and (ComboBox1.ItemIndex=1) then
    begin
      Image1.Canvas.Rectangle(x, y, xx, yy);
    end;
  //elipsa
  if (Shift=[ssLeft]) and (ComboBox1.ItemIndex=2) then
    begin
      Image1.Canvas.Ellipse(x, y, x+100, y+100);
    end;

end;

end.
