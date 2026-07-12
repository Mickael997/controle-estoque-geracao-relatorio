program Vendas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDTMConexao in 'datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  uTelaHeranca in 'heranca\uTelaHeranca.pas' {frmTelaHeranca},
  ucadcategoria in 'cadastro\ucadcategoria.pas' {frmCadCategoria},
  Enter in 'terceiros\Enter.pas',
  uEnum in 'heranca\uEnum.pas',
  cCadCategoria in 'classes\cCadCategoria.pas',
  uCadCliente in 'cadastro\uCadCliente.pas' {frmCadCliente},
  uCadProduto in 'cadastro\uCadProduto.pas' {frmCadProduto},
  uFrmAtualizaDB in 'datamodule\uFrmAtualizaDB.pas' {frmAtualizaDB},
  uDTMVenda in 'datamodule\uDTMVenda.pas' {dtmVenda: TDataModule},
  uProVenda in 'processo\uProVenda.pas' {frmProVenda},
  cProVenda in 'classes\cProVenda.pas',
  cControleEstoque in 'classes\cControleEstoque.pas',
  uRelCadClienteFicha in 'relatorio\uRelCadClienteFicha.pas' {frmRelCadClienteFicha},
  uRelCadCliente in 'relatorio\uRelCadCliente.pas' {frmRelCadCliente},
  uRelCategoria in 'relatorio\uRelCategoria.pas' {frmRelCategoria},
  uRelCadProduto in 'relatorio\uRelCadProduto.pas' {frmRelCadProduto},
  uRelCadProdutoComGrupoCategoria in 'relatorio\uRelCadProdutoComGrupoCategoria.pas' {frmRelCadProdutoComGrupoCategoria},
  uRelVendaPorData in 'relatorio\uRelVendaPorData.pas' {frmRelVendaPorData},
  uSelecionarData in 'relatorio\uSelecionarData.pas' {frmSelecionarData},
  uRelProVenda in 'relatorio\uRelProVenda.pas' {frmRelProVenda},
  uCadUsuario in 'cadastro\uCadUsuario.pas' {frmCadUsuario},
  uFuncaoCriptografia in 'heranca\uFuncaoCriptografia.pas',
  cCadCliente in 'classes\cCadCliente.pas',
  uLogin in 'login\uLogin.pas' {frmLogin},
  cCadProduto in 'classes\cCadProduto.pas',
  uAlterarSenha in 'login\uAlterarSenha.pas' {frmAlterarSenha},
  cUsuarioLogado in 'login\cUsuarioLogado.pas',
  cCadUsuario in 'classes\cCadUsuario.pas',
  cAtualizacaoBancoDeDados in 'classes\cAtualizacaoBancoDeDados.pas',
  cAtualizacaoTabelaMSSQL in 'classes\cAtualizacaoTabelaMSSQL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
