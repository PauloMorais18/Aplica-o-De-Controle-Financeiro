object FormPesquisaCliFor: TFormPesquisaCliFor
  Left = 450
  Top = 148
  Caption = 'Pesquisar CliFor'
  ClientHeight = 434
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object LblRegistrosEncontrados: TLabel
    Left = 13
    Top = 125
    Width = 127
    Height = 15
    Caption = 'Registros encontrados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 304
    Top = 125
    Width = 139
    Height = 15
    Caption = 'Quantidade de Registros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Filtros: TGroupBox
    Left = 13
    Top = 8
    Width = 457
    Height = 105
    Caption = 'Filtros'
    TabOrder = 0
    object Label1: TLabel
      Left = 180
      Top = 24
      Width = 80
      Height = 15
      Caption = 'Digite o Nome:'
    end
    object Label2: TLabel
      Left = 102
      Top = 24
      Width = 42
      Height = 15
      Caption = 'C'#243'digo:'
    end
    object RGSelecao: TRadioGroup
      Left = 10
      Top = 18
      Width = 87
      Height = 72
      Caption = 'Buscar Por:'
      Items.Strings = (
        'C'#243'digo'
        'Nome')
      TabOrder = 0
    end
    object EdtNomePessoa: TEdit
      Left = 180
      Top = 41
      Width = 267
      Height = 23
      TabOrder = 1
    end
    object EdtCodigoPessoa: TEdit
      Left = 102
      Top = 41
      Width = 72
      Height = 23
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 367
      Top = 68
      Width = 80
      Height = 25
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 13
    Top = 145
    Width = 457
    Height = 273
    DataSource = FormBase.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object FDQueryFormPesquisa: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 408
    Top = 192
  end
end
