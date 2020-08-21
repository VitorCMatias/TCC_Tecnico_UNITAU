object frm_con_dentista: Tfrm_con_dentista
  Left = 443
  Top = 234
  Width = 626
  Height = 493
  Caption = 'Consulta Dentista'
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
    Width = 600
    Height = 50
    TabOrder = 0
    object Edit2: TEdit
      Left = 8
      Top = 16
      Width = 290
      Height = 21
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 312
      Top = 16
      Width = 113
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'RG'
        'CPF'
        'Telefone'
        'Rua'
        'Bairro'
        'Cidade')
    end
    object BitBtn2: TBitBtn
      Left = 432
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = BitBtn2Click
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
    Top = 72
    Width = 601
    Height = 330
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 8
      Top = 16
      Width = 585
      Height = 161
      DataSource = DM2.DSQ_DENTISTA
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DEN_CODIGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEN_NOME'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEN_RG'
          Title.Caption = 'RG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEN_CPF'
          Title.Caption = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEN_TELEFONE'
          Title.Caption = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEN_RUA'
          Title.Caption = 'Rua'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEN_NUMERO'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEN_BAIRRO'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEN_CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
        end>
    end
  end
end
