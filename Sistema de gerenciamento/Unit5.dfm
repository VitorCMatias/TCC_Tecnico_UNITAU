object DM: TDM
  OldCreateOrder = False
  Left = 208
  Top = 100
  Height = 708
  Width = 1097
  object CONEXAO: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\CLINICAODONTO.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 32
    Top = 152
  end
  object SQLDS_LOGIN: TSQLDataSet
    CommandText = 'select * from LOGIN'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 136
    Top = 32
  end
  object SQLDS_DENTISTA: TSQLDataSet
    CommandText = 'select * from DENTISTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 136
    Top = 152
  end
  object SQLDS_AGENDAMENTO: TSQLDataSet
    CommandText = 'select * from AGENDAMENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 136
    Top = 504
  end
  object SQLDS_FUNCIONARIO: TSQLDataSet
    CommandText = 'select * from FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 432
    Top = 24
  end
  object DSP_LOGIN: TDataSetProvider
    DataSet = SQLDS_LOGIN
    Left = 232
    Top = 32
  end
  object DSP_DENTISTA: TDataSetProvider
    DataSet = SQLDS_DENTISTA
    Left = 232
    Top = 152
  end
  object DSP_AGENDAMENTO: TDataSetProvider
    DataSet = SQLDS_AGENDAMENTO
    Left = 264
    Top = 504
  end
  object DSP_FUNCIONARIO: TDataSetProvider
    DataSet = SQLDS_FUNCIONARIO
    Left = 552
    Top = 24
  end
  object CDS_LOGIN: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_LOGIN'
    Left = 136
    Top = 80
    object CDS_LOGINLOG_CODIGO: TIntegerField
      FieldName = 'LOG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_LOGINLOG_PASSWORD: TIntegerField
      FieldName = 'LOG_PASSWORD'
    end
    object CDS_LOGINLOG_USERNAME: TStringField
      FieldName = 'LOG_USERNAME'
      Size = 10
    end
    object CDS_LOGINDEN_CODIGO: TIntegerField
      FieldName = 'DEN_CODIGO'
    end
    object CDS_LOGINFUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
    end
    object CDS_LOGINLOG_SENHA: TStringField
      FieldName = 'LOG_SENHA'
      FixedChar = True
      Size = 15
    end
    object CDS_LOGINPER_CODIGO: TStringField
      FieldName = 'PER_CODIGO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDS_DENTISTA: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_DENTISTA'
    Left = 136
    Top = 200
    object CDS_DENTISTADEN_CODIGO: TIntegerField
      FieldName = 'DEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_DENTISTADEN_NOME: TStringField
      FieldName = 'DEN_NOME'
      Size = 50
    end
    object CDS_DENTISTADEN_RG: TIntegerField
      FieldName = 'DEN_RG'
    end
    object CDS_DENTISTADEN_CPF: TIntegerField
      FieldName = 'DEN_CPF'
    end
    object CDS_DENTISTADEN_RUA: TStringField
      FieldName = 'DEN_RUA'
      Size = 50
    end
    object CDS_DENTISTADEN_NUMERO: TIntegerField
      FieldName = 'DEN_NUMERO'
    end
    object CDS_DENTISTADEN_BAIRRO: TStringField
      FieldName = 'DEN_BAIRRO'
      Size = 50
    end
    object CDS_DENTISTADEN_CIDADE: TStringField
      FieldName = 'DEN_CIDADE'
      Size = 51
    end
    object CDS_DENTISTADEN_TELEFONE: TStringField
      FieldName = 'DEN_TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
  end
  object CDS_AGENDAMENTO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_AGENDAMENTO'
    Left = 136
    Top = 551
    object CDS_AGENDAMENTOAGE_DATA: TDateField
      FieldName = 'AGE_DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object CDS_AGENDAMENTOAGE_HORARIO: TFMTBCDField
      FieldName = 'AGE_HORARIO'
      Precision = 15
      Size = 2
    end
    object CDS_AGENDAMENTODEN_CODIGO: TIntegerField
      FieldName = 'DEN_CODIGO'
    end
    object CDS_AGENDAMENTOPAC_CODIGO: TIntegerField
      FieldName = 'PAC_CODIGO'
    end
    object CDS_AGENDAMENTOCON_CODIGO: TIntegerField
      FieldName = 'CON_CODIGO'
    end
    object CDS_AGENDAMENTOAGE_CODIGO: TIntegerField
      FieldName = 'AGE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_AGENDAMENTOTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
    end
    object CDS_AGENDAMENTOAGE_HORA: TTimeField
      FieldName = 'AGE_HORA'
      EditMask = '!90:00;1;_'
    end
  end
  object CDS_FUNCIONARIO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_FUNCIONARIO'
    Left = 432
    Top = 72
    object CDS_FUNCIONARIOFUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_FUNCIONARIOFUN_NOME: TStringField
      FieldName = 'FUN_NOME'
      Size = 60
    end
    object CDS_FUNCIONARIOFUN_RG: TIntegerField
      FieldName = 'FUN_RG'
    end
    object CDS_FUNCIONARIOFUN_CPF: TIntegerField
      FieldName = 'FUN_CPF'
    end
    object CDS_FUNCIONARIOFUN_RUA: TStringField
      FieldName = 'FUN_RUA'
      Size = 60
    end
    object CDS_FUNCIONARIOFUN_BAIRRO: TStringField
      FieldName = 'FUN_BAIRRO'
      Size = 60
    end
    object CDS_FUNCIONARIOFUN_CIDADE: TStringField
      FieldName = 'FUN_CIDADE'
      Size = 30
    end
    object CDS_FUNCIONARIOFUN_DATA_CONTRATACAO: TDateField
      FieldName = 'FUN_DATA_CONTRATACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object CDS_FUNCIONARIOFUN_DATA_NASCIMENTO: TDateField
      FieldName = 'FUN_DATA_NASCIMENTO'
    end
    object CDS_FUNCIONARIOFUN_TELEFONE: TStringField
      FieldName = 'FUN_TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
  end
  object DS_LOGIN: TDataSource
    DataSet = CDS_LOGIN
    Left = 232
    Top = 80
  end
  object DS_DENTISTA: TDataSource
    DataSet = CDS_DENTISTA
    Left = 232
    Top = 200
  end
  object DS_AGENDAMENTO: TDataSource
    DataSet = CDS_AGENDAMENTO
    Left = 265
    Top = 551
  end
  object DS_FUNCIONARIO: TDataSource
    DataSet = CDS_FUNCIONARIO
    Left = 552
    Top = 72
  end
  object DS_PACIENTE: TDataSource
    DataSet = CDS_PACIENTE
    Left = 536
    Top = 430
  end
  object CDS_PACIENTE: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_PACIENTE'
    Left = 432
    Top = 430
    object CDS_PACIENTEPAC_CODIGO: TIntegerField
      FieldName = 'PAC_CODIGO'
      Required = True
    end
    object CDS_PACIENTEPAC_NOME: TStringField
      FieldName = 'PAC_NOME'
      Size = 10
    end
    object CDS_PACIENTEPAC_CPF: TIntegerField
      FieldName = 'PAC_CPF'
    end
    object CDS_PACIENTEPAC_RG: TIntegerField
      FieldName = 'PAC_RG'
    end
    object CDS_PACIENTEPAC_RUA: TStringField
      FieldName = 'PAC_RUA'
      Size = 10
    end
    object CDS_PACIENTEPAC_BAIRRO: TStringField
      FieldName = 'PAC_BAIRRO'
      Size = 10
    end
    object CDS_PACIENTEPAC_CIDADE: TStringField
      FieldName = 'PAC_CIDADE'
      Size = 10
    end
    object CDS_PACIENTEPAC_NUMERO: TIntegerField
      FieldName = 'PAC_NUMERO'
    end
    object CDS_PACIENTEPAC_TELEFONE: TStringField
      FieldName = 'PAC_TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
  end
  object DSP_PACIENTE: TDataSetProvider
    DataSet = SQLDS_PACIENTE
    Left = 536
    Top = 384
  end
  object SQLDS_PACIENTE: TSQLDataSet
    Active = True
    CommandText = 'select * from PACIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 432
    Top = 384
    object SQLDS_PACIENTEPAC_CODIGO: TIntegerField
      FieldName = 'PAC_CODIGO'
      Required = True
    end
    object SQLDS_PACIENTEPAC_NOME: TStringField
      FieldName = 'PAC_NOME'
      Size = 10
    end
    object SQLDS_PACIENTEPAC_CPF: TIntegerField
      FieldName = 'PAC_CPF'
    end
    object SQLDS_PACIENTEPAC_RG: TIntegerField
      FieldName = 'PAC_RG'
    end
    object SQLDS_PACIENTEPAC_RUA: TStringField
      FieldName = 'PAC_RUA'
      Size = 10
    end
    object SQLDS_PACIENTEPAC_BAIRRO: TStringField
      FieldName = 'PAC_BAIRRO'
      Size = 10
    end
    object SQLDS_PACIENTEPAC_CIDADE: TStringField
      FieldName = 'PAC_CIDADE'
      Size = 10
    end
    object SQLDS_PACIENTEPAC_NUMERO: TIntegerField
      FieldName = 'PAC_NUMERO'
    end
    object SQLDS_PACIENTEPAC_TELEFONE: TStringField
      FieldName = 'PAC_TELEFONE'
      Size = 13
    end
  end
  object SQLDS_CONVENIO: TSQLDataSet
    CommandText = 'select * from CONVENIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 432
    Top = 504
  end
  object SQLDS_PRODUTO: TSQLDataSet
    CommandText = 'select * from PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 136
    Top = 272
  end
  object SQLDS_AGENDA: TSQLDataSet
    CommandText = 'select * from AGENDA2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 736
    Top = 32
  end
  object SQLDS_TRATAMENTO: TSQLDataSet
    CommandText = 'select * from TRATAMENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 432
    Top = 144
  end
  object SQLDS_EQUIPAMENTO: TSQLDataSet
    CommandText = 'select * from EQUIPAMENMTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 136
    Top = 392
  end
  object DSP_CONVENIO: TDataSetProvider
    DataSet = SQLDS_CONVENIO
    Left = 536
    Top = 504
  end
  object DSP_PRODUTO: TDataSetProvider
    DataSet = SQLDS_PRODUTO
    Left = 232
    Top = 272
  end
  object DSP_TRATAMENTO: TDataSetProvider
    DataSet = SQLDS_TRATAMENTO
    Left = 552
    Top = 144
  end
  object DSP_AGENDA: TDataSetProvider
    DataSet = SQLDS_AGENDA
    Left = 824
    Top = 32
  end
  object DSP_EQUIPAMENTO: TDataSetProvider
    DataSet = SQLDS_EQUIPAMENTO
    Left = 256
    Top = 392
  end
  object CDS_PRODUTO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_PRODUTO'
    Left = 136
    Top = 320
    object CDS_PRODUTOPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_PRODUTOPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Size = 10
    end
    object CDS_PRODUTOPRO_DATA_VALIDADE: TDateField
      FieldName = 'PRO_DATA_VALIDADE'
    end
    object CDS_PRODUTOPRO_PRECO: TFMTBCDField
      FieldName = 'PRO_PRECO'
      Precision = 15
      Size = 2
    end
    object CDS_PRODUTOPRO_DATA_COMPRA: TDateField
      FieldName = 'PRO_DATA_COMPRA'
    end
    object CDS_PRODUTOPRO_QUANTIDADE: TBCDField
      FieldName = 'PRO_QUANTIDADE'
      Precision = 9
      Size = 2
    end
  end
  object CDS_CONVENIO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_CONVENIO'
    Left = 432
    Top = 552
    object CDS_CONVENIOCON_CODIGO: TIntegerField
      FieldName = 'CON_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_CONVENIOCON_DESCRICAO: TStringField
      FieldName = 'CON_DESCRICAO'
      Size = 60
    end
  end
  object CDS_TRATAMENTO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_TRATAMENTO'
    Left = 432
    Top = 192
    object CDS_TRATAMENTOTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_TRATAMENTOTRA_DESCRICAO: TStringField
      FieldName = 'TRA_DESCRICAO'
      Size = 100
    end
    object CDS_TRATAMENTOPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object CDS_TRATAMENTOEQU_CODIGO: TIntegerField
      FieldName = 'EQU_CODIGO'
    end
  end
  object CDS_AGENDA: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_AGENDA'
    Left = 736
    Top = 80
  end
  object CDS_EQUIPAMENTO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_EQUIPAMENTO'
    Left = 136
    Top = 440
    object CDS_EQUIPAMENTOEQU_CODIGO: TIntegerField
      FieldName = 'EQU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_EQUIPAMENTOEQU_DESCRICAO: TStringField
      FieldName = 'EQU_DESCRICAO'
      Size = 30
    end
    object CDS_EQUIPAMENTOEQU_DATA_ESTERILIZACAO: TDateField
      FieldName = 'EQU_DATA_ESTERILIZACAO'
    end
  end
  object DS_CONVENIO: TDataSource
    DataSet = CDS_CONVENIO
    Left = 536
    Top = 552
  end
  object DS_PRODUTO: TDataSource
    DataSet = CDS_PRODUTO
    Left = 232
    Top = 320
  end
  object DS_TRATAMENTO: TDataSource
    DataSet = CDS_TRATAMENTO
    Left = 552
    Top = 192
  end
  object DS_AGENDA: TDataSource
    DataSet = CDS_AGENDA
    Left = 824
    Top = 80
  end
  object DS_EQUIPAMENTO: TDataSource
    DataSet = CDS_EQUIPAMENTO
    Left = 256
    Top = 440
  end
  object DS_NOTA: TDataSource
    DataSet = CDS_NOTA
    Left = 536
    Top = 312
  end
  object CDS_NOTA: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_NOTA'
    Left = 432
    Top = 312
    object CDS_NOTANOT_CODIGO: TIntegerField
      FieldName = 'NOT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_NOTANOT_TITULO: TStringField
      FieldName = 'NOT_TITULO'
      Size = 15
    end
    object CDS_NOTANOT_TEXTO: TStringField
      FieldName = 'NOT_TEXTO'
      Size = 120
    end
    object CDS_NOTAFUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
      Required = True
    end
  end
  object DSP_NOTA: TDataSetProvider
    DataSet = SQLDS_NOTA
    Left = 536
    Top = 264
  end
  object SQLDS_NOTA: TSQLDataSet
    Active = True
    CommandText = 'select * from NOTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 432
    Top = 264
  end
  object SQLDS_PERFIL: TSQLDataSet
    CommandText = 'select * from PERFIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 736
    Top = 136
  end
  object SQLDS_PER_LOG: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT * FROM LOGIN, PERFIL'#13#10'WHERE LOGIN.PER_CODIGO = PERFIL.PER' +
      '_CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 736
    Top = 256
  end
  object DS_PERFIL: TDataSource
    DataSet = CDS_PERFIL
    Left = 824
    Top = 184
  end
  object DS_PER_LOG: TDataSource
    DataSet = CDS_PER_LOG
    Left = 824
    Top = 304
  end
  object DSP_PERFIL: TDataSetProvider
    DataSet = SQLDS_PERFIL
    Left = 824
    Top = 136
  end
  object DSP_PER_LOG: TDataSetProvider
    DataSet = SQLDS_PER_LOG
    Left = 824
    Top = 256
  end
  object CDS_PER_LOG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_PER_LOG'
    Left = 736
    Top = 304
  end
  object CDS_PERFIL: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_PERFIL'
    Left = 736
    Top = 184
    object CDS_PERFILPER_CODIGO: TStringField
      FieldName = 'PER_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_PERFILPER_CAD_CONVENIO: TStringField
      FieldName = 'PER_CAD_CONVENIO'
      Size = 1
    end
    object CDS_PERFILPER_CAD_CONVENIO_A: TStringField
      FieldName = 'PER_CAD_CONVENIO_A'
      Size = 1
    end
    object CDS_PERFILPER_CAD_CONVENIO_E: TStringField
      FieldName = 'PER_CAD_CONVENIO_E'
      Size = 1
    end
    object CDS_PERFILPER_CAD_CONVENIO_I: TStringField
      FieldName = 'PER_CAD_CONVENIO_I'
      Size = 1
    end
    object CDS_PERFILPER_CAD_DENTISTA: TStringField
      FieldName = 'PER_CAD_DENTISTA'
      Size = 1
    end
    object CDS_PERFILPER_CAD_DENTISTA_A: TStringField
      FieldName = 'PER_CAD_DENTISTA_A'
      Size = 1
    end
    object CDS_PERFILPER_CAD_DENTISTA_E: TStringField
      FieldName = 'PER_CAD_DENTISTA_E'
      Size = 1
    end
    object CDS_PERFILPER_CAD_DENTISTA_I: TStringField
      FieldName = 'PER_CAD_DENTISTA_I'
      Size = 1
    end
    object CDS_PERFILPER_CAD_EQUIPAMENTO: TStringField
      FieldName = 'PER_CAD_EQUIPAMENTO'
      Size = 1
    end
    object CDS_PERFILPER_CAD_EQUIPAMENTO_A: TStringField
      FieldName = 'PER_CAD_EQUIPAMENTO_A'
      Size = 1
    end
    object CDS_PERFILPER_CAD_EQUIPAMENTO_E: TStringField
      FieldName = 'PER_CAD_EQUIPAMENTO_E'
      Size = 1
    end
    object CDS_PERFILPER_CAD_EQUIPAMENTO_I: TStringField
      FieldName = 'PER_CAD_EQUIPAMENTO_I'
      Size = 1
    end
    object CDS_PERFILPER_CAD_FUNCIONARIO: TStringField
      FieldName = 'PER_CAD_FUNCIONARIO'
      Size = 1
    end
    object CDS_PERFILPER_CAD_FUNCIONARIO_A: TStringField
      FieldName = 'PER_CAD_FUNCIONARIO_A'
      Size = 1
    end
    object CDS_PERFILPER_CAD_FUNCIONARIO_E: TStringField
      FieldName = 'PER_CAD_FUNCIONARIO_E'
      Size = 1
    end
    object CDS_PERFILPER_CAD_FUNCIONARIO_I: TStringField
      FieldName = 'PER_CAD_FUNCIONARIO_I'
      Size = 1
    end
    object CDS_PERFILPER_CAD_LOGIN: TStringField
      FieldName = 'PER_CAD_LOGIN'
      Size = 1
    end
    object CDS_PERFILPER_CAD_LOGIN_A: TStringField
      FieldName = 'PER_CAD_LOGIN_A'
      Size = 1
    end
    object CDS_PERFILPER_CAD_LOGIN_E: TStringField
      FieldName = 'PER_CAD_LOGIN_E'
      Size = 1
    end
    object CDS_PERFILPER_CAD_LOGIN_I: TStringField
      FieldName = 'PER_CAD_LOGIN_I'
      Size = 1
    end
    object CDS_PERFILPER_CAD_PACIENTE: TStringField
      FieldName = 'PER_CAD_PACIENTE'
      Size = 1
    end
    object CDS_PERFILPER_CAD_PACIENTE_A: TStringField
      FieldName = 'PER_CAD_PACIENTE_A'
      Size = 1
    end
    object CDS_PERFILPER_CAD_PACIENTE_E: TStringField
      FieldName = 'PER_CAD_PACIENTE_E'
      Size = 1
    end
    object CDS_PERFILPER_CAD_PACIENTE_I: TStringField
      FieldName = 'PER_CAD_PACIENTE_I'
      Size = 1
    end
    object CDS_PERFILPER_CAD_PRODUTO: TStringField
      FieldName = 'PER_CAD_PRODUTO'
      Size = 1
    end
    object CDS_PERFILPER_CAD_PRODUTO_A: TStringField
      FieldName = 'PER_CAD_PRODUTO_A'
      Size = 1
    end
    object CDS_PERFILPER_CAD_PRODUTO_E: TStringField
      FieldName = 'PER_CAD_PRODUTO_E'
      Size = 1
    end
    object CDS_PERFILPER_CAD_PRODUTO_I: TStringField
      FieldName = 'PER_CAD_PRODUTO_I'
      Size = 1
    end
    object CDS_PERFILPER_CAD_TRATAMENTO: TStringField
      FieldName = 'PER_CAD_TRATAMENTO'
      Size = 1
    end
    object CDS_PERFILPER_CAD_TRATAMENTO_A: TStringField
      FieldName = 'PER_CAD_TRATAMENTO_A'
      Size = 1
    end
    object CDS_PERFILPER_CAD_TRATAMENTO_E: TStringField
      FieldName = 'PER_CAD_TRATAMENTO_E'
      Size = 1
    end
    object CDS_PERFILPER_CAD_TRATAMENTO_I: TStringField
      FieldName = 'PER_CAD_TRATAMENTO_I'
      Size = 1
    end
  end
  object DS_LOGIN2: TDataSource
    DataSet = CDS_LOGIN2
    Left = 824
    Top = 528
  end
  object CDS_LOGIN2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_LOGIN2'
    Left = 744
    Top = 528
    object CDS_LOGIN2LOG_CODIGO: TIntegerField
      FieldName = 'LOG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_LOGIN2LOG_PASSWORD: TIntegerField
      FieldName = 'LOG_PASSWORD'
    end
    object CDS_LOGIN2LOG_USERNAME: TStringField
      FieldName = 'LOG_USERNAME'
      Size = 10
    end
    object CDS_LOGIN2DEN_CODIGO: TIntegerField
      FieldName = 'DEN_CODIGO'
    end
    object CDS_LOGIN2FUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
    end
    object CDS_LOGIN2LOG_SENHA: TStringField
      FieldName = 'LOG_SENHA'
      FixedChar = True
      Size = 15
    end
    object CDS_LOGIN2PER_CODIGO: TStringField
      FieldName = 'PER_CODIGO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSP_LOGIN2: TDataSetProvider
    DataSet = SQLDS_LOGIN2
    Left = 824
    Top = 480
  end
  object SQLDS_LOGIN2: TSQLDataSet
    CommandText = 'select * from LOGIN'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = CONEXAO
    Left = 744
    Top = 480
  end
  object SQLQ_PER_LOG: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM LOGIN, PERFIL'
      'WHERE LOGIN.PER_CODIGO = PERFIL.PER_CODIGO')
    SQLConnection = CONEXAO
    Left = 928
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 1016
    Top = 392
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 928
    Top = 392
    object ClientDataSet1LOG_CODIGO: TIntegerField
      FieldName = 'LOG_CODIGO'
      Required = True
    end
    object ClientDataSet1LOG_PASSWORD: TIntegerField
      FieldName = 'LOG_PASSWORD'
    end
    object ClientDataSet1LOG_USERNAME: TStringField
      FieldName = 'LOG_USERNAME'
      Size = 10
    end
    object ClientDataSet1DEN_CODIGO: TIntegerField
      FieldName = 'DEN_CODIGO'
    end
    object ClientDataSet1FUN_CODIGO: TIntegerField
      FieldName = 'FUN_CODIGO'
    end
    object ClientDataSet1LOG_SENHA: TStringField
      FieldName = 'LOG_SENHA'
      FixedChar = True
      Size = 15
    end
    object ClientDataSet1PER_CODIGO: TStringField
      FieldName = 'PER_CODIGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1PER_CODIGO_1: TStringField
      FieldName = 'PER_CODIGO_1'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1PER_CAD_CONVENIO: TStringField
      FieldName = 'PER_CAD_CONVENIO'
      Size = 1
    end
    object ClientDataSet1PER_CAD_CONVENIO_A: TStringField
      FieldName = 'PER_CAD_CONVENIO_A'
      Size = 1
    end
    object ClientDataSet1PER_CAD_CONVENIO_E: TStringField
      FieldName = 'PER_CAD_CONVENIO_E'
      Size = 1
    end
    object ClientDataSet1PER_CAD_CONVENIO_I: TStringField
      FieldName = 'PER_CAD_CONVENIO_I'
      Size = 1
    end
    object ClientDataSet1PER_CAD_DENTISTA: TStringField
      FieldName = 'PER_CAD_DENTISTA'
      Size = 1
    end
    object ClientDataSet1PER_CAD_DENTISTA_A: TStringField
      FieldName = 'PER_CAD_DENTISTA_A'
      Size = 1
    end
    object ClientDataSet1PER_CAD_DENTISTA_E: TStringField
      FieldName = 'PER_CAD_DENTISTA_E'
      Size = 1
    end
    object ClientDataSet1PER_CAD_DENTISTA_I: TStringField
      FieldName = 'PER_CAD_DENTISTA_I'
      Size = 1
    end
    object ClientDataSet1PER_CAD_EQUIPAMENTO: TStringField
      FieldName = 'PER_CAD_EQUIPAMENTO'
      Size = 1
    end
    object ClientDataSet1PER_CAD_EQUIPAMENTO_A: TStringField
      FieldName = 'PER_CAD_EQUIPAMENTO_A'
      Size = 1
    end
    object ClientDataSet1PER_CAD_EQUIPAMENTO_E: TStringField
      FieldName = 'PER_CAD_EQUIPAMENTO_E'
      Size = 1
    end
    object ClientDataSet1PER_CAD_EQUIPAMENTO_I: TStringField
      FieldName = 'PER_CAD_EQUIPAMENTO_I'
      Size = 1
    end
    object ClientDataSet1PER_CAD_FUNCIONARIO: TStringField
      FieldName = 'PER_CAD_FUNCIONARIO'
      Size = 1
    end
    object ClientDataSet1PER_CAD_FUNCIONARIO_A: TStringField
      FieldName = 'PER_CAD_FUNCIONARIO_A'
      Size = 1
    end
    object ClientDataSet1PER_CAD_FUNCIONARIO_E: TStringField
      FieldName = 'PER_CAD_FUNCIONARIO_E'
      Size = 1
    end
    object ClientDataSet1PER_CAD_FUNCIONARIO_I: TStringField
      FieldName = 'PER_CAD_FUNCIONARIO_I'
      Size = 1
    end
    object ClientDataSet1PER_CAD_LOGIN: TStringField
      FieldName = 'PER_CAD_LOGIN'
      Size = 1
    end
    object ClientDataSet1PER_CAD_LOGIN_A: TStringField
      FieldName = 'PER_CAD_LOGIN_A'
      Size = 1
    end
    object ClientDataSet1PER_CAD_LOGIN_E: TStringField
      FieldName = 'PER_CAD_LOGIN_E'
      Size = 1
    end
    object ClientDataSet1PER_CAD_LOGIN_I: TStringField
      FieldName = 'PER_CAD_LOGIN_I'
      Size = 1
    end
    object ClientDataSet1PER_CAD_PACIENTE: TStringField
      FieldName = 'PER_CAD_PACIENTE'
      Size = 1
    end
    object ClientDataSet1PER_CAD_PACIENTE_A: TStringField
      FieldName = 'PER_CAD_PACIENTE_A'
      Size = 1
    end
    object ClientDataSet1PER_CAD_PACIENTE_E: TStringField
      FieldName = 'PER_CAD_PACIENTE_E'
      Size = 1
    end
    object ClientDataSet1PER_CAD_PACIENTE_I: TStringField
      FieldName = 'PER_CAD_PACIENTE_I'
      Size = 1
    end
    object ClientDataSet1PER_CAD_PRODUTO: TStringField
      FieldName = 'PER_CAD_PRODUTO'
      Size = 1
    end
    object ClientDataSet1PER_CAD_PRODUTO_A: TStringField
      FieldName = 'PER_CAD_PRODUTO_A'
      Size = 1
    end
    object ClientDataSet1PER_CAD_PRODUTO_E: TStringField
      FieldName = 'PER_CAD_PRODUTO_E'
      Size = 1
    end
    object ClientDataSet1PER_CAD_PRODUTO_I: TStringField
      FieldName = 'PER_CAD_PRODUTO_I'
      Size = 1
    end
    object ClientDataSet1PER_CAD_TRATAMENTO: TStringField
      FieldName = 'PER_CAD_TRATAMENTO'
      Size = 1
    end
    object ClientDataSet1PER_CAD_TRATAMENTO_A: TStringField
      FieldName = 'PER_CAD_TRATAMENTO_A'
      Size = 1
    end
    object ClientDataSet1PER_CAD_TRATAMENTO_E: TStringField
      FieldName = 'PER_CAD_TRATAMENTO_E'
      Size = 1
    end
    object ClientDataSet1PER_CAD_TRATAMENTO_I: TStringField
      FieldName = 'PER_CAD_TRATAMENTO_I'
      Size = 1
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQ_PER_LOG
    Left = 1016
    Top = 344
  end
end
