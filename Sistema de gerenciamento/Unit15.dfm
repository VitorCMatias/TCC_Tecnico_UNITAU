object frm_convenio: Tfrm_convenio
  Left = 897
  Top = 402
  Width = 353
  Height = 223
  Caption = 'Convenio'
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
  object BitBtn1: TBitBtn
    Left = 16
    Top = 96
    Width = 97
    Height = 41
    Caption = 'Novo'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 96
    Width = 97
    Height = 41
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 224
    Top = 96
    Width = 97
    Height = 41
    Caption = 'Apagar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 144
    Width = 304
    Height = 25
    DataSource = DM.DS_CONVENIO
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 305
    Height = 73
    TabOrder = 4
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
      FocusControl = DBEdit2
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 32
      Width = 289
      Height = 21
      DataField = 'CON_DESCRICAO'
      DataSource = DM.DS_CONVENIO
      TabOrder = 0
    end
  end
end
