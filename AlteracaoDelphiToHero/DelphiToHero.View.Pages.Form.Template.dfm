object FormTemplate: TFormTemplate
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FormTemplate'
  ClientHeight = 650
  ClientWidth = 1220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1220
    Height = 650
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1220
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 100
      Padding.Right = 100
      ParentBackground = False
      TabOrder = 0
      object pnlTopBody: TPanel
        Left = 100
        Top = 0
        Width = 1020
        Height = 113
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object lblTitle: TLabel
          Left = 0
          Top = 0
          Width = 38
          Height = 13
          Align = alLeft
          Caption = 'lblTitle'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object btnConfiguracao: TSpeedButton
          Left = 880
          Top = 0
          Width = 140
          Height = 113
          Align = alRight
          Caption = 'CONFIGURA'#199#213'ES'
          ImageIndex = 2
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Layout = blGlyphTop
          ParentFont = False
          ExplicitLeft = 771
        end
        object btnRelatorio: TSpeedButton
          Left = 600
          Top = 0
          Width = 140
          Height = 113
          Align = alRight
          Caption = 'RELAT'#211'RIOS'
          ImageIndex = 0
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Layout = blGlyphTop
          ParentFont = False
          ExplicitLeft = 368
          ExplicitTop = -6
        end
        object btnHistorico: TSpeedButton
          Left = 740
          Top = 0
          Width = 140
          Height = 113
          Align = alRight
          Caption = 'HIST'#211'RICO'
          ImageIndex = 1
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Layout = blGlyphTop
          ParentFont = False
          ExplicitLeft = 771
        end
      end
    end
    object pnlMain: TPanel
      Left = 0
      Top = 113
      Width = 1220
      Height = 537
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 100
      Padding.Right = 100
      ParentBackground = False
      TabOrder = 1
      object pnlMainBody: TPanel
        Left = 100
        Top = 0
        Width = 1020
        Height = 537
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object pnlMainBodyTop: TPanel
          Left = 0
          Top = 0
          Width = 1020
          Height = 113
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object pnlMainBodyTopLine: TPanel
            Left = 0
            Top = 112
            Width = 1020
            Height = 1
            Align = alBottom
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
          end
          object pnlMainTopBodyMenu: TPanel
            Left = 0
            Top = 0
            Width = 1020
            Height = 112
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object btnAtualizar: TSpeedButton
              Left = 140
              Top = 0
              Width = 140
              Height = 112
              Align = alLeft
              Caption = 'ATUALIZAR'
              ImageIndex = 4
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Layout = blGlyphTop
              ParentFont = False
              ExplicitLeft = 146
              ExplicitTop = -6
              ExplicitHeight = 88
            end
            object btnNovo: TSpeedButton
              Left = 0
              Top = 0
              Width = 140
              Height = 112
              Align = alLeft
              Caption = 'NOVO'
              ImageIndex = 3
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Layout = blGlyphTop
              ParentFont = False
              OnClick = btnNovoClick
              ExplicitLeft = 8
              ExplicitHeight = 88
            end
            object pnlMainTopBodySearch: TPanel
              Left = 600
              Top = 0
              Width = 420
              Height = 112
              Align = alRight
              BevelOuter = bvNone
              Padding.Top = 35
              ParentBackground = False
              TabOrder = 0
              object lblSearch: TLabel
                Left = 0
                Top = 35
                Width = 67
                Height = 19
                Align = alTop
                Caption = 'Pesquisar'
              end
              object edtSearch: TEdit
                Left = 0
                Top = 54
                Width = 420
                Height = 25
                Align = alTop
                BorderStyle = bsNone
                TabOrder = 0
                OnKeyPress = edtSearchKeyPress
              end
              object pnlMainTopBodySearchLine: TPanel
                Left = 0
                Top = 79
                Width = 420
                Height = 1
                Align = alTop
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 1
              end
            end
          end
        end
        object pnlMainBodyData: TPanel
          Left = 0
          Top = 113
          Width = 1020
          Height = 383
          Align = alClient
          BevelOuter = bvNone
          Padding.Bottom = 15
          ParentBackground = False
          TabOrder = 1
          object pnlMainBodyDataForm: TPanel
            Left = 520
            Top = 0
            Width = 500
            Height = 368
            Align = alRight
            BevelOuter = bvNone
            Padding.Left = 25
            Padding.Right = 25
            ParentBackground = False
            TabOrder = 0
            object pnlMainCadastroBotton: TPanel
              Left = 25
              Top = 295
              Width = 450
              Height = 73
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object btnFechar: TSpeedButton
                Left = 310
                Top = 1
                Width = 140
                Height = 72
                Align = alRight
                Caption = 'FECHAR'
                ImageIndex = 7
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Layout = blGlyphTop
                ParentFont = False
                OnClick = btnFecharClick
                ExplicitLeft = 316
              end
              object btnSalvar: TSpeedButton
                Left = 170
                Top = 1
                Width = 140
                Height = 72
                Align = alRight
                Caption = 'SALVAR'
                ImageIndex = 6
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Layout = blGlyphTop
                ParentFont = False
                OnClick = btnSalvarClick
                ExplicitLeft = 164
                ExplicitTop = 7
              end
              object btnExcluir: TSpeedButton
                Left = 0
                Top = 1
                Width = 140
                Height = 72
                Align = alLeft
                Caption = 'EXCLUIR'
                ImageIndex = 5
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Layout = blGlyphTop
                ParentFont = False
                OnClick = btnExcluirClick
                ExplicitTop = 7
              end
              object pnlMainCadastroBottonLine: TPanel
                Left = 0
                Top = 0
                Width = 450
                Height = 1
                Align = alTop
                BevelOuter = bvNone
                ParentBackground = False
                TabOrder = 0
              end
            end
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 520
            Height = 368
            Align = alClient
            BorderStyle = bsNone
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDblClick = DBGrid1DblClick
            OnTitleClick = DBGrid1TitleClick
          end
        end
        object pnlPaginate: TPanel
          Left = 0
          Top = 496
          Width = 1020
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Padding.Left = 15
          TabOrder = 2
          object btnNext: TSpeedButton
            Left = 976
            Top = 0
            Width = 44
            Height = 41
            Align = alRight
            Caption = '>>'
            Flat = True
            OnClick = btnNextClick
          end
          object SpeedButton7: TSpeedButton
            Left = 885
            Top = 0
            Width = 44
            Height = 41
            Align = alRight
            Caption = '<<'
            Flat = True
            OnClick = SpeedButton7Click
            ExplicitLeft = 932
            ExplicitTop = 6
          end
          object lblPagina: TLabel
            Left = 929
            Top = 0
            Width = 47
            Height = 19
            Align = alRight
            Alignment = taCenter
            Caption = 'Pagina'
            Layout = tlCenter
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    Left = 114
    Top = 570
  end
end