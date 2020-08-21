unit Unit16;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TDM2 = class(TDataModule)
    CONEXAO: TSQLConnection;
    SQLQ_AGENDA: TSQLQuery;
    DSQ_AGENDA: TDataSource;
    DSPQ_AGENDA: TDataSetProvider;
    CDSQ_AGENDA: TClientDataSet;
    DSQ_DENTISTA: TDataSource;
    DSQ_PACIENTE: TDataSource;
    DSQ_FUNCIONARIO: TDataSource;
    CDSQ_DENTISTA: TClientDataSet;
    CDSQ_PACIENTE: TClientDataSet;
    CDSQ_FUNCIONARIO: TClientDataSet;
    DSPQ_DENTISTA: TDataSetProvider;
    DSPQ_PACIENTE: TDataSetProvider;
    DSPQ_FUNCIONARIO: TDataSetProvider;
    SQLQ_DENTISTA: TSQLQuery;
    SQLQ_PACIENTE: TSQLQuery;
    SQLQ_FUNCIONARIO: TSQLQuery;
    SQLQ_PRODUTO: TSQLQuery;
    CDSQ_PRODUTO: TClientDataSet;
    DSQ_PRODUTO: TDataSource;
    DSPQ_PRODUTO: TDataSetProvider;
    SQLQ_TRATAMENTO: TSQLQuery;
    SQLQ_AGENDAMENTO: TSQLQuery;
    DSQ_AGENDAMENTO: TDataSource;
    DSQ_TRATAMENTO: TDataSource;
    CDSQ_AGENDAMENTO: TClientDataSet;
    CDSQ_TRATAMENTO: TClientDataSet;
    DSPQ_AGENDAMENTO: TDataSetProvider;
    DSPQ_TRATAMENTO: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

{$R *.dfm}

end.
