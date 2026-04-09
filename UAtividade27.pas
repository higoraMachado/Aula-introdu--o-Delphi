unit UAtividade27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAtividade27 = class(TForm)
    btn_media: TButton;
    edt_n1: TEdit;
    edt_n2: TEdit;
    edt_n3: TEdit;
    edt_n4: TEdit;
    edt_nome: TEdit;
    lbl_nota1: TLabel;
    lbl_nota2: TLabel;
    lbl_nota3: TLabel;
    lbl_nota4: TLabel;
    lbl_nome: TLabel;
    edt_resultado: TEdit;
    procedure btn_mediaClick(Sender: TObject);
    procedure edt_resultadoDblClick(Sender: TObject);
  private
    n1, n2, n3, n4, resultado : Double;
  public
    { Public declarations }
  end;

var
  frmAtividade27: TfrmAtividade27;

implementation

{$R *.dfm}

procedure TfrmAtividade27.btn_mediaClick(Sender: TObject);
begin
  n1 := StrToFloat(edt_n1.Text);
  n2 := StrToFloat(edt_n2.Text);
  n3 := StrToFloat(edt_n3.Text);
  n4 := StrToFloat(edt_n4.Text);
  resultado:= (n1 + n2 + n3 + n4) / 4;

  edt_resultado.Text := FloatToStr(resultado);
  end;

procedure TfrmAtividade27.edt_resultadoDblClick(Sender: TObject);
begin
  ShowMessage('Aluno: ' + edt_nome.Text + sLineBreak + 'Média: ' + FloatToStr(resultado));
end;

end.
