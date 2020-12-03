unit UntCadastroFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadastroFornecedores = class(TForm)
    QueFornecedores: TADOQuery;
    QueFornecedorescnpj: TBCDField;
    QueFornecedoresrazaoSocial: TStringField;
    QueFornecedoresinscEstadual: TBCDField;
    QueFornecedoresendereco: TStringField;
    QueFornecedoresbairro: TStringField;
    QueFornecedorescidade: TStringField;
    QueFornecedoresestado: TStringField;
    QueFornecedorestelefone: TStringField;
    QueFornecedoresemail: TStringField;
    QueFornecedoressite: TStringField;
    DsFornecedores: TDataSource;
    lblCNPJ: TLabel;
    lblRazao: TLabel;
    lblInscEstadual: TLabel;
    lblEndereco: TLabel;
    lbBairro: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    lblTelefone: TLabel;
    lblEmail: TLabel;
    lblSite: TLabel;
    dbCNPJ: TDBEdit;
    dbRazao: TDBEdit;
    dbInscEstadual: TDBEdit;
    dbEndereco: TDBEdit;
    dbBairro: TDBEdit;
    dbCidade: TDBEdit;
    dbTelefone: TDBEdit;
    dbEmail: TDBEdit;
    dbSite: TDBEdit;
    dbgFornecedores: TDBGrid;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dbcEstado: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure AtivaDesativaBotoes;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFornecedores: TFrmCadastroFornecedores;

implementation

{$R *.dfm}

uses untBancoDados;

procedure TFrmCadastroFornecedores.AtivaDesativaBotoes;
begin
  btnIncluir.Enabled := not btnIncluir.Enabled;
  btnAlterar.Enabled := not btnAlterar.Enabled;
  btnSalvar.Enabled := not btnSalvar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
end;

procedure TFrmCadastroFornecedores.btnAlterarClick(Sender: TObject);
begin
  if QueFornecedores.FieldByName('cnpj').IsNull then
  begin
    ShowMessage('Nenhum Registro Selecionado para Alterar');
    btnIncluir.SetFocus;
    Exit;
  end;
  AtivaDesativaBotoes;
  QueFornecedores.Edit;
end;

procedure TFrmCadastroFornecedores.btnCancelarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueFornecedores.Cancel;
  Close;
end;

procedure TFrmCadastroFornecedores.btnExcluirClick(Sender: TObject);
begin
  if QueFornecedores.FieldByName('cnpj').IsNull then
  begin
    ShowMessage('Nenhum Registro Selecionado para Exclusão');
    btnIncluir.SetFocus;
    Exit;
  end;
  QueFornecedores.Delete;
  ShowMessage('Fornecedor excluído com sucesso');
end;

procedure TFrmCadastroFornecedores.btnIncluirClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueFornecedores.Append;
  dbCNPJ.SetFocus;
end;

procedure TFrmCadastroFornecedores.btnSalvarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueFornecedores.Post;
  ShowMessage('Fornecedor Gravado com sucesso!');
end;

procedure TFrmCadastroFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Ao fechar o formulário, fechamos também a query
  QueFornecedores.Close;
  Action := caFree;
end;

procedure TFrmCadastroFornecedores.FormCreate(Sender: TObject);
begin
  //Aqui ativamos a Query para consulta ao banco de dados
  QueFornecedores.Active := True;
  //Em seguida, abrimos a Query para as operações
  QueFornecedores.Open;
end;

procedure TFrmCadastroFornecedores.FormDestroy(Sender: TObject);
begin
  FrmCadastroFornecedores := nil;
end;

procedure TFrmCadastroFornecedores.FormShow(Sender: TObject);
begin
  dbTelefone.Field.EditMask := '(00)00000-0000';
end;

end.
