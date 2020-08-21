object frm_funcionario: Tfrm_funcionario
  Left = 833
  Top = 91
  Width = 417
  Height = 554
  Caption = 'Funcion'#225'rio'
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
    Top = 424
    Width = 97
    Height = 40
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 424
    Width = 97
    Height = 40
    Caption = 'Novo'
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 472
    Width = 368
    Height = 25
    DataSource = DM.DS_FUNCIONARIO
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
  end
  object BitBtn3: TBitBtn
    Left = 288
    Top = 424
    Width = 97
    Height = 41
    Caption = 'Apagar'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 369
    Height = 153
    TabOrder = 4
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Nome:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 19
      Height = 13
      Caption = 'RG:'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 152
      Top = 56
      Width = 23
      Height = 13
      Caption = 'CPF:'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 96
      Width = 45
      Height = 13
      Caption = 'Telefone:'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 345
      Height = 21
      DataField = 'FUN_NOME'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 72
      Width = 134
      Height = 21
      DataField = 'FUN_RG'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 152
      Top = 72
      Width = 134
      Height = 21
      DataField = 'FUN_CPF'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 112
      Width = 134
      Height = 21
      DataField = 'FUN_TELEFONE'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 184
    Width = 369
    Height = 113
    TabOrder = 5
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Rua:'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Bairro:'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 184
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Cidade:'
      FocusControl = DBEdit7
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 32
      Width = 345
      Height = 21
      DataField = 'FUN_RUA'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 72
      Width = 169
      Height = 21
      DataField = 'FUN_BAIRRO'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 184
      Top = 72
      Width = 169
      Height = 21
      DataField = 'FUN_CIDADE'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 312
    Width = 369
    Height = 105
    TabOrder = 6
    object Label8: TLabel
      Left = 8
      Top = 16
      Width = 102
      Height = 13
      Caption = 'Data de Contrata'#231#227'o:'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 152
      Top = 16
      Width = 103
      Height = 13
      Caption = 'Data de  Nascimento:'
      FocusControl = DBEdit9
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 32
      Width = 134
      Height = 21
      DataField = 'FUN_DATA_CONTRATACAO'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 152
      Top = 32
      Width = 134
      Height = 21
      DataField = 'FUN_DATA_NASCIMENTO'
      DataSource = DM.DS_FUNCIONARIO
      TabOrder = 1
    end
  end
end
