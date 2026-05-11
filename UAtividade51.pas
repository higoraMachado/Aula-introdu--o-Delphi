unit UAtividade51;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmAtividade51 = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade51: TfrmAtividade51;

implementation

{$R *.dfm}

procedure TfrmAtividade51.Timer1Timer(Sender: TObject);
var
  Numero, I: Integer;
  Primo: Boolean;
begin
  Timer1.Enabled := False;

  Numero := StrToInt(InputBox('Número Primo',
                              'Digite um número inteiro:',
                              ''));

  Primo := True;

  if Numero <= 1 then
    Primo := False
  else
  begin
    for I := 2 to Numero - 1 do
    begin
      if Numero mod I = 0 then
      begin
        Primo := False;
        Break;
      end;
    end;
  end;

  if Primo then
    ShowMessage('O número ' + IntToStr(Numero) + ' é PRIMO.')
  else
    ShowMessage('O número ' + IntToStr(Numero) + ' NÃO é primo.');
end;

end.
