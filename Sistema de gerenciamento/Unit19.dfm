object frm_con_paciente: Tfrm_con_paciente
  Left = 328
  Top = 186
  Width = 689
  Height = 449
  Caption = 'Consulta Paciente'
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
    Top = 8
    Width = 657
    Height = 50
    TabOrder = 0
    object Edit2: TEdit
      Left = 16
      Top = 16
      Width = 337
      Height = 21
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 360
      Top = 16
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Telefone'
        'CPF'
        'RG'
        'Rua'
        'Bairro'
        'Cidade')
    end
    object BitBtn2: TBitBtn
      Left = 488
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object Button1: TButton
      Left = 568
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
    Top = 72
    Width = 657
    Height = 330
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 8
      Top = 16
      Width = 641
      Height = 305
      DataSource = DM2.DSQ_PACIENTE
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
          FieldName = 'PAC_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAC_NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAC_TELEFONE'
          Title.Alignment = taCenter
          Title.Caption = 'Telefone'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAC_CPF'
          Title.Alignment = taCenter
          Title.Caption = 'CPF'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAC_RG'
          Title.Alignment = taCenter
          Title.Caption = 'RG'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAC_RUA'
          Title.Alignment = taCenter
          Title.Caption = 'Rua'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAC_BAIRRO'
          Title.Alignment = taCenter
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAC_CIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Cidade'
          Width = 62
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PAC_NUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero'
          Visible = True
        end>
    end
  end
end
