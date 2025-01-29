unit FormCadClifor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, FormBaseConexao,
  FireDAC.Comp.Client, FireDAC.Stan.Param;

type
  TFrmCadPessoa = class(TFormBase) // Herda do TFormBase para usar a infraestrutura
    GroupBox1: TGroupBox;
    BteNome: TButtonedEdit;
    BitBtn1: TBitBtn;
    BitBtnLimpar: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    BtnEdtSenha: TButtonedEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnLimparClick(Sender: TObject);
  private
    procedure InserirRegistro;
  public
  end;

var
  FrmCadPessoa: TFrmCadPessoa;

implementation

{$R *.dfm}

procedure TFrmCadPessoa.BitBtn1Click(Sender: TObject);
begin
  if BteNome.Text = '' then
  begin
    ShowMessage('Adicione um nome');
    BteNome.SetFocus;
    Exit;
  end;
  if BtnEdtSenha.Text = '' then
  begin
    ShowMessage('Cadastre uma Senha');
    BtnEdtSenha.SetFocus;
    Exit;
  end;
  try
    InserirRegistro;
    ShowMessage('Cadastro salvo com sucesso!');
  except
    on E: Exception do
      ShowMessage('Erro ao salvar cadastro: ' + E.Message);
  end;
end;

procedure TFrmCadPessoa.BitBtnLimparClick(Sender: TObject);
begin
  // Limpa os campos
  BteNome.Clear;
  BtnEdtSenha.Clear;
end;

procedure TFrmCadPessoa.InserirRegistro;
begin
  FDQuery1.SQL.Text :=
    'INSERT INTO clifor (ativo, chaveempresa, tipo, nome, cpfcnpj, rg, cep, email, telefone, celular, descricao, senha) ' +
    'VALUES (:ativo, :chaveempresa, :tipo, :nome, :cpfcnpj, :rg, :cep, :email, :telefone, :celular, :descricao, :senha)';

  // Preenchimento dos parâmetros
  FDQuery1.ParamByName('ativo').AsInteger := 1;
  FDQuery1.ParamByName('chaveempresa').AsInteger := 1;
  FDQuery1.ParamByName('tipo').AsInteger := 1;
//  FDQuery1.ParamByName('codigo').AsInteger := 123;
  FDQuery1.ParamByName('nome').AsString := UpperCase(BteNome.Text);
  FDQuery1.ParamByName('cpfcnpj').AsInteger := 123456789;
  FDQuery1.ParamByName('rg').AsInteger := 987654321;
  FDQuery1.ParamByName('cep').AsInteger := 12345678;
  FDQuery1.ParamByName('email').AsString := 'joacaba@test.com';
  FDQuery1.ParamByName('telefone').AsInteger := 12345678;
  FDQuery1.ParamByName('celular').AsInteger := 87654321;
  FDQuery1.ParamByName('descricao').AsString := UpperCase('Teste');
  FDQuery1.ParamByName('senha').AsString := '10';
  FDQuery1.ExecSQL;
  FDConnection1.Commit;
end;

end.
