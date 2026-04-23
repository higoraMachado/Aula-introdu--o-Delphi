unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnExemplo01: TButton;
    btnAtividade01: TButton;
    btnExemplo02: TButton;
    btnAtividade02: TButton;
    btnAtividade27: TButton;
    btnMensagem: TButton;
    btnSalario: TButton;
    btnExemplo24: TButton;
    btnAtividade46: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnAtividade01Click(Sender: TObject);
    procedure btnExemplo02Click(Sender: TObject);
    procedure btnAtividade02Click(Sender: TObject);
    procedure btnAtividade27Click(Sender: TObject);
    procedure btnMensagemClick(Sender: TObject);
    procedure btnSalarioClick(Sender: TObject);
    procedure btnExemplo24Click(Sender: TObject);
    procedure btnAtividade46Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UExemplo01, UAtividade01, UExemplo02, UAtividade02, UAtividade27,
UMensagem, USalario, UEx_24, UAtividade46;



procedure TfrmPrincipal.btnAtividade01Click(Sender: TObject);
begin
  frmAtividade01.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade02Click(Sender: TObject);
begin
  frmAtividade02.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo01Click(Sender: TObject);
begin
  frmExemplo01.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo02Click(Sender: TObject);
begin
  frmExemplo02.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo24Click(Sender: TObject);
begin
 frmEx_24.ShowModal;
end;

procedure TfrmPrincipal.btnMensagemClick(Sender: TObject);
begin
 frmMensagem.ShowModal;
end;

procedure TfrmPrincipal.btnSalarioClick(Sender: TObject);
begin
frmSalario.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade27Click(Sender: TObject);
begin
  frmAtividade27.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade46Click(Sender: TObject);
begin
 frmAtividade46.ShowModal;
end;

end.
