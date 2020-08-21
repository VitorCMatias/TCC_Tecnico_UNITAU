object frm_equipamento: Tfrm_equipamento
  Left = 393
  Top = 204
  Width = 417
  Height = 263
  Caption = 'Equipamento'
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
  object Button1: TButton
    Left = 16
    Top = 137
    Width = 97
    Height = 40
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 137
    Width = 97
    Height = 40
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 288
    Top = 137
    Width = 97
    Height = 40
    Caption = 'Apagar'
    TabOrder = 2
    OnClick = Button3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 184
    Width = 368
    Height = 25
    DataSource = DM.DS_EQUIPAMENTO
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 369
    Height = 113
    TabOrder = 4
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 103
      Height = 13
      Caption = 'Data de Esteriliza'#231#227'o:'
      FocusControl = DBEdit6
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 32
      Width = 345
      Height = 21
      DataField = 'EQU_DESCRICAO'
      DataSource = DM.DS_EQUIPAMENTO
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 72
      Width = 134
      Height = 21
      DataField = 'EQU_DATA_ESTERILIZACAO'
      DataSource = DM.DS_EQUIPAMENTO
      TabOrder = 1
    end
  end
end
