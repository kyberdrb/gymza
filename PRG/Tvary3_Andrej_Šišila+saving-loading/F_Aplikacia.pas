unit F_Aplikacia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ActnMan, ActnCtrls,
  ImgList, ActnList, ExtCtrls, StdCtrls, CheckLst,
  DataTvary, ActnMenus, ActnColorMaps, PlatformDefaultStyleActnCtrls, Spin,
  Upravit_Dialog, Menus, System.Actions;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    ImageList16x16: TImageList;
    aaTrojuholnikR: TAction;
    aaOval: TAction;
    aaSipka3: TAction;
    aaSipka6: TAction;
    aaObdlznik: TAction;
    aaTrojuholnikP: TAction;
    ListBoxTvary: TCheckListBox;
    Splitter1: TSplitter;
    pnPozadie: TPanel;
    PaintBox1: TPaintBox;
    ImageList32x32: TImageList;
    aaEdit: TAction;
    ActionToolBar1: TActionToolBar;
    Panel1: TPanel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    aaSave: TAction;
    aaOpen: TAction;
    PopupMenu1: TPopupMenu;
    Upravi1: TMenuItem;
    Sp1: TMenuItem;
    Vystrih1: TMenuItem;
    Koprova1: TMenuItem;
    Prilepi1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Odstrnitvar1: TMenuItem;
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure aaObdlznikExecute(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure aaOvalExecute(Sender: TObject);
    procedure aaTrojuholnikPExecute(Sender: TObject);
    procedure aaSipka3Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure aaEditExecute(Sender: TObject);
    procedure aaSaveExecute(Sender: TObject);
    procedure aaOpenExecute(Sender: TObject);
    procedure Upravi1Click(Sender: TObject);
    procedure aaEditUpdate(Sender: TObject);
    procedure aaTrojuholnikRExecute(Sender: TObject);
  private
    FDruhTvaru: TDruhTvaru;
    FZoznamTvarov: TZoznamTvarov;

  public

  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}


procedure TForm1.aaEditExecute(Sender: TObject);
var
  ATvar: TTvar;
begin
  ATvar := FZoznamTvarov.GetTvar(ListBoxTvary.ItemIndex);
  if NastavenieTvaru(ATvar) then
  begin
    PaintBox1.Invalidate;
  end;
end;

//definovanie spravania sa tlacidiel
procedure TForm1.aaEditUpdate(Sender: TObject);
begin
 // TAction(Sender)
  aaEdit.Enabled := ListBoxTvary.ItemIndex >= 0;
end;

procedure TForm1.aaObdlznikExecute(Sender: TObject);
begin
  FDruhTvaru := tvObdlznik;
  PaintBox1.Cursor := crCross;
end;

procedure TForm1.aaOvalExecute(Sender: TObject);
begin
  FDruhTvaru := tvOval;
  PaintBox1.Cursor := crCross;
end;

procedure TForm1.aaSipka3Execute(Sender: TObject);
begin
  FDruhTvaru := tvSipka;
  PaintBox1.Cursor := crCross;
end;

procedure TForm1.aaTrojuholnikPExecute(Sender: TObject);
begin
    FDruhTvaru := tvTrojuholnikP;
    PaintBox1.Cursor := crCross;
end;

procedure TForm1.aaTrojuholnikRExecute(Sender: TObject);
begin
  FDruhTvaru := tvTrojuholnikR;
  PaintBox1.Cursor := crCross;
end;

procedure TForm1.aaSaveExecute(Sender: TObject);
begin
  if Savedialog1.Execute() then
  begin
    FZoznamTvarov.SaveToStream(SaveDialog1.FileName);
    PaintBox1.Invalidate;
  end;
end;

procedure TForm1.aaOpenExecute(Sender: TObject);
begin
  //ZmazatVsetko;
  if OpenDialog1.Execute() then
  begin
    FZoznamTvarov.LoadFromStream(OpenDialog1.FileName);
    PaintBox1.Invalidate;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //vymaze vybrany objekt zo zoznamu tvarov
  //v object inspectore - zmena polozky v "Anchors" t akLeft na akRight
  //a "Align" na alCustom
  ListBoxTvary.DeleteSelected;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FZoznamTvarov := TZoznamTvarov.Create;
  FDruhTvaru := tvNeurceny;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FZoznamTvarov.Free;
  FZoznamTvarov := nil;
end;

procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Tvar: TTvar;
begin
  if FDruhTvaru <> tvNeurceny then
  begin
    Tvar := FZoznamTvarov.PridatTvar(FDruhTvaru);
    Tvar.Vlavo := X;
    Tvar.Hore := Y;
    Tvar.Sirka := Edit.SpinEdit1.Value;
    Tvar.Vyska := Edit.SpinEdit2.Value;
    Tvar.FarbaCiary := Edit.ColorBox1.Selected;
    Tvar.Farba := Edit.ColorBox2.Selected;
    Tvar.HrubkaCiary := Edit.SpinEdit3.Value;
    Tvar.DlzkaSpice := Edit.SpinEdit4.Value;
    Tvar.HrubkaSpice := Edit.SpinEdit5.Value;
    PaintBox1.Invalidate;
    FDruhTvaru := tvNeurceny;
    PaintBox1.Cursor := crDefault;

    with ListBoxTvary do
    begin
      Items.Add(Tvar.Nazov);
      Checked[Items.Count -1] := True;
      ItemIndex := Items.Count -1;
    end;

    if Shift = [ssRight] then
    begin
      PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
    end;

  end;
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  if Assigned(FZoznamTvarov) then
    FZoznamTvarov.Prekreslit(PaintBox1.Canvas);
end;

//kontextove menu
procedure TForm1.Upravi1Click(Sender: TObject);
var
  ATvar : TTvar;
begin
  ATvar := FZoznamTvarov.GetTvar(ListBoxTvary.ItemIndex);
  if NastavenieTvaru(ATvar) then
  begin
    PaintBox1.Invalidate;
  end;
end;

end.
