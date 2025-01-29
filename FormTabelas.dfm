object FrmTabelas: TFrmTabelas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tabelas'
  ClientHeight = 629
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object LblNome1: TLabel
    Left = 22
    Top = 276
    Width = 57
    Height = 15
    Caption = 'LblNome1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome2: TLabel
    Left = 356
    Top = 276
    Width = 57
    Height = 15
    Caption = 'LblNome2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblTotalPessoa1: TLabel
    Left = 22
    Top = 612
    Width = 30
    Height = 15
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblTotalPessoa2: TLabel
    Left = 356
    Top = 612
    Width = 33
    Height = 15
    Caption = 'Total: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 908
    Top = 606
    Width = 33
    Height = 15
    Caption = 'Total: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 22
    Top = 293
    Width = 323
    Height = 313
    DataSource = FormBase.DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 356
    Top = 293
    Width = 323
    Height = 313
    DataSource = FormBase.DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 20
    Top = 20
    Width = 653
    Height = 79
    Caption = 'Pessoas'
    TabOrder = 0
    object lblPessoaBuscar1: TLabel
      Left = 76
      Top = 24
      Width = 109
      Height = 15
      Caption = 'Primeira pessoa (F8):'
    end
    object LblPessoaBuscar2: TLabel
      Left = 371
      Top = 24
      Width = 108
      Height = 15
      Caption = 'Segunda pessoa(F8):'
    end
    object LblCodPessoa1: TLabel
      Left = 12
      Top = 24
      Width = 25
      Height = 15
      Caption = 'C'#243'd.'
    end
    object Label10: TLabel
      Left = 308
      Top = 24
      Width = 25
      Height = 15
      Caption = 'C'#243'd.'
    end
    object BtedtPessoa1: TButtonedEdit
      Left = 76
      Top = 40
      Width = 214
      Height = 23
      Enabled = False
      TabOrder = 2
    end
    object BtedtPessoa2: TButtonedEdit
      Left = 371
      Top = 40
      Width = 224
      Height = 23
      Enabled = False
      TabOrder = 3
    end
    object BtnEdtCodPessoa1: TButtonedEdit
      Left = 12
      Top = 40
      Width = 57
      Height = 23
      TabOrder = 0
      OnExit = BtnEdtCodPessoa1Exit
    end
    object BtnEdtCodPessoa2: TButtonedEdit
      Left = 308
      Top = 40
      Width = 57
      Height = 23
      TabOrder = 1
      OnExit = BtnEdtCodPessoa1Exit
    end
  end
  object GroupBox2: TGroupBox
    Left = 22
    Top = 103
    Width = 651
    Height = 163
    Caption = 'Nova Movimenta'#231#227'o'
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 54
      Height = 15
      Caption = 'Descri'#231#227'o:'
    end
    object Label2: TLabel
      Left = 538
      Top = 17
      Width = 29
      Height = 15
      Caption = 'Valor:'
    end
    object Label3: TLabel
      Left = 334
      Top = 61
      Width = 46
      Height = 15
      Caption = 'Parcelas:'
    end
    object Label4: TLabel
      Left = 430
      Top = 61
      Width = 61
      Height = 15
      Caption = 'Vlr. Parcela:'
    end
    object Label9: TLabel
      Left = 538
      Top = 61
      Width = 27
      Height = 15
      Caption = 'Data:'
    end
    object RgTipoMov: TRadioGroup
      Left = 12
      Top = 61
      Width = 129
      Height = 92
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'Avista/D'#233'bito'
        'Parcelado/Cr'#233'dito')
      ParentFont = False
      TabOrder = 2
      OnClick = RgTipoMovClick
    end
    object EdtDescricao: TEdit
      Left = 12
      Top = 32
      Width = 519
      Height = 23
      TabOrder = 0
    end
    object EdtParcelas: TEdit
      Left = 334
      Top = 76
      Width = 90
      Height = 23
      Color = clAquamarine
      NumbersOnly = True
      TabOrder = 4
    end
    object EdtVlrParcelas: TEdit
      Left = 430
      Top = 76
      Width = 100
      Height = 23
      NumbersOnly = True
      TabOrder = 5
      Text = 'R$ '
    end
    object BitBtnSalvar: TBitBtn
      Left = 552
      Top = 112
      Width = 79
      Height = 41
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtnSalvarClick
    end
    object BitBtnLimpar: TBitBtn
      Left = 456
      Top = 112
      Width = 90
      Height = 41
      Caption = 'Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744448
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object EdtData: TEdit
      Left = 538
      Top = 76
      Width = 100
      Height = 23
      NumbersOnly = True
      TabOrder = 6
      OnKeyPress = EdtDataKeyPress
    end
    object RGResponsavel: TRadioGroup
      Left = 151
      Top = 61
      Width = 180
      Height = 92
      Caption = 'Respons'#225'vel'
      Columns = 2
      Items.Strings = (
        'Pessoa 1'
        'Pessoa 2'
        'Pessoa 3'
        'Pessoa 4'
        'Pessoa 5')
      TabOrder = 3
    end
    object EdtValor: TEdit
      Left = 537
      Top = 32
      Width = 90
      Height = 23
      TabOrder = 1
      Text = 'R$ '
      OnExit = EdtValorExit
    end
  end
end
