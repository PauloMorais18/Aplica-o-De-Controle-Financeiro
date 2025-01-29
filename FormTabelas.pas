unit FormTabelas;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
   Vcl.Grids, Vcl.DBGrids, FormBaseConexao, Vcl.Buttons, FireDAC.Comp.Client;

type
   TFrmTabelas = class(TFormBase)      //colocar em todas as telas que fazem consulta
      DBGrid1: TDBGrid;
      DBGrid2: TDBGrid;
      LblNome1: TLabel;
      LblNome2: TLabel;
      GroupBox1: TGroupBox;
      BtedtPessoa1: TButtonedEdit;
      BtedtPessoa2: TButtonedEdit;
      lblPessoaBuscar1: TLabel;
      LblPessoaBuscar2: TLabel;
      GroupBox2: TGroupBox;
      LblTotalPessoa1: TLabel;
      LblTotalPessoa2: TLabel;
      RgTipoMov: TRadioGroup;
      EdtDescricao: TEdit;
      Label1: TLabel;
      Label2: TLabel;
      EdtParcelas: TEdit;
      Label3: TLabel;
      Label4: TLabel;
      EdtVlrParcelas: TEdit;
      BitBtnSalvar: TBitBtn;
      BitBtnLimpar: TBitBtn;
      Label6: TLabel;
      EdtData: TEdit;
      Label9: TLabel;
      RGResponsavel: TRadioGroup;
      EdtValor: TEdit;
      BtnEdtCodPessoa1: TButtonedEdit;
      LblCodPessoa1: TLabel;
      BtnEdtCodPessoa2: TButtonedEdit;
      Label10: TLabel;
      procedure BtedtPessoa1Exit(Sender: TObject);
      procedure BtedtPessoa2Exit(Sender: TObject);
      procedure BitBtnSalvarClick(Sender: TObject);
      procedure RgTipoMovClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure EdtValorExit(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure EdtVlrParcelasChange(Sender: TObject);
      procedure EdtDataKeyPress(Sender: TObject; var Key: Char);
      procedure BtnEdtCodPessoa1Exit(Sender: TObject);
      procedure FormResize(Sender: TObject);
   private
      procedure AtualizarGrid(ChaveCliFor: Integer; Grid: TDBGrid; PessoaGrid: Integer);
      function BuscarChaveCliFor(Codigo: Integer): Integer;
    procedure ConfigurarColunasAuto(Grid: TDBGrid);
   public
   end;

var
   FrmTabelas: TFrmTabelas;

implementation

{$R *.dfm}

function TFrmTabelas.BuscarChaveCliFor(Codigo: Integer): Integer;
begin
   Result := -1;
   with FDQuery1 do begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT chave FROM clifor WHERE codigo = :codigo';
      ParamByName('codigo').AsInteger := Codigo;
      Open;
      if not IsEmpty then begin
         Result := FieldByName('chave').AsInteger;
      end;
      Close;
   end;
end;

procedure TFrmTabelas.AtualizarGrid(ChaveCliFor: Integer; Grid: TDBGrid; PessoaGrid: Integer);
var
   i: Integer;
begin
   with FDQuery1 do begin
      Close;
      SQL.Clear;
      case RgTipoMov.ItemIndex of
         0: begin
            SQL.Text := 'SELECT descricao, valor, 0 as parcelas, 0 as vlrparcelas ' +
                        'FROM movfinanceirascf WHERE chaveclifor = :chaveclifor AND gridpessoa = :gridpessoa';
         end;
         1: begin
            SQL.Text := 'SELECT descricao, valor, parcelas, vlrparcelas ' +
                        'FROM movfinanceirascf WHERE chaveclifor = :chaveclifor AND gridpessoa = :gridpessoa';
         end;
      end;
      ParamByName('chaveclifor').AsInteger := ChaveCliFor;
      ParamByName('gridpessoa').AsInteger := PessoaGrid;
      Open;
      if Grid.Columns.Count <> FieldCount then begin
         Grid.Columns.Clear;
         for i := 0 to FieldCount - 1 do begin
            with Grid.Columns.Add do begin
               FieldName := Fields[i].FieldName;
               Title.Caption := UpperCase(Fields[i].FieldName);
               Width := Grid.ClientWidth div FieldCount;
            end;
         end;
      end;
      Grid.DataSource.DataSet := FDQuery1;
      if not FDQuery1.IsEmpty then
         ConfigurarColunasAuto(Grid);
   end;
end;

procedure TFrmTabelas.ConfigurarColunasAuto(Grid: TDBGrid);
var
   i: Integer;
begin
   for i := 0 to Grid.Columns.Count - 1 do
      Grid.Columns[i].Width := Grid.ClientWidth div Grid.Columns.Count;
end;

procedure TFrmTabelas.BitBtnSalvarClick(Sender: TObject);
var
   ChaveCliFor: Integer;
   ValorConvertido: Double;
begin
   if Trim(EdtDescricao.Text) = '' then begin
      ShowMessage('Informe uma descrição.');
      EdtDescricao.SetFocus;
      Exit;
   end;
   if Trim(EdtValor.Text) = '' then begin
      ShowMessage('Informe o valor da movimentação.');
      EdtValor.SetFocus;
      Exit;
   end;
   ChaveCliFor := BuscarChaveCliFor(StrToIntDef(BtnEdtCodPessoa1.Text, 0));
   if ChaveCliFor = -1 then begin
      ShowMessage('Responsável não encontrado.');
      Exit;
   end;
   with FDQuery1 do begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO movfinanceirascf (ativo, chaveclifor, tipo, valor, vlrparcelas, parcelas, descricao, gridpessoa, dataini, datafim, despfixa) ' +
                  'VALUES (:ativo, :chaveclifor, :tipo, :valor, :vlrparcelas, :parcelas, :descricao, :gridpessoa, :dataini, :datafim, :despfixa)';
      ParamByName('ativo').AsInteger := 1;
      ParamByName('chaveclifor').AsInteger := ChaveCliFor;
      ParamByName('tipo').AsInteger := RgTipoMov.ItemIndex;
      var CleanText := Trim(StringReplace(EdtValor.Text, 'R$', '', [rfReplaceAll, rfIgnoreCase]));
//      CleanText := StringReplace(CleanText, '.', '', [rfReplaceAll]);
//      CleanText := StringReplace(CleanText, ',', '.', [rfReplaceAll]);
         if TryStrToFloat(CleanText, ValorConvertido) then
      ParamByName('valor').AsCurrency := ValorConvertido;
      ParamByName('vlrparcelas').AsCurrency := StrToFloatDef(EdtVlrParcelas.Text, 0);
      ParamByName('parcelas').AsInteger := StrToIntDef(EdtParcelas.Text, 1);
      ParamByName('descricao').AsString := Trim(EdtDescricao.Text);
      ParamByName('gridpessoa').AsInteger := RGResponsavel.ItemIndex;
      ParamByName('despfixa').AsInteger := 2;
//      Aqui falta a parte da data, quando numero de parcelas, somar em meses, transformar em data para o ib,

      try
         ExecSQL;
         ShowMessage('Movimentação inserida com sucesso.');
         case RGResponsavel.ItemIndex of
            0: AtualizarGrid(ChaveCliFor, DBGrid1, 0);
            1: AtualizarGrid(ChaveCliFor, DBGrid2, 1);
//            3: AtualizarGrid(ChaveCliFor, DBGrid4, 3);
         end;
      except
         on E: Exception do begin
            ShowMessage('Erro ao inserir movimentação: ' + E.Message);
         end;
      end;
   end;
end;

procedure TFrmTabelas.BtnEdtCodPessoa1Exit(Sender: TObject);
begin
   with FDQuery1 do begin
      Close;
      SQL.Clear;
      Params.Clear;
      Fields.Clear;
      FetchOptions.RecsMax := -1;
      SQL.Text := 'SELECT * FROM clifor WHERE codigo = :codigo';
      ParamByName('codigo').AsInteger := StrToIntDef(BtnEdtCodPessoa1.Text, 0);
      Open;
      if FindField('NOME') <> nil then begin
         BtedtPessoa1.Text := FieldByName('NOME').AsString;
      end else begin
         ShowMessage('Erro: Campo "NOME" não encontrado na consulta.');
      end;
   end;
   LblNome1.Caption := BtedtPessoa1.Text;
end;

procedure TFrmTabelas.FormCreate(Sender: TObject);
begin
   FDQuery1.Connection := FDConnection1;
   EdtValor.Text := 'R$ 0,00';
   EdtVlrParcelas.Text := 'R$ 0,00';
   EdtData.Text := FormatDateTime('dd/mm/yyyy', Date);
   RgTipoMov.ItemIndex := 0;
   RGResponsavel.ItemIndex := 0;

   GroupBox1.Left := 20;
//   GroupBox1.Width := FrmTabelas.ClientWidth - (2 * GroupBox1.Left);
end;

procedure TFrmTabelas.FormResize(Sender: TObject);
var
   ATamanho: Integer;
begin
   ATamanho := (GroupBox2.Width - EdtParcelas.Left + 30) div 3;
   GroupBox1.Left := 20;
   GroupBox1.Width := FrmTabelas.ClientWidth - (2 * GroupBox1.Left);
   BitBtnSalvar.Left := FrmTabelas.ClientWidth - BitBtnSalvar.Width - 20;
   BitBtnLimpar.Left := BitBtnSalvar.Left - BitBtnLimpar.Width - 10;
   GroupBox2.Left := 20;
   EdtDescricao.Left := 10;
   EdtDescricao.Width := GroupBox2.Width - 30 - 90;
   EdtValor.Width := 90;
   EdtValor.Left := GroupBox2.width - 10 - 90;
   RgTipoMov.left := 10;
   RgTipoMov.width := 140;
   RGResponsavel.left := RgTipoMov.width + 20;
   RGResponsavel.Width := 180;
   DBGrid1.Width := FrmTabelas.ClientWidth div 2 - 10;
   DBGrid1.Height := FrmTabelas.ClientHeight - 150;
   EdtParcelas.Width := ATamanho;
   EdtVlrParcelas.Width := ATamanho;
   EdtData.Width := ATamanho;
   EdtParcelas.Left := RGResponsavel.Left + RGResponsavel.Width + 10;
   EdtVlrParcelas.Left := EdtParcelas.Left + EdtParcelas.Width + 10;
   EdtData.Left := EdtVlrParcelas.Left + EdtVlrParcelas.Width + 10;
   Label3.Left := EdtParcelas.Left;
   Label4.Left := EdtVlrParcelas.Left;
   Label9.Left := EdtData.Left;
   BitBtnSalvar.Left := GroupBox2.width - BitBtnSalvar.width - 10;
   BitBtnLimpar.Left := BitBtnSalvar.Left - 10 - BitBtnLimpar.Width;

   var FormDividido := (FrmTabelas.width) div 2;
   DBGrid1.Left := 20;
   DBGrid1.Width := (FormDividido div 2) - 10;
   DBGrid2.Width := (FormDividido div 2) - 10;
   DBGrid2.Left := DBGrid1.Width + 10 + 20;
   LblNome1.Left := DBGrid1.Left;
   LblNome2.Left := DBGrid2.Left;
   LblTotalPessoa1.Left := DBGrid1.Left + DBGrid1.Width - LblTotalPessoa1.Width;
   LblTotalPessoa2.Left := DBGrid2.Left + DBGrid2.Width - LblTotalPessoa2.Width;
end;

procedure TFrmTabelas.BtedtPessoa1Exit(Sender: TObject);
begin
   LblNome1.Caption := BtedtPessoa1.Text;
end;

procedure TFrmTabelas.BtedtPessoa2Exit(Sender: TObject);
begin
   LblNome2.Caption := BtedtPessoa2.Text;
end;

procedure TFrmTabelas.RgTipoMovClick(Sender: TObject);
begin
   if RgTipoMov.ItemIndex = 0 then begin
      EdtParcelas.ReadOnly := True;
      EdtVlrParcelas.ReadOnly := True;
      EdtParcelas.Text := '1';
   end else begin
      EdtParcelas.ReadOnly := False;
      EdtVlrParcelas.ReadOnly := False;
      EdtParcelas.Text := '1';
   end;
end;

procedure TFrmTabelas.FormShow(Sender: TObject);
begin
   if BtnEdtCodPessoa1.Text <> '' then begin
      AtualizarGrid(StrToInt(BtnEdtCodPessoa1.Text), DBGrid1, 0);
      AtualizarGrid(StrToInt(BtnEdtCodPessoa2.Text), DBGrid2, 1);
   end;
end;

procedure TFrmTabelas.EdtValorExit(Sender: TObject);
var
   Valor: Currency;
begin
   Valor := StrToCurrDef(StringReplace(EdtValor.Text, 'R$', '', [rfReplaceAll, rfIgnoreCase]), 0);
   EdtValor.Text := FormatFloat('R$ #,##0.00', Valor);
end;

procedure TFrmTabelas.EdtVlrParcelasChange(Sender: TObject);
var
   Valor: Currency;
begin
   Valor := StrToCurrDef(StringReplace(EdtVlrParcelas.Text, 'R$', '', [rfReplaceAll, rfIgnoreCase]), 0);
   EdtVlrParcelas.Text := FormatFloat('R$ #,##0.00', Valor);
end;

procedure TFrmTabelas.EdtDataKeyPress(Sender: TObject; var Key: Char);
var
   Posicao: Integer;
   TempText: string;
begin
   if not (Key in ['0'..'9', #8]) then begin
      Key := #0;
      Exit;
   end;
   Posicao := EdtData.SelStart + 1;
   if Key in ['0'..'9'] then begin
      if Posicao in [1, 2, 4, 5, 7, 8, 9, 10] then begin
         TempText := EdtData.Text;
         TempText[Posicao] := Key;
         EdtData.Text := TempText;
         EdtData.SelStart := Posicao;
      end;
      if Posicao in [2, 5] then
         EdtData.SelStart := Posicao + 1;
      Key := #0;
   end else if Key = #8 then begin
      Dec(Posicao);
      if Posicao in [3, 6] then
         Dec(Posicao);
      if Posicao > 0 then begin
         TempText := EdtData.Text;
         TempText[Posicao] := '_';
         EdtData.Text := TempText;
         EdtData.SelStart := Posicao - 1;
      end;
      Key := #0;
   end;
end;

end.

