unit FormAnalise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FormBaseConexao, IniFiles, Vcl.ComCtrls;

type
  TFrmAnalise = class(TFormBase)
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    EdtPessoa1: TEdit;
    LblPessoa1: TLabel;
    EdtPessoa2: TEdit;
    LblPesso2: TLabel;
    EdtCodPessoa2: TEdit;
    LblCod2: TLabel;
    EdtCodigo: TEdit;
    LblCod1: TLabel;
    GBData: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    LblPessoaGrid2: TLabel;
    LblPessoaGrid1: TLabel;
    LblTotal1: TLabel;
    LblTotal2: TLabel;
    LblLembrete: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    PnlEditarLembrete: TPanel;
    MemLembrete: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    FDQueryGrid1: TFDQuery;
    FDQueryGrid2: TFDQuery;
    FDQuerySoma1: TFDQuery;
    FDQuerySoma2: TFDQuery;
    FDQueryPessoa1: TFDQuery;
    FDQueryPessoa2: TFDQuery;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure LblLembreteDblClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdtPessoa1Exit(Sender: TObject);
    procedure EdtPessoa2Exit(Sender: TObject);
    procedure EdtPessoa1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FNomeRecebido: string;
    procedure SalvaremINI;
    procedure LerDoINI;
    procedure SetNomeRecebido(const Value: string);
//    FNomeRecebido: string;
    { Private declarations }
  public
    property NomeRecebido: string read FNomeRecebido write SetNomeRecebido;
  end;

var
  FrmAnalise: TFrmAnalise;
  IniFile: TIniFile;

implementation

{$R *.dfm}

uses
   FormPesquisa, FormFuncoesGeral;

//para o form pesquisa
procedure TFrmAnalise.SetNomeRecebido(const Value: string);
begin
   FNomeRecebido := Value;
   EdtPessoa1.Text := Value;
   EdtPessoa2.Text := Value;
end;

procedure TFrmAnalise.BitBtn1Click(Sender: TObject);
var
  i: Integer;
  ValorTotal: Double;
begin
   with FDQueryGrid1 do begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT valor, parcelas, dataini, descricao FROM movfinanceirascf where chaveclifor = :chaveclifor and dataini between :dataini1 and :datafim2';
      Params.ParamByName('chaveclifor').AsInteger := StrToInt(EdtCodigo.Text);
      Params.ParamByName('dataini1').AsDate := DateTimePicker1.date;
      Params.ParamByName('datafim2').AsDate := DateTimePicker2.date;
      try
         Open;
         FetchAll;
         if (State = dsBrowse) and (FieldCount > 0) then begin
            DBGrid1.Columns.Clear;
            for i := 0 to FieldCount - 1 do
               with DBGrid1.Columns.Add do begin
                  FieldName := Fields[i].FieldName;
                  Title.Caption := Fields[i].FieldName;
                  if Fields[i].DataType = ftDate then
               end;
         end;
         FormBase.DataSource1.DataSet := FDQueryGrid1;
         DBGrid1.DataSource := FormBase.DataSource1;
         DBGrid1.Refresh;
         DBGrid1.Invalidate;
      except
         on E: Exception do
            ShowMessage('Erro na consulta do Grid 1: ' + E.Message);
      end;
   end;
   with FDQueryGrid2 do begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT valor, parcelas, dataini, descricao FROM movfinanceirascf where chaveclifor = :chaveclifor and dataini between :dataini1 and :datafim2';
      Params.ParamByName('chaveclifor').AsInteger := StrToInt(EdtCodPessoa2.Text);
      Params.ParamByName('dataini1').AsDate := DateTimePicker1.date;
      Params.ParamByName('datafim2').AsDate := DateTimePicker2.date;
      try
         Open;
         if (State = dsBrowse) and (FieldCount > 0) then begin
            DBGrid2.Columns.Clear;
            for i := 0 to FieldCount - 1 do
               with DBGrid2.Columns.Add do begin
                  FieldName := Fields[i].FieldName;
                  Title.Caption := Fields[i].FieldName;
                  if Fields[i].DataType = ftDate then
               end;
         end;
         FormBase.DataSource2.DataSet := FDQueryGrid2;
         DBGrid2.DataSource := FormBase.DataSource2;
         DBGrid2.Refresh;
         DBGrid2.Invalidate;
      except
         on E: Exception do
            ShowMessage('Erro na consulta do Grid 2: ' + E.Message);
      end;
   end;
   with FDQuerySoma1 do begin
      Close;
      SQL.Clear;
      SQL.Text := 'Select sum(valor) from movfinanceirascf where chaveclifor = :chaveclifor and dataini between :dataini1 and :datafim2';
      Params.ParamByName('chaveclifor').AsInteger := StrToInt(EdtCodigo.Text);
      Params.ParamByName('dataini1').AsDate := DateTimePicker1.date;
      Params.ParamByName('datafim2').AsDate := DateTimePicker2.date;
      Open;
      ValorTotal := Fields[0].AsFloat;
      LblTotal1.Caption := 'Total: R$ ' + FloatToStr(ValorTotal);
   end;
   with FDQuerySoma2 do begin
      Close;
      SQL.Clear;
      SQL.Text := 'Select sum(valor) from movfinanceirascf where chaveclifor = :chaveclifor and dataini between :dataini1 and :datafim2';
      Params.ParamByName('chaveclifor').AsInteger := StrToInt(EdtCodPessoa2.Text);
      Params.ParamByName('dataini1').AsDate := DateTimePicker1.date;
      Params.ParamByName('datafim2').AsDate := DateTimePicker2.date;
      Open;
      ValorTotal := Fields[0].AsFloat;
      LblTotal2.Caption := 'Total: R$ ' + FloatToStr(ValorTotal);
   end;
   SalvaremINI;
end;

procedure TFrmAnalise.EdtPessoa1Exit(Sender: TObject);
var
   CodPessoa1: Double;
begin
   with FDQueryPessoa1 do begin
      Close;
      SQL.Clear;
      SQL.Text := 'select codigo from clifor where nome = :nome';
      ParamByName('nome').AsString := EdtPessoa1.Text;
      Open;
      CodPessoa1 := Fields[0].AsFloat;
      EdtCodigo.Text := FloatToStr(CodPessoa1);
   end;
   inherited;
end;

procedure TFrmAnalise.EdtPessoa1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_F8 then begin
      TFrmFuncoesGeral.MudarForm(TForm(FormPesquisaCliFor), TFormPesquisaCliFor);
   end;
end;

procedure TFrmAnalise.EdtPessoa2Exit(Sender: TObject);
var
   CodPessoa2: Double;
begin
   with FDQueryPessoa2 do begin
      Close;
      SQL.Clear;
      SQL.Text := 'select codigo from clifor where nome = :nome';
      ParamByName('nome').AsString := EdtPessoa2.Text;
      Open;
      CodPessoa2 := Fields[0].AsFloat;
      EdtCodPessoa2.Text := FloatToStr(CodPessoa2);
   end;
   inherited;
end;

procedure TFrmAnalise.FormCreate(Sender: TObject);
begin
   IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
   LerDoINI;
end;

procedure TFrmAnalise.FormDestroy(Sender: TObject);
begin
   SalvaremINI;
   IniFile.Free;
end;

procedure TFrmAnalise.SalvaremINI;
begin
   Try
      IniFile.WriteString('Analise', 'CodPessoa1', EdtCodigo.Text);
      IniFile.WriteString('Analise', 'CodPessoa2', EdtCodPessoa2.Text);
      IniFile.WriteString('Analise', 'Pessoa1', EdtPessoa1.Text);
      IniFile.WriteString('Analise', 'Pessoa2', EdtPessoa2.Text);
      IniFile.WriteInteger('Analise', 'IndiceRadioGroup', RadioGroup1.ItemIndex);
      IniFile.WriteBool('Analise', 'MostrarGanhos', CheckBox1.Checked);
      IniFile.WriteBool('Analise', 'DespesasFixas', CheckBox2.Checked);
   except on E: Exception do
      ShowMessage('Erro ao salvar no INI: ' + E.Message);
   end;
end;

procedure TFrmAnalise.LerDoINI;
var
  Indice: Integer;
begin
   try
      EdtCodigo.Text := IniFile.ReadString('Analise', 'CodPessoa1', EdtCodigo.Text);
      EdtCodPessoa2.Text := IniFile.ReadString('Analise', 'CodPessoa2', EdtCodPessoa2.Text);
      EdtPessoa1.Text := IniFile.ReadString('Analise', 'Pessoa1', EdtPessoa1.Text);
      EdtPessoa2.Text := IniFile.ReadString('Analise', 'Pessoa2', EdtPessoa2.Text);
      RadioGroup1.ItemIndex := IniFile.ReadInteger('Analise', 'IndiceRadioGroup', RadioGroup1.ItemIndex);
      CheckBox1.Checked := IniFile.ReadBool('CheckBox', 'MostrarGanhos', CheckBox1.Checked);
      CheckBox2.Checked := IniFile.ReadBool('CheckBox', 'DespesasFixas', CheckBox2.Checked);
   except on E: Exception do
      ShowMessage('Erro ao ler do INI: ' + E.Message);
   end;
end;

procedure TFrmAnalise.FormShow(Sender: TObject);
begin
   LerDoINI;
   PnlEditarLembrete.top := 100;
   PnlEditarLembrete.Left := 155;
   if EdtPessoa1.Text <> '' then
      LblPessoaGrid1.Caption := EdtPessoa1.Text;
   if EdtPessoa2.Text <> '' then
      LblPessoaGrid2.Caption := EdtPessoa2.Text;
end;

procedure TFrmAnalise.Label5Click(Sender: TObject);
begin
   DateTimePicker1.BringToFront;
   DateTimePicker2.BringToFront;
   PnlEditarLembrete.Visible := False;
   PnlEditarLembrete.Enabled := False;
   LblLembrete.Caption := 'Lembrete: ' + MemLembrete.Text;
end;

procedure TFrmAnalise.LblLembreteDblClick(Sender: TObject);
begin
   PnlEditarLembrete.Visible := True;
   PnlEditarLembrete.Enabled := True;
   DateTimePicker1.SendToBack;
   DateTimePicker2.SendToBack;
end;

end.
