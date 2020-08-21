unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tfrm_paciente = class(TForm)
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_paciente: Tfrm_paciente;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_paciente.BitBtn1Click(Sender: TObject);
begin
dm.CDS_PACIENTE.Insert;
end;

procedure Tfrm_paciente.BitBtn2Click(Sender: TObject);
begin
dm.CDS_PACIENTE.applyupdates(-1);
end;

end.
