object FrmAnalise: TFrmAnalise
  Left = 262
  Top = 103
  Caption = 'Analise de Ganhos/Despesas'
  ClientHeight = 503
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object LblPessoaGrid2: TLabel
    Left = 381
    Top = 166
    Width = 80
    Height = 15
    Caption = 'LblPessoaGrid2'
  end
  object LblPessoaGrid1: TLabel
    Left = 16
    Top = 166
    Width = 80
    Height = 15
    Caption = 'LblPessoaGrid1'
  end
  object LblTotal1: TLabel
    Left = 16
    Top = 455
    Width = 31
    Height = 15
    Caption = 'Total: '
  end
  object LblTotal2: TLabel
    Left = 381
    Top = 455
    Width = 31
    Height = 15
    Caption = 'Total: '
  end
  object LblLembrete: TLabel
    Left = 16
    Top = 481
    Width = 226
    Height = 15
    Caption = 'Lembrete: (Clique duas vezes pra editar).'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnDblClick = LblLembreteDblClick
  end
  object DBGrid2: TDBGrid
    Left = 381
    Top = 184
    Width = 351
    Height = 265
    DataSource = FormBase.DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Parcelas'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor Parcelas'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Data'
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 184
    Width = 357
    Height = 265
    DataSource = FormBase.DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Descri'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Parcelas'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Valor Parcelas'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Data'
        Width = 70
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 716
    Height = 153
    Caption = 'Filtros'
    TabOrder = 2
    object Label3: TLabel
      Left = 473
      Top = 98
      Width = 70
      Height = 15
      Caption = 'Ordenar por: '
    end
    object GroupBox2: TGroupBox
      Left = 167
      Top = 16
      Width = 529
      Height = 69
      Caption = 'Pessoas'
      TabOrder = 0
      object LblPessoa1: TLabel
        Left = 57
        Top = 16
        Width = 42
        Height = 15
        Caption = 'Pessoa1'
      end
      object LblPesso2: TLabel
        Left = 326
        Top = 16
        Width = 42
        Height = 15
        Caption = 'Pessoa2'
      end
      object LblCod2: TLabel
        Left = 286
        Top = 16
        Width = 25
        Height = 15
        Caption = 'Cod.'
      end
      object LblCod1: TLabel
        Left = 12
        Top = 16
        Width = 25
        Height = 15
        Caption = 'Cod.'
      end
      object EdtPessoa1: TEdit
        Left = 57
        Top = 33
        Width = 221
        Height = 23
        TabOrder = 0
        OnExit = EdtPessoa1Exit
        OnKeyDown = EdtPessoa1KeyDown
      end
      object EdtPessoa2: TEdit
        Left = 326
        Top = 33
        Width = 191
        Height = 23
        TabOrder = 1
        OnExit = EdtPessoa2Exit
      end
      object EdtCodPessoa2: TEdit
        Left = 286
        Top = 33
        Width = 37
        Height = 23
        TabOrder = 2
      end
      object EdtCodigo: TEdit
        Left = 12
        Top = 33
        Width = 42
        Height = 23
        TabOrder = 3
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 16
      Width = 145
      Height = 69
      Caption = 'Movimenta'#231#227'o'
      ItemIndex = 2
      Items.Strings = (
        'Ganhos'
        'Despesas'
        'Ambos')
      TabOrder = 1
    end
    object GBData: TGroupBox
      Left = 179
      Top = 88
      Width = 285
      Height = 58
      Caption = 'Filtros Datas'
      TabOrder = 2
      object Label1: TLabel
        Left = 10
        Top = 12
        Width = 29
        Height = 15
        Caption = 'Inicio'
      end
      object Label2: TLabel
        Left = 145
        Top = 12
        Width = 20
        Height = 15
        Caption = 'Fim'
      end
    end
    object ComboBox1: TComboBox
      Left = 473
      Top = 114
      Width = 145
      Height = 23
      TabOrder = 3
      Text = 'ComboBox1'
    end
    object CheckBox1: TCheckBox
      Left = 15
      Top = 94
      Width = 114
      Height = 17
      Caption = 'Mostrar Ganhos'
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 15
      Top = 117
      Width = 161
      Height = 17
      Caption = 'Mostrar "Despesas Fixas"'
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 628
      Top = 100
      Width = 68
      Height = 41
      Caption = 'Executar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn1Click
    end
  end
  object PnlEditarLembrete: TPanel
    Left = 298
    Top = 455
    Width = 442
    Height = 255
    TabOrder = 3
    Visible = False
    object Label4: TLabel
      Left = 10
      Top = 8
      Width = 154
      Height = 15
      Caption = 'Editar o Texto do "Lembrete":'
    end
    object Label5: TLabel
      Left = 423
      Top = 2
      Width = 10
      Height = 23
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = Label5Click
    end
    object MemLembrete: TMemo
      Left = 10
      Top = 29
      Width = 423
      Height = 217
      Lines.Strings = (
        '(Clique duas vezes pra editar).')
      TabOrder = 0
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 205
    Top = 122
    Width = 125
    Height = 23
    Date = 45684.000000000000000000
    Time = 0.944760381942614900
    TabOrder = 4
  end
  object DateTimePicker2: TDateTimePicker
    Left = 340
    Top = 122
    Width = 131
    Height = 23
    Date = 45684.000000000000000000
    Time = 0.944760381942614900
    TabOrder = 5
  end
  object FDQueryGrid1: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 688
    Top = 160
  end
  object FDQueryGrid2: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 600
    Top = 160
  end
  object FDQuerySoma1: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 512
    Top = 160
  end
  object FDQuerySoma2: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 512
    Top = 224
  end
  object FDQueryPessoa1: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 640
    Top = 280
  end
  object FDQueryPessoa2: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 640
    Top = 224
  end
end
