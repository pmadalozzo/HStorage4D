unit DelphiToHero.View.Pages.Form.Template;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Router4D.Interfaces,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Bind4D,
  DelphiToHero.View.Styles.Colors,
  RESTRequest4D,
  Vcl.WinXPanels,
  DelphiToHero.Model.DAO.Interfaces,
  Bind4D.Attributes,
  Bind4D.Types;

type
  TTypeOperation = (toNull, toPost, toPut);

  TFormTemplate = class(TForm, iRouter4DComponent)

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlPrincipal: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMain: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBody: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyData: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyDataForm: TPanel;

    [ComponentBindStyle(COLOR_C2, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyTopLine: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopBodyMenu: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopBodySearch: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND_TOP, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopBodySearchLine: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlTopBody: TPanel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    lblTitle: TLabel;

    [ComponentBindStyle(clBtnFace, FONT_H6, COLOR_BACKGROUND_TOP, FONT_NAME)]
    [Translation('PESQUISAR')]
    lblSearch: TLabel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, COLOR_BACKGROUND_TOP, FONT_NAME)]
    edtSearch: TEdit;

    [AdjustResponsive]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR4, FONT_NAME)]
    DBGrid1: TDBGrid;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    [Translation('CONFIGURAÇÃO')]
    [ImageAttribute('ico_configuracoes')]
    btnConfiguracao: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    [Translation('RELATÓRIO')]
    [ImageAttribute('ico_relatorios')]
    btnRelatorio: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    [Translation('HISTORICO')]
    [ImageAttribute('ico_historico')]
    btnHistorico: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    [Translation('ATUALIZAR')]
    [ImageAttribute('ico_atualizar')]
    btnAtualizar: TSpeedButton;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    [Translation('NOVO')]
    [ImageAttribute('ico_novo' + ICO_SUF)]
    btnNovo: TSpeedButton;

    DataSource1: TDataSource;
    pnlMainCadastroBotton: TPanel;

    [Translation('FECHAR')]
    [ImageAttribute('ico_fechar')]
    btnFechar: TSpeedButton;

    [Translation('SALVAR')]
    [ImageAttribute('ico_salvar')]
    btnSalvar: TSpeedButton;

    [Translation('EXCLUIR')]
    [ImageAttribute('ico_excluir')]
    btnExcluir: TSpeedButton;

    pnlMainCadastroBottonLine: TPanel;
    pnlPaginate: TPanel;
    btnNext: TSpeedButton;
    SpeedButton7: TSpeedButton;
    lblPagina: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
  private
    { Private declarations }
    FTypeOperation : TTypeOperation;
    FEndPoint : String;
    FPK : String;
    FTitle : String;
    FSort, FOrder : String;
    FDAO : iDAOInterface;
    FPage : Integer;
    procedure ApplyStyle;
    procedure GetEndPoint;
    procedure alterListForm;
    procedure formatList;
    procedure restOperationPost;
    procedure restOperationPut;
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  FormTemplate: TFormTemplate;

implementation

uses
  System.JSON,
  DelphiToHero.Model.DAO.REST;

{$R *.dfm}

{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin
  lblTitle.Caption := TBind4D.New.Translator.Google.Params.Query(FTitle).&End.Execute;
  pnlMainBodyDataForm.Visible := False;
  pnlMainBodyDataForm.Align := TAlign.alClient;
  DBGrid1.TitleFont.Size := FONT_H5;
  DBGrid1.TitleFont.Name := 'Segoe UI';
  DBGrid1.TitleFont.Color := FONT_COLOR4;
  btnNext.Left := 10000;
end;

procedure TFormTemplate.btnExcluirClick(Sender: TObject);
begin
  FDAO.Delete;
  GetEndPoint;
  alterListForm;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.btnFecharClick(Sender: TObject);
begin
  alterListForm;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.btnSalvarClick(Sender: TObject);
begin
  case FTypeOperation of
    toPost : restOperationPost;
    toPut : restOperationPut;
  end;
end;

procedure TFormTemplate.DBGrid1DblClick(Sender: TObject);
begin
  FTypeOperation := toPut;
  TBind4D.New.Form(Self).BindDataSetToForm(FDAO.DataSet);
  alterListForm;
end;

procedure TFormTemplate.DBGrid1TitleClick(Column: TColumn);
begin
  FDAO
    .AddParam('sort', Column.Field.FullName)
    .AddParam('order', FOrder)
    .Page(1)
  .Get;
  if FOrder = 'asc' then FOrder := 'desc' else FOrder := 'asc';
  formatList;
end;

procedure TFormTemplate.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #$D then
  begin
    Key := #$0;
    FDAO
      .AddParam('sort', FSort)
      .AddParam('order', FOrder)
      .AddParam('searchfields', TBind4D.New.Form(Self).GetFieldsByType(fbGet))
      .AddParam('searchvalue', edtSearch.Text)
      .Page(1)
    .Get;

    formatList;
  end;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  FPage := 1;
  FTypeOperation := toNull;
  FDAO := TDAOREST.New(Self).DataSource(DataSource1);
  TBind4D
    .New
      .Form(Self)
      .BindFormDefault(FTitle)
      .BindFormRest(FEndPoint, FPK, FSort, FOrder)
      .SetImageComponents
      .SetCaptionComponents
      .SetStyleComponents;


  ApplyStyle;

  GetEndPoint;
end;

procedure TFormTemplate.GetEndPoint;
begin
  FDAO
    .AddParam('sort', FSort)
    .AddParam('order', FOrder)
    .Page(FPage)
  .Get;
  formatList;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.restOperationPost;
begin
  FDAO.Post;
  GetEndPoint;
  alterListForm;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.restOperationPut;
begin
  FDAO.Put;
  GetEndPoint;
  alterListForm;
  FTypeOperation := toNull;
end;

procedure TFormTemplate.btnNovoClick(Sender: TObject);
begin
  FTypeOperation := toPost;
  alterListForm;
  TBind4D.New.Form(Self).ClearFieldForm;
end;

procedure TFormTemplate.btnNextClick(Sender: TObject);
begin
  if FDAO.Page < FDAO.Pages then
  begin
    FPage := FDAO.Page + 1;
    GetEndPoint;
  end;
end;

procedure TFormTemplate.SpeedButton7Click(Sender: TObject);
begin
  if FDAO.Page > 1 then
  begin
    FPage := FDAO.Page -1;
    GetEndPoint;
  end;
end;

procedure TFormTemplate.UnRender;
begin
  //
end;

procedure TFormTemplate.formatList;
begin
  TBind4D
    .New
      .Form(Self)
       .BindFormatListDataSet(FDAO.DataSet, DBGrid1)
       .ResponsiveAdjustment;

  lblPagina.Caption := 'Pagina ' + FDAO.Page.ToString + ' de ' + FDAO.Pages.ToString;
  lblPagina.Caption := TBind4D.New.Translator.Google.Params.Query(lblPagina.Caption).&End.Execute;
end;

procedure TFormTemplate.alterListForm;
begin
  pnlMainBodyDataForm.Visible := not pnlMainBodyDataForm.Visible;
  DBGrid1.Visible := not DBGrid1.Visible;
end;

end.
