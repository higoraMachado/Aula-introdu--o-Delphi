unit UAtividade47;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade47 = class(TForm)
    btnVerificar: TButton;
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade47: TfrmAtividade47;

implementation

{$R *.dfm}
procedure TfrmAtividade47.btnVerificarClick(Sender: TObject);
var
  i, numero: Integer;
  pares, impares: String;
begin
  pares := '';
  impares := '';

  for i := 1 to 6 do
  begin
    numero := StrToInt(InputBox('Entrada', 'Digite o ' + IntToStr(i) + 'º número:', ''));

    if (numero mod 2 = 0) then
      pares := pares + IntToStr(numero) + ' '
    else
      impares := impares + IntToStr(numero) + ' ';
  end;

  ShowMessage('Números pares: ' + pares);
  ShowMessage('Números ímpares: ' + impares);
end;
end.
