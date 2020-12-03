unit UntPrincipal;

interface

uses
  Winapi.Windows, ShellApi, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, dxGDIPlusClasses;

type
  TFrmPrincipal = class(TForm)
    Mmenu: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    Utilitrios1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Entrada1: TMenuItem;
    Sada1: TMenuItem;
    Clientes2: TMenuItem;
    Produtos2: TMenuItem;
    Fornecedores2: TMenuItem;
    Calculadora1: TMenuItem;
    Calculadora2: TMenuItem;
    Empresa1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    btnClientes: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnRelatórios: TSpeedButton;
    btnSair: TSpeedButton;
    btnCalculadora: TSpeedButton;
    btnCalendário: TSpeedButton;
    abeladecalorias1: TMenuItem;
    SpeedButton1: TSpeedButton;
    btnFornecedores: TSpeedButton;
    Geradordetabuadas1: TMenuItem;
    InstruoWhile1: TMenuItem;
    InstruoRepeat1: TMenuItem;
    InstruoFor1: TMenuItem;
    Clculodesalrio1: TMenuItem;
    procedure btnSairClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure btnCalculadoraClick(Sender: TObject);
    procedure btnCalendárioClick(Sender: TObject);
    procedure btnCaloriasClick(Sender: TObject);
    procedure abeladecalorias1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnClientesClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnRelatóriosClick(Sender: TObject);
    procedure Clculodesalrio1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UntCalendario, UntCalcCalorias,
  UntLogin, untTeste, untCadastroClientes, UntCadastroProdutos,
  UntCadastroFornecedores, UntVendas, UntCalculoSalario;

procedure TFrmPrincipal.abeladecalorias1Click(Sender: TObject);
begin
  if FrmCalcCalorias = nil then
  begin
    Application.CreateForm(TFrmCalcCalorias, FrmCalcCalorias);
  end;
    FrmCalcCalorias.Show;
end;

procedure TFrmPrincipal.btnCalculadoraClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open', 'calc.exe', '', nil, SW_SHOWNORMAL);
end;

procedure TFrmPrincipal.btnCalendárioClick(Sender: TObject);
begin
  if FrmCalendario = nil then
  begin
    Application.CreateForm(TFrmCalendario, FrmCalendario);;
  end;
  FrmCalendario.Show;
end;

procedure TFrmPrincipal.btnCaloriasClick(Sender: TObject);
begin
  if FrmCalcCalorias = nil then
  begin
    Application.CreateForm(TFrmCalcCalorias, FrmCalcCalorias);
  end;
    FrmCalcCalorias.Show;
end;

procedure TFrmPrincipal.btnClientesClick(Sender: TObject);
begin
  if FrmCadastroClientes = nil then
  begin
    Application.CreateForm(TFrmCadastroClientes, FrmCadastroClientes);
  end;
  FrmCadastroClientes.ShowModal;
  FrmCadastroClientes.Free;
end;

procedure TFrmPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  if FrmCadastroFornecedores = nil then
  begin
    Application.CreateForm(TFrmCadastroFornecedores, FrmCadastroFornecedores);
  end;
  FrmCadastroFornecedores.ShowModal;
  FrmCadastroFornecedores.Free;
end;

procedure TFrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  if FrmCadastroProdutos = nil then
  begin
    Application.CreateForm(TFrmCadastroProdutos, FrmCadastroProdutos);
  end;
  FrmCadastroProdutos.ShowModal;
  FrmCadastroProdutos.Free;
end;

procedure TFrmPrincipal.btnRelatóriosClick(Sender: TObject);
begin
  if FrmVendas = nil then
  begin
    Application.CreateForm(TFrmVendas, FrmVendas);
  end;
    FrmVendas.ShowModal;
    FrmVendas.Free;
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  if MessageDlg('Deseja sair da aplicação?', mtConfirmation, [mbYes, mbNo],0)= mrYes then
  begin
    MessageDlg('Sua aplicação está sendo encerrada.', mtInformation, [mbOK],0);
    Close;
  end;
end;

procedure TFrmPrincipal.Clculodesalrio1Click(Sender: TObject);
begin
  if FrmCalculoSalario = nil then
  begin
    Application.CreateForm(TFrmCalculoSalario, FrmCalculoSalario);
    try
	    FrmCalculoSalario.ShowModal;
    finally
      FrmCalculoSalario.Release;
    end;
  end;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  if FrmCadastroClientes = nil then
  begin
    Application.CreateForm(TFrmCadastroClientes, FrmCadastroClientes);
  end;
  FrmCadastroClientes.ShowModal;
  FrmCadastroClientes.Free;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmLogin.Close;
  Action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  FrmLogin.Destroy;
end;

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
  if FrmCadastroProdutos = nil then
  begin
    Application.CreateForm(TFrmCadastroProdutos, FrmCadastroProdutos);
  end;
  FrmCadastroProdutos.ShowModal;
  FrmCadastroProdutos.Free;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  if MessageDlg('Deseja sair da aplicação?', mtConfirmation, [mbYes, mbNo],0)= mrYes then
  begin
    MessageDlg('Sua aplicação está sendo encerrada.', mtInformation, [mbOK],0);
    Close;
  end;
end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCalcCalorias, FrmCalcCalorias);
  FrmCalcCalorias.Show;
end;

end.
