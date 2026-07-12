inherited frmCadCliente: TfrmCadCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 476
  ClientWidth = 812
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 828
  ExplicitHeight = 515
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Width = 812
    Height = 434
    ActivePage = tabManutencao
    ExplicitWidth = 812
    ExplicitHeight = 434
    inherited tabListagem: TTabSheet
      ExplicitWidth = 804
      ExplicitHeight = 404
      inherited pnlListagemTopo: TPanel
        Width = 804
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 804
        inherited lblIndice: TLabel
          StyleElements = [seFont, seClient, seBorder]
        end
        inherited mskPesquisar: TMaskEdit
          StyleElements = [seFont, seClient, seBorder]
        end
      end
      inherited grdListagem: TDBGrid
        Width = 804
        Height = 339
        Columns = <
          item
            Expanded = False
            FieldName = 'clienteId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 804
      ExplicitHeight = 404
      object Label1: TLabel
        Left = 12
        Top = 231
        Width = 91
        Height = 15
        Caption = 'Data Nascimento'
      end
      object Label2: TLabel
        Left = 404
        Top = 146
        Width = 45
        Height = 15
        Caption = 'Telefone'
      end
      object Label3: TLabel
        Left = 404
        Top = 62
        Width = 21
        Height = 15
        Caption = 'CEP'
      end
      object edtNome: TLabeledEdit
        Tag = 2
        Left = 12
        Top = 83
        Width = 369
        Height = 23
        EditLabel.Width = 33
        EditLabel.Height = 15
        EditLabel.Caption = 'Nome'
        MaxLength = 60
        TabOrder = 1
        Text = ''
      end
      object edtClienteId: TLabeledEdit
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
      object edtCEP: TMaskEdit
        Left = 404
        Top = 83
        Width = 229
        Height = 23
        EditMask = '99.999-999;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  .   -   '
      end
      object edtEndereco: TLabeledEdit
        Left = 12
        Top = 122
        Width = 369
        Height = 23
        EditLabel.Width = 49
        EditLabel.Height = 15
        EditLabel.Caption = 'Endere'#231'o'
        MaxLength = 60
        TabOrder = 3
        Text = ''
      end
      object edtBairro: TLabeledEdit
        Left = 404
        Top = 122
        Width = 229
        Height = 23
        EditLabel.Width = 31
        EditLabel.Height = 15
        EditLabel.Caption = 'Bairro'
        MaxLength = 40
        TabOrder = 4
        Text = ''
      end
      object edtCidade: TLabeledEdit
        Left = 12
        Top = 162
        Width = 369
        Height = 23
        EditLabel.Width = 37
        EditLabel.Height = 15
        EditLabel.Caption = 'Cidade'
        MaxLength = 50
        TabOrder = 5
        Text = ''
      end
      object edtTelefone: TMaskEdit
        Left = 404
        Top = 162
        Width = 222
        Height = 23
        EditMask = '(99)99999-9999;1;_'
        MaxLength = 14
        TabOrder = 6
        Text = '(  )     -    '
      end
      object edtEmail: TLabeledEdit
        Left = 12
        Top = 202
        Width = 369
        Height = 23
        EditLabel.Width = 29
        EditLabel.Height = 15
        EditLabel.Caption = 'Email'
        MaxLength = 100
        TabOrder = 7
        Text = ''
      end
      object edtDataNascimento: TDateEdit
        Left = 12
        Top = 252
        Width = 121
        Height = 23
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 8
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 434
    Width = 812
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 434
    ExplicitWidth = 812
    inherited btnFechar: TBitBtn
      Left = 727
      ExplicitLeft = 727
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'select clienteId,'
      '      nome,'
      '      endereco,'
      '      cidade,'
      '      bairro,'
      '      estado,'
      '      cep,'
      '      telefone,'
      '      email,'
      '      datanascimento'
      'from clientes')
    object QryListagemclienteId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object QryListagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object QryListagemcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 50
    end
    object QryListagembairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 40
    end
    object QryListagemestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object QryListagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 10
    end
    object QryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 14
    end
    object QryListagememail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 100
    end
    object QryListagemdatanascimento: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'datanascimento'
    end
  end
end
