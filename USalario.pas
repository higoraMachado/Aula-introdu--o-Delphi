unit USalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSalario = class(TForm)
    edtValorHora: TEdit;
    edtHoraTrabalhada: TEdit;
    lbl_ValorHora: TLabel;
    lbl_HorasTrabalhadas: TLabel;
    btn_calcular: TButton;
    procedure btn_calcularClick(Sender: TObject);
  private
  public
  end;

var
  frmSalario: TfrmSalario;

implementation

{$R *.dfm}

procedure TfrmSalario.btn_calcularClick(Sender: TObject);
var
  valorHora, horas, salarioBruto: Real;
  inss, sindicato, fgts, ir, salarioLiquido: Real;
begin
  // Pegando valores dos campos
  valorHora := StrToFloat(edtValorHora.Text);
  horas := StrToFloat(edtHoraTrabalhada.Text);

  // Cálculos
  salarioBruto := valorHora * horas;
  inss := salarioBruto * 0.10;
  sindicato := salarioBruto * 0.03;
  fgts := salarioBruto * 0.11;

  // IR
  if salarioBruto <= 1900 then
    ir := 0
  else if salarioBruto <= 3500 then
    ir := salarioBruto * 0.05
  else if salarioBruto <= 7500 then
    ir := salarioBruto * 0.10
  else
    ir := salarioBruto * 0.20;

  // Salário líquido
  salarioLiquido := salarioBruto - inss - sindicato - ir;

  // Exibir resultado
  ShowMessage(
    'Salário Bruto: R$ ' + FloatToStr(salarioBruto) + sLineBreak +
    'INSS (10%): R$ ' + FloatToStr(inss) + sLineBreak +
    'Sindicato (3%): R$ ' + FloatToStr(sindicato) + sLineBreak +
    'IR: R$ ' + FloatToStr(ir) + sLineBreak +
    'FGTS (11%): R$ ' + FloatToStr(fgts) + sLineBreak +
    'Salário Líquido: R$ ' + FloatToStr(salarioLiquido)
  );
end;

end.
