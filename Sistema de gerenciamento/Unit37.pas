unit Unit37;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, Menus, ImgList, sStatusBar,
  sPageControl, sHintManager, ExtCtrls, Mask, DBCtrls, sPanel,
  sMonthCalendar, ActnList;

type
  TForm3 = class(TForm)
    StatusBar1: TsStatusBar;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    Logout1: TMenuItem;
    Atendimento1: TMenuItem;
    Convnio1: TMenuItem;
    Pessoal1: TMenuItem;
    Material1: TMenuItem;
    ratamentos1: TMenuItem;
    Dentistas1: TMenuItem;
    Funcionrio1: TMenuItem;
    Produtos1: TMenuItem;
    Equipamentos1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    sHintManager1: TsHintManager;
    sTabSheet2: TsTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    sMonthCalendar1: TsMonthCalendar;
    Pesquisar1: TMenuItem;
    Paciente1: TMenuItem;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ActionList1: TActionList;
    CAD_ATEN: TAction;
    CAD_CON: TAction;
    CAD_DEN: TAction;
    CAD_FUN: TAction;
    CAD_PRO: TAction;
    CAD_EQU: TAction;
    CAD_TRA: TAction;
    PES_PAC: TAction;
    Panel4: TPanel;
    CAD_ACE: TAction;
    Acesso1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure CAD_ATENExecute(Sender: TObject);
    procedure CAD_DENExecute(Sender: TObject);
    procedure CAD_FUNExecute(Sender: TObject);
    procedure CAD_CONExecute(Sender: TObject);
    procedure CAD_TRAExecute(Sender: TObject);
    procedure CAD_EQUExecute(Sender: TObject);
    procedure CAD_PROExecute(Sender: TObject);
    procedure PES_PACExecute(Sender: TObject);
    procedure CAD_CONUpdate(Sender: TObject);
    procedure CAD_DENUpdate(Sender: TObject);
    procedure CAD_FUNUpdate(Sender: TObject);
    procedure CAD_PROUpdate(Sender: TObject);
    procedure CAD_EQUUpdate(Sender: TObject);
    procedure CAD_TRAUpdate(Sender: TObject);
    procedure CAD_ACEExecute(Sender: TObject);
    procedure CAD_ACEUpdate(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit28, Unit9, Unit35, Unit5, Unit27, Unit2, Unit25, Unit29, Unit32,
  Unit33, Unit31, Unit30, U_con;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
frm_dub_produto.showmodal;
end;

procedure TForm3.ToolButton1Click(Sender: TObject);
begin
frm_sin_agenda.showmodal;
end;

procedure TForm3.Logout1Click(Sender: TObject);
begin
close;
frm_login.show;
frm_login.NOME.Text :='';
frm_login.SENHA.Text :='';
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
statusbar1.Panels[0].Text:=''+formatdatetime('aaaa", " dd "de " mmmm "de " yyyy',now);
end;

procedure TForm3.ToolButton3Click(Sender: TObject);
begin
WinExec('C:\Arquivos de programas\Microsoft Office\OFFICE11\WINWORD.EXE', SW_SHOW);
end;

procedure TForm3.ToolButton4Click(Sender: TObject);
begin
WinExec('C:\Arquivos de programas\Microsoft Office\OFFICE11\EXCEL.EXE', SW_SHOW);
end;

procedure TForm3.ToolButton10Click(Sender: TObject);
var
proxNum: integer;
begin
 dm.CDS_NOTA.Active:=true;
 dm.CDS_NOTA.Last;
 ProxNum := dm.CDS_NOTA.fieldbyName('not_codigo').AsInteger +1;
 dm.CDS_NOTA.Append;
 dm.CDS_NOTA.FieldByName('not_codigo').AsInteger :=ProxNum;
end;

procedure TForm3.ToolButton5Click(Sender: TObject);
begin
dm.CDS_NOTA.First;
end;

procedure TForm3.ToolButton6Click(Sender: TObject);
begin
dm.CDS_NOTA.Last;
end;

procedure TForm3.ToolButton7Click(Sender: TObject);
begin
dm.CDS_NOTA.next;
end;

procedure TForm3.ToolButton8Click(Sender: TObject);
begin
dm.CDS_NOTA.last;
end;

procedure TForm3.ToolButton11Click(Sender: TObject);
begin
dm.CDS_NOTA.ApplyUpdates(-1);
end;

procedure TForm3.ToolButton12Click(Sender: TObject);
begin
dm.CDS_NOTA.Delete;
end;

procedure TForm3.CAD_ATENExecute(Sender: TObject);
begin
frm_dub_atendimento.showmodal;
end;

procedure TForm3.CAD_DENExecute(Sender: TObject);
begin
frm_dub_dentista.showmodal;
end;

procedure TForm3.CAD_FUNExecute(Sender: TObject);
begin
frm_dub_funcionario.showmodal;
end;

procedure TForm3.CAD_CONExecute(Sender: TObject);
begin
frm_sin_convenio.showmodal;
end;

procedure TForm3.CAD_TRAExecute(Sender: TObject);
begin
frm_sin_tratamento.showmodal;
end;

procedure TForm3.CAD_EQUExecute(Sender: TObject);
begin
frm_sin_equipamento.showmodal;
end;

procedure TForm3.CAD_PROExecute(Sender: TObject);
begin
frm_dub_produto.showmodal;
end;

procedure TForm3.PES_PACExecute(Sender: TObject);
begin
frm_sin_paciente.showmodal;
end;

procedure TForm3.CAD_CONUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_CONVENIO').AsString='S' then
CAD_CON.Enabled:=True
else
CAD_CON.Enabled:=False;
end;

procedure TForm3.CAD_DENUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_DENTISTA').AsString='S' then
CAD_DEN.Enabled:=True
else
CAD_DEN.Enabled:=False;
end;

procedure TForm3.CAD_FUNUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_FUNCIONARIO').AsString='S' then
CAD_FUN.Enabled:=True
else
CAD_FUN.Enabled:=False;
end;

procedure TForm3.CAD_PROUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_PRODUTO').AsString='S' then
CAD_PRO.Enabled:=True
else
CAD_PRO.Enabled:=False;
end;

procedure TForm3.CAD_EQUUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_EQUIPAMENTO').AsString='S' then
CAD_EQU.Enabled:=True
else
CAD_EQU.Enabled:=False;
end;

procedure TForm3.CAD_TRAUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_TRATAMENTO').AsString='S' then
CAD_TRA.Enabled:=True
else
CAD_TRA.Enabled:=False;
end;

procedure TForm3.CAD_ACEExecute(Sender: TObject);
begin
frm_con.ShowModal;
end;

procedure TForm3.CAD_ACEUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CODIGO').AsString='1' then
CAD_ACE.Enabled:=True
else
CAD_ACE.Enabled:=False;
end;

procedure TForm3.ToolButton14Click(Sender: TObject);
begin
WinExec('C:\Arquivos de programas\EasyPHP 2.0b1\www\clinica2.5.2\php\listar.php', SW_SHOW);

end;

end.
