object FrmGraficos: TFrmGraficos
  Left = 0
  Top = 0
  Caption = 'Graficos'
  ClientHeight = 495
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 495
    Align = alClient
    TabOrder = 0
    object PnlGraficosSuperior: TPanel
      Left = 1
      Top = 1
      Width = 828
      Height = 256
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 281
        Height = 256
        Align = alLeft
        TabOrder = 0
        object PaintBox1: TPaintBox
          Left = 1
          Top = 1
          Width = 279
          Height = 254
          Align = alClient
          ExplicitLeft = 80
          ExplicitTop = 48
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
      end
      object Panel3: TPanel
        Left = 281
        Top = 0
        Width = 240
        Height = 256
        Align = alLeft
        Caption = 'Panel3'
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 521
        Top = 0
        Width = 264
        Height = 256
        Align = alLeft
        Caption = 'Panel4'
        TabOrder = 2
      end
    end
    object PnlGraficosInferior: TPanel
      Left = 1
      Top = 288
      Width = 828
      Height = 206
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 265
        Height = 206
        Align = alLeft
        Caption = 'Panel5'
        TabOrder = 0
        ExplicitHeight = 254
      end
      object Panel6: TPanel
        Left = 265
        Top = 0
        Width = 272
        Height = 206
        Align = alLeft
        Caption = 'Panel6'
        TabOrder = 1
        ExplicitLeft = 271
        ExplicitTop = 23
        ExplicitHeight = 254
      end
      object Panel7: TPanel
        Left = 537
        Top = 0
        Width = 248
        Height = 206
        Align = alLeft
        Caption = 'Panel7'
        TabOrder = 2
        ExplicitHeight = 254
      end
    end
  end
end
