object DM2: TDM2
  OldCreateOrder = False
  Left = 404
  Top = 174
  Height = 546
  Width = 636
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
    Left = 32
    Top = 80
  end
  object SQLQ_AGENDA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Agenda')
    SQLConnection = CONEXAO
    Left = 144
    Top = 32
  end
  object DSQ_AGENDA: TDataSource
    DataSet = CDSQ_AGENDA
    Left = 232
    Top = 80
  end
  object DSPQ_AGENDA: TDataSetProvider
    DataSet = SQLQ_AGENDA
    Left = 232
    Top = 32
  end
  object CDSQ_AGENDA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQ_AGENDA'
    Left = 144
    Top = 80
  end
  object DSQ_DENTISTA: TDataSource
    DataSet = CDSQ_DENTISTA
    Left = 497
    Top = 72
  end
  object DSQ_PACIENTE: TDataSource
    DataSet = CDSQ_PACIENTE
    Left = 240
    Top = 184
  end
  object DSQ_FUNCIONARIO: TDataSource
    DataSet = CDSQ_FUNCIONARIO
    Left = 497
    Top = 184
  end
  object CDSQ_DENTISTA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQ_DENTISTA'
    Left = 385
    Top = 72
  end
  object CDSQ_PACIENTE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQ_PACIENTE'
    Left = 144
    Top = 184
  end
  object CDSQ_FUNCIONARIO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQ_FUNCIONARIO'
    Left = 385
    Top = 184
  end
  object DSPQ_DENTISTA: TDataSetProvider
    DataSet = SQLQ_DENTISTA
    Left = 497
    Top = 32
  end
  object DSPQ_PACIENTE: TDataSetProvider
    DataSet = SQLQ_PACIENTE
    Left = 240
    Top = 144
  end
  object DSPQ_FUNCIONARIO: TDataSetProvider
    DataSet = SQLQ_FUNCIONARIO
    Left = 497
    Top = 144
  end
  object SQLQ_DENTISTA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT* FROM DENTISTA')
    SQLConnection = CONEXAO
    Left = 385
    Top = 32
  end
  object SQLQ_PACIENTE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT* FROM PACIENTE')
    SQLConnection = CONEXAO
    Left = 144
    Top = 144
  end
  object SQLQ_FUNCIONARIO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT* FROM FUNCIONARIO')
    SQLConnection = CONEXAO
    Left = 385
    Top = 144
  end
  object SQLQ_PRODUTO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT* FROM PRODUTO')
    SQLConnection = CONEXAO
    Left = 144
    Top = 256
  end
  object CDSQ_PRODUTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQ_PRODUTO'
    Left = 144
    Top = 304
  end
  object DSQ_PRODUTO: TDataSource
    DataSet = CDSQ_PRODUTO
    Left = 240
    Top = 304
  end
  object DSPQ_PRODUTO: TDataSetProvider
    DataSet = SQLQ_PRODUTO
    Left = 240
    Top = 256
  end
  object SQLQ_TRATAMENTO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT* FROM TRATAMENTO')
    SQLConnection = CONEXAO
    Left = 384
    Top = 272
  end
  object SQLQ_AGENDAMENTO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT* FROM AGENDAMENTO')
    SQLConnection = CONEXAO
    Left = 136
    Top = 384
  end
  object DSQ_AGENDAMENTO: TDataSource
    DataSet = CDSQ_AGENDAMENTO
    Left = 272
    Top = 440
  end
  object DSQ_TRATAMENTO: TDataSource
    DataSet = CDSQ_AGENDAMENTO
    Left = 512
    Top = 336
  end
  object CDSQ_AGENDAMENTO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQ_AGENDAMENTO'
    Left = 144
    Top = 440
  end
  object CDSQ_TRATAMENTO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQ_TRATAMENTO'
    Left = 384
    Top = 336
  end
  object DSPQ_AGENDAMENTO: TDataSetProvider
    DataSet = SQLQ_AGENDAMENTO
    Left = 264
    Top = 384
  end
  object DSPQ_TRATAMENTO: TDataSetProvider
    DataSet = SQLQ_TRATAMENTO
    Left = 504
    Top = 272
  end
end
