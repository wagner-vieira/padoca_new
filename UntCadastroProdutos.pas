unit UntCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCurrencyEdit, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadastroProdutos = class(TForm)
    QueProdutos: TADOQuery;
    QueProdutosidProduto: TAutoIncField;
    QueProdutosdescricao: TStringField;
    QueProdutosunidade: TStringField;
    QueProdutosncm: TIntegerField;
    QueProdutosundEstoque: TIntegerField;
    QueProdutoscategoria: TStringField;
    QueProdutosprecoUnitario: TBCDField;
    QueProdutoscnpjFornece: TBCDField;
    DsProdutos: TDataSource;
    lblCodProduto: TLabel;
    lblDescricao: TLabel;
    lblUnidade: TLabel;
    lblNCM: TLabel;
    lblEstoque: TLabel;
    lblCategoria: TLabel;
    lblPrecoUnitario: TLabel;
    lblCNPJ: TLabel;
    dbCodigo: TDBEdit;
    dbDescricao: TDBEdit;
    dbEstoque: TDBEdit;
    dbPrecoUnitario: TDBEdit;
    dbgProdutos: TDBGrid;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dbcCategoria: TDBComboBox;
    dbcUnidade: TDBComboBox;
    dbNCM: TDBEdit;
    QueFornece: TADOQuery;
    dbcFornecedores: TDBLookupComboBox;
    DsFornece: TDataSource;
    QueFornececnpj: TBCDField;
    QueFornecerazaoSocial: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AtivaDesativaBotoes;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroProdutos: TFrmCadastroProdutos;

implementation

{$R *.dfm}

uses untBancoDados;

procedure TFrmCadastroProdutos.AtivaDesativaBotoes;
begin
  btnIncluir.Enabled := not btnIncluir.Enabled;
  btnAlterar.Enabled := not btnAlterar.Enabled;
  btnSalvar.Enabled := not btnSalvar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
end;

procedure TFrmCadastroProdutos.btnAlterarClick(Sender: TObject);
begin
  if QueProdutos.FieldByName('idProduto').IsNull then
  begin
    ShowMessage('Nenhum Registro Selecionado para Alterar');
    btnIncluir.SetFocus;
    Exit;
  end;
  AtivaDesativaBotoes;
  QueProdutos.Edit;
end;

procedure TFrmCadastroProdutos.btnCancelarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueProdutos.Cancel;
  Close;
end;

procedure TFrmCadastroProdutos.btnExcluirClick(Sender: TObject);
begin
  if QueProdutos.FieldByName('idProduto').IsNull then
  begin
    ShowMessage('Nenhum Registro Selecionado para Exclusão');
    btnIncluir.SetFocus;
    Exit;
  end;
  QueProdutos.Delete;
  ShowMessage('Produto excluído com sucesso');
end;

procedure TFrmCadastroProdutos.btnIncluirClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueProdutos.Append;
  dbDescricao.SetFocus;
end;

procedure TFrmCadastroProdutos.btnSalvarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  dbPrecoUnitario.Field.EditMask := '#,##0.00';
  QueProdutos.Post;
  ShowMessage('Produto Gravado com sucesso!');
end;

procedure TFrmCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QueProdutos.Close;
  QueFornece.Close;
  Action := caFree;
end;

procedure TFrmCadastroProdutos.FormCreate(Sender: TObject);
begin
  //Aqui ativamos a Query para consulta ao banco de dados
  QueProdutos.Active := True;
  QueFornece.Active := True;
  //Em seguida, abrimos a Query para as operações
  QueProdutos.Open;
  QueFornece.Open;
end;

procedure TFrmCadastroProdutos.FormDestroy(Sender: TObject);
begin
  FrmCadastroProdutos := nil;
end;

end.
