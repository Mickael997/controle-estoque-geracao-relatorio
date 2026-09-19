unit uDTMConexao;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TdtmPrincipal = class(TDataModule)
    ConexaoDB: TZConnection;
    QryScriptClientes: TZQuery;
    QryScriptProdutos: TZQuery;
    QryScriptVendas: TZQuery;
    QryScriptItensVendas: TZQuery;
    QryScriptUsuarios: TZQuery;
    procedure ConexaoDBAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmPrincipal: TdtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmPrincipal.ConexaoDBAfterConnect(Sender: TObject);
begin
  // Deixe vazio ou coloque comandos que devem rodar após conectar
end;

end.
