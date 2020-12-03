unit UntCalcCalorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCalcCalorias = class(TForm)
    Label1: TLabel;
    lblProduto: TLabel;
    cmbProduto: TComboBox;
    lblCarboidrato: TLabel;
    edtCarboidratos: TEdit;
    lblProteinas: TLabel;
    edtProteinas: TEdit;
    lblGorduras: TLabel;
    edtGorduras: TEdit;
    mmTabela: TMemo;
    btnCalcular: TButton;
    btnLimpar: TButton;
    lblTabela: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalcCalorias: TFrmCalcCalorias;

implementation

{$R *.dfm}

procedure TFrmCalcCalorias.btnCalcularClick(Sender: TObject);
var
  carboidratos, proteinas, gorduras, calorias : real;
begin
  carboidratos := StrToFloat(edtCarboidratos.Text);
  proteinas := StrToFloat(edtProteinas.Text);
  gorduras := StrToFloat(edtGorduras.Text);

  calorias := (4 * carboidratos) + (4 * proteinas) + (9 * gorduras);

  mmTabela.Lines.Add('**** Tabela Nutricional ****');
  mmTabela.Lines.Add('Produto (100g): '+cmbProduto.Text);
  mmTabela.Lines.Add('');
  mmTabela.Lines.Add('Calorias do produto(Kcal): '+FloatToStr(calorias));
  mmTabela.Lines.Add('');
  mmTabela.Lines.Add('Total de carboidratos(g): '+FloatToStr(carboidratos));
  mmTabela.Lines.Add('Total de proteínas(g): '+FloatToStr(proteinas));
  mmTabela.Lines.Add('Total de gorduras(g): '+FloatToStr(gorduras));


end;

procedure TFrmCalcCalorias.btnLimparClick(Sender: TObject);
begin
  //cmbProduto.Clear;
  edtCarboidratos.Clear;
  edtProteinas.Clear;
  edtGorduras.Clear;
  mmTabela.Clear;
end;

procedure TFrmCalcCalorias.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
