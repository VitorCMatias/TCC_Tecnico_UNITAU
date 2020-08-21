unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tfrm_funcionario = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
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
    GroupBox3: TGroupBox;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_funcionario: Tfrm_funcionario;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_funcionario.BitBtn1Click(Sender: TObject);
begin
dm.CDS_FUNCIONARIO.applyupdates(-1);

end;

procedure Tfrm_funcionario.BitBtn3Click(Sender: TObject);
begin
dm.CDS_FUNCIONARIO.Delete;
end;

end.
