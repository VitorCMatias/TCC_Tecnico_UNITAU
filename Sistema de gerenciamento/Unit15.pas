unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
  Tfrm_convenio = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_convenio: Tfrm_convenio;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_convenio.BitBtn1Click(Sender: TObject);
begin
dm.CDS_CONVENIO.Insert;
end;

procedure Tfrm_convenio.BitBtn2Click(Sender: TObject);
begin
dm.CDS_CONVENIO.ApplyUpdates(-1);
end;

procedure Tfrm_convenio.BitBtn3Click(Sender: TObject);
begin
dm.CDS_CONVENIO.Delete;
end;

end.
