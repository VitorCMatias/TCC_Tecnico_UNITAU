object frm_consulta: Tfrm_consulta
  Left = 976
  Top = 145
  Width = 247
  Height = 387
  Caption = 'Agendamento'
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
    Width = 57
    Height = 13
    Caption = 'AGE_DATA'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 78
    Height = 13
    Caption = 'AGE_HORARIO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 71
    Height = 13
    Caption = 'DEN_CODIGO'
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 69
    Height = 13
    Caption = 'PAC_CODIGO'
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 71
    Height = 13
    Caption = 'CON_CODIGO'
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 70
    Height = 13
    Caption = 'TRA_CODIGO'
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 256
    Width = 97
    Height = 40
    Caption = 'Agendar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'AGE_DATA'
    DataSource = DM.DS_AGENDAMENTO
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 212
    Height = 21
    DataField = 'AGE_HORARIO'
    DataSource = DM.DS_AGENDAMENTO
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 256
    Width = 97
    Height = 40
    Caption = 'Novo'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 104
    Width = 145
    Height = 21
    DataField = 'DEN_CODIGO'
    DataSource = DM.DS_AGENDAMENTO
    KeyField = 'DEN_CODIGO'
    ListField = 'DEN_NOME'
    ListSource = DM.DS_DENTISTA
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 144
    Width = 145
    Height = 21
    DataField = 'PAC_CODIGO'
    DataSource = DM.DS_AGENDAMENTO
    KeyField = 'PAC_CODIGO'
    ListField = 'PAC_NOME'
    ListSource = DM.DS_PACIENTE
    TabOrder = 5
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 8
    Top = 184
    Width = 145
    Height = 21
    DataField = 'CON_CODIGO'
    DataSource = DM.DS_AGENDAMENTO
    KeyField = 'CON_CODIGO'
    ListField = 'CON_DESCRICAO'
    ListSource = DM.DS_CONVENIO
    TabOrder = 6
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 8
    Top = 224
    Width = 145
    Height = 21
    DataField = 'TRA_CODIGO'
    DataSource = DM.DS_AGENDAMENTO
    KeyField = 'TRA_CODIGO'
    ListField = 'TRA_DESCRICAO'
    ListSource = DM.DS_TRATAMENTO
    TabOrder = 7
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 304
    Width = 200
    Height = 25
    DataSource = DM.DS_AGENDAMENTO
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 8
  end
end
