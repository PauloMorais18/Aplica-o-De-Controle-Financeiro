unit FormBaseConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBase = class(TForm)
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FDQuery1CHAVE: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1VLRCOMPRA: TIntegerField;
    FDQuery1VLRVENDA: TIntegerField;
    FDQuery1QTDESTOQUE: TIntegerField;
    FDQuery1ATIVO: TIntegerField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDQuery2: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
  private
    { Private declarations }
  public

  end;

var
  FormBase: TFormBase;

implementation

{$R *.dfm}

end.
