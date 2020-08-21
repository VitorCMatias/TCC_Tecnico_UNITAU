unit Unit36;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, ActnList,
  ImgList, sSkinManager, sComboBox;

type
  Tfrm_pai1 = class(TForm)
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
    ImageList1: TImageList;
    ActionList1: TActionList;
    sSkinManager1: TsSkinManager;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    sComboBox1: TsComboBox;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pai1: Tfrm_pai1;

implementation

{$R *.dfm}

procedure Tfrm_pai1.Button3Click(Sender: TObject);
begin
edit1.text:='';
end;

procedure Tfrm_pai1.Button1Click(Sender: TObject);
begin
edit1.text:='';
end;

end.
