unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tfrm_tratamento = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tratamento: Tfrm_tratamento;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_tratamento.BitBtn1Click(Sender: TObject);
begin
dm.CDS_TRATAMENTO.insert;
end;

procedure Tfrm_tratamento.BitBtn2Click(Sender: TObject);
begin
dm.cds_TRATAMENTO.ApplyUpdates(-1)
end;

procedure Tfrm_tratamento.BitBtn3Click(Sender: TObject);
begin
dm.cds_TRATAMENTO.Delete;
end;

end.
