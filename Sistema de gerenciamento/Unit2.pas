unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, sEdit,
  sSkinProvider, sSkinManager;

type
  Tfrm_login = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    NOME: TsEdit;
    SENHA: TsEdit;
    sSkinManager1: TsSkinManager;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

uses Unit1, Unit5, Unit3, Unit9, Unit37;

{$R *.dfm}

procedure Tfrm_login.BitBtn1Click(Sender: TObject);
begin

frm_login.Close;
//frm_adm_menu.show; //
form3.Show;

end;

procedure Tfrm_login.Button2Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_login.Button1Click(Sender: TObject);
begin
dm.CDS_LOGIN2.Open;

if
dm.CDS_LOGIN2.Locate('LOG_USERNAME',NOME.Text,[]) and
dm.CDS_LOGIN2.Locate('LOG_PASSWORD', SENHA.Text, [])then
begin
dm.CDS_LOGIN2.Close;
Form3.Show;
frm_login.HIDE;
Form3.statusBar1.panels[1].text:=''+'Usuário:'+ frm_login.NOME.Text;
  end
else if (NOME.Text = '') and (SENHA.Text= '') then

begin
ShowMessage('Preencher campos Usuario e Senha');
NOME.SetFocus;
end

else

begin
ShowMessage('Usuario ou senha inválidos');
NOME.Clear;
SENHA.Clear;

end

end;

end.
