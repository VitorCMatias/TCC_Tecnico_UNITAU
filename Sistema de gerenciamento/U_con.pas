unit U_con;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, ToolWin, ExtCtrls, Mask, ImgList;

type
  Tfrm_con = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    Label8: TLabel;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    ImageList1: TImageList;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_con: Tfrm_con;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_con.ToolButton9Click(Sender: TObject);
begin
dm.CDS_PERFIL.First;
end;

procedure Tfrm_con.ToolButton10Click(Sender: TObject);
begin
dm.CDS_PERFIL.prior;
end;

procedure Tfrm_con.ToolButton11Click(Sender: TObject);
begin
dm.CDS_PERFIL.next;
end;

procedure Tfrm_con.ToolButton12Click(Sender: TObject);
begin
dm.CDS_PERFIL.last;
end;

procedure Tfrm_con.ToolButton14Click(Sender: TObject);
var
proxNum: integer;
begin
dm.CDS_PERFIL.Active:=true;
 dm.CDS_PERFIL.Last;
 ProxNum:= dm.CDS_PERFIL.fieldbyName('per_codigo').AsInteger +1;
 dm.CDS_PERFIL.Append;
 dm.CDS_PERFIL.FieldByName('per_codigo').AsInteger :=ProxNum;

end;

procedure Tfrm_con.ToolButton15Click(Sender: TObject);
begin
dm.CDS_PERFIL.ApplyUpdates(-1);
DM.SQLDS_PER_LOG.CLOSE;
DM.SQLDS_PER_LOG.open;
end;

procedure Tfrm_con.ToolButton16Click(Sender: TObject);
begin
dm.CDS_PERFIL.Delete;
end;

procedure Tfrm_con.ToolButton1Click(Sender: TObject);
begin
dm.CDS_LOGIN.First;
end;

procedure Tfrm_con.ToolButton2Click(Sender: TObject);
begin
dm.CDS_LOGIN.Prior;
end;

procedure Tfrm_con.ToolButton3Click(Sender: TObject);
begin
dm.CDS_LOGIN.Next;
end;

procedure Tfrm_con.ToolButton7Click(Sender: TObject);
begin
dm.CDS_LOGIN.ApplyUpdates(-1);
end;

procedure Tfrm_con.ToolButton8Click(Sender: TObject);
begin
dm.CDS_LOGIN.Delete;
end;

procedure Tfrm_con.ToolButton6Click(Sender: TObject);
var
proxNum: integer;
begin
dm.CDS_LOGIN.Active:=true;
 dm.CDS_LOGIN.Last;
 ProxNum:= dm.CDS_LOGIN.fieldbyName('LOG_CODIGO').AsInteger +1;
 dm.CDS_LOGIN.Append;
 dm.CDS_LOGIN.FieldByName('LOG_CODIGO').AsInteger :=ProxNum;
end;

procedure Tfrm_con.ToolButton4Click(Sender: TObject);
begin
dm.CDS_LOGIN.Last;
end;

end.
