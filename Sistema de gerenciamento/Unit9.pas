unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, ComCtrls, ActnList, ImgList, ToolWin,
  sToolBar, sStatusBar, sHintManager;

type
  Tfrm_adm_menu = class(TForm)
    MainMenu1: TMainMenu;
    Configurao1: TMenuItem;
    Sobre1: TMenuItem;
    Logout1: TMenuItem;
    ImageList1: TImageList;
    ActionList1: TActionList;
    cad_aten: TAction;
    cad_dentista: TAction;
    cad_fun: TAction;
    cad_conv: TAction;
    cad_trat: TAction;
    cad_equi: TAction;
    cad_prod: TAction;
    Cadastrar1: TMenuItem;
    pes_pac: TAction;
    pes_den: TAction;
    pes_fun: TAction;
    pes_pro: TAction;
    Atendimento1: TMenuItem;
    Dentista2: TMenuItem;
    ratamento1: TMenuItem;
    RecursosHumanos1: TMenuItem;
    Dentista4: TMenuItem;
    Funcionrio2: TMenuItem;
    RecursosMateriais1: TMenuItem;
    Equipamento2: TMenuItem;
    Produtos2: TMenuItem;
    tbr_agenda: TAction;
    StatusBar1: TsStatusBar;
    sToolBar1: TsToolBar;
    ToolButton2: TToolButton;
    procedure BitBtn3Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure cad_atenExecute(Sender: TObject);
    procedure cad_dentistaExecute(Sender: TObject);
    procedure cad_funExecute(Sender: TObject);
    procedure cad_convExecute(Sender: TObject);
    procedure cad_tratExecute(Sender: TObject);
    procedure cad_equiExecute(Sender: TObject);
    procedure cad_prodExecute(Sender: TObject);
    procedure pes_pacExecute(Sender: TObject);
    procedure pes_funExecute(Sender: TObject);
    procedure pes_denExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_adm_menu: Tfrm_adm_menu;

implementation

uses Unit8, Unit2, Unit11, Unit12, Unit7, Unit4, Unit15, Unit14, Unit13,
  Unit17, Unit6, Unit22, Unit10, Unit19, Unit21, Unit20, Unit18, Unit23,
  Unit24, Unit25, Unit27, Unit28, Unit29, Unit30, Unit35, Unit32, Unit33,
  Unit31;

{$R *.dfm}

procedure Tfrm_adm_menu.BitBtn3Click(Sender: TObject);
begin
fmr_agenda.showmodal;
end;

procedure Tfrm_adm_menu.Logout1Click(Sender: TObject);
begin
close;
frm_login.show;
end;

procedure Tfrm_adm_menu.BitBtn5Click(Sender: TObject);
begin
frm_paciente.showmodal;
end;

procedure Tfrm_adm_menu.BitBtn8Click(Sender: TObject);
begin
frm_tratamento.showmodal;
end;

procedure Tfrm_adm_menu.BitBtn9Click(Sender: TObject);
begin
frm_equipamento.showmodal;
end;

procedure Tfrm_adm_menu.BitBtn7Click(Sender: TObject);
begin
frm_convenio.showmodal; 
end;

procedure Tfrm_adm_menu.BitBtn6Click(Sender: TObject);
begin
frm_funcionario.showmodal;
end;

procedure Tfrm_adm_menu.BitBtn4Click(Sender: TObject);
begin
frm_dentista.showmodal;  
end;

procedure Tfrm_adm_menu.BitBtn2Click(Sender: TObject);
begin
frm_consulta.showmodal;
end;

procedure Tfrm_adm_menu.Button1Click(Sender: TObject);
begin
frm_pesquisa.showmodal
end;

procedure Tfrm_adm_menu.BitBtn1Click(Sender: TObject);
begin
frm_atendimento.showmodal;
end;

procedure Tfrm_adm_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if MessageDlg('Deseja Sair?', mtConfirmation,
 [mbYes, mbNo], 0) = mrYes then
 begin
 Action := caFree;
 end
 else
  Action := caNone ;
end;

procedure Tfrm_adm_menu.FormActivate(Sender: TObject);
begin
statusbar1.Panels[0].Text:=''+formatdatetime('aaaa", " dd "de " mmmm "de " yyyy',now);
end;

procedure Tfrm_adm_menu.cad_atenExecute(Sender: TObject);
begin
frm_dub_atendimento.showmodal;
end;

procedure Tfrm_adm_menu.cad_dentistaExecute(Sender: TObject);
begin
frm_dub_dentista.showmodal;
end;

procedure Tfrm_adm_menu.cad_funExecute(Sender: TObject);
begin
frm_dub_funcionario.showmodal;
end;

procedure Tfrm_adm_menu.cad_convExecute(Sender: TObject);
begin
frm_sin_convenio.showmodal;
end;

procedure Tfrm_adm_menu.cad_tratExecute(Sender: TObject);
begin
frm_sin_tratamento.showmodal;
end;

procedure Tfrm_adm_menu.cad_equiExecute(Sender: TObject);
begin
frm_sin_equipamento.showmodal;
end;

procedure Tfrm_adm_menu.cad_prodExecute(Sender: TObject);
begin
frm_dub_produto.showmodal;
end;

procedure Tfrm_adm_menu.pes_pacExecute(Sender: TObject);
begin
frm_sin_paciente.showmodal;
end;

procedure Tfrm_adm_menu.pes_funExecute(Sender: TObject);
begin
frm_con_funcionario.showmodal;
end;

procedure Tfrm_adm_menu.pes_denExecute(Sender: TObject);
begin
frm_con_dentista.showmodal;
end;

procedure Tfrm_adm_menu.ToolButton2Click(Sender: TObject);
begin
frm_con_agenda.showmodal;
end;

procedure Tfrm_adm_menu.ToolButton3Click(Sender: TObject);
begin
frm_pai.Show;
end;

procedure Tfrm_adm_menu.ToolButton4Click(Sender: TObject);
begin
fmr_agenda.showmodal;
end;

procedure Tfrm_adm_menu.ToolButton1Click(Sender: TObject);
begin
frm_sin_agenda.showmodal;
end;

end.
