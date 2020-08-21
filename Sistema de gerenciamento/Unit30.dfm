object frm_sin_paciente: Tfrm_sin_paciente
  Left = 348
  Top = 106
  Width = 793
  Height = 613
  Caption = 'Pesquisar Paciente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Icon.Data = {
    0000010001001010000000000000680500001600000028000000100000002000
    000001000800000000000001000000000000000000000001000000000000DDDC
    DB00956C3700E5E4E200FFFFFF00D8C8B200C8B295007A4500009C621400A879
    3900F6F5F500B5936500EAE9E600EEEDEC00BFA480008E520000D4D3D2000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000070E
    0E0E0E0E0E0E0E0E0E0E0E0E0E070E0E0E0E04080E0E0E0E08040E0E0E0E0E0E
    0E0E020B070E0E0E0B0C0E0E0E0E0E0E0E0605090D0E0E0D09040E0E0E0E0606
    06060A0C0C0A0A09090D0606060606060606010202020202020A060606060606
    06060D00000F0F0F0F0D060606060606060100000F0F0F0F0F00010606060606
    06040C020000000000000F0606060606080C0C0B0B0202020B0B0C0A06060606
    0403030309090C0C0C0C0C040606060604030303030303030303030C06060606
    04030303030303030303030B060606060D0303090B09090B0C03030506060606
    0604090904010105090904060606060606060606060606060606060606060000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 579
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 785
      Height = 579
      ActivePage = TabSheet1
      Align = alClient
      Anchors = [akTop, akRight, akBottom]
      MultiLine = True
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Cadastrar'
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 41
          Width = 777
          Height = 507
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 10
          Color = 14329893
          TabOrder = 0
          object Panel6: TPanel
            Left = 10
            Top = 10
            Width = 757
            Height = 167
            Align = alTop
            BevelOuter = bvNone
            BorderWidth = 10
            Color = clWhite
            TabOrder = 0
            object Label2: TLabel
              Left = 16
              Top = 16
              Width = 73
              Height = 16
              Caption = 'PAC_NOME'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 16
              Top = 64
              Width = 60
              Height = 16
              Caption = 'PAC_CPF'
              FocusControl = DBEdit3
            end
            object Label4: TLabel
              Left = 200
              Top = 64
              Width = 53
              Height = 16
              Caption = 'PAC_RG'
              FocusControl = DBEdit4
            end
            object Label9: TLabel
              Left = 16
              Top = 112
              Width = 102
              Height = 16
              Caption = 'PAC_TELEFONE'
              FocusControl = DBEdit9
            end
            object DBEdit2: TDBEdit
              Left = 16
              Top = 32
              Width = 641
              Height = 24
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PAC_NOME'
              DataSource = DM.DS_PACIENTE
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 16
              Top = 80
              Width = 164
              Height = 24
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PAC_CPF'
              DataSource = DM.DS_PACIENTE
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 200
              Top = 80
              Width = 164
              Height = 24
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PAC_RG'
              DataSource = DM.DS_PACIENTE
              TabOrder = 2
            end
            object DBEdit9: TDBEdit
              Left = 16
              Top = 128
              Width = 208
              Height = 24
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PAC_TELEFONE'
              DataSource = DM.DS_PACIENTE
              MaxLength = 13
              TabOrder = 3
            end
          end
          object Panel7: TPanel
            Left = 10
            Top = 188
            Width = 757
            Height = 309
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            object Label5: TLabel
              Left = 16
              Top = 16
              Width = 61
              Height = 16
              Caption = 'PAC_RUA'
              FocusControl = DBEdit5
            end
            object Label6: TLabel
              Left = 520
              Top = 16
              Width = 83
              Height = 16
              Caption = 'PAC_BAIRRO'
              FocusControl = DBEdit6
            end
            object Label7: TLabel
              Left = 16
              Top = 72
              Width = 82
              Height = 16
              Caption = 'PAC_CIDADE'
              FocusControl = DBEdit7
            end
            object Label8: TLabel
              Left = 200
              Top = 72
              Width = 91
              Height = 16
              Caption = 'PAC_NUMERO'
              FocusControl = DBEdit8
            end
            object DBEdit5: TDBEdit
              Left = 16
              Top = 32
              Width = 489
              Height = 24
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PAC_RUA'
              DataSource = DM.DS_PACIENTE
              TabOrder = 0
            end
            object DBEdit6: TDBEdit
              Left = 520
              Top = 32
              Width = 164
              Height = 24
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PAC_BAIRRO'
              DataSource = DM.DS_PACIENTE
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 16
              Top = 88
              Width = 164
              Height = 24
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PAC_CIDADE'
              DataSource = DM.DS_PACIENTE
              TabOrder = 2
            end
            object DBEdit8: TDBEdit
              Left = 200
              Top = 88
              Width = 164
              Height = 24
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'PAC_NUMERO'
              DataSource = DM.DS_PACIENTE
              TabOrder = 3
            end
          end
        end
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 777
          Height = 41
          ButtonHeight = 38
          ButtonWidth = 38
          Caption = 'ToolBar1'
          Flat = True
          TabOrder = 1
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Caption = 'ToolButton1'
            ImageIndex = 0
          end
          object ToolButton2: TToolButton
            Left = 38
            Top = 0
            Caption = 'ToolButton2'
            ImageIndex = 1
          end
          object ToolButton3: TToolButton
            Left = 76
            Top = 0
            Caption = 'ToolButton3'
            ImageIndex = 2
          end
          object ToolButton4: TToolButton
            Left = 114
            Top = 0
            Caption = 'ToolButton4'
            ImageIndex = 3
          end
          object ToolButton5: TToolButton
            Left = 152
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object ToolButton6: TToolButton
            Left = 160
            Top = 0
            Caption = 'ToolButton6'
            ImageIndex = 4
          end
          object ToolButton7: TToolButton
            Left = 198
            Top = 0
            Caption = 'ToolButton7'
            ImageIndex = 5
          end
          object ToolButton8: TToolButton
            Left = 236
            Top = 0
            Caption = 'ToolButton8'
            ImageIndex = 6
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Consultar'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 777
          Height = 548
          Align = alClient
          BevelOuter = bvNone
          Color = 14329893
          TabOrder = 0
          object Panel4: TPanel
            Left = 8
            Top = 8
            Width = 761
            Height = 65
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = 8
              Top = 0
              Width = 745
              Height = 57
              TabOrder = 0
              object Edit2: TEdit
                Left = 8
                Top = 16
                Width = 361
                Height = 24
                BevelKind = bkFlat
                BevelOuter = bvNone
                BorderStyle = bsNone
                TabOrder = 0
              end
              object Button1: TButton
                Left = 640
                Top = 16
                Width = 81
                Height = 25
                Caption = 'Limpar'
                TabOrder = 1
                OnClick = Button1Click
              end
              object Button2: TButton
                Left = 552
                Top = 16
                Width = 81
                Height = 25
                Caption = 'Pesquisar'
                TabOrder = 2
                OnClick = Button2Click
              end
              object ComboBox1: TsComboBox
                Left = 376
                Top = 16
                Width = 169
                Height = 24
                Alignment = taLeftJustify
                BoundLabel.Indent = 0
                BoundLabel.Font.Charset = DEFAULT_CHARSET
                BoundLabel.Font.Color = clWindowText
                BoundLabel.Font.Height = -11
                BoundLabel.Font.Name = 'MS Sans Serif'
                BoundLabel.Font.Style = []
                BoundLabel.Layout = sclLeft
                BoundLabel.MaxWidth = 0
                BoundLabel.UseSkinColor = True
                SkinData.SkinSection = 'COMBOBOX'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ItemHeight = 16
                ItemIndex = -1
                ParentFont = False
                TabOrder = 3
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
            end
          end
          object Panel5: TPanel
            Left = 8
            Top = 80
            Width = 761
            Height = 461
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            object GroupBox2: TGroupBox
              Left = 8
              Top = 8
              Width = 745
              Height = 441
              TabOrder = 0
              object DBGrid1: TDBGrid
                Left = 2
                Top = 18
                Width = 741
                Height = 421
                Align = alClient
                DataSource = DM2.DSQ_PACIENTE
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Arial'
                TitleFont.Style = []
              end
            end
          end
        end
      end
    end
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 190
    Top = 13
  end
  object ActionList1: TActionList
    Left = 222
    Top = 13
  end
end
