unit U_atendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, ImgList;

type
  Tfrm_aten = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ImageList1: TImageList;
    Label3: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_aten: Tfrm_aten;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_aten.Edit1Change(Sender: TObject);
begin
    if not (dm.CDS_PACIENTE.Locate('pac_nome',edit1.text,[]))then
 ShowMessage('Paciente não cadastrado')
 else
ShowMessage('Paciente Localizado com sucesso!');
 Edit1.SetFocus;
end;

procedure Tfrm_aten.ToolButton1Click(Sender: TObject);
begin
dm.cds_paciente.first;
end;

procedure Tfrm_aten.ToolButton2Click(Sender: TObject);
begin
dm.cds_paciente.prior;
end;

procedure Tfrm_aten.ToolButton3Click(Sender: TObject);
begin
dm.cds_paciente.next;
end;

procedure Tfrm_aten.ToolButton4Click(Sender: TObject);
begin
dm.cds_paciente.last;
end;

procedure Tfrm_aten.ToolButton9Click(Sender: TObject);
begin
dm.CDS_AGENDAMENTO.first;
end;

procedure Tfrm_aten.ToolButton10Click(Sender: TObject);
begin
dm.CDS_AGENDAMENTO.prior;
end;

procedure Tfrm_aten.ToolButton11Click(Sender: TObject);
begin
dm.CDS_AGENDAMENTO.next;
end;

procedure Tfrm_aten.ToolButton12Click(Sender: TObject);
begin
dm.CDS_AGENDAMENTO.last;
end;

procedure Tfrm_aten.ToolButton16Click(Sender: TObject);
begin
dm.CDS_AGENDAMENTO.ApplyUpdates(-1);
end;

procedure Tfrm_aten.ToolButton17Click(Sender: TObject);
begin
dm.CDS_AGENDAMENTO.delete;
end;

end.
