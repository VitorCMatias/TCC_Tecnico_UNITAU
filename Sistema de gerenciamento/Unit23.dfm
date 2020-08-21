object frm_con_agenda: Tfrm_con_agenda
  Left = 577
  Top = 136
  Width = 597
  Height = 384
  Caption = 'Agenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 72
    Width = 569
    Height = 265
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 565
      Height = 248
      Align = alClient
      DataSource = DM2.DSQ_AGENDAMENTO
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 569
    Height = 49
    TabOrder = 1
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 361
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 384
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 472
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 2
    end
  end
end
