unit FormLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, FormBaseConexao, IniFiles;

type
  TFrmLogin = class(TFormBase)
    EdtUsuario: TEdit;
    Label1: TLabel;
    EdtSenha: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure SalvaremINI;
    procedure LerINI;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
  IniFile: TIniFile;

implementation

{$R *.dfm}

uses
   Principal, FormFuncoesGeral;

procedure TFrmLogin.BitBtn1Click(Sender: TObject);
var
  HashSenha: string;
begin
  with FDQuery1 do begin
    Close;
    SQL.Clear;
    Params.Clear;
    Fields.Clear;
    SQL.Text := 'SELECT * FROM USUARIOS WHERE NOME = :nome AND senha = :senha';
    ParamByName('nome').AsString := EdtUsuario.Text;
    ParamByName('senha').AsString := EdtSenha.Text;
    Open;
    if RecordCount = 0 then
      ShowMessage('Usuário ou senha inválidos')
     else begin
        SalvaremINI;
        TFrmFuncoesGeral.MudarForm(TForm(FrmPrincipal), TFrmPrincipal);
     end;
  end;
end;

procedure TFrmLogin.BitBtn2Click(Sender: TObject);
begin
   IniFile.Free;
   Application.Terminate;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  inherited;
   IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
   LerINI;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
   IniFile.Free;
   inherited;
end;

procedure TFrmLogin.SalvaremINI;
begin
   Try
      IniFile.WriteString('Login', 'Usuario', EdtUsuario.Text);
      IniFile.WriteString('Login', 'Senha', EdtSenha.Text);
   except on E: Exception do
      ShowMessage('Erro ao salvar no INI: ' + E.Message);
   end;
end;

procedure TFrmLogin.LerINI;
begin
   EdtUsuario.Text := IniFile.ReadString('Login', 'Usuario', EdtUsuario.Text);
   EdtSenha.Text := IniFile.ReadString('Login', 'Senha', EdtSenha.Text);
end;

end.

