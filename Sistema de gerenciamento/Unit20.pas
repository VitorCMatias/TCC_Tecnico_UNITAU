unit Unit20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  Tfrm_con_funcionario = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    DBGrid2: TDBGrid;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_con_funcionario: Tfrm_con_funcionario;

implementation

uses Unit16;

{$R *.dfm}

procedure Tfrm_con_funcionario.BitBtn1Click(Sender: TObject);
begin
 DM2.SQLQ_FUNCIONARIO.Close;
 DM2.CDSQ_FUNCIONARIO.close;
 DM2.SQLQ_FUNCIONARIO.SQL.Clear;
 DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_NOME=:entra');
 DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
 DM2.CDSQ_FUNCIONARIO.open;
 DM2.SQLQ_FUNCIONARIO.open;
end;

procedure Tfrm_con_funcionario.BitBtn2Click(Sender: TObject);
begin
if (edit2.text='')then
begin
MessageDlg('Informar parametro de busca',mtconfirmation,[mbOK],0);
edit2.setfocus;
end
else
if(combobox1.ItemIndex =0) then
  begin
    DM2.SQLQ_FUNCIONARIO.Close;
    DM2.CDSQ_FUNCIONARIO.close;
    DM2.SQLQ_FUNCIONARIO.SQL.Clear;
    DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_CODIGO=:entra');
    DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_FUNCIONARIO.open;
    DM2.SQLQ_FUNCIONARIO.open;
    end
 else
 if(combobox1.ItemIndex =1) then
  begin
    DM2.SQLQ_FUNCIONARIO.Close;
    DM2.CDSQ_FUNCIONARIO.close;
    DM2.SQLQ_FUNCIONARIO.SQL.Clear;
    DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_NOME=:entra');
    DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_FUNCIONARIO.open;
    DM2.SQLQ_FUNCIONARIO.open;
    end
 else
 if(combobox1.ItemIndex =2) then
  begin
    DM2.SQLQ_FUNCIONARIO.Close;
    DM2.CDSQ_FUNCIONARIO.close;
    DM2.SQLQ_FUNCIONARIO.SQL.Clear;
    DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_RG=:entra');
    DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_FUNCIONARIO.open;
    DM2.SQLQ_FUNCIONARIO.open;
    end
 else
if(combobox1.ItemIndex =3) then
  begin
    DM2.SQLQ_FUNCIONARIO.Close;
    DM2.CDSQ_FUNCIONARIO.close;
    DM2.SQLQ_FUNCIONARIO.SQL.Clear;
    DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_CPF=:entra');
    DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_FUNCIONARIO.open;
    DM2.SQLQ_FUNCIONARIO.open;
    end
 else
if(combobox1.ItemIndex =4) then
  begin
    DM2.SQLQ_FUNCIONARIO.Close;
    DM2.CDSQ_FUNCIONARIO.close;
    DM2.SQLQ_FUNCIONARIO.SQL.Clear;
    DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_RUA=:entra');
    DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_FUNCIONARIO.open;
    DM2.SQLQ_FUNCIONARIO.open;
    end
 else
 if(combobox1.ItemIndex =5) then
  begin
    DM2.SQLQ_FUNCIONARIO.Close;
    DM2.CDSQ_FUNCIONARIO.close;
    DM2.SQLQ_FUNCIONARIO.SQL.Clear;
    DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_BAIRRO=:entra');
    DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_FUNCIONARIO.open;
    DM2.SQLQ_FUNCIONARIO.open;
    end
 else
if(combobox1.ItemIndex =6) then
  begin
    DM2.SQLQ_FUNCIONARIO.Close;
    DM2.CDSQ_FUNCIONARIO.close;
    DM2.SQLQ_FUNCIONARIO.SQL.Clear;
    DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_CIDADE=:entra');
    DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_FUNCIONARIO.open;
    DM2.SQLQ_FUNCIONARIO.open;
    end
 else
 if(combobox1.ItemIndex =7) then
  begin
    DM2.SQLQ_FUNCIONARIO.Close;
    DM2.CDSQ_FUNCIONARIO.close;
    DM2.SQLQ_FUNCIONARIO.SQL.Clear;
    DM2.SQLQ_FUNCIONARIO.SQL.Add('select * from FUNCIONARIO where FUN_TELEFONE=:entra');
    DM2.SQLQ_FUNCIONARIO.ParamByName('entra').AsString:=Edit2.Text;
    DM2.CDSQ_FUNCIONARIO.open;
    DM2.SQLQ_FUNCIONARIO.open;
    end
    else
    if  (combobox1.ItemIndex =-1) then
 begin
 showMessage( 'Selecionar item a ser pesquisado');
 combobox1.SetFocus;
 end
end;

procedure Tfrm_con_funcionario.Button1Click(Sender: TObject);
begin
edit2.text:='';
end;

end.
