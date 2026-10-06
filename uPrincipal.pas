unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao, Enter,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, uFrmAtualizaDB, cUsuarioLogado,
  Vcl.ComCtrls, ZDbcIntfs, cAtualizacaoBancoDeDados;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CLIENTE1: TMenuItem;
    N1: TMenuItem;
    CATEGORIA1: TMenuItem;
    CATEGORIA2: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTE2: TMenuItem;
    N3: TMenuItem;
    PRODUTO1: TMenuItem;
    N4: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    CATEGORIA3: TMenuItem;
    FICHADECLIENTE1: TMenuItem;
    PRODUTOSPORCATEGORIA1: TMenuItem;
    USURIO1: TMenuItem;
    N5: TMenuItem;
    ALTERARSENHA1: TMenuItem;
    StbPrincipal: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure CATEGORIA1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CLIENTE1Click(Sender: TObject);
    procedure CATEGORIA2Click(Sender: TObject);
    procedure VENDAS1Click(Sender: TObject);
    procedure CATEGORIA3Click(Sender: TObject);
    procedure CLIENTE2Click(Sender: TObject);
    procedure FICHADECLIENTE1Click(Sender: TObject);
    procedure PRODUTO1Click(Sender: TObject);
    procedure PRODUTOSPORCATEGORIA1Click(Sender: TObject);
    procedure VENDAPORDATA1Click(Sender: TObject);
    procedure USURIO1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuFecharClick(Sender: TObject);
    procedure ALTERARSENHA1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter: TMREnter;
    procedure AtualizacaoBancoDados(aForm: TfrmAtualizaDB);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  oUsuarioLogado: TUsuarioLogado;

implementation

{$R *.dfm}

uses ucadcategoria, uCadCliente, uCadProduto, uProVenda, uRelCategoria,
  uRelCadCliente, uRelCadClienteFicha, uRelCadProduto,
  uRelCadProdutoComGrupoCategoria, uSelecionarData, uRelVendaPorData,
  uCadUsuario, uLogin, uAlterarSenha;

procedure TfrmPrincipal.CATEGORIA1Click(Sender: TObject);
begin
  frmCadCategoria:= TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmPrincipal.CATEGORIA2Click(Sender: TObject);
begin
  frmCadProduto:=TfrmCadProduto.Create(Self);
  frmCadProduto.ShowModal;
  frmCadProduto.Release;
end;

procedure TfrmPrincipal.CATEGORIA3Click(Sender: TObject);
begin
  frmRelCategoria:=TfrmRelCategoria.Create(Self);
  frmRelCategoria.Relatorio.PreviewModal;
  frmRelCategoria.Release;
end;

procedure TfrmPrincipal.CLIENTE1Click(Sender: TObject);
begin
  frmCadCliente:=TfrmCadCliente.Create(Self);
  frmCadCliente.ShowModal;
  frmCadCliente.Release;
end;

procedure TfrmPrincipal.CLIENTE2Click(Sender: TObject);
begin
  frmRelCadCliente:=TfrmRelCadCliente.Create(self);
  frmRelCadCliente.Relatorio.PreviewModal;
  frmRelCadCliente.Release;
end;

procedure TfrmPrincipal.FICHADECLIENTE1Click(Sender: TObject);
begin
  frmRelCadClienteFicha:=TfrmRelCadClienteFicha.Create(self);
  frmRelCadClienteFicha.Relatorio.PreviewModal;
  frmRelCadClienteFicha.Release;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(TeclaEnter);
  FreeAndNil(dtmPrincipal);

  if Assigned(oUsuarioLogado) then
     FreeAndNil(oUsuarioLogado);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

  frmAtualizaDB:=TfrmAtualizaDB.Create(Self);
  frmAtualizaDB.Show;
  frmAtualizaDB.Refresh;

  dtmPrincipal := TdtmPrincipal.Create(Self);
  with dtmPrincipal.ConexaoDB do
  begin
    Connected := False; // Garante que começa desligado para aceitar os parâmetros
    SQLHourGlass := False;
    Protocol := 'ado';

    // Injeta as diretivas de compatibilidade do ADO do Windows
    Properties.Clear;
    Properties.Add('DisableDirectBCD=True');
    Properties.Add('AutoCommit=true');

    Database := 'Provider=MSOLEDBSQL;Data Source=.\SQLEXPRESS;Initial Catalog=vendas';
    HostName := '.\SQLEXPRESS';
    Port := 1433;
    User := 'vendasADM';
    Password := 'SenhaForte@2025';

    // Deixando em formato padrão para o driver ADO não travar as consultas
    AutoCommit := True;
    TransactIsolationLevel := tiNone;

    Connected := True;
  end;
  AtualizacaoBancoDados(frmAtualizaDB);
  frmAtualizaDB.Free;

  TeclaEnter:= TMREnter.Create(Self);
  TeclaEnter.FocusEnabled:= true;
  TeclaEnter.FocusColor:= clInfoBk;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  try
    oUsuarioLogado := TUsuarioLogado.Create;

    frmLogin:= TfrmLogin.Create(self);
    frmLogin.ShowModal;
  finally
    frmLogin.Release;
    StbPrincipal.Panels[0].Text:='USUÁRIO: '+oUsuarioLogado.nome;
  end;

end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.PRODUTO1Click(Sender: TObject);
begin
  frmRelCadProduto:=TfrmRelCadProduto.Create(Self);
  frmRelCadProduto.Relatorio.PreviewModal;
  frmRelCadProduto.Release;
end;

procedure TfrmPrincipal.PRODUTOSPORCATEGORIA1Click(Sender: TObject);
begin
  frmRelCadProdutoComGrupoCategoria:=TfrmRelCadProdutoComGrupoCategoria.Create(Self);
  frmRelCadProdutoComGrupoCategoria.Relatorio.PreviewModal;
  frmRelCadProdutoComGrupoCategoria.Release;
end;

procedure TfrmPrincipal.USURIO1Click(Sender: TObject);
begin
  frmCadUsuario:=TfrmCadUsuario.Create(Self);
  frmCadUsuario.ShowModal;
  frmCadUsuario.Release;
end;

procedure TfrmPrincipal.VENDAPORDATA1Click(Sender: TObject);
begin
  Try
    frmSelecionarData:=TfrmSelecionarData.Create(Self);
    frmSelecionarData.ShowModal;

    frmRelVendaPorData:=TfrmRelVendaPorData.Create(self);
    frmRelVendaPorData.QryVendas.Close;
    frmRelVendaPorData.QryVendas.ParamByName('DataInicio').AsDate:=frmSelecionarData.EdtDataInicio.Date;
    frmRelVendaPorData.QryVendas.ParamByName('DataFim').AsDate:=frmSelecionarData.EdtDataFinal.Date;
    frmRelVendaPorData.QryVendas.Open;
    frmRelVendaPorData.Relatorio.PreviewModal;

  Finally
    frmSelecionarData.Release;
    frmRelVendaPorData.Release;
  End;
end;

procedure TfrmPrincipal.VENDAS1Click(Sender: TObject);
begin
  frmProVenda:=TfrmProVenda.Create(Self);
  frmProVenda.ShowModal;
  frmProVenda.Release;
end;

procedure TfrmPrincipal.ALTERARSENHA1Click(Sender: TObject);
begin
  frmAlterarSenha:=TfrmAlterarSenha.Create(Self);
  frmAlterarSenha.ShowModal;
  frmAlterarSenha.Release;
end;

procedure TfrmPrincipal.AtualizacaoBancoDados(aForm:TfrmAtualizaDB);
var oAtualizarMSSQL:TAtualizaBancoDadosMSSQL;
begin
  aForm.Refresh;

  try
    oAtualizarMSSQL:=TAtualizaBancoDadosMSSQL.Create(DtmPrincipal.ConexaoDB);
    oAtualizarMSSQL.AtualizarBancoDeDadosMSSQL;
  finally
    if Assigned(oAtualizarMSSQL) then
       FreeAndNil(oAtualizarMSSQL);
  end;

end;

end.
