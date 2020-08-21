object frm_pesquisa: Tfrm_pesquisa
  Left = 688
  Top = 259
  Width = 458
  Height = 473
  Caption = 'Pesquisa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 8
    Top = 384
    Width = 97
    Height = 41
    Caption = 'Paciente'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 384
    Width = 97
    Height = 41
    Caption = 'Dentista'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 232
    Top = 384
    Width = 97
    Height = 41
    Caption = 'Funcion'#225'rio'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 344
    Top = 384
    Width = 97
    Height = 41
    Caption = 'Produto'
    TabOrder = 3
    OnClick = BitBtn4Click
  end
end
