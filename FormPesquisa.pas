unit FormPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FormBaseConexao,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormPesquisaCliFor = class(TFormBase)
    Filtros: TGroupBox;
    Label1: TLabel;
    RGSelecao: TRadioGroup;
    EdtNomePessoa: TEdit;
    Label2: TLabel;
    EdtCodigoPessoa: TEdit;
    DBGrid1: TDBGrid;
    LblRegistrosEncontrados: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    FDQueryFormPesquisa: TFDQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaCliFor: TFormPesquisaCliFor;

implementation

{$R *.dfm}

procedure TFormPesquisaCliFor.BitBtn1Click(Sender: TObject);
begin
   with FDQueryFormPesquisa do begin
      Close;
      SQL.Clear;
      SQL.Text := 'select nome, codigo, senha from clifor ';
      if RGSelecao.itemindex = 0 then begin
         SQL.Text := SQl.Text + 'Where nome = :nome';
         params.ParamByName('nome').AsString := EdtNomePessoa.Text;
      end else begin
         SQL.Text := SQl.Text + 'Where codigo = :codigo';
         params.ParamByName('codigo').AsInteger := StrToInt(EdtCodigoPessoa.Text);
      end;
      open;
   end;
end;

procedure TFormPesquisaCliFor.DBGrid1DblClick(Sender: TObject);
var
   NomePessoa: string;
begin
   if not FDQuery1.Eof then begin
      NomePessoa := FDQuery1.FieldByName('Nome').AsString;
   end;
end;

end.
