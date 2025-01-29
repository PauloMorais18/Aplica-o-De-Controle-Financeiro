object FrmDespesas: TFrmDespesas
  Left = 465
  Top = 133
  Caption = 'Despesas Fixas'
  ClientHeight = 389
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnShow = FormShow
  TextHeight = 15
  object Label5: TLabel
    Left = 16
    Top = 185
    Width = 84
    Height = 15
    Caption = 'Despesas Fixas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 537
    Height = 161
    Caption = 'Nova Despesa'
    TabOrder = 0
    object Label1: TLabel
      Left = 119
      Top = 24
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 14
      Top = 104
      Width = 56
      Height = 15
      Caption = 'Data Inicio'
    end
    object Label3: TLabel
      Left = 343
      Top = 24
      Width = 26
      Height = 15
      Caption = 'Valor'
    end
    object Label4: TLabel
      Left = 103
      Top = 64
      Width = 51
      Height = 15
      Caption = 'Categoria'
    end
    object Label6: TLabel
      Left = 15
      Top = 24
      Width = 36
      Height = 15
      Caption = 'Pessoa'
    end
    object Label7: TLabel
      Left = 126
      Top = 104
      Width = 47
      Height = 15
      Caption = 'Data Fim'
    end
    object Label8: TLabel
      Left = 415
      Top = 24
      Width = 43
      Height = 15
      Caption = 'Parcelas'
    end
    object Label9: TLabel
      Left = 15
      Top = 64
      Width = 63
      Height = 15
      Caption = 'Vlr. Parcelas'
    end
    object EdtDescricao: TEdit
      Left = 119
      Top = 40
      Width = 218
      Height = 23
      TabOrder = 1
    end
    object EdtInicio: TEdit
      Left = 13
      Top = 120
      Width = 107
      Height = 23
      TabOrder = 7
      OnExit = EdtInicioExit
      OnKeyPress = EdtInicioKeyPress
    end
    object EdtValor: TEdit
      Left = 343
      Top = 40
      Width = 66
      Height = 23
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 230
      Top = 69
      Width = 187
      Height = 74
      Caption = 'Forma de Pagamento'
      ItemIndex = 0
      Items.Strings = (
        'Dinheiro/D'#233'bito'
        'Cr'#233'dito')
      TabOrder = 5
    end
    object EditPessoa: TEdit
      Left = 15
      Top = 40
      Width = 98
      Height = 23
      TabOrder = 0
    end
    object EdtFim: TEdit
      Left = 126
      Top = 120
      Width = 96
      Height = 23
      TabOrder = 8
      OnKeyPress = EdtFimKeyPress
    end
    object EdtParcelas: TEdit
      Left = 415
      Top = 40
      Width = 105
      Height = 23
      TabOrder = 3
      OnExit = EdtParcelasExit
    end
    object BitBtn1: TBitBtn
      Left = 423
      Top = 113
      Width = 97
      Height = 30
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object BitBtn2: TBitBtn
      Left = 423
      Top = 77
      Width = 97
      Height = 30
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object EdtVlrParcelas: TEdit
      Left = 15
      Top = 80
      Width = 83
      Height = 23
      TabOrder = 4
    end
  end
  object CBCategoria: TComboBox
    Left = 119
    Top = 96
    Width = 121
    Height = 23
    ItemIndex = 4
    TabOrder = 2
    Text = 'Outros...'
    Items.Strings = (
      'Alimenta'#231#227'o'
      'Lazer'
      #193'gua/Luz'
      'Educa'#231#227'o'
      'Outros...')
  end
  object DBGDespesasFixas: TDBGrid
    Left = 16
    Top = 203
    Width = 537
    Height = 170
    DataSource = FormBase.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object FDQDespesas: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 504
    Top = 184
  end
  object FDQueryClientes: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 416
    Top = 184
  end
  object FDQueryGrid: TFDQuery
    Connection = FormBase.FDConnection1
    Left = 304
    Top = 184
  end
end
