program taskbar;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {Form1},
  uStokForm in 'uStokForm.pas' {StokForm},
  uHareketForm in 'uHareketForm.pas' {HareketForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TStokForm, StokForm);
  Application.CreateForm(THareketForm, HareketForm);
  Application.Run;
end.
