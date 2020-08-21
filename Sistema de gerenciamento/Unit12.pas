unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  Tfrm_equipamento = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_equipamento: Tfrm_equipamento;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_equipamento.Button1Click(Sender: TObject);
begin
dm.CDS_EQUIPAMENTO.insert;
end;

procedure Tfrm_equipamento.Button2Click(Sender: TObject);
begin
dm.CDS_PRODUTO.ApplyUpdates(-1);
end;

procedure Tfrm_equipamento.Button3Click(Sender: TObject);
begin
dm.CDS_EQUIPAMENTO.Delete;
end;

end.
