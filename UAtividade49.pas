unit UAtividade49;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmAtividade49 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade49: TfrmAtividade49;

implementation

{$R *.dfm}

procedure TfrmAtividade49.FormShow(Sender: TObject);
var
  inicio, fim, divisor: Integer;
  i: Integer;
  encontrado: Boolean;
begin
  inicio := StrToIntDef(InputBox('Entrada', 'Digite o valor inicial:', ''), 0);
  fim := StrToIntDef(InputBox('Entrada', 'Digite o valor final:', ''), 0);
  divisor := StrToIntDef(InputBox('Entrada', 'Digite o valor divisor:', ''), 1);

  encontrado := False;

  for i := inicio to fim do
  begin
    if (divisor <> 0) and (i mod divisor = 0) then
    begin
      ShowMessage('Primeiro número divisível encontrado: ' + IntToStr(i));
      encontrado := True;
      Break;
    end;
  end;

  if not encontrado then
    ShowMessage('Nenhum número divisível foi encontrado nessa faixa.');
end;
end.
