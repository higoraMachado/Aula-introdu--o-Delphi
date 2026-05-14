unit UAtividade52;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade52 = class(TForm)
    mmoValores: TMemo;
    lblInicio: TLabel;
    lblFim: TLabel;
    edtInicio: TEdit;
    edtFim: TEdit;
    btnExibir: TButton;

    procedure btnExibirClick(Sender: TObject);

  private

  public
    { Public declarations }
  end;

var
  frmAtividade52: TfrmAtividade52;

implementation

{$R *.dfm}

procedure TfrmAtividade52.btnExibirClick(Sender: TObject);
var
  nInicio, nFim, resultado, contador1, contador2 : Integer;
begin
  // Limpa o memo antes de exibir os resultados
  mmoValores.Clear;

  // Recebe os valores digitados
  nInicio := StrToInt(edtInicio.Text);
  nFim := StrToInt(edtFim.Text);

  // Exibe as tabuadas entre os valores informados
  for contador1 := nInicio to nFim do
  begin
    mmoValores.Lines.Add('Tabuada do ' + IntToStr(contador1));
    mmoValores.Lines.Add('------------------------');

    for contador2 := 1 to 10 do
    begin
      resultado := contador1 * contador2;

      mmoValores.Lines.Add(
        IntToStr(contador1) + ' X ' +
        IntToStr(contador2) + ' = ' +
        IntToStr(resultado)
      );
    end;

    // Linha em branco entre as tabuadas
    mmoValores.Lines.Add('');
  end;
end;

end.
