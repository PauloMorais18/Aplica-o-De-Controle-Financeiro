unit FormGraficos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.JSON;

type
  TFrmGraficos = class(TForm)
    Panel1: TPanel;
    PnlGraficosSuperior: TPanel;
    PnlGraficosInferior: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    PaintBox1: TPaintBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGraficos: TFrmGraficos;

implementation

{$R *.dfm}

procedure TFrmGraficos.FormShow(Sender: TObject);
begin
//   PnlGraficosSuperior.Height := FrmGraficos div 2;
//   PnlGraficosSuperior.Height := FrmGraficos div 2
end;

end.
