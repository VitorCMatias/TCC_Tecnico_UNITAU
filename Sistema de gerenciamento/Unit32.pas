unit Unit32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, ActnList,
  ImgList, sSkinManager, Mask, DBCtrls;

type
  Tfrm_sin_convenio = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    sSkinManager1: TsSkinManager;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    CON_ADD: TAction;
    ImageList2: TImageList;
    CON_SAVE: TAction;
    CON_DEL: TAction;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure CON_ADDExecute(Sender: TObject);
    procedure CON_ADDUpdate(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure CON_SAVEUpdate(Sender: TObject);
    procedure CON_DELExecute(Sender: TObject);
    procedure CON_DELUpdate(Sender: TObject);
    procedure CON_SAVEExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sin_convenio: Tfrm_sin_convenio;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_sin_convenio.ToolButton1Click(Sender: TObject);
begin
dm.CDS_CONVENIO.First;
end;

procedure Tfrm_sin_convenio.ToolButton2Click(Sender: TObject);
begin
dm.CDS_CONVENIO.prior;
end;

procedure Tfrm_sin_convenio.ToolButton3Click(Sender: TObject);
begin
dm.CDS_CONVENIO.next;
end;

procedure Tfrm_sin_convenio.ToolButton4Click(Sender: TObject);
begin
dm.CDS_CONVENIO.last;
end;

procedure Tfrm_sin_convenio.ToolButton6Click(Sender: TObject);
var
 proxNum: integer;
begin
dm.CDS_CONVENIO.Active:=true;
dm.CDS_CONVENIO.Last;
ProxNum:= dm.CDS_dentista.fieldbyName('con_codigo').AsInteger +1;
dm.CDS_CONVENIO.Append;
dm.CDS_CONVENIO.FieldByName('con_codigo').AsInteger :=ProxNum;
end;

procedure Tfrm_sin_convenio.ToolButton7Click(Sender: TObject);
begin
//dm.CDS_CONVENIO.applyupdates(-1);
end;

procedure Tfrm_sin_convenio.ToolButton8Click(Sender: TObject);
begin
//dm.CDS_CONVENIO.delete;
end;

procedure Tfrm_sin_convenio.CON_ADDExecute(Sender: TObject);
//var
 //proxNum: integer;
begin
//dm.CDS_CONVENIO.Active:=true;
//dm.CDS_CONVENIO.Last;
//ProxNum:= dm.CDS_dentista.fieldbyName('con_codigo').AsInteger +1;
//dm.CDS_CONVENIO.Append;
//dm.CDS_CONVENIO.FieldByName('con_codigo').AsInteger :=ProxNum;
end;

procedure Tfrm_sin_convenio.CON_ADDUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_CONVENIO_I').AsString='S' then
CON_ADD.Enabled:=True
else
CON_ADD.Enabled:=False;
end;

procedure Tfrm_sin_convenio.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
dm.CDS_CONVENIO.applyupdates(-1);
end;

procedure Tfrm_sin_convenio.CON_SAVEUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_CONVENIO_A').AsString='S' then
CON_SAVE.Enabled:=True
else
CON_SAVE.Enabled:=False;
end;

procedure Tfrm_sin_convenio.CON_DELExecute(Sender: TObject);
begin
dm.CDS_CONVENIO.delete;
end;

procedure Tfrm_sin_convenio.CON_DELUpdate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_CONVENIO_E').AsString='S' then
CON_DEL.Enabled:=True
else
CON_DEL.Enabled:=False;
end;

procedure Tfrm_sin_convenio.CON_SAVEExecute(Sender: TObject);
begin
dm.CDS_CONVENIO.applyupdates(-1);
end;

end.
