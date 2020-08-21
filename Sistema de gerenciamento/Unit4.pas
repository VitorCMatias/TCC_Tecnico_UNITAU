unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls;

type
  Tfrm_consulta = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_consulta: Tfrm_consulta;

implementation

uses Unit5;

{$R *.dfm}

procedure Tfrm_consulta.BitBtn1Click(Sender: TObject);
begin
dm.CDS_AGENDAMENTO.ApplyUpdates(-1);
end;

procedure Tfrm_consulta.BitBtn2Click(Sender: TObject);
begin
dm.CDS_AGENDAMENTO.insert;
end;

end.
