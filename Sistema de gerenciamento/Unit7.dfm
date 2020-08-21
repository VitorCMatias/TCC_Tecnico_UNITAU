object frm_paciente: Tfrm_paciente
  Left = 582
  Top = 211
  Width = 226
  Height = 451
  Caption = 'Paciente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 59
    Height = 13
    Caption = 'PAC_NOME'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 83
    Height = 13
    Caption = 'PAC_TELEFONE'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 47
    Height = 13
    Caption = 'PAC_CPF'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 43
    Height = 13
    Caption = 'PAC_RG'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 50
    Height = 13
    Caption = 'PAC_RUA'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 68
    Height = 13
    Caption = 'PAC_BAIRRO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 8
    Top = 248
    Width = 67
    Height = 13
    Caption = 'PAC_CIDADE'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 288
    Width = 75
    Height = 13
    Caption = 'PAC_NUMERO'
    FocusControl = DBEdit8
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 137
    Height = 21
    DataField = 'PAC_NOME'
    DataSource = DM.DS_PACIENTE
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 134
    Height = 21
    DataField = 'PAC_TELEFONE'
    DataSource = DM.DS_PACIENTE
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 134
    Height = 21
    DataField = 'PAC_CPF'
    DataSource = DM.DS_PACIENTE
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 144
    Width = 134
    Height = 21
    DataField = 'PAC_RG'
    DataSource = DM.DS_PACIENTE
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 184
    Width = 134
    Height = 21
    DataField = 'PAC_RUA'
    DataSource = DM.DS_PACIENTE
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 224
    Width = 134
    Height = 21
    DataField = 'PAC_BAIRRO'
    DataSource = DM.DS_PACIENTE
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 264
    Width = 134
    Height = 21
    DataField = 'PAC_CIDADE'
    DataSource = DM.DS_PACIENTE
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 304
    Width = 134
    Height = 21
    DataField = 'PAC_NUMERO'
    DataSource = DM.DS_PACIENTE
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 336
    Width = 97
    Height = 41
    Hint = 'Novo paciente'
    Caption = 'Novo'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 336
    Width = 97
    Height = 41
    Hint = 'Salvar '
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = BitBtn2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 384
    Width = 200
    Height = 25
    DataSource = DM.DS_PACIENTE
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 10
  end
end
