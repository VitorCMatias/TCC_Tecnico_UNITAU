unit Unit23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  Tfrm_con_agenda = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_con_agenda: Tfrm_con_agenda;

implementation

uses Unit16, Unit5;

{$R *.dfm}

procedure Tfrm_con_agenda.Button1Click(Sender: TObject);
begin
    DM2.SQLQ_AGENDAMENTO.Close;
    DM2.CDSQ_AGENDAMENTO.close;
    DM2.SQLQ_AGENDAMENTO.SQL.Clear;
    DM2.SQLQ_AGENDAMENTO.SQL.ADD ('select AGENDAMENTO.AGE_DATA,AGENDAMENTO.AGE_HORARIO,DENTISTA.DEN_NOME, PACIENTE.Pac_Nome, TRATAMENTO.TRA_DESCRICAO from AGENDAMENTO, DENTISTA, PACIENTE, TRATAMENTO');
    //DM2.SQLQ_AGENDAMENTO.sql.add('where paciente.pac_codigo= agendamento.pac_codigo AND PACIENTE.PAC_NOME=:entra');
    //DM2.SQLQ_AGENDAMENTO.SQL.Add('select AGENDAMENTO.AGE_DATA ');
   //DM2.SQLQ_AGENDAMENTO.SQL.Add('select AGENDAMENTO.AGE_HORARIO');
    //DM2.SQLQ_AGENDAMENTO.SQL.Add('select DENTISTA.DEN_NOME');
    //DM2.SQLQ_AGENDAMENTO.SQL.Add('select PACIENTE.PAC_NOME');
    //DM2.SQLQ_AGENDAMENTO.SQL.Add('select TRATAMENTO.TRA_DESCRICAO');

    DM2.SQLQ_AGENDAMENTO.sql.add('where dentista.den_codigo = agendamento.den_codigo and paciente.pac_codigo= agendamento.pac_codigo and tratamento.tra_codigo = agendamento.tra_codigo and PACIENTE.PAC_NOME=:entra');

    //DM2.SQLQ_AGENDAMENTO.sql.add('where paciente.pac_codigo= agendamento.pac_codigo AND PACIENTE.PAC_NOME=:entra');
    DM2.SQLQ_AGENDAMENTO.ParamByName('entra').AsString:=Edit1.Text;
    DM2.CDSQ_AGENDAMENTO.open;
    DM2.SQLQ_AGENDAMENTO.open;
    
end;

procedure Tfrm_con_agenda.FormActivate(Sender: TObject);
begin
DM2.CDSQ_AGENDAMENTO.close;
end;

end.
