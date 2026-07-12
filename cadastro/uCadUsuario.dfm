inherited frmCadUsuario: TfrmCadUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 284
  ClientWidth = 753
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 769
  ExplicitHeight = 323
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Width = 753
    Height = 242
    ExplicitWidth = 753
    ExplicitHeight = 242
    inherited tabListagem: TTabSheet
      ExplicitWidth = 745
      ExplicitHeight = 212
      inherited pnlListagemTopo: TPanel
        Width = 745
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 745
        inherited lblIndice: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited mskPesquisar: TMaskEdit
          StyleElements = [seFont, seClient, seBorder]
        end
      end
      inherited grdListagem: TDBGrid
        Width = 745
        Height = 147
        Columns = <
          item
            Expanded = False
            FieldName = 'usuarioId'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 410
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 745
      ExplicitHeight = 212
      object edtUsuarioId: TLabeledEdit
        Tag = 1
        Left = 12
        Top = 39
        Width = 121
        Height = 23
        EditLabel.Width = 39
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
        Text = ''
      end
      object edtNome: TLabeledEdit
        Tag = 2
        Left = 12
        Top = 83
        Width = 445
        Height = 23
        EditLabel.Width = 40
        EditLabel.Height = 15
        EditLabel.Caption = 'Usu'#225'rio'
        MaxLength = 50
        TabOrder = 1
        Text = ''
      end
      object edtSenha: TLabeledEdit
        Tag = 2
        Left = 12
        Top = 128
        Width = 269
        Height = 23
        EditLabel.Width = 32
        EditLabel.Height = 15
        EditLabel.Caption = 'Senha'
        MaxLength = 40
        PasswordChar = '*'
        TabOrder = 2
        Text = ''
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 242
    Width = 753
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 242
    ExplicitWidth = 753
    inherited btnFechar: TBitBtn
      Left = 665
      Top = 6
      ExplicitLeft = 665
      ExplicitTop = 6
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT usuarioId,'
      '       nome,'
      '       senha'
      '  FROM usuarios')
    Left = 396
    Top = 50
    object QryListagemusuarioId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usuarioId'
      ReadOnly = True
    end
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object QryListagemsenha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Required = True
      Size = 40
    end
  end
  inherited dtsListagem: TDataSource
    Left = 484
    Top = 50
  end
end
