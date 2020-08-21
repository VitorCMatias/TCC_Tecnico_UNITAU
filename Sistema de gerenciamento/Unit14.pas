unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
  Tfrm_adm_funcionario2 = class(TForm)
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_adm_funcionario2: Tfrm_adm_funcionario2;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_adm_funcionario2.BitBtn1Click(Sender: TObject);
begin
dm.CDS_FUNCIONARIO.Insert;
end;

procedure Tfrm_adm_funcionario2.BitBtn2Click(Sender: TObject);
begin
dm.CDS_Funcionario.ApplyUpdates(-1);
end;

procedure Tfrm_adm_funcionario2.BitBtn3Click(Sender: TObject);
begin
dm.CDS_FUNCIONARIO.Delete; 
end;

end.
