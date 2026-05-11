unit UAtividade52;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade52 = class(TForm)
    mmoValores: TMemo;
    lblInicio: TLabel;
    lblFim: TLabel;
    edtInicio: TEdit;
    edtFim: TEdit;
    btnExibir: TButton;
    procedure lblFimDblClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmAtividade52: TfrmAtividade52;

implementation

{$R *.dfm}

procedure TfrmAtividade52.lblFimDblClick(Sender: TObject);
var
nInicio, nFim, resultado, contador1, contador2 : Integer;
begin
  nFim := StrToInt(edtFim.Text);
  nInicio := StrToInt(edtInicio.Text);

  for contador1 := nInicio to nFim do
  begin
    mmoValores.Lines.Add('Tabuada do ' + IntToStr(contador1));
    for contador2 := 1 to 10 do
      begin
        resultado := contador1 * contador2;
        mmoValores.Lines.Add(IntToStr(contador1) + ' X ' + IntToStr(contador2) + ' = ' + IntToStr(resultado));
        if contador1 = 3 then Continue;
        if contador2 = 5 then Continue;
      end;
    mmoValores.Lines.Add('2 X 2 = 4');
  end;

end;

end.
