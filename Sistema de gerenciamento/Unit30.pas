unit Unit30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, ActnList,
  ImgList, sSkinManager, sComboBox, Mask, DBCtrls;

type
  Tfrm_sin_paciente = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    ActionList1: TActionList;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TsComboBox;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel6: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Panel7: TPanel;
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
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sin_paciente: Tfrm_sin_paciente;

implementation

uses Unit16, Unit5;

{$R *.dfm}

procedure Tfrm_sin_paciente.Button3Click(Sender: TObject);
begin
edit2.text:='';
end;

procedure Tfrm_sin_paciente.Button1Click(Sender: TObject);
begin
edit2.text:='';
end;

procedure Tfrm_sin_paciente.Button2Click(Sender: TObject);
begin
if (edit2.text='')then
begin
MessageDlg('Informar parametro de busca',mtconfirmation,[mbOK],0);
edit2.setfocus;
end
else
if(combobox1.ItemIndex =0) then
  begin
    DM2.SQLQ_PACIENTE.Close;
    DM2.CDSQ_PACIENTE.close;
    DM2.SQLQ_PACIENTE.SQL.Clear;
    DM2.SQLQ_PACIENTE.SQL.Add('select * from PACIENTE where PAC_CODIGO=:entra');
    DM2.SQLQ_PACIENTE.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_PACIENTE.open;
    DM2.SQLQ_PACIENTE.open;
  end
  else
  if(combobox1.ItemIndex =1) then
  begin
    DM2.SQLQ_PACIENTE.Close;
    DM2.CDSQ_PACIENTE.close;
    DM2.SQLQ_PACIENTE.SQL.Clear;
    DM2.SQLQ_PACIENTE.SQL.Add('select * from PACIENTE where PAC_NOME=:entra');
    DM2.SQLQ_PACIENTE.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_PACIENTE.open;
    DM2.SQLQ_PACIENTE.open;
  end
  else
  if(combobox1.ItemIndex =2) then
  begin
    DM2.SQLQ_PACIENTE.Close;
    DM2.CDSQ_PACIENTE.close;
    DM2.SQLQ_PACIENTE.SQL.Clear;
    DM2.SQLQ_PACIENTE.SQL.Add('select * from PACIENTE where PAC_TELEFONE=:entra');
    DM2.SQLQ_PACIENTE.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_PACIENTE.open;
    DM2.SQLQ_PACIENTE.open;
    end
    else
  if(combobox1.ItemIndex =3) then
  begin
    DM2.SQLQ_PACIENTE.Close;
    DM2.CDSQ_PACIENTE.close;
    DM2.SQLQ_PACIENTE.SQL.Clear;
    DM2.SQLQ_PACIENTE.SQL.Add('select * from PACIENTE where PAC_CPF=:entra');
    DM2.SQLQ_PACIENTE.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_PACIENTE.open;
    DM2.SQLQ_PACIENTE.open;
    end
      else
  if(combobox1.ItemIndex =4) then
  begin
    DM2.SQLQ_PACIENTE.Close;
    DM2.CDSQ_PACIENTE.close;
    DM2.SQLQ_PACIENTE.SQL.Clear;
    DM2.SQLQ_PACIENTE.SQL.Add('select * from PACIENTE where PAC_RG=:entra');
    DM2.SQLQ_PACIENTE.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_PACIENTE.open;
    DM2.SQLQ_PACIENTE.open;
    end
  else
  if(combobox1.ItemIndex =5) then
  begin
    DM2.SQLQ_PACIENTE.Close;
    DM2.CDSQ_PACIENTE.close;
    DM2.SQLQ_PACIENTE.SQL.Clear;
    DM2.SQLQ_PACIENTE.SQL.Add('select * from PACIENTE where PAC_RUA=:entra');
    DM2.SQLQ_PACIENTE.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_PACIENTE.open;
    DM2.SQLQ_PACIENTE.open;
    end
  else
  if(combobox1.ItemIndex =6) then
  begin
    DM2.SQLQ_PACIENTE.Close;
    DM2.CDSQ_PACIENTE.close;
    DM2.SQLQ_PACIENTE.SQL.Clear;
    DM2.SQLQ_PACIENTE.SQL.Add('select * from PACIENTE where PAC_BAIRRO=:entra');
    DM2.SQLQ_PACIENTE.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_PACIENTE.open;
    DM2.SQLQ_PACIENTE.open;
    end
   else
  if(combobox1.ItemIndex =7) then
  begin
    DM2.SQLQ_PACIENTE.Close;
    DM2.CDSQ_PACIENTE.close;
    DM2.SQLQ_PACIENTE.SQL.Clear;
    DM2.SQLQ_PACIENTE.SQL.Add('select * from PACIENTE where PAC_CIDADE=:entra');
    DM2.SQLQ_PACIENTE.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_PACIENTE.open;
    DM2.SQLQ_PACIENTE.open;
    end
    else
    if  (combobox1.ItemIndex =-1) then
 begin
 showMessage( 'Selecionar item a ser pesquisado');
 combobox1.SetFocus;
 end
end;


end.
