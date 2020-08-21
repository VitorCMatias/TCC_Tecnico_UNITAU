unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tfrm_produto = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_produto: Tfrm_produto;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_produto.BitBtn1Click(Sender: TObject);
begin
dm.CDS_PRODUTO.Insert;
end;

procedure Tfrm_produto.BitBtn3Click(Sender: TObject);
begin
dm.CDS_PRODUTO.ApplyUpdates(-1);
end;

procedure Tfrm_produto.BitBtn2Click(Sender: TObject);
begin
dm.CDS_PRODUTO.Delete;
end;

end.
