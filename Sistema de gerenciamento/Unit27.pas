unit Unit27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, ActnList,
  ImgList, sSkinManager, Mask, DBCtrls, sSkinProvider, sComboBox;

type
  Tfrm_dub_dentista = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    ImageList2: TImageList;
    DEN_ADD: TAction;
    DEN_SAVE: TAction;
    DEN_DEL: TAction;
    sSkinProvider1: TsSkinProvider;
    ComboBox1: TsComboBox;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  frm_dub_dentista: Tfrm_dub_dentista;

implementation

uses Unit5, Unit16;

{$R *.dfm}

procedure Tfrm_dub_dentista.Button3Click(Sender: TObject);
begin
edit2.text:='';
end;

procedure Tfrm_dub_dentista.Button1Click(Sender: TObject);
begin
edit2.text:='';
end;

procedure Tfrm_dub_dentista.Button2Click(Sender: TObject);
begin
if (edit2.text='')then
begin
MessageDlg('Informar parametro de busca',mtconfirmation,[mbOK],0);
edit2.setfocus;
end

else

if(combobox1.ItemIndex =0) then
  begin
    DM2.SQLQ_DENTISTA.Close;
    DM2.CDSQ_DENTISTA.close;
    DM2.SQLQ_DENTISTA.SQL.Clear;
    DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_CODIGO=:entra');
    DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_DENTISTA.open;
    DM2.SQLQ_DENTISTA.open;
    end
 else
  if(combobox1.ItemIndex =1) then
  begin
    DM2.SQLQ_DENTISTA.Close;
    DM2.CDSQ_DENTISTA.close;
    DM2.SQLQ_DENTISTA.SQL.Clear;
    DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_NOME=:entra');
    DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_DENTISTA.open;
    DM2.SQLQ_DENTISTA.open;
     end
 else
   if(combobox1.ItemIndex =2) then
  begin
    DM2.SQLQ_DENTISTA.Close;
    DM2.CDSQ_DENTISTA.close;
    DM2.SQLQ_DENTISTA.SQL.Clear;
    DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_RG=:entra');
    DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_DENTISTA.open;
    DM2.SQLQ_DENTISTA.open;
     end
 else
    if(combobox1.ItemIndex =3) then
  begin
    DM2.SQLQ_DENTISTA.Close;
    DM2.CDSQ_DENTISTA.close;
    DM2.SQLQ_DENTISTA.SQL.Clear;
    DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_CPF=:entra');
    DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_DENTISTA.open;
    DM2.SQLQ_DENTISTA.open;
     end
 else
   if(combobox1.ItemIndex =4) then
  begin
    DM2.SQLQ_DENTISTA.Close;
    DM2.CDSQ_DENTISTA.close;
    DM2.SQLQ_DENTISTA.SQL.Clear;
    DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_TELEFONE=:entra');
    DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_DENTISTA.open;
    DM2.SQLQ_DENTISTA.open;
     end
 else
   if(combobox1.ItemIndex =5) then
  begin
    DM2.SQLQ_DENTISTA.Close;
    DM2.CDSQ_DENTISTA.close;
    DM2.SQLQ_DENTISTA.SQL.Clear;
    DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_RUA=:entra');
    DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_DENTISTA.open;
    DM2.SQLQ_DENTISTA.open;
     end
 else
   if(combobox1.ItemIndex =6) then
  begin
    DM2.SQLQ_DENTISTA.Close;
    DM2.CDSQ_DENTISTA.close;
    DM2.SQLQ_DENTISTA.SQL.Clear;
    DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_BAIRRO=:entra');
    DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_DENTISTA.open;
    DM2.SQLQ_DENTISTA.open;
     end
 else
   if(combobox1.ItemIndex =7) then
  begin
    DM2.SQLQ_DENTISTA.Close;
    DM2.CDSQ_DENTISTA.close;
    DM2.SQLQ_DENTISTA.SQL.Clear;
    DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_CIDADE=:entra');
    DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_DENTISTA.open;
    DM2.SQLQ_DENTISTA.open;
     end
    // else
 //if(edit2.Text = '') then
 //begin
 //DM2.SQLQ_DENTISTA.Close;
  //  DM2.CDSQ_DENTISTA.close;
    //DM2.SQLQ_DENTISTA.SQL.Clear;
    //DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA');
  //  DM2.CDSQ_DENTISTA.open;
   // DM2.SQLQ_DENTISTA.open;
 //end
 else
 if  (combobox1.ItemIndex =-1) then
 begin
 showMessage( 'Selecionar item a ser pesquisado');
 combobox1.SetFocus;
 end
end;

procedure Tfrm_dub_dentista.ToolButton1Click(Sender: TObject);
begin
dm.CDS_dentista.First;
end;

procedure Tfrm_dub_dentista.ToolButton2Click(Sender: TObject);
begin
dm.CDS_dentista.Prior;
end;

procedure Tfrm_dub_dentista.ToolButton3Click(Sender: TObject);
begin
dm.CDS_dentista.Next;
end;

procedure Tfrm_dub_dentista.ToolButton4Click(Sender: TObject);
begin
dm.CDS_dentista.Last;
end;

procedure Tfrm_dub_dentista.ToolButton6Click(Sender: TObject);
var
 proxNum: integer;
 begin
 dm.CDS_DENTISTA.Active:=true;
 dm.CDS_DENTISTA.Last;
 ProxNum:= dm.CDS_DENTISTA.fieldbyName('den_codigo').AsInteger +1;
 dm.CDS_DENTISTA.Append;
 dm.CDS_DENTISTA.FieldByName('den_codigo').AsInteger :=ProxNum;

end;

procedure Tfrm_dub_dentista.ToolButton7Click(Sender: TObject);
begin
dm.CDS_dentista.ApplyUpdates(-1);
end;

procedure Tfrm_dub_dentista.ToolButton8Click(Sender: TObject);
begin
dm.CDS_dentista.Delete;
end;

procedure Tfrm_dub_dentista.FormActivate(Sender: TObject);
begin
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_DENTISTA_I').AsString='S' then
ToolButton6.Enabled:=True
else
ToolButton6.Enabled:=False;
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_DENTISTA_A').AsString='S' then
ToolButton7.Enabled:=True
else
ToolButton7.Enabled:=False;
if DM.SQLDS_PER_LOG.FieldByName('PER_CAD_DENTISTA_E').AsString='S' then
ToolButton8.Enabled:=True
else
ToolButton8.Enabled:=False;

end;

end.
