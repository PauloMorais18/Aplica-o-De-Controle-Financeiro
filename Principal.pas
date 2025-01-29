unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Threading,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    PnlConteudo: TPanel;
    PnlCabecalho: TPanel;
    ImgLogo150_80: TImage;
    Panel4: TPanel;
    LBLNomeEmp: TLabel;
    LblCNPJ: TLabel;
    Panel5: TPanel;
    ImgUserClara: TImage;
    ImgUserEscura: TImage;
    Panel9: TPanel;
    LblNomeUsuario: TLabel;
    Label4: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    PnlCad: TPanel;
    PnlDespesasFixas: TPanel;
    PnlControle: TPanel;
    PnlContas: TPanel;
    pnlMenuLateralPrincipal: TPanel;
    Panel8: TPanel;
    Label3: TLabel;
    pnlCadastrosPrincipal: TPanel;
    lblCadMenu: TLabel;
    Panel10: TPanel;
    Image1: TImage;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery1CHAVE: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1VLRCOMPRA: TIntegerField;
    FDQuery1VLRVENDA: TIntegerField;
    FDQuery1QTDESTOQUE: TIntegerField;
    FDQuery1ATIVO: TIntegerField;
    DataSource1: TDataSource;
    Image2: TImage;
    Panel15: TPanel;
    Panel17: TPanel;
    PnlGanhos: TPanel;
    Panel19: TPanel;
    PnlAnalise: TPanel;
    LblAnalise: TLabel;
    Image3: TImage;
    Empresas1: TMenuItem;
    Empresas2: TMenuItem;
    Controle1: TMenuItem;
    Controle2: TMenuItem;
    Assinaturas1: TMenuItem;
    Assinaturas2: TMenuItem;
    Anlise1: TMenuItem;
    PnlConfig: TPanel;
    LblConfiguracoes: TLabel;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure PnlContasClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure pnlCadastrosPrincipalClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure PnlPessoaCadClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure PnlDespesasFixasClick(Sender: TObject);
    procedure PnlGanhosClick(Sender: TObject);
    procedure PnlGraficosTelaClick(Sender: TObject);
    procedure LblAnaliseClick(Sender: TObject);
    procedure LblConfiguracoesClick(Sender: TObject);
  private
    procedure ImgUserClaraMouseLeave(Sender: TObject);
    procedure ImgUserEscuraMouseEnter(Sender: TObject);
    procedure MenuLateralDinamicoAbrir;
    procedure MenuLateralDinamicoFechar;
    procedure MudancaDirecaoSetas(TargetLabel: TLabel);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses
   FormBasePrincipalSubstituto, FormCadClifor, FormFuncoesGeral,
   FormBaseConexao, FormTabelas, FormConfig, FormDespesas,
   FormGanhos, FormGraficos, FormAnalise;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  pnlMenuLateralPrincipal.Width := 40;
  PnlControle.Top := 88;
  PnlControle.Left := 6;
  PnlCad.Top := 47;
  PnlCad.Left := 6;
  Self.OnClick := FormClick;
end;

procedure TFrmPrincipal.Image1Click(Sender: TObject);
begin
  pnlMenuLateralPrincipal.BringToFront;
  if pnlMenuLateralPrincipal.Width = 40 then begin
    MenuLateralDinamicoAbrir;
    pnlCadastrosPrincipal.Visible := True;
    Panel8.Visible := True;
    PnlAnalise.Visible := True;
    PnlConfig.Visible := True;
  end else begin
    MenuLateralDinamicoFechar;
    pnlCadastrosPrincipal.Visible := False;
    Panel8.Visible := False;
    PnlAnalise.Visible := False;
    PnlConfig.Visible := False;
  end;
end;

procedure TFrmPrincipal.Image2Click(Sender: TObject);
begin
   TFrmFuncoesGeral.MudarFormPanel(TForm(FormSubstituto), TFormSubstituto, PnlConteudo);
end;

procedure TFrmPrincipal.Image4Click(Sender: TObject);
begin
   TFrmFuncoesGeral.MudarFormPanel(TForm(FrmConfig), TFrmConfig, PnlConteudo);
end;

procedure TFrmPrincipal.MudancaDirecaoSetas(TargetLabel: TLabel);
begin
  if TargetLabel.Caption = '>>' then
    TargetLabel.Caption := '<<'
  else
    TargetLabel.Caption := '>>';
end;

procedure TFrmPrincipal.PnlContasClick(Sender: TObject);
begin
   PnlCad.visible := False;
   TFrmFuncoesGeral.MudarFormPanel(TForm(FrmTabelas), TFrmTabelas, PnlConteudo);
end;

procedure TFrmPrincipal.PnlDespesasFixasClick(Sender: TObject);
begin
   TFrmFuncoesGeral.MudarForm(TForm(FrmDespesas), TFrmDespesas);
end;

procedure TFrmPrincipal.PnlGanhosClick(Sender: TObject);
begin
   TFrmFuncoesGeral.MudarForm(TForm(FrmGanhos), TFrmGanhos);
end;

procedure TFrmPrincipal.PnlGraficosTelaClick(Sender: TObject);
begin
   TFrmFuncoesGeral.MudarFormPanel(TForm(FrmGraficos), TFrmGraficos, PnlConteudo);
end;

procedure TFrmPrincipal.PnlPessoaCadClick(Sender: TObject);
begin
   TFrmFuncoesGeral.MudarForm(TForm(FrmCadPessoa), TFrmCadPessoa);
end;

procedure TFrmPrincipal.Panel8Click(Sender: TObject);
begin
  if PnlControle.Visible = False then begin
    PnlControle.Visible := True;
    PnlControle.BringToFront;
  end else
    PnlControle.Visible := False;
end;

procedure TFrmPrincipal.MenuLateralDinamicoAbrir;
begin
  pnlMenuLateralPrincipal.Width := 140;
end;

procedure TFrmPrincipal.MenuLateralDinamicoFechar;
begin
  pnlMenuLateralPrincipal.Width := 40;
end;

procedure TFrmPrincipal.pnlCadastrosPrincipalClick(Sender: TObject);
begin
  if PnlCad.Visible = False then begin
    PnlCad.BringToFront;
    PnlCad.Visible := True;
  end else
    PnlCad.Visible := False;
end;

procedure TFrmPrincipal.FormClick(Sender: TObject);
var
   MousePos: TPoint;
   SubMenuRect: TRect;
begin
   MousePos := ScreenToClient(Mouse.CursorPos);
   SubMenuRect := pnlCadastrosPrincipal.BoundsRect;
   if not PtInRect(SubMenuRect, MousePos) then
   begin
      PnlCad.Visible := False;
      pnlCadastrosPrincipal.Visible := False;
   end;
end;

procedure TFrmPrincipal.ImgUserClaraMouseLeave(Sender: TObject);
begin
  ImgUserEscura.Visible := True;
  ImgUserClara.Visible := False;
end;

procedure TFrmPrincipal.ImgUserEscuraMouseEnter(Sender: TObject);
begin
  ImgUserEscura.Visible := False;
  ImgUserClara.Visible := True;
end;

procedure TFrmPrincipal.LblAnaliseClick(Sender: TObject);
begin
   TFrmFuncoesGeral.MudarForm(TForm(FrmAnalise), TFrmAnalise);
end;

procedure TFrmPrincipal.LblConfiguracoesClick(Sender: TObject);
begin
   TFrmFuncoesGeral.MudarForm(TForm(FrmConfig), TFrmConfig);
end;

end.

