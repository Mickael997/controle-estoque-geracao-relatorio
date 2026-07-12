inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  ClientHeight = 441
  ClientWidth = 781
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 797
  ExplicitHeight = 480
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Width = 781
    Height = 399
    ActivePage = tabManutencao
    ExplicitWidth = 781
    ExplicitHeight = 399
    inherited tabListagem: TTabSheet
      ExplicitWidth = 773
      ExplicitHeight = 369
      inherited pnlListagemTopo: TPanel
        Width = 773
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 773
        inherited lblIndice: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited mskPesquisar: TMaskEdit
          StyleElements = [seFont, seClient, seBorder]
        end
      end
      inherited grdListagem: TDBGrid
        Width = 773
        Height = 304
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaId'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 319
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 773
      ExplicitHeight = 369
      object edtCategoriaId: TLabeledEdit
        Tag = 1
        Left = 16
        Top = 56
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
      object edtDescricao: TLabeledEdit
        Tag = 2
        Left = 16
        Top = 120
        Width = 369
        Height = 23
        EditLabel.Width = 51
        EditLabel.Height = 15
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 30
        TabOrder = 1
        Text = ''
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 399
    Width = 781
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 399
    ExplicitWidth = 781
    DesignSize = (
      781
      42)
    inherited btnFechar: TBitBtn
      Left = 702
      Top = 6
      ExplicitLeft = 702
      ExplicitTop = 6
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT categoriaId,'
      #9'descricao'
      '  FROM categorias')
    object QryListagemcategoriaId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
