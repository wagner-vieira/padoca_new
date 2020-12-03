unit UntcalculadoraCalorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCalculadoraCalorias = class(TForm)
    lblTitulo: TLabel;
    lblProdutos: TLabel;
    cmbProdutos: TComboBox;
    lblCarboidratos: TLabel;
    edtCarboidratos: TEdit;
    lblProteinas: TLabel;
    edtProteinas: TEdit;
    lblGorduras: TLabel;
    edtGorduras: TEdit;
    meTabela: TMemo;
    btnExibir: TButton;
    btnLimpar: TButton;
    btnFechar: TButton;
    lblTabela: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculadoraCalorias: TFrmCalculadoraCalorias;

implementation

{$R *.dfm}

procedure TFrmCalculadoraCalorias.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCalculadoraCalorias.btnLimparClick(Sender: TObject);
begin
  cmbProdutos.Text := ''; // cmbProdutos.Clear;
  edtCarboidratos.Clear;
  edtProteinas.Clear;
  edtGorduras.Clear;
  meTabela.Clear;
end;

end.
