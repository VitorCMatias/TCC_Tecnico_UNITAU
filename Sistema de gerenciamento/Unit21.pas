unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  Tfrm_con_produto = class(TForm)
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    Button1: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_con_produto: Tfrm_con_produto;

implementation

uses Unit16;

{$R *.dfm}

procedure Tfrm_con_produto.BitBtn2Click(Sender: TObject);

begin
if (edit2.text='')then
begin
MessageDlg('Informar parametro de busca',mtconfirmation,[mbOK],0);
edit2.setfocus;
end
else
if(combobox2.ItemIndex =0) then
  begin
    DM2.SQLQ_PRODUTO.Close;
    DM2.CDSQ_PRODUTO.close;
    DM2.SQLQ_PRODUTO.SQL.Clear;
    DM2.SQLQ_PRODUTO.SQL.Add('select * from PRODUTO where PRO_CODIGO=:entra');
    DM2.SQLQ_PRODUTO.ParamByName('entra').AsInteger:=strtoint(Edit2.Text);
    DM2.CDSQ_PRODUTO.open;
    DM2.SQLQ_PRODUTO.open;
    end
 else
   if (combobox2.ItemIndex =1)then
  begin
     DM2.SQLQ_PRODUTO.Close;
     DM2.CDSQ_PRODUTO.close;
     DM2.SQLQ_PRODUTO.SQL.Clear;
     DM2.SQLQ_PRODUTO.SQL.Add('select * from PRODUTO where PRO_DESCRICAO=:entra');
     DM2.SQLQ_PRODUTO.ParamByName('entra').AsString:=Edit2.Text;
     DM2.CDSQ_PRODUTO.open;
     DM2.SQLQ_PRODUTO.open;
     end
  else
   if (combobox2.ItemIndex =2)then
  begin
     DM2.SQLQ_PRODUTO.Close;
     DM2.CDSQ_PRODUTO.close;
     DM2.SQLQ_PRODUTO.SQL.Clear;
     DM2.SQLQ_PRODUTO.SQL.Add('select * from PRODUTO where PRO_DATA_VALIDADE=:entra');
     DM2.SQLQ_PRODUTO.ParamByName('entra').AsString:=Edit2.Text;
     DM2.CDSQ_PRODUTO.open;
     DM2.SQLQ_PRODUTO.open;
     end
  else
   if (combobox2.ItemIndex =3)then
  begin
     DM2.SQLQ_PRODUTO.Close;
     DM2.CDSQ_PRODUTO.close;
     DM2.SQLQ_PRODUTO.SQL.Clear;
     DM2.SQLQ_PRODUTO.SQL.Add('select * from PRODUTO where PRO_PRECO=:entra');
     DM2.SQLQ_PRODUTO.ParamByName('entra').AsString:=Edit2.Text;
     DM2.CDSQ_PRODUTO.open;
     DM2.SQLQ_PRODUTO.open;
     end
  else
   if (combobox2.ItemIndex =4)then
  begin
     DM2.SQLQ_PRODUTO.Close;
     DM2.CDSQ_PRODUTO.close;
     DM2.SQLQ_PRODUTO.SQL.Clear;
     DM2.SQLQ_PRODUTO.SQL.Add('select * from PRODUTO where PRO_DATA_COMPRA=:entra');
     DM2.SQLQ_PRODUTO.ParamByName('entra').AsString:=Edit2.Text;
     DM2.CDSQ_PRODUTO.open;
     DM2.SQLQ_PRODUTO.open;
     end
     else
     if (combobox2.ItemIndex =-1) then
 begin
 showMessage( 'Selecionar item a ser pesquisado');
 combobox2.SetFocus;
 end

end;

procedure Tfrm_con_produto.Button1Click(Sender: TObject);
begin
edit2.text:='';
end;

end.
