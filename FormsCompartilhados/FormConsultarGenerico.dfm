object FrmConsGen: TFrmConsGen
  Left = 0
  Top = 0
  Caption = 'Consulta Generica'
  ClientHeight = 400
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 631
    Height = 400
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlPrincipal'
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 441
    object dbGridPrincipal: TDBGrid
      Left = 8
      Top = 144
      Width = 616
      Height = 248
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Fabricante'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'NCM'
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 616
      Height = 138
      Caption = 'Filtros'
      TabOrder = 1
    end
  end
end
