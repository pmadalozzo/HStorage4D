inherited PageUsuarios: TPageUsuarios
  Caption = 'PageUsuarios'
  ClientWidth = 1266
  ExplicitWidth = 1266
  PixelsPerInch = 96
  TextHeight = 19
  inherited pnlPrincipal: TPanel
    Width = 1266
    ExplicitWidth = 1266
    inherited pnlTop: TPanel
      Width = 1266
      ExplicitWidth = 1266
      inherited pnlTopBody: TPanel
        Width = 1066
        ExplicitWidth = 1066
        inherited lblTitle: TLabel
          Height = 113
        end
        inherited btnConfiguracao: TSpeedButton
          Left = 926
          ExplicitLeft = 926
        end
        inherited btnRelatorio: TSpeedButton
          Left = 646
          ExplicitLeft = 646
        end
        inherited btnHistorico: TSpeedButton
          Left = 786
          ExplicitLeft = 786
        end
      end
    end
    inherited pnlMain: TPanel
      Width = 1266
      ExplicitWidth = 1266
      inherited pnlMainBody: TPanel
        Width = 1066
        ExplicitWidth = 1066
        inherited pnlMainBodyTop: TPanel
          Width = 1066
          ExplicitWidth = 1066
          inherited pnlMainBodyTopLine: TPanel
            Width = 1066
            ExplicitWidth = 1066
          end
          inherited pnlMainTopBodyMenu: TPanel
            Width = 1066
            ExplicitWidth = 1066
            inherited pnlMainTopBodySearch: TPanel
              Left = 646
              ExplicitLeft = 646
              inherited lblSearch: TLabel
                Width = 420
              end
            end
          end
        end
        inherited pnlMainBodyData: TPanel
          Width = 1066
          Padding.Top = 20
          ExplicitWidth = 1066
          inherited pnlMainBodyDataForm: TPanel
            Left = 342
            Top = 20
            Width = 724
            Height = 348
            ExplicitLeft = 342
            ExplicitTop = 20
            ExplicitWidth = 724
            ExplicitHeight = 348
            inherited pnlMainCadastroBotton: TPanel
              Top = 275
              Width = 674
              ExplicitTop = 275
              ExplicitWidth = 674
              inherited btnFechar: TSpeedButton
                Left = 534
                ExplicitLeft = 534
              end
              inherited btnSalvar: TSpeedButton
                Left = 394
                ExplicitLeft = 394
              end
              inherited pnlMainCadastroBottonLine: TPanel
                Width = 674
                ExplicitWidth = 674
              end
            end
            object StackPanel1: TStackPanel
              Left = 241
              Top = 0
              Width = 336
              Height = 275
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = lblCodigo
                end
                item
                  Control = edtCodigo
                end
                item
                  Control = lblNome
                end
                item
                  Control = edtName
                end
                item
                  Control = lblTelefone
                end
                item
                  Control = edtPhone
                end
                item
                  Control = lblProfissao
                end
                item
                  Control = edtProfissao
                end
                item
                  Control = lblSaldo
                end
                item
                  Control = edtSaldo
                end>
              HorizontalPositioning = sphpFill
              Padding.Right = 15
              Spacing = 5
              TabOrder = 1
              object lblCodigo: TLabel
                Left = 0
                Top = 0
                Width = 321
                Height = 19
                Caption = 'C'#243'digo'
              end
              object edtCodigo: TEdit
                Left = 0
                Top = 24
                Width = 321
                Height = 27
                TabOrder = 0
              end
              object lblNome: TLabel
                Left = 0
                Top = 56
                Width = 321
                Height = 19
                Caption = 'Nome'
              end
              object edtName: TEdit
                Left = 0
                Top = 80
                Width = 321
                Height = 27
                TabOrder = 1
              end
              object lblTelefone: TLabel
                Left = 0
                Top = 112
                Width = 321
                Height = 19
                Caption = 'Telefone'
              end
              object edtPhone: TEdit
                Left = 0
                Top = 136
                Width = 321
                Height = 27
                TabOrder = 2
              end
              object lblProfissao: TLabel
                Left = 0
                Top = 168
                Width = 321
                Height = 19
                Caption = 'Profiss'#227'o'
              end
              object edtProfissao: TEdit
                Left = 0
                Top = 192
                Width = 321
                Height = 27
                TabOrder = 3
              end
              object lblSaldo: TLabel
                Left = 0
                Top = 224
                Width = 321
                Height = 19
                Caption = 'Saldo'
              end
              object edtSaldo: TEdit
                Left = 0
                Top = 248
                Width = 321
                Height = 27
                TabOrder = 4
              end
            end
            object StackPanel2: TStackPanel
              Left = 577
              Top = 0
              Width = 360
              Height = 275
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = lblDataNascimento
                end
                item
                  Control = dateBirth
                end
                item
                  Control = lblUltimaTransacao
                end
                item
                  Control = timeTrans
                end
                item
                  Control = Label8
                end
                item
                  Control = edtCPF
                end
                item
                  Control = Label9
                end
                item
                  Control = edtCNPJ
                end>
              HorizontalPositioning = sphpFill
              Padding.Left = 15
              Padding.Right = 15
              TabOrder = 2
              object lblDataNascimento: TLabel
                Left = 15
                Top = 0
                Width = 330
                Height = 19
                Caption = 'Data Nascimento'
              end
              object dateBirth: TDateTimePicker
                Left = 15
                Top = 21
                Width = 330
                Height = 27
                Date = 44273.000000000000000000
                Time = 0.677286527774413100
                TabOrder = 0
              end
              object lblUltimaTransacao: TLabel
                Left = 15
                Top = 50
                Width = 330
                Height = 19
                Caption = 'Ultima Transa'#231#227'o'
              end
              object timeTrans: TDateTimePicker
                Left = 15
                Top = 71
                Width = 330
                Height = 27
                Date = 44273.000000000000000000
                Time = 0.677286527774413100
                Kind = dtkTime
                TabOrder = 1
              end
              object Label8: TLabel
                Left = 15
                Top = 100
                Width = 330
                Height = 19
                Caption = 'CPF'
              end
              object edtCPF: TEdit
                Left = 15
                Top = 121
                Width = 330
                Height = 27
                TabOrder = 2
              end
              object Label9: TLabel
                Left = 15
                Top = 150
                Width = 330
                Height = 19
                Caption = 'CNPJ'
              end
              object edtCNPJ: TEdit
                Left = 15
                Top = 171
                Width = 330
                Height = 27
                TabOrder = 3
              end
            end
            object pnlImageData: TPanel
              Left = 25
              Top = 0
              Width = 216
              Height = 275
              Align = alLeft
              BevelOuter = bvNone
              Padding.Right = 25
              TabOrder = 3
              object Image1: TImage
                Left = 0
                Top = 0
                Width = 191
                Height = 242
                Align = alTop
                Proportional = True
                OnDblClick = Image1DblClick
                ExplicitWidth = 185
              end
            end
          end
          inherited DBGrid1: TDBGrid
            Top = 20
            Width = 342
            Height = 348
          end
        end
        inherited pnlPaginate: TPanel
          Width = 1066
          ExplicitWidth = 1066
          inherited btnNext: TSpeedButton
            Left = 1022
            ExplicitLeft = 1022
          end
          inherited SpeedButton7: TSpeedButton
            Left = 931
            ExplicitLeft = 931
          end
          inherited lblPagina: TLabel
            Left = 975
            Height = 41
            ExplicitLeft = 975
          end
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 402
    Top = 562
  end
end
