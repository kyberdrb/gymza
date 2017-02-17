unit Upravit_Dialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin, DataTvary;

type
  TEdit = class(TForm)
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit3: TSpinEdit;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    SpinEdit4: TSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpinEdit5: TSpinEdit;
    procedure NastavenieParametrov(ATvar: TTvar);
    procedure Button1Click(Sender: TObject);
  private
    FTvar: TTvar;
  public
    { Public declarations }
  end;

var
  Edit: TEdit;
  function NastavenieTvaru(ATvar: TTvar): Boolean;

implementation

{$R *.dfm}

function NastavenieTvaru(ATvar: TTvar): Boolean;
begin
  Edit.NastavenieParametrov(ATvar);
  Result := (Edit.ShowModal = mrOK);
end;

procedure TEdit.Button1Click(Sender: TObject);
begin
  with FTvar do
  begin
    Sirka := SpinEdit1.Value;
    Vyska := SpinEdit2.Value;
    HrubkaCiary := SpinEdit3.Value;
    DlzkaSpice := SpinEdit4.Value;
    HrubkaSpice := SpinEdit5.Value;
    FarbaCiary := ColorBox1.Selected;
    Farba := ColorBox2.Selected;
  end;
end;

procedure TEdit.NastavenieParametrov(ATvar: TTvar);
begin
  FTvar := ATvar;
  SpinEdit1.Value := FTvar.Sirka;
  SpinEdit2.Value := FTvar.Vyska;
  SpinEdit3.Value := FTvar.HrubkaCiary;
  SpinEdit4.Value := FTvar.DlzkaSpice;
  SpinEdit5.Value := FTvar.HrubkaSpice;
  ColorBox1.Selected := FTvar.FarbaCiary;
  ColorBox2.Selected := FTvar.Farba;
end;

end.
