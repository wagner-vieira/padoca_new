program SigPadoca;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  UntCalendario in 'UntCalendario.pas' {FrmCalendario},
  UntCalcCalorias in 'UntCalcCalorias.pas' {FrmCalcCalorias},
  UntLogin in 'UntLogin.pas' {FrmLogin},
  Vcl.Themes,
  Vcl.Styles,
  untCadastroClientes in 'untCadastroClientes.pas' {FrmCadastroClientes},
  untBancoDados in 'untBancoDados.pas' {DmBancoDados: TDataModule},
  UntCadastroProdutos in 'UntCadastroProdutos.pas' {FrmCadastroProdutos},
  UntCadastroFornecedores in 'UntCadastroFornecedores.pas' {FrmCadastroFornecedores},
  UntVendas in 'UntVendas.pas' {FrmVendas},
  UntCalculoSalario in 'UntCalculoSalario.pas' {FrmCalculoSalario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDmBancoDados, DmBancoDados);
  Application.Run;
end.
