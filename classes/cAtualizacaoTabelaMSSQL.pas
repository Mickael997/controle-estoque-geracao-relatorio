unit cAtualizacaoTabelaMSSQL;

interface

uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     Data.DB,
     System.SysUtils,
     cAtualizacaoBancoDeDados;

type
  TAtualizacaoTabelaMSSQL = class(TAtualizaBancoDados)

  private
    function TabelaExiste(aNomeTabela:String):Boolean;
    procedure Categoria;

  protected

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
  end;

implementation

{ TAtualizacaoTabelaMSSQL }

constructor TAtualizacaoTabelaMSSQL.Create(aConexao: TZConnection);
begin
  ConexaoDB := aConexao;
  Categoria;
end;

destructor TAtualizacaoTabelaMSSQL.Destroy;
begin

  inherited;
end;

function TAtualizacaoTabelaMSSQL.TabelaExiste(aNomeTabela: String): Boolean;
Var Qry:TZQuery;
Begin
  Try
    Result:=False;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(' SELECT OBJECT_ID (:NomeTabela) As ID ');
    Qry.ParamByName('NomeTabela').AsString:=aNomeTabela;
    Qry.Open;

    if Qry.FieldByName('ID').AsInteger>0 then
       Result:=True;

  Finally
    Qry.Close;
    if Assigned(Qry) then
       FreeAndNil(Qry);
  End;
End;

procedure TAtualizacaoTabelaMSSQL.Categoria;
begin
  if not TabelaExiste('categorias') then
  begin
    ExecutaDiretoBancoDeDados(
      'CREATE TABLE categorias(   '+
      'categoriaId int IDENTITY(1,1) NOT NULL,  '+
      'descricao varchar(30) NULL,  '+
      'PRIMARY KEY (categoriaId)  '+
      ')  '
    );
  end;
end;

end.
