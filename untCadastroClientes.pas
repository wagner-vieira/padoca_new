unit untCadastroClientes;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, cxCurrencyEdit, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, MaskUtils;

type
  TFrmCadastroClientes = class(TForm)
    QueClientes: TADOQuery;
    DSClientes: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBGrid1: TDBGrid;
    dbSexo: TDBRadioGroup;
    dbCPF: TDBEdit;
    dbNome: TDBEdit;
    dbRG: TDBEdit;
    dbCelular: TDBEdit;
    dbEmail: TDBEdit;
    dbEndereco: TDBEdit;
    dbBairro: TDBEdit;
    dbCidade: TDBEdit;
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
    btnAlterar: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dbcEstado: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AtivaDesativaBotoes;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroClientes: TFrmCadastroClientes;

implementation

{$R *.dfm}

uses untBancoDados;

procedure TFrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  QueClientes.Close;
end;

procedure TFrmCadastroClientes.FormCreate(Sender: TObject);
begin
  //Aqui ativamos a Query para consulta ao banco de dados
  queClientes.Active := True;
  //Em seguida, abrimos a Query para as operações
  queClientes.Open;
end;

procedure TFrmCadastroClientes.FormDestroy(Sender: TObject);
begin
  FrmCadastroClientes := nil;
end;

procedure TFrmCadastroClientes.FormShow(Sender: TObject);
begin
  dbCelular.Field.EditMask := '(00)00000-0000';
end;

procedure TFrmCadastroClientes.btnSalvarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  queClientes.Post;
  ShowMessage('Cliente Gravado com sucesso!');
end;

procedure TFrmCadastroClientes.AtivaDesativaBotoes;
begin
  btnIncluir.Enabled := not btnIncluir.Enabled;
  btnAlterar.Enabled := not btnAlterar.Enabled;
  btnSalvar.Enabled := not btnSalvar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
end;

procedure TFrmCadastroClientes.btnAlterarClick(Sender: TObject);
begin
  if queClientes.FieldByName('cpfClientes').IsNull then
  begin
    ShowMessage('Nenhum Registro Selecionado para Alterar');
    btnIncluir.SetFocus;
    Exit;
  end;
  AtivaDesativaBotoes;
  queClientes.Edit;
end;

procedure TFrmCadastroClientes.btnExcluirClick(Sender: TObject);
begin
  if queClientes.FieldByName('cpfClientes').IsNull then
  begin
    ShowMessage('Nenhum Registro Selecionado para Exclusão');
    btnIncluir.SetFocus;
    Exit;
  end;
  queClientes.Delete;
  ShowMessage('Cliente excluído com sucesso');
end;

procedure TFrmCadastroClientes.btnCancelarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  queClientes.Cancel;
  Close;
end;

procedure TFrmCadastroClientes.btnIncluirClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueClientes.Append;
  dbCPF.SetFocus;
  dbSexo.Value := 'F';
end;

end.
