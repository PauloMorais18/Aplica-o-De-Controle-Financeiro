object FrmLogin: TFrmLogin
  Left = 509
  Top = 251
  Caption = 'Login'
  ClientHeight = 189
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 120
    Top = 14
    Width = 71
    Height = 28
    Caption = 'Usu'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 77
    Width = 62
    Height = 28
    Caption = 'Senha: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EdtUsuario: TEdit
    Left = 32
    Top = 48
    Width = 249
    Height = 23
    TabOrder = 0
  end
  object EdtSenha: TEdit
    Left = 32
    Top = 111
    Width = 249
    Height = 23
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Logar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
