object frm_atendimento: Tfrm_atendimento
  Left = 886
  Top = 17
  Width = 434
  Height = 701
  Caption = 'Atendimento'
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 385
    Height = 273
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 8
      Width = 369
      Height = 145
      TabOrder = 0
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
        Top = 96
        Width = 45
        Height = 13
        Caption = 'Telefone:'
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
        Top = 56
        Width = 19
        Height = 13
        Caption = 'RG:'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 32
        Width = 345
        Height = 21
        DataField = 'PAC_NOME'
        DataSource = DM.DS_PACIENTE
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 112
        Width = 134
        Height = 21
        DataField = 'PAC_TELEFONE'
        DataSource = DM.DS_PACIENTE
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 152
        Top = 72
        Width = 134
        Height = 21
        DataField = 'PAC_CPF'
        DataSource = DM.DS_PACIENTE
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 72
        Width = 134
        Height = 21
        DataField = 'PAC_RG'
        DataSource = DM.DS_PACIENTE
        TabOrder = 3
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 160
      Width = 369
      Height = 105
      TabOrder = 1
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
      object Label8: TLabel
        Left = 296
        Top = 16
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit8
      end
      object DBEdit5: TDBEdit
        Left = 8
        Top = 32
        Width = 281
        Height = 21
        DataField = 'PAC_RUA'
        DataSource = DM.DS_PACIENTE
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 72
        Width = 169
        Height = 21
        DataField = 'PAC_BAIRRO'
        DataSource = DM.DS_PACIENTE
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 184
        Top = 72
        Width = 169
        Height = 21
        DataField = 'PAC_CIDADE'
        DataSource = DM.DS_PACIENTE
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 296
        Top = 32
        Width = 57
        Height = 21
        DataField = 'PAC_NUMERO'
        DataSource = DM.DS_PACIENTE
        TabOrder = 3
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 16
    Top = 296
    Width = 385
    Height = 273
    TabOrder = 1
    object GroupBox5: TGroupBox
      Left = 8
      Top = 8
      Width = 369
      Height = 65
      TabOrder = 0
      object Label9: TLabel
        Left = 8
        Top = 16
        Width = 26
        Height = 13
        Caption = 'Data:'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 88
        Top = 16
        Width = 37
        Height = 13
        Caption = 'Hor'#225'rio:'
        FocusControl = DBEdit10
      end
      object DBEdit9: TDBEdit
        Left = 8
        Top = 32
        Width = 73
        Height = 21
        DataField = 'AGE_DATA'
        DataSource = DM.DS_AGENDAMENTO
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 88
        Top = 32
        Width = 41
        Height = 21
        DataField = 'AGE_HORARIO'
        DataSource = DM.DS_AGENDAMENTO
        TabOrder = 1
      end
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 80
      Width = 369
      Height = 185
      TabOrder = 1
      object Label11: TLabel
        Left = 8
        Top = 16
        Width = 42
        Height = 13
        Caption = 'Dentista:'
      end
      object Label12: TLabel
        Left = 8
        Top = 56
        Width = 45
        Height = 13
        Caption = 'Paciente:'
      end
      object Label13: TLabel
        Left = 8
        Top = 136
        Width = 48
        Height = 13
        Caption = 'Convenio:'
      end
      object Label14: TLabel
        Left = 8
        Top = 96
        Width = 57
        Height = 13
        Caption = 'Tratamento:'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 345
        Height = 21
        DataField = 'DEN_CODIGO'
        DataSource = DM.DS_AGENDAMENTO
        KeyField = 'DEN_CODIGO'
        ListField = 'DEN_NOME'
        ListSource = DM.DS_DENTISTA
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 8
        Top = 72
        Width = 345
        Height = 21
        DataField = 'PAC_CODIGO'
        DataSource = DM.DS_AGENDAMENTO
        KeyField = 'PAC_CODIGO'
        ListField = 'PAC_NOME'
        ListSource = DM.DS_PACIENTE
        TabOrder = 1
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 8
        Top = 152
        Width = 345
        Height = 21
        DataField = 'CON_CODIGO'
        DataSource = DM.DS_AGENDAMENTO
        KeyField = 'CON_CODIGO'
        ListField = 'CON_DESCRICAO'
        ListSource = DM.DS_CONVENIO
        TabOrder = 2
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 8
        Top = 112
        Width = 345
        Height = 21
        DataField = 'TRA_CODIGO'
        DataSource = DM.DS_AGENDAMENTO
        KeyField = 'TRA_CODIGO'
        ListField = 'TRA_DESCRICAO'
        ListSource = DM.DS_TRATAMENTO
        TabOrder = 3
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 624
    Width = 368
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 576
    Width = 97
    Height = 40
    Caption = 'Salvar'
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 160
    Top = 576
    Width = 97
    Height = 40
    Caption = 'Novo'
    TabOrder = 4
  end
  object BitBtn3: TBitBtn
    Left = 296
    Top = 576
    Width = 97
    Height = 40
    Caption = 'Apagar'
    TabOrder = 5
  end
end
