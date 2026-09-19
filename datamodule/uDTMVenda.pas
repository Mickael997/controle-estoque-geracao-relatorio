unit uDTMVenda;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Datasnap.DBClient;

type
  TdtmVenda = class(TDataModule)
    QryCliente: TZQuery;
    QryClienteclienteId: TIntegerField;
    QryClientenome: TWideStringField;

    QryProdutos: TZQuery;

    cdsItensVenda: TClientDataSet;
    dtsItensVenda: TDataSource;
    dtsCliente: TDataSource;
    dtsProdutos: TDataSource;

    cdsItensVendaprodutoId: TIntegerField;
    cdsItensVendaquantidade: TFloatField;
    cdsItensVendavalorUnitario: TFloatField;
    cdsItensVendavalorTotalProduto: TFloatField;
    cdsItensVendaNomeProduto: TStringField;
    QryProdutosprodutoId: TZIntegerField;
    QryProdutosnome: TZUnicodeStringField;
    QryProdutosvalor: TZFMTBCDField;
    QryProdutosquantidade: TZFMTBCDField;

    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);

  private
  public
  end;

var
  dtmVenda: TdtmVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDTMConexao;

{$R *.dfm}

procedure TdtmVenda.DataModuleCreate(Sender: TObject);
begin
  cdsItensVenda.CreateDataSet;

  QryCliente.Open;
  QryProdutos.Open;
end;

procedure TdtmVenda.DataModuleDestroy(Sender: TObject);
begin
  cdsItensVenda.Close;
  QryCliente.Close;
  QryProdutos.Close;
end;



end.
