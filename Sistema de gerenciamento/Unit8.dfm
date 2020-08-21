object fmr_agenda: Tfmr_agenda
  Left = 410
  Top = 151
  Width = 682
  Height = 529
  Caption = 'Agenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 665
    Height = 353
    DataSource = DM.DS_AGENDAMENTO
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 329
    Height = 21
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 16
    Width = 73
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
  end
end
