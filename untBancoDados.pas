unit untBancoDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDmBancoDados = class(TDataModule)
    ADOConexao: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmBancoDados: TDmBancoDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
