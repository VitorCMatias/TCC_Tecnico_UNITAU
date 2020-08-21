unit Unit35;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, ActnList,
  ImgList, sSkinManager, sComboBox;

type
  Tfrm_sin_agenda = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    ImageList1: TImageList;
    ActionList1: TActionList;
    sSkinManager1: TsSkinManager;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sin_agenda: Tfrm_sin_agenda;

implementation

uses Unit16;

{$R *.dfm}

procedure Tfrm_sin_agenda.Button3Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure Tfrm_sin_agenda.Button1Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure Tfrm_sin_agenda.Button2Click(Sender: TObject);
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

procedure Tfrm_sin_agenda.FormActivate(Sender: TObject);
begin
  DM2.CDSQ_AGENDAMENTO.close;
end;

end.
