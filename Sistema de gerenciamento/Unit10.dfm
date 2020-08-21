object frm_produto: Tfrm_produto
  Left = 711
  Top = 192
  Width = 418
  Height = 296
  Caption = 'Produto'
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
    Top = 168
    Width = 97
    Height = 40
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 288
    Top = 168
    Width = 97
    Height = 40
    Caption = 'Apagar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 152
    Top = 168
    Width = 97
    Height = 40
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 216
    Width = 368
    Height = 25
    DataSource = DM.DS_PRODUTO
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 369
    Height = 145
    TabOrder = 4
    object Label6: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 152
      Top = 56
      Width = 88
      Height = 13
      Caption = 'Dada de Validade:'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 8
      Top = 96
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 8
      Top = 56
      Width = 80
      Height = 13
      Caption = 'Data de Compra:'
      FocusControl = DBEdit9
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 32
      Width = 345
      Height = 21
      DataField = 'PRO_DESCRICAO'
      DataSource = DM.DS_PRODUTO
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 152
      Top = 72
      Width = 134
      Height = 21
      DataField = 'PRO_DATA_VALIDADE'
      DataSource = DM.DS_PRODUTO
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 112
      Width = 73
      Height = 21
      DataField = 'PRO_PRECO'
      DataSource = DM.DS_PRODUTO
      TabOrder = 2
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 72
      Width = 134
      Height = 21
      DataField = 'PRO_DATA_COMPRA'
      DataSource = DM.DS_PRODUTO
      TabOrder = 3
    end
  end
end
