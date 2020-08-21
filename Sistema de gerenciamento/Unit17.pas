unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrm_pesquisa = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesquisa: Tfrm_pesquisa;

implementation

uses Unit19, Unit18, Unit20, Unit21;

{$R *.dfm}

procedure Tfrm_pesquisa.BitBtn1Click(Sender: TObject);
begin
frm_con_paciente.showmodal;
end;

procedure Tfrm_pesquisa.BitBtn2Click(Sender: TObject);
begin
frm_con_dentista.showmodal;
end;

procedure Tfrm_pesquisa.BitBtn3Click(Sender: TObject);
begin
frm_con_funcionario.showmodal;
end;

procedure Tfrm_pesquisa.BitBtn4Click(Sender: TObject);
begin
frm_con_produto.showmodal;
end;

end.
