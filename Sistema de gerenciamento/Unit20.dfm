object frm_con_funcionario: Tfrm_con_funcionario
  Left = 286
  Top = 200
  Width = 619
  Height = 458
  Caption = 'Consulta Funcionario'
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
    Left = 8
    Top = 16
    Width = 600
    Height = 50
    TabOrder = 0
    object BitBtn2: TBitBtn
      Left = 432
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object Edit2: TEdit
      Left = 8
      Top = 16
      Width = 289
      Height = 21
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 312
      Top = 16
      Width = 113
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'RG'
        'CPF'
        'Rua'
        'Bairro'
        'Cidade'
        'Telefone'
        'Data de Contrata'#231#227'o'
        'Data de nascimento')
    end
    object Button1: TButton
      Left = 512
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 80
    Width = 593
    Height = 330
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 8
      Top = 16
      Width = 577
      Height = 297
      DataSource = DM2.DSQ_FUNCIONARIO
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = clActiveBorder
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Color = clActiveBorder
          Width = 133
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_RG'
          Title.Alignment = taCenter
          Title.Caption = 'RG'
          Title.Color = clActiveBorder
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_CPF'
          Title.Alignment = taCenter
          Title.Caption = 'CPF'
          Title.Color = clActiveBorder
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_RUA'
          Title.Alignment = taCenter
          Title.Caption = 'Rua'
          Title.Color = clActiveBorder
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_BAIRRO'
          Title.Alignment = taCenter
          Title.Caption = 'Bairro'
          Title.Color = clActiveBorder
          Width = 125
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_CIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Cidade'
          Title.Color = clActiveBorder
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_TELEFONE'
          Title.Alignment = taCenter
          Title.Caption = 'Telefone'
          Title.Color = clActiveBorder
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_DATA_CONTRATACAO'
          Title.Alignment = taCenter
          Title.Caption = 'Data de contrata'#231#227'o'
          Title.Color = clActiveBorder
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FUN_DATA_NASCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Data de nascimento'
          Title.Color = clActiveBorder
          Visible = True
        end>
    end
  end
end
