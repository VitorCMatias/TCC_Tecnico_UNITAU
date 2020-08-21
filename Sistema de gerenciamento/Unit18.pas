unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  Tfrm_con_dentista = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
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
  frm_con_dentista: Tfrm_con_dentista;

implementation

uses Unit16;

{$R *.dfm}

procedure Tfrm_con_dentista.BitBtn1Click(Sender: TObject);
begin
 DM2.SQLQ_DENTISTA.Close;
 DM2.CDSQ_DENTISTA.close;
 DM2.SQLQ_DENTISTA.SQL.Clear;
 DM2.SQLQ_DENTISTA.SQL.Add('select * from DENTISTA where DEN_NOME=:entra');
 DM2.SQLQ_DENTISTA.ParamByName('entra').AsString:=Edit2.Text;
 DM2.CDSQ_DENTISTA.open;
 DM2.SQLQ_DENTISTA.open;
end;

procedure Tfrm_con_dentista.BitBtn2Click(Sender: TObject);
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

procedure Tfrm_con_dentista.Button1Click(Sender: TObject);
begin
edit2.text:='';
end;



end.
