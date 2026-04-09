unit UMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMensagem = class(TForm)
    btnMessageBox: TButton;
    btnInputBox: TButton;
    procedure btnInputBoxClick(Sender: TObject);
    procedure btnMessageBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}

procedure TfrmMensagem.btnInputBoxClick(Sender: TObject);
var
  nomeRestaurante : String;
begin
  nomeRestaurante := InputBox('Escolha de Restaurante','Digite o nome do restaurante', 'Padeiros');
  ShowMessage('O nome do restaurante escolhido é: ' + nomeRestaurante);
end;

procedure TfrmMensagem.btnMessageBoxClick(Sender: TObject);
var
  Mensagem : integer;
begin
  Mensagem := MessageBox(Application.Handle,
  'Selecione uma opção para exibir seu valor','Saída',
  MB_ICONQUESTION + MB_YESNOCANCEL + MB_DEFBUTTON2);
  if (Mensagem = idYes) then
  ShowMessage('Retorno = idYes')
  else
  if (Mensagem = idNo) then
  ShowMessage('Retorno = idNo')
  else
  if (Mensagem = idCancel) then
  ShowMessage('Retorno = idCalcel')
end;

end.
