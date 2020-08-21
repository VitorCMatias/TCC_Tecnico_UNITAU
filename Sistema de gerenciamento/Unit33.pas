unit Unit33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, ActnList,
  ImgList, sSkinManager, DBCtrls, Mask;

type
  Tfrm_sin_tratamento = class(TForm)
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
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
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
  frm_sin_tratamento: Tfrm_sin_tratamento;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_sin_tratamento.ToolButton1Click(Sender: TObject);
begin
dm.CDS_TRATAMENTO.first;
end;

procedure Tfrm_sin_tratamento.ToolButton2Click(Sender: TObject);
begin
dm.CDS_TRATAMENTO.prior;
end;

procedure Tfrm_sin_tratamento.ToolButton3Click(Sender: TObject);
begin
dm.CDS_TRATAMENTO.next;
end;

procedure Tfrm_sin_tratamento.ToolButton4Click(Sender: TObject);
begin
dm.CDS_TRATAMENTO.last;
end;

procedure Tfrm_sin_tratamento.ToolButton6Click(Sender: TObject);
var
 proxNum: integer;
begin
dm.CDS_TRATAMENTO.Active:=true;
dm.CDS_TRATAMENTO.Last;
ProxNum:= dm.CDS_TRATAMENTO.fieldbyName('tra_codigo').AsInteger +1;
dm.CDS_TRATAMENTO.Append;
dm.CDS_TRATAMENTO.FieldByName('tra_codigo').AsInteger :=ProxNum;
end;

procedure Tfrm_sin_tratamento.ToolButton7Click(Sender: TObject);
begin
dm.CDS_TRATAMENTO.ApplyUpdates(-1);
end;

procedure Tfrm_sin_tratamento.ToolButton8Click(Sender: TObject);
begin
dm.CDS_TRATAMENTO.delete;
end;

procedure Tfrm_sin_tratamento.FormActivate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_TRATAMENTO_I').AsString='S' then
ToolButton6.Enabled:=True
else
ToolButton6.Enabled:=False;
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_TRATAMENTO_A').AsString='S' then
ToolButton7.Enabled:=True
else
ToolButton7.Enabled:=False;
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_TRATAMENTO_E').AsString='S' then
ToolButton8.Enabled:=True
else
ToolButton8.Enabled:=False;
end;

end.
