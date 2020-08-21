object frm_con_produto: Tfrm_con_produto
  Left = 293
  Top = 250
  Width = 632
  Height = 437
  Caption = 'Consulta Produto'
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
    Width = 601
    Height = 50
    TabOrder = 0
    object Edit2: TEdit
      Left = 16
      Top = 16
      Width = 290
      Height = 21
      TabOrder = 0
    end
    object ComboBox2: TComboBox
      Left = 312
      Top = 16
      Width = 113
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'C'#243'digo'
        'Nome do produto'
        'Data de validade'
        'Pre'#231'o'
        'Data de compra')
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
    Top = 64
    Width = 601
    Height = 330
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 16
      Top = 16
      Width = 577
      Height = 297
      DataSource = DM2.DSQ_PRODUTO
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
          FieldName = 'PRO_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRO_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do produto'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRO_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 96
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRO_DATA_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Data de compra'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRO_DATA_VALIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Data de validade'
          Visible = True
        end>
    end
  end
end
