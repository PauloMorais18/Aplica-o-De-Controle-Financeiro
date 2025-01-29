program LPCF;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  FormConsultarGenerico in '..\FormsCompartilhados\FormConsultarGenerico.pas' {FrmConsGen},
  FormCadClifor in 'FormCadClifor.pas' {FrmCadPessoa},
  FormFuncoesGeral in '..\FormsCompartilhados\FormFuncoesGeral.pas' {FrmFuncoesGeral},
  FormBaseConexao in '..\FormsCompartilhados\FormBaseConexao.pas' {FormBase},
  FormTabelas in 'FormTabelas.pas' {FrmTabelas},
  FormConfig in 'FormConfig.pas' {FrmConfig},
  FormArmazenar in 'FormArmazenar.pas' {FrmArmazenar},
  FormBasePrincipalSubstituto in 'FormBasePrincipalSubstituto.pas' {FormSubstituto},
  FormLogin in 'FormLogin.pas' {FrmLogin},
  FormDespesas in 'FormDespesas.pas' {FrmDespesas},
  FormGanhos in 'FormGanhos.pas' {FrmGanhos},
  FormGraficos in 'FormGraficos.pas' {FrmGraficos},
  FormAnalise in 'FormAnalise.pas' {FrmAnalise},
  FormPesquisa in 'FormPesquisa.pas' {FormPesquisaCliFor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmConsGen, FrmConsGen);
  Application.CreateForm(TFrmCadPessoa, FrmCadPessoa);
  Application.CreateForm(TFrmFuncoesGeral, FrmFuncoesGeral);
  Application.CreateForm(TFormBase, FormBase);
  Application.CreateForm(TFrmTabelas, FrmTabelas);
  Application.CreateForm(TFrmConfig, FrmConfig);
  Application.CreateForm(TFrmArmazenar, FrmArmazenar);
  Application.CreateForm(TFormSubstituto, FormSubstituto);
  Application.CreateForm(TFrmDespesas, FrmDespesas);
  Application.CreateForm(TFrmGanhos, FrmGanhos);
  Application.CreateForm(TFrmGraficos, FrmGraficos);
  Application.CreateForm(TFrmAnalise, FrmAnalise);
  Application.CreateForm(TFormPesquisaCliFor, FormPesquisaCliFor);
  Application.Run;
end.
