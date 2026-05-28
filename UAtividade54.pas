unit UAtividade54;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAtividade54 = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    lblIdade: TLabel;
    edtIdade: TEdit;
    rgpSexo: TRadioGroup;
    mmoRegistros: TMemo;
    gpbDados: TGroupBox;
    lblNmRegistro: TLabel;
    lblTtHomens: TLabel;
    lblTtMulheres: TLabel;
    lblMaiorIdade: TLabel;
    lblMenorIdade: TLabel;
    lblMediaIdade: TLabel;
    lblNmRegistroV: TLabel;
    lblTtHomensV: TLabel;
    lblTtMulheresV: TLabel;
    lblMaiorIdadeV: TLabel;
    lblMenorIdadeV: TLabel;
    lblMediaIdadeV: TLabel;
    btnInserirDados: TButton;
    btnLimparDados: TButton;
    procedure btnInserirDadosClick(Sender: TObject);
    procedure btnLimparDadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nome, sexo : String;
    registros, idade, qtdHomens, qtdMulheres, idadeMais, idadeMenos, somaIdade : Integer;
    media : Real;
  end;

var
  frmAtividade54: TfrmAtividade54;

implementation

{$R *.dfm}

procedure TfrmAtividade54.btnInserirDadosClick(Sender: TObject);
var
  idadeAtual: Integer;
begin
  nome := Trim(edtNome.Text);

  // validação de campos
  if (nome = '') then
  begin
    ShowMessage('Informe o nome!');
    Exit;
  end;

  if not TryStrToInt(edtIdade.Text, idadeAtual) then
  begin
    ShowMessage('Idade inválida!');
    Exit;
  end;

  if rgpSexo.ItemIndex = -1 then
  begin
    ShowMessage('Selecione o sexo!');
    Exit;
  end;

  // sexo
  if rgpSexo.ItemIndex = 0 then
  begin
    sexo := 'Masculino';
    Inc(qtdHomens);
  end
  else
  begin
    sexo := 'Feminino';
    Inc(qtdMulheres);
  end;

  // registros
  Inc(registros);
  somaIdade := somaIdade + idadeAtual;

  // maior e menor idade
  if registros = 1 then
  begin
    idadeMais := idadeAtual;
    idadeMenos := idadeAtual;
  end
  else
  begin
    if idadeAtual > idadeMais then
      idadeMais := idadeAtual;

    if idadeAtual < idadeMenos then
      idadeMenos := idadeAtual;
  end;

  // média
  media := somaIdade / registros;

  // memo
  mmoRegistros.Lines.Add('Nome: ' + nome);
  mmoRegistros.Lines.Add('Idade: ' + IntToStr(idadeAtual));
  mmoRegistros.Lines.Add('Sexo: ' + sexo);
  mmoRegistros.Lines.Add('-------------------------');

  // labels
  lblNmRegistroV.Caption := IntToStr(registros);
  lblTtHomensV.Caption := IntToStr(qtdHomens);
  lblTtMulheresV.Caption := IntToStr(qtdMulheres);
  lblMaiorIdadeV.Caption := IntToStr(idadeMais);
  lblMenorIdadeV.Caption := IntToStr(idadeMenos);
  lblMediaIdadeV.Caption := FormatFloat('0.00', media);

  // limpar campos
  edtNome.Clear;
  edtIdade.Clear;
  rgpSexo.ItemIndex := -1;
  edtNome.SetFocus;
end;

procedure TfrmAtividade54.btnLimparDadosClick(Sender: TObject);
begin
  edtNome.Clear;
  edtIdade.Clear;
  rgpSexo.ItemIndex := -1;
  mmoRegistros.Clear;

  registros := 0;
  qtdHomens := 0;
  qtdMulheres := 0;
  somaIdade := 0;
  idadeMais := 0;
  idadeMenos := 0;

  lblNmRegistroV.Caption := '0';
  lblTtHomensV.Caption := '0';
  lblTtMulheresV.Caption := '0';
  lblMaiorIdadeV.Caption := '0';
  lblMenorIdadeV.Caption := '0';
  lblMediaIdadeV.Caption := '0.00';
end;

end.
