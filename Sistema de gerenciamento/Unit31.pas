unit Unit31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, ActnList,
  ImgList, sSkinManager, Mask, DBCtrls;

type
  Tfrm_sin_equipamento = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    groupbox1: TPanel;
    groupbox2: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ImageList2: TImageList;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sin_equipamento: Tfrm_sin_equipamento;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_sin_equipamento.ToolButton1Click(Sender: TObject);
begin
dm.CDS_EQUIPAMENTO.First;
end;

procedure Tfrm_sin_equipamento.ToolButton2Click(Sender: TObject);
begin
dm.CDS_EQUIPAMENTO.prior;
end;

procedure Tfrm_sin_equipamento.ToolButton3Click(Sender: TObject);
begin
dm.CDS_EQUIPAMENTO.next;
end;

procedure Tfrm_sin_equipamento.ToolButton4Click(Sender: TObject);
begin
dm.CDS_EQUIPAMENTO.last;
end;

procedure Tfrm_sin_equipamento.ToolButton6Click(Sender: TObject);
 var
 proxNum: integer;

begin
dm.CDS_EQUIPAMENTO.Active:=true;
dm.CDS_EQUIPAMENTO.Last;
ProxNum:= dm.CDS_EQUIPAMENTO.fieldbyName('equ_codigo').AsInteger +1;
dm.CDS_EQUIPAMENTO.Append;
dm.CDS_EQUIPAMENTO.FieldByName('equ_codigo').AsInteger :=ProxNum;
end;

procedure Tfrm_sin_equipamento.ToolButton7Click(Sender: TObject);
begin
dm.CDS_EQUIPAMENTO.ApplyUpdates(-1);
end;

procedure Tfrm_sin_equipamento.ToolButton8Click(Sender: TObject);
begin
dm.CDS_EQUIPAMENTO.Delete;
end;

procedure Tfrm_sin_equipamento.FormActivate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_EQUIPAMENTO_I').AsString='S' then
ToolButton6.Enabled:=True
else
ToolButton6.Enabled:=False;
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_EQUIPAMENTO_A').AsString='S' then
ToolButton7.Enabled:=True
else
ToolButton7.Enabled:=False;
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_EQUIPAMENTO_E').AsString='S' then
ToolButton8.Enabled:=True
else
ToolButton8.Enabled:=False;
end;

end.
