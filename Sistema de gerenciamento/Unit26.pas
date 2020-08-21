unit Unit26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, ActnList,
  ImgList, sSkinManager;

type
  Tfrm_dub_dentista = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    Button3: TButton;
    Button4: TButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    sSkinManager1: TsSkinManager;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dub_dentista: Tfrm_dub_dentista;

implementation

{$R *.dfm}

procedure Tfrm_dub_dentista.Button3Click(Sender: TObject);
begin
edit2.text:='';
end;

end.
