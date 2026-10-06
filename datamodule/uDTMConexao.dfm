object dtmPrincipal: TdtmPrincipal
  Height = 217
  Width = 640
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'AutoCommit=true'#10
      'IsolationLevel=ReadCommitted'
      'RawStringEncoding=DB_CP')
    AutoCommit = False
    AfterConnect = ConexaoDBAfterConnect
    DisableSavepoints = False
    HostName = ''
    Port = 1433
    Database = 
      'Provider=SQLOLEDB.1;Password=SenhaForte@2025;Persist Security In' +
      'fo=True;User ID=vendasADM;Initial Catalog=vendas;Data Source=DES' +
      'KTOP-RJP2RQN\SQLEXPRESS'
    User = ''
    Password = ''
    Protocol = 'ado'
    Left = 88
    Top = 24
  end
end
