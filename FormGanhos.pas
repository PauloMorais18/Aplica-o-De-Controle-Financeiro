unit FormGanhos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FormBaseConexao, FormLogin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmGanhos = class(TFormBase)
    GroupBox1: TGroupBox;
    EdtDescricao: TEdit;
    Label1: TLabel;
    EdtInicio: TEdit;
    Label2: TLabel;
    EdtValor: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CBCategoria: TComboBox;
    RadioGroup1: TRadioGroup;
    EditPessoa: TEdit;
    Label6: TLabel;
    EdtFim: TEdit;
    Label7: TLabel;
    EdtParcelas: TEdit;
    Label8: TLabel;
    DBGDespesasFixas: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    EdtVlrParcelas: TEdit;
    Label9: TLabel;
    FDQGanhos: TFDQuery;
    FDQueryClientes: TFDQuery;
    FDQueryGrid: TFDQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure EdtInicioExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtInicioKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFimKeyPress(Sender: TObject; var Key: Char);
  private
    procedure AtualizarGrid(SQL: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGanhos: TFrmGanhos;

implementation

{$R *.dfm}

procedure TFrmGanhos.BitBtn2Click(Sender: TObject);
var
  ValorConvertido: Double;
  ChaveCliFor: Integer;
begin
   if EdtDescricao.Text = '' then begin
      ShowMessage('Insira uma descrição.');
      EdtDescricao.SetFocus;
      Exit;
   end;
   if EdtValor.text = '' then begin
      ShowMessage('Insira um Valor.');
      EdtValor.SetFocus;
      Exit;
   end;
   if (RadioGroup1.ItemIndex = 1) and (EdtParcelas.Text = '1') then begin
      if MessageDlg('Tem certeza que o número de parcelas é "1"?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
         EdtParcelas.SetFocus;
         Exit;
      end;
   end;
   with FDQueryClientes do begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT chave FROM clifor WHERE nome = :nome';
      ParamByName('nome').AsString := EditPessoa.Text;
      try
         Open;
         if not IsEmpty then
            ChaveCliFor := FieldByName('chave').AsInteger
         else begin
            ShowMessage('Cliente não encontrado.');
            Exit;
         end;
         except on E: Exception do begin
         ShowMessage('Erro ao buscar chave do cliente: ' + E.Message);
         Exit;
         end;
      end;
   end;
   with FDQGanhos do begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO movfinanceirascf (ativo, chaveclifor, tipo, valor, vlrparcelas, parcelas, descricao, gridpessoa, dataini, datafim, despfixa) ' +
                  'VALUES (:ativo, :chaveclifor, :tipo, :valor, :vlrparcelas, :parcelas, :descricao, :gridpessoa, :dataini, :datafim, :despfixa)';
      ParamByName('ativo').AsInteger := 1;
      ParamByName('chaveclifor').AsInteger := ChaveCliFor;
      ParamByName('tipo').AsInteger := RadioGroup1.ItemIndex;
      var CleanText := Trim(StringReplace(EdtValor.Text, 'R$', '', [rfReplaceAll, rfIgnoreCase]));
      if not TryStrToFloat(CleanText, ValorConvertido) then begin
         ShowMessage('Valor inválido.');
         EdtValor.SetFocus;
         Exit;
      end;
      ParamByName('valor').AsCurrency := ValorConvertido;
      ParamByName('vlrparcelas').AsCurrency := StrToFloatDef(EdtVlrParcelas.Text, 0);
      ParamByName('parcelas').AsInteger := StrToIntDef(EdtParcelas.Text, 1);
      ParamByName('descricao').AsString := Trim(EdtDescricao.Text);
      ParamByName('dataini').AsDate := StrToDate(EdtInicio.Text);
      ParamByName('datafim').AsDate := StrToDate(EdtFim.Text);
      ParamByName('despfixa').AsInteger := 0;
      ParamByName('gridpessoa').AsInteger := 50;
      try
         ExecSQL;
         ShowMessage('Movimentação inserida com sucesso.');
         with FDQueryGrid do begin
            Close;
            SQL.Clear;
            SQL.Text := 'SELECT * FROM movfinanceirascf where despfixa = 1';
            try
               Open;
               DataSource1.DataSet := FDQueryGrid;
               DBGDespesasFixas.DataSource := DataSource1;
               except on E: Exception do
                  ShowMessage('Erro ao atualizar o grid: ' + E.Message);
            end;
         end;
         except on E: Exception do begin
            ShowMessage('Erro ao inserir movimentação: ' + E.Message);
         end;
      end;
   end;
end;

procedure TFrmGanhos.AtualizarGrid(SQL: string);
begin
   with FDQuery1 do begin
      Close;
      SQL.Clear;
      try
         Open;
         DataSource1.DataSet := FDQuery1;
         DBGDespesasFixas.DataSource := DataSource1;
      except on E: Exception do
        ShowMessage('Erro ao executar consulta: ' + E.Message);
      end;
   end;
end;

procedure TFrmGanhos.EdtFimKeyPress(Sender: TObject; var Key: Char);
var
   Posicao: Integer;
   TempText: string;
begin
   if not (Key in ['0'..'9', #8]) then begin
      Key := #0;
      Exit;
   end;
   Posicao := EdtFim.SelStart + 1;
   if Key in ['0'..'9'] then begin
      if Posicao in [1, 2, 4, 5, 7, 8, 9, 10] then begin
         TempText := EdtFim.Text;
         TempText[Posicao] := Key;
         EdtFim.Text := TempText;
         EdtFim.SelStart := Posicao;
      end;
      if Posicao in [2, 5] then
         EdtFim.SelStart := Posicao + 1;
      Key := #0;
   end else if Key = #8 then begin
      Dec(Posicao);
      if Posicao in [3, 6] then
         Dec(Posicao);
      if Posicao > 0 then begin
         TempText := EdtFim.Text;
         TempText[Posicao] := '_';
         EdtFim.Text := TempText;
         EdtFim.SelStart := Posicao - 1;
      end;
      Key := #0;
   end;
end;

procedure TFrmGanhos.EdtInicioExit(Sender: TObject);
begin
   if EdtInicio.Text = '' then begin
      EdtInicio.Text := DateToStr(Date);
   end;
end;

procedure TFrmGanhos.EdtInicioKeyPress(Sender: TObject; var Key: Char);
var
   Posicao: Integer;
   TempText: string;
begin
   if not (Key in ['0'..'9', #8]) then begin
      Key := #0;
      Exit;
   end;
   Posicao := EdtInicio.SelStart + 1;
   if Key in ['0'..'9'] then begin
      if Posicao in [1, 2, 4, 5, 7, 8, 9, 10] then begin
         TempText := EdtInicio.Text;
         TempText[Posicao] := Key;
         EdtInicio.Text := TempText;
         EdtInicio.SelStart := Posicao;
      end;
      if Posicao in [2, 5] then
         EdtInicio.SelStart := Posicao + 1;
      Key := #0;
   end else if Key = #8 then begin
      Dec(Posicao);
      if Posicao in [3, 6] then
         Dec(Posicao);
      if Posicao > 0 then begin
         TempText := EdtInicio.Text;
         TempText[Posicao] := '_';
         EdtInicio.Text := TempText;
         EdtInicio.SelStart := Posicao - 1;
      end;
      Key := #0;
   end;
end;

procedure TFrmGanhos.FormShow(Sender: TObject);
begin
   EdtInicio.Text := FormatDateTime('dd/mm/yyyy', Date);
   EdtFim.Text := FormatDateTime('dd/mm/yyyy', Date);
   EdtValor.Text := 'R$ 0,00';
   EdtVlrParcelas.Text := 'R$ 0,00';
end;

end.
