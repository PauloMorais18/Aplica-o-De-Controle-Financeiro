object FrmConfig: TFrmConfig
  Left = 349
  Top = 89
  Caption = 'Configura'#231#245'es'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 200
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 624
    Height = 400
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Gerais'
      object GroupBox1: TGroupBox
        Left = 7
        Top = 2
        Width = 306
        Height = 114
        Caption = 'NovoUsu'#225'rio'
        TabOrder = 0
        object Label1: TLabel
          Left = 9
          Top = 18
          Width = 126
          Height = 15
          Caption = 'Nome do novo Usu'#225'rio:'
        end
        object LblSenha: TLabel
          Left = 9
          Top = 62
          Width = 126
          Height = 15
          Caption = 'Nova Senha do Usu'#225'rio:'
        end
        object Button1: TButton
          Left = 222
          Top = 66
          Width = 75
          Height = 37
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clOlive
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object EdtNomeUsuario: TEdit
          Left = 9
          Top = 36
          Width = 288
          Height = 23
          TabOrder = 1
        end
        object EdtSenha: TEdit
          Left = 9
          Top = 80
          Width = 206
          Height = 23
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
  object FDQGUsuario: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 524
    Top = 363
  end
end
