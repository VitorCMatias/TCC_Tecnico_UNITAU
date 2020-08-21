object frm_dentista: Tfrm_dentista
  Left = 944
  Top = 145
  Width = 417
  Height = 423
  Caption = 'Dentista'
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
    Top = 296
    Width = 97
    Height = 41
    Caption = 'Novo'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 296
    Width = 97
    Height = 41
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 288
    Top = 296
    Width = 97
    Height = 41
    Caption = 'Apagar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 344
    Width = 368
    Height = 25
    DataSource = DM.DS_DENTISTA
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 369
    Height = 153
    TabOrder = 4
    object Label9: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Nome:'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 8
      Top = 56
      Width = 19
      Height = 13
      Caption = 'RG:'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 152
      Top = 56
      Width = 26
      Height = 13
      Caption = 'CPF?'
      FocusControl = DBEdit11
    end
    object Label12: TLabel
      Left = 8
      Top = 104
      Width = 45
      Height = 13
      Caption = 'Telefone:'
      FocusControl = DBEdit12
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 32
      Width = 345
      Height = 21
      DataField = 'DEN_NOME'
      DataSource = DM.DS_DENTISTA
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 8
      Top = 72
      Width = 134
      Height = 21
      DataField = 'DEN_RG'
      DataSource = DM.DS_DENTISTA
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Left = 152
      Top = 72
      Width = 134
      Height = 21
      DataField = 'DEN_CPF'
      DataSource = DM.DS_DENTISTA
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 8
      Top = 120
      Width = 134
      Height = 21
      DataField = 'DEN_TELEFONE'
      DataSource = DM.DS_DENTISTA
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 184
    Width = 369
    Height = 105
    TabOrder = 5
    object Label13: TLabel
      Left = 8
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Rua:'
      FocusControl = DBEdit13
    end
    object Label14: TLabel
      Left = 296
      Top = 16
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
      FocusControl = DBEdit14
    end
    object Label15: TLabel
      Left = 8
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Bairro:'
      FocusControl = DBEdit15
    end
    object Label16: TLabel
      Left = 184
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Cidade:'
      FocusControl = DBEdit16
    end
    object DBEdit13: TDBEdit
      Left = 8
      Top = 32
      Width = 281
      Height = 21
      DataField = 'DEN_RUA'
      DataSource = DM.DS_DENTISTA
      TabOrder = 0
    end
    object DBEdit14: TDBEdit
      Left = 296
      Top = 32
      Width = 57
      Height = 21
      DataField = 'DEN_NUMERO'
      DataSource = DM.DS_DENTISTA
      TabOrder = 1
    end
    object DBEdit15: TDBEdit
      Left = 8
      Top = 72
      Width = 169
      Height = 21
      DataField = 'DEN_BAIRRO'
      DataSource = DM.DS_DENTISTA
      TabOrder = 2
    end
    object DBEdit16: TDBEdit
      Left = 184
      Top = 72
      Width = 169
      Height = 21
      DataField = 'DEN_CIDADE'
      DataSource = DM.DS_DENTISTA
      TabOrder = 3
    end
  end
end
