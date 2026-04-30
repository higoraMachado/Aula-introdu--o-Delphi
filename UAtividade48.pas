unit UAtividade48;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmAtividade48 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade48: TfrmAtividade48;

implementation

{$R *.dfm}


procedure TfrmAtividade48.FormShow(Sender: TObject);
var
  numero: Integer;
  soma: Integer;
  quantidade: Integer;
  media: Double;
  entrada: string;
begin
  soma := 0;
  quantidade := 0;

  repeat
    entrada := InputBox('Entrada', 'Digite um número (0 para sair):', '');
    numero := StrToIntDef(entrada, 0);

    if numero <> 0 then
    begin
      soma := soma + numero;
      Inc(quantidade);
    end;

  until numero = 0;

  if quantidade > 0 then
    media := soma / quantidade
  else
    media := 0;

  ShowMessage(
    'Quantidade: ' + IntToStr(quantidade) + sLineBreak +
    'Soma: ' + IntToStr(soma) + sLineBreak +
    'Média: ' + FloatToStr(media)
  );
end;
end.
