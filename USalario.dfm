object frmSalario: TfrmSalario
  Left = 0
  Top = 0
  Caption = 'frmSalario'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl_ValorHora: TLabel
    Left = 128
    Top = 112
    Width = 71
    Height = 15
    Caption = 'Valor da Hora'
  end
  object lbl_HorasTrabalhadas: TLabel
    Left = 256
    Top = 112
    Width = 97
    Height = 15
    Caption = 'Horas Trabalhadas'
  end
  object edtValorHora: TEdit
    Left = 120
    Top = 144
    Width = 97
    Height = 33
    TabOrder = 0
  end
  object edtHoraTrabalhada: TEdit
    Left = 256
    Top = 144
    Width = 97
    Height = 33
    TabOrder = 1
  end
  object btn_calcular: TButton
    Left = 384
    Top = 144
    Width = 81
    Height = 33
    Caption = 'Calcular'
    TabOrder = 2
  end
end
