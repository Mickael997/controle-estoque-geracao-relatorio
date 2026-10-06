object frmAtualizaDB: TfrmAtualizaDB
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmAtualizaDB'
  ClientHeight = 83
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 479
    Height = 83
    Align = alClient
    BevelOuter = bvLowered
    BevelWidth = 3
    BorderWidth = 3
    Color = clBlack
    DoubleBuffered = False
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    ExplicitHeight = 176
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 467
      Height = 69
      Align = alTop
      BevelOuter = bvNone
      Enabled = False
      ParentBackground = False
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      ExplicitLeft = 12
      ExplicitTop = -1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 467
        Height = 69
        Align = alClient
        Caption = 'Atualiza'#231#227'o Banco de Dados.  AGUARDE...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 35
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 461
        ExplicitHeight = 35
      end
      object chkCategoria: TCheckBox
        Left = 264
        Top = 87
        Width = 81
        Height = 17
        Caption = 'Categoria'
        TabOrder = 0
      end
      object chkProduto: TCheckBox
        Left = 264
        Top = 110
        Width = 65
        Height = 17
        Caption = 'Produto'
        TabOrder = 1
      end
      object chkCliente: TCheckBox
        Left = 264
        Top = 133
        Width = 65
        Height = 17
        Caption = 'Cliente'
        TabOrder = 2
      end
      object chkVendas: TCheckBox
        Left = 264
        Top = 156
        Width = 65
        Height = 17
        Caption = 'Vendas'
        TabOrder = 3
      end
      object chkItensVenda: TCheckBox
        Left = 264
        Top = 179
        Width = 89
        Height = 17
        Caption = 'Itens Venda'
        TabOrder = 4
      end
      object chkUsuarios: TCheckBox
        Left = 264
        Top = 202
        Width = 81
        Height = 17
        Caption = 'Usu'#225'rios'
        TabOrder = 5
      end
    end
  end
end
