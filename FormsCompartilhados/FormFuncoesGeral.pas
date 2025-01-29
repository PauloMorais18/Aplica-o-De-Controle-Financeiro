unit FormFuncoesGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, IniFiles;

type
  TFrmFuncoesGeral = class(TForm)
    class procedure MudarFormPanel(var FormNome: TForm; FormClass: TFormClass; ParentPanel: TPanel);
    class procedure MudarForm(var FormNome: TForm; FormClass: TFormClass); static;
    procedure InicializaIni(const NomeArquivo: string);
    procedure SalvarValorIni(const Secao, Chave, Valor: string);
    function LerValorIni(const Secao, Chave, ValorPadrao: string): string;
    procedure SalvarValorIniInteger(const Secao, Chave: string; Valor: integer);
    function LerValorIniInteger(const Secao, Chave: string; ValorPadrao: integer): integer;
    procedure SalvarValorIniBool(const Secao, Chave: string; Valor: boolean);
    function LerValorIniBool(const Secao, Chave: string; ValorPadrao: boolean): boolean;
    procedure FinalizaIni;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncoesGeral: TFrmFuncoesGeral;
  IniFile: TIniFile;

implementation

{$R *.dfm}

class procedure TFrmFuncoesGeral.MudarFormPanel(var FormNome: TForm; FormClass: TFormClass; ParentPanel: TPanel);
begin
   if Assigned(FormNome) then
   begin
      FormNome.Free;
      FormNome := nil;
   end;
   FormNome := FormClass.Create(nil);
   FormNome.Parent      := ParentPanel;
   FormNome.Align       := alClient;
   FormNome.BorderStyle := bsNone;
   FormNome.Show;
end;

class procedure TFrmFuncoesGeral.MudarForm(var FormNome: TForm; FormClass: TFormClass);
begin
   if Assigned(FormNome) then
   begin
      FormNome.Free;
      FormNome := nil;
   end;
   FormNome := FormClass.Create(nil);
   FormNome.Show;
end;

procedure TFrmFuncoesGeral.InicializaIni(const NomeArquivo: string);
begin
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + NomeArquivo);
end;

procedure TFrmFuncoesGeral.SalvarValorIni(const Secao, Chave, Valor: string);
begin
  try
    IniFile.WriteString(Secao, Chave, Valor);
  except
    on E: Exception do
      ShowMessage('Erro ao salvar configuração: ' + E.Message);
  end;
end;

function TFrmFuncoesGeral.LerValorIni(const Secao, Chave, ValorPadrao: string): string;
begin
  Result := IniFile.ReadString(Secao, Chave, ValorPadrao);
end;

procedure TFrmFuncoesGeral.SalvarValorIniInteger(const Secao, Chave: string; Valor: integer);
begin
    try
        IniFile.WriteInteger(Secao, Chave, Valor);
    except
        on E: Exception do
            ShowMessage('Erro ao salvar configuração: ' + E.Message);
    end;
end;

function TFrmFuncoesGeral.LerValorIniInteger(const Secao, Chave: string; ValorPadrao: integer): integer;
begin
    Result := IniFile.ReadInteger(Secao, Chave, ValorPadrao);
end;

procedure TFrmFuncoesGeral.SalvarValorIniBool(const Secao, Chave: string; Valor: boolean);
begin
    try
        IniFile.WriteBool(Secao, Chave, Valor);
    except
        on E: Exception do
            ShowMessage('Erro ao salvar configuração: ' + E.Message);
    end;
end;

function TFrmFuncoesGeral.LerValorIniBool(const Secao, Chave: string; ValorPadrao: boolean): boolean;
begin
    Result := IniFile.ReadBool(Secao, Chave, ValorPadrao);
end;

procedure TFrmFuncoesGeral.FinalizaIni;
begin
  IniFile.Free;
end;

end.

