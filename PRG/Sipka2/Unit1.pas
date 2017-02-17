unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, UnitSipka;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SpinEdit1: TSpinEdit;
    Sipka1: TSipka;
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
begin
  Sipka1.Left := Sipka1.Left + 10;
  Invalidate;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Sipka1.Left := Sipka1.Left - 10;
  Invalidate;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Sipka1.Top := Sipka1.Top - 10;
  Invalidate;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Sipka1.Top := Sipka1.Top + 10;
  Invalidate;
end;

{$Region'Vlastnosti sipky                                                     '}
procedure TForm1.ColorBox1Change(Sender: TObject);
begin
  Sipka1.Pen.Color := ColorBox1.Selected;
  Invalidate;
end;

procedure TForm1.ColorBox2Change(Sender: TObject);
begin
  Sipka1.Brush.Color := ColorBox2.Selected;
  Invalidate;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
    case ComboBox1.ItemIndex of
    0 : Sipka1.DruhTvaru := tvSipkaDoprava;
    1 : Sipka1.DruhTvaru := tvSipkaDolava;
    2 : Sipka1.DruhTvaru := tvSipkaHore;
    3 : Sipka1.DruhTvaru := tvSipkaDole;
  end;
  Invalidate;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  Sipka1.Pen.Width := SpinEdit1.Value;
  Invalidate;
end;
procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  Sipka1.Width := SpinEdit2.Value;
  Invalidate;
end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
  Sipka1.Height := SpinEdit3.Value;
  Invalidate;
end;

{$EndRegion}

procedure TForm1.FormCreate(Sender: TObject);
begin
  with Sipka1 do
  begin
    Left := 100;
    Top := 100;
    Width := SpinEdit2.Value;
    Height := SpinEdit3.Value;
    Pen.Color := ColorBox1.Selected;
    Brush.Color := ColorBox2.Selected;
    Pen.Width := SpinEdit1.Value;
  end;
end;

end.
