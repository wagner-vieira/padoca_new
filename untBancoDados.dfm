object DmBancoDados: TDmBancoDados
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ADOConexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Admin2020@;Persist Security Info=Tr' +
      'ue;User ID=sa;Initial Catalog=padoca;Data Source=NB-SARAIVA\SQLE' +
      'XPRESS'
    DefaultDatabase = 'padoca'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 96
    Top = 40
  end
end
