program GrafickeTvary;

uses
  Forms,
  F_Aplikacia in 'F_Aplikacia.pas' {Form1},
  DataTvary in 'DataTvary.pas',
  Upravit_Dialog in 'Upravit_Dialog.pas' {Edit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TEdit, Edit);
  Application.Run;
end.
