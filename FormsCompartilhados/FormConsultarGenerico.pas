unit FormConsultarGenerico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmConsGen = class(TForm)
    Panel1: TPanel;
    dbGridPrincipal: TDBGrid;
    GroupBox1: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsGen: TFrmConsGen;

implementation

{$R *.dfm}

end.
