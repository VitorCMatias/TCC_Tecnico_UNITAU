object frm_sec_menu: Tfrm_sec_menu
  Left = 566
  Top = 180
  Width = 495
  Height = 480
  Caption = 'Menu Secret'#225'ria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 32
    Top = 360
    Width = 80
    Height = 35
    Caption = 'Consulta'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 216
    Top = 360
    Width = 80
    Height = 35
    Caption = 'Agenda'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 304
    Top = 360
    Width = 80
    Height = 35
    Caption = 'Editar Consulta'
    TabOrder = 2
  end
  object BitBtn4: TBitBtn
    Left = 112
    Top = 360
    Width = 81
    Height = 35
    Caption = 'Paciente'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 392
    Top = 360
    Width = 81
    Height = 33
    Caption = 'Pesquisar'
    TabOrder = 4
    OnClick = BitBtn5Click
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 48
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      OnClick = Logout1Click
    end
  end
end
