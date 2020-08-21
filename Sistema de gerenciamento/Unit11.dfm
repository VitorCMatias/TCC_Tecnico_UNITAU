object frm_tratamento: Tfrm_tratamento
  Left = 902
  Top = 123
  Width = 417
  Height = 263
  Caption = 'Tratamento'
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
    Top = 136
    Width = 97
    Height = 40
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 136
    Width = 97
    Height = 40
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 288
    Top = 136
    Width = 97
    Height = 40
    Caption = 'Apagar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 184
    Width = 368
    Height = 25
    DataSource = DM.DS_TRATAMENTO
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
      FocusControl = DBEdit3
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 40
      Height = 13
      Caption = 'Produto:'
    end
    object Label7: TLabel
      Left = 184
      Top = 56
      Width = 65
      Height = 13
      Caption = 'Equipamento:'
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 32
      Width = 345
      Height = 21
      DataField = 'TRA_DESCRICAO'
      DataSource = DM.DS_TRATAMENTO
      TabOrder = 0
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 8
      Top = 72
      Width = 169
      Height = 21
      DataField = 'PRO_CODIGO'
      DataSource = DM.DS_TRATAMENTO
      KeyField = 'PRO_CODIGO'
      ListField = 'PRO_DESCRICAO'
      ListSource = DM.DS_PRODUTO
      TabOrder = 1
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 184
      Top = 72
      Width = 169
      Height = 21
      DataField = 'EQU_CODIGO'
      DataSource = DM.DS_TRATAMENTO
      KeyField = 'EQU_CODIGO'
      ListField = 'EQU_DESCRICAO'
      ListSource = DM.DS_EQUIPAMENTO
      TabOrder = 2
    end
  end
end
