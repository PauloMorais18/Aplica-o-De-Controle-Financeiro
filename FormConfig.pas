unit FormConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, FormArmazenar,
  Vcl.Buttons, FormBaseConexao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmConfig = class(TFormBase)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    EdtNomeUsuario: TEdit;
    EdtSenha: TEdit;
    LblSenha: TLabel;
    FDQGUsuario: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

{$R *.dfm}

procedure TFrmConfig.Button1Click(Sender: TObject);
begin
   with FDQGUsuario do begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO USUARIOS (ativo, nome, logado, senha) ' +
                  'VALUES (:ativo, :nome, :logado, :senha)';
      ParamByName('ativo').AsInteger := 1;
      ParamByName('nome').AsString := EdtNomeUsuario.Text;
      ParamByName('logado').AsInteger := 1;
      ParamByName('senha').AsString := EdtSenha.Text;
      ExecSQL;
   end;
end;

end.
