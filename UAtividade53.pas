unit UAtividade53;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade53 = class(TForm)
    edtNome: TEdit;
    edtEndereco: TEdit;
    lblNome: TLabel;
    lblEndereço: TLabel;
    gpbSexo: TGroupBox;
    rbtMasc: TRadioButton;
    rbtFem: TRadioButton;
    cbbCidade: TComboBox;
    gpbFrutas: TGroupBox;
    ccbMaca: TCheckBox;
    ccbBanana: TCheckBox;
    ccbUva: TCheckBox;
    ccbMorango: TCheckBox;
    ccbJaca: TCheckBox;
    ccbManga: TCheckBox;
    mmoRegistros: TMemo;
    btnCadastrar: TButton;
    btnLimpar: TButton;

    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);

  private
    nRegistro : Integer;
  public
  end;

var
  frmAtividade53: TfrmAtividade53;

implementation

{$R *.dfm}

procedure TfrmAtividade53.FormCreate(Sender: TObject);
begin
  nRegistro := 0;

  // cidades no ComboBox
  cbbCidade.Items.Add('Osvaldo Cruz');
  cbbCidade.Items.Add('Tupã');
  cbbCidade.Items.Add('Marília');
  cbbCidade.Items.Add('Presidente Prudente');
end;

procedure TfrmAtividade53.btnCadastrarClick(Sender: TObject);
var
  Sexo : String;
  Frutas : String;
begin
  Inc(nRegistro);

  // sexo
  if rbtMasc.Checked then
    Sexo := 'Masculino'
  else if rbtFem.Checked then
    Sexo := 'Feminino'
  else
    Sexo := 'Não informado';

  // frutas
  Frutas := '';

  if ccbMaca.Checked then
    Frutas := Frutas + 'Maçã, ';

  if ccbBanana.Checked then
    Frutas := Frutas + 'Banana, ';

  if ccbUva.Checked then
    Frutas := Frutas + 'Uva, ';

  if ccbMorango.Checked then
    Frutas := Frutas + 'Morango, ';

  if ccbJaca.Checked then
    Frutas := Frutas + 'Jaca, ';

  if ccbManga.Checked then
    Frutas := Frutas + 'Manga, ';

  // remove última vírgula
  if Frutas <> '' then
    Delete(Frutas, Length(Frutas)-1, 2);

  // mostrar no memo
  mmoRegistros.Lines.Add('Registro: ' + IntToStr(nRegistro));
  mmoRegistros.Lines.Add('Nome: ' + edtNome.Text);
  mmoRegistros.Lines.Add('Endereço: ' + edtEndereco.Text);
  mmoRegistros.Lines.Add('Sexo: ' + Sexo);
  mmoRegistros.Lines.Add('Cidade: ' + cbbCidade.Text);
  mmoRegistros.Lines.Add('Frutas: ' + Frutas);
  mmoRegistros.Lines.Add('--------------------------');
end;

procedure TfrmAtividade53.btnLimparClick(Sender: TObject);
begin
  edtNome.Clear;
  edtEndereco.Clear;

  rbtMasc.Checked := False;
  rbtFem.Checked := False;

  cbbCidade.ItemIndex := -1;

  ccbMaca.Checked := False;
  ccbBanana.Checked := False;
  ccbUva.Checked := False;
  ccbMorango.Checked := False;
  ccbJaca.Checked := False;
  ccbManga.Checked := False;

  edtNome.SetFocus;
end;

end.
