object FrmCadPessoa: TFrmCadPessoa
  Left = 480
  Top = 207
  Caption = 'Cadastro'
  ClientHeight = 200
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 16
    Top = 17
    Width = 217
    Height = 120
    Caption = 'Cadastro'
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 18
      Width = 33
      Height = 15
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 11
      Top = 63
      Width = 32
      Height = 15
      Caption = 'Senha'
    end
    object BteNome: TButtonedEdit
      Left = 11
      Top = 34
      Width = 186
      Height = 23
      TabOrder = 0
    end
    object BtnEdtSenha: TButtonedEdit
      Left = 11
      Top = 79
      Width = 186
      Height = 23
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 77
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtnLimpar: TBitBtn
    Left = 158
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtnLimparClick
  end
end
