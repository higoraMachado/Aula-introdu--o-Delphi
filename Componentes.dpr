program Componentes;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UExemplo01 in 'UExemplo01.pas' {frmExemplo01},
  UAtividade01 in 'UAtividade01.pas' {frmAtividade01},
  UExemplo02 in 'UExemplo02.pas' {frmExemplo02},
  UAtividade02 in 'UAtividade02.pas' {frmAtividade02},
  Vcl.Themes,
  Vcl.Styles,
  UAtividade27 in 'UAtividade27.pas' {frmAtividade27},
  UMensagem in 'UMensagem.pas' {frmMensagem},
  USalario in 'USalario.pas' {frmSalario},
  UEx_24 in 'UEx_24.pas' {frmEx_24},
  UAtividade46 in 'UAtividade46.pas' {frmAtividade46},
  UAtividade48 in 'UAtividade48.pas' {frmAtividade48},
  UAtividade49 in 'UAtividade49.pas' {frmAtividade49},
  UAtividade50 in 'UAtividade50.pas' {frmAtividade50},
  UAtividade51 in 'UAtividade51.pas' {frmAtividade51},
  UAtividade52 in 'UAtividade52.pas' {frmAtividade52},
  UAtividade53 in 'UAtividade53.pas' {frmAtividade53},
  UAtividade54 in 'UAtividade54.pas' {frmAtividade54};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmExemplo01, frmExemplo01);
  Application.CreateForm(TfrmAtividade01, frmAtividade01);
  Application.CreateForm(TfrmExemplo02, frmExemplo02);
  Application.CreateForm(TfrmAtividade02, frmAtividade02);
  Application.CreateForm(TfrmAtividade27, frmAtividade27);
  Application.CreateForm(TfrmMensagem, frmMensagem);
  Application.CreateForm(TfrmSalario, frmSalario);
  Application.CreateForm(TfrmEx_24, frmEx_24);
  Application.CreateForm(TfrmAtividade46, frmAtividade46);
  Application.CreateForm(TfrmAtividade48, frmAtividade48);
  Application.CreateForm(TfrmAtividade48, frmAtividade48);
  Application.CreateForm(TfrmAtividade49, frmAtividade49);
  Application.CreateForm(TfrmAtividade50, frmAtividade50);
  Application.CreateForm(TfrmAtividade51, frmAtividade51);
  Application.CreateForm(TfrmAtividade52, frmAtividade52);
  Application.CreateForm(TfrmAtividade53, frmAtividade53);
  Application.CreateForm(TfrmAtividade54, frmAtividade54);
  Application.CreateForm(TfrmAtividade54, frmAtividade54);
  Application.Run;
end.
