unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
  Tfrm_dentista = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dentista: Tfrm_dentista;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_dentista.BitBtn1Click(Sender: TObject);
begin
dm.CDS_DENTISTA.Insert;
end;

procedure Tfrm_dentista.BitBtn2Click(Sender: TObject);
begin
dm.CDS_DENTISTA.ApplyUpdates(-1);
end;

procedure Tfrm_dentista.BitBtn3Click(Sender: TObject);
begin
dm.CDS_DENTISTA.Delete;
end;

end.
