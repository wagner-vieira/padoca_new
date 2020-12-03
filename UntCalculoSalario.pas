unit UntCalculoSalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmCalculoSalario = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbSalBruto: TLabel;
    mkeVencimentos: TMaskEdit;
    edtNome: TEdit;
    lblINSS: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cpPagamento: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    lblIRRF: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    Label16: TLabel;
    mmObservacoes: TMemo;
    mmSalLiquido: TMemo;
    mkeSalBruto: TMaskEdit;
    mkeINSS: TMaskEdit;
    mkeIRRF: TMaskEdit;
    mkeTotalVenc: TMaskEdit;
    mkeTotalDesc: TMaskEdit;
    mkeFGTS: TMaskEdit;
    cmbCPF: TComboBox;
    edtCBO: TEdit;
    Label17: TLabel;
    mkeDN: TMaskEdit;
    lblDepto: TLabel;
    edtDepto: TEdit;
    mmDicas: TMemo;
    procedure cmbCPFChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    function CalculaINSS(valor: Extended): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculoSalario: TFrmCalculoSalario;

implementation

{$R *.dfm}

Function TFrmCalculoSalario.CalculaINSS(valor: Extended): String;
Var
  Perc, VlrReal: Extended;
begin
    Perc:=0;
    If ( Valor <= 468.47 ) Then
    Perc:= 7.65;
    If ( Valor >= 468.48 ) and ( Valor <= 600.00 ) Then
    Perc:= 8.65;
    If ( Valor >= 600.01 ) and ( Valor <= 780.78 ) Then
    Perc:= 9;
    If ( Valor >= 780.79 ) and ( Valor <= 1561.56 ) Then
    Perc:= 11;
    VlrReal:= (Valor * Perc)/100;
    Result:= FloatToStr(Trunc(VlrReal * 100) / 100);
end;

procedure TFrmCalculoSalario.cmbCPFChange(Sender: TObject);
var
  selecao : integer;
begin
  selecao := cmbCPF.ItemIndex;

  case (selecao) of
    0:
    begin
      edtNome.Text := 'Josefa Luiza Costa';
      edtCBO.Text := 'Gerente de Vendas';
      mkeDN.Text := '04/06/2002';
      edtDepto.Text := 'Marketing';
    end;

    1:
    begin
      edtNome.Text := 'Malu Lívia Gabrielly Caldeira';
      edtCBO.Text := 'Assistente Administrativo';
      mkeDN.Text := '27/07/1995';
      edtDepto.Text := 'Diretoria';
    end;

    2:
    begin
      edtNome.Text := 'Kaique Marcelo Matheus Oliveira';
      edtCBO.Text := 'Analista Financeiro';
      mkeDN.Text := '18/03/1976';
      edtDepto.Text := 'Financeiro';
    end;

    3:
    begin
      edtNome.Text := 'Gabrielly Analu da Cunha';
      edtCBO.Text := 'Supervisora de RH';
      mkeDN.Text := '23/09/1988';
      edtDepto.Text := 'Recursos Humanos';
    end;

    4:
    begin
      edtNome.Text := 'Julio Nathan Alves';
      edtCBO.Text := 'Desenvolvedor UX/IX Jr';
      mkeDN.Text := '16/08/2000';
      edtDepto.Text := 'Tecnologia da Informação';
    end;

  end;

end;

procedure TFrmCalculoSalario.SpeedButton1Click(Sender: TObject);
var
  salBruto, inss, fgts, irpf, salLiquido : real;
begin
  salBruto := StrToFloat(mkeSalBruto.Text);
  mkeSalBruto.Text := FloatToStr(salBruto);
  fgts := salBruto * 0.08;
  mkeFGTS.Text := FloatToStr(fgts);

  mkeINSS.Text := CalculaINSS(inss);

end;

end.
