unit UntFuncoes;

interface
uses
  Windows, SysUtils, Classes, Forms, Vcl.Buttons;

// aqui os cabeçalhos das funções/procedures que serão vistas
// às demais units
procedure AtivaDesativaBotoes;

implementation

// aqui a implementação das funções/procedures
procedure AtivaDesativaBotoes;
var
  btnIncluir, btnAlterar, btnSalvar, btnExcluir, btnCancelar : TBitBtn;
begin
  btnIncluir.Enabled := not btnIncluir.Enabled;
  btnAlterar.Enabled := not btnAlterar.Enabled;
  btnSalvar.Enabled := not btnSalvar.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnCancelar.Enabled := not btnCancelar.Enabled;
end;

end.
