unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, acPNG;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Timer2: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit28, Unit25, Unit33, Unit27, Unit29;

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
form1.destroy;
frm_login.show;
frm_dub_produto.close;
frm_dub_atendimento.close;
frm_sin_tratamento.close;
frm_dub_dentista.close;
frm_dub_funcionario.close;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
frm_dub_produto.close;
frm_dub_atendimento.close;
frm_sin_tratamento.close;
frm_dub_dentista.close;
frm_dub_funcionario.close;
end;

end.
