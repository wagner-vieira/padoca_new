unit UntLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
    edtUser: TEdit;
    edtPassword: TEdit;
    bntEntrar2: TButton;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AtivaLogin();
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bntEntrar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UntPrincipal;

procedure TFrmLogin.AtivaLogin;
var
  user, password : string;
begin
  if (Trim(edtUser.Text) <> '') and (Trim(edtPassword.Text) <> '') then
  begin
    user := 'wagner';
    password := 'Senha123@';
    if (edtUser.Text = user) and (edtPassword.Text = password) then
    begin
      Application.CreateForm(TFrmPrincipal, FrmPrincipal);
      FrmPrincipal.Show;
    end
    else
    begin
      ShowMessage('Usuário ou senha incorretos!!!');
      edtUser.SetFocus;
    end
  end
  else
  begin
    MessageDlg('Preencha os campos', mtInformation, mbOKCancel,0);
  end;
end;

procedure TFrmLogin.bntEntrar2Click(Sender: TObject);
begin
  AtivaLogin;
end;

procedure TFrmLogin.btnEntrarClick(Sender: TObject);
begin
  AtivaLogin;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
  FrmLogin := nil;
end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    perform(wm_nextdlgctl,0,0);
 end;
end;

end.
