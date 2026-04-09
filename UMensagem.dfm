object frmMensagem: TfrmMensagem
  Left = 0
  Top = 0
  Caption = 'frmMensagem'
  ClientHeight = 225
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnMessageBox: TButton
    Left = 90
    Top = 56
    Width = 137
    Height = 49
    Caption = 'Mensagem Box'
    TabOrder = 0
    OnClick = btnMessageBoxClick
  end
  object btnInputBox: TButton
    Left = 90
    Top = 120
    Width = 137
    Height = 49
    Caption = 'Input Box'
    TabOrder = 1
    OnClick = btnInputBoxClick
  end
end
