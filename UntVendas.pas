unit UntVendas;

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
  cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, dxGDIPlusClasses;

type
  TFrmVendas = class(TForm)
    Label5: TLabel;
    lblEmissao: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    lblDinheiro: TLabel;
    edtDinheiro: TEdit;
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    pnlLogo: TPanel;
    pnlVendas: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    StatusBar2: TStatusBar;
    Label4: TLabel;
    QueClientes: TADOQuery;
    QueProdutos: TADOQuery;
    QueClientescpfClientes: TBCDField;
    QueClientesnome: TStringField;
    QueClientessexo: TStringField;
    QueClientesrg: TStringField;
    QueClientescelular: TStringField;
    QueClientesemail: TStringField;
    QueClientesendereco: TStringField;
    QueClientesbairro: TStringField;
    QueClientescidade: TStringField;
    QueClientesestado: TStringField;
    QueProdutosidProduto: TAutoIncField;
    QueProdutosdescricao: TStringField;
    QueProdutosunidade: TStringField;
    QueProdutosncm: TIntegerField;
    QueProdutosundEstoque: TIntegerField;
    QueProdutoscategoria: TStringField;
    QueProdutosprecoUnitario: TBCDField;
    QueProdutoscnpjFornece: TBCDField;
    DsClientes: TDataSource;
    DsProdutos: TDataSource;
    dblcClientes: TDBLookupComboBox;
    dblcProdutos: TDBLookupComboBox;
    mmEmissao: TMemo;
    btnAdicionar: TSpeedButton;
    QueVendas: TADOQuery;
    QueVendasidVendas: TAutoIncField;
    QueVendasidPedido_vendas: TIntegerField;
    QueVendaspreco_unitario: TBCDField;
    QueVendasqtde: TIntegerField;
    QueVendaspreco_total: TBCDField;
    QueVendascpfClientes: TBCDField;
    QueVendasnome: TStringField;
    QueVendasidProduto: TIntegerField;
    QueVendasdescricao: TStringField;
    DsVendas: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    dbQtde: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;

implementation

{$R *.dfm}

uses untBancoDados;

procedure TFrmVendas.BitBtn1Click(Sender: TObject);
begin
  QueVendas.Post;
  ShowMessage('Venda gravada com sucesso!');
end;

procedure TFrmVendas.FormCreate(Sender: TObject);
begin
  //Aqui ativamos a Query para consulta ao banco de dados
  QueProdutos.Active := True;
  QueClientes.Active := True;
  QueVendas.Active := True;
  //Em seguida, abrimos a Query para as operações
  QueProdutos.Open;
  QueClientes.Open;
  QueVendas.Open;

  QueVendas.Append;
end;

procedure TFrmVendas.FormShow(Sender: TObject);
var
  dataAtual : TDate;
  horaAtual : TTime;
begin
  dataAtual := Date();
  horaAtual := Time();
  mmEmissao.Lines.Add(DateToStr(dataAtual));
  mmEmissao.Lines.Add(TimeToStr(horaAtual));
end;

end.
