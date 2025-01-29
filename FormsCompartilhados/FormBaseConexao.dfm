object FormBase: TFormBase
  Left = 0
  Top = 0
  Caption = 'FormBase'
  ClientHeight = 211
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\paulo\Desktop\SISTEMAS\DADOS\DADOS.FDB'
      'Password=masterkey'
      'User_Name=sysdba'
      'DriverID=FB')
    Left = 184
    Top = 43
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 328
    Top = 43
    object FDQuery1CHAVE: TIntegerField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQuery1VLRCOMPRA: TIntegerField
      FieldName = 'VLRCOMPRA'
      Origin = 'VLRCOMPRA'
      Required = True
    end
    object FDQuery1VLRVENDA: TIntegerField
      FieldName = 'VLRVENDA'
      Origin = 'VLRVENDA'
      Required = True
    end
    object FDQuery1QTDESTOQUE: TIntegerField
      FieldName = 'QTDESTOQUE'
      Origin = 'QTDESTOQUE'
    end
    object FDQuery1ATIVO: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 64
    Top = 41
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 64
    Top = 113
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      '')
    Left = 328
    Top = 115
    object IntegerField1: TIntegerField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object IntegerField2: TIntegerField
      FieldName = 'VLRCOMPRA'
      Origin = 'VLRCOMPRA'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'VLRVENDA'
      Origin = 'VLRVENDA'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'QTDESTOQUE'
      Origin = 'QTDESTOQUE'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
end
