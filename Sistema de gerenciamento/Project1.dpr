program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {frm_login},
  Unit5 in 'Unit5.pas' {DM: TDataModule},
  Unit9 in 'Unit9.pas' {frm_adm_menu},
  Unit16 in 'Unit16.pas' {DM2: TDataModule},
  Unit24 in 'Unit24.pas' {frm_pai},
  Unit25 in 'Unit25.pas' {frm_dub_atendimento},
  Unit27 in 'Unit27.pas' {frm_dub_dentista},
  Unit28 in '..\programa\Unit28.pas' {frm_dub_produto},
  Unit29 in 'Unit29.pas' {frm_dub_funcionario},
  Unit30 in 'Unit30.pas' {frm_sin_paciente},
  Unit31 in 'Unit31.pas' {frm_sin_equipamento},
  Unit35 in 'Unit35.pas' {frm_sin_agenda},
  Unit36 in 'Unit36.pas' {frm_pai1},
  Unit33 in 'Unit33.pas' {frm_sin_tratamento},
  Unit32 in 'Unit32.pas' {frm_sin_convenio},
  Unit37 in 'Unit37.pas' {Form3},
  U_con in 'U_con.pas' {frm_con},
  U_atendimento in 'U_atendimento.pas' {frm_aten},
  ENG in 'ENG.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrm_login, frm_login);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_adm_menu, frm_adm_menu);
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(Tfrm_pai, frm_pai);
  Application.CreateForm(Tfrm_dub_atendimento, frm_dub_atendimento);
  Application.CreateForm(Tfrm_dub_dentista, frm_dub_dentista);
  Application.CreateForm(Tfrm_dub_produto, frm_dub_produto);
  Application.CreateForm(Tfrm_dub_funcionario, frm_dub_funcionario);
  Application.CreateForm(Tfrm_sin_paciente, frm_sin_paciente);
  Application.CreateForm(Tfrm_sin_equipamento, frm_sin_equipamento);
  Application.CreateForm(Tfrm_sin_agenda, frm_sin_agenda);
  Application.CreateForm(Tfrm_pai1, frm_pai1);
  Application.CreateForm(Tfrm_sin_tratamento, frm_sin_tratamento);
  Application.CreateForm(Tfrm_sin_convenio, frm_sin_convenio);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(Tfrm_con, frm_con);
  Application.CreateForm(Tfrm_aten, frm_aten);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
