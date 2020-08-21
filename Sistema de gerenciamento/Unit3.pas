unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  Tfrm_sec_menu = class(TForm)
    MainMenu1: TMainMenu;
    Configuraes1: TMenuItem;
    Sobre1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Logout1: TMenuItem;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sec_menu: Tfrm_sec_menu;

implementation

uses Unit4, Unit2, Unit7, Unit8, Unit17;

{$R *.dfm}

procedure Tfrm_sec_menu.BitBtn1Click(Sender: TObject);
begin
frm_consulta.showmodal;
end;

procedure Tfrm_sec_menu.Logout1Click(Sender: TObject);
begin
close;
frm_login.show;
end;

procedure Tfrm_sec_menu.BitBtn4Click(Sender: TObject);
begin
frm_paciente.showmodal;
end;

procedure Tfrm_sec_menu.BitBtn2Click(Sender: TObject);
begin
fmr_agenda.showmodal;
end;

procedure Tfrm_sec_menu.BitBtn5Click(Sender: TObject);
begin
frm_pesquisa.showmodal;
end;

procedure Tfrm_sec_menu.FormClose(Sender: TObject;
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

end.
