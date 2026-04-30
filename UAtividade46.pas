unit UAtividade46;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade46 = class(TForm)
    lblMensagem: TLabel;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade46: TfrmAtividade46;

implementation

{$R *.dfm}


procedure TfrmAtividade46.FormShow(Sender: TObject);
var
  contarErro: Integer;
  vDigitado, senha: String;
begin
  senha := '1475369';
  contarErro := 0;

  while contarErro < 3 do
  begin
    vDigitado := InputBox('Senha', 'Digite a senha:', '');

    if vDigitado = senha then
    begin
      lblMensagem.Caption := 'Acesso permitido!';
      Exit;
    end
    else
    begin
      contarErro := contarErro + 1;
      ShowMessage('Senha incorreta! Tentativa ' + IntToStr(contarErro));
    end;
  end;

  lblMensagem.Caption := 'Acesso bloqueado!';
end;
end.
