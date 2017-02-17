program Project1;

uses
  Forms,
  Main in 'Main.pas' {Form2},
  Sprava in 'Sprava.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
