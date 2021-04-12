unit DelphiToHero.View.Pages.Usuarios;

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
  DelphiToHero.View.Pages.Form.Template,
  Vcl.ExtCtrls,
  Bind4D,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.Grids,
  DelphiToHero.View.Styles.Colors,
  Vcl.DBGrids,
  Vcl.WinXPanels,
  Vcl.ComCtrls,
  Bind4D.Attributes,
  Bind4D.Types;

type
  [FormRest('/users', 'guuid', 'name', 'asc')]
  [FormDefault('Cadastro de Usuários')]
  TPageUsuarios = class(TFormTemplate)


    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    [Translation('Código')]
    lblCodigo: TLabel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    [Translation('Nome')]
    lblNome: TLabel;

    [FieldJsonBind('guuid'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('guuid', ftString, False, 0, 'Código')]
    [Translation('Código')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    edtCodigo: TEdit;

    [FieldJsonBind('name')]
    [FieldDataSetBind('name', ftString, True, 25, 'Nome')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    [Translation('Nome')]
    [fvNotNull('O Campo Nome não pode ser Vazio')]
    edtName: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    [Translation('Telefone')]
    lblTelefone: TLabel;

    [FieldJsonBind('phone')]
    [FieldDataSetBind('phone', ftString, True, 10, 'Telefone', '!\(##\) #####-####;0;_', taLeftJustify, 700)]
    [Translation('Telefone')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    edtPhone: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    [Translation('Profissão')]
    lblProfissao: TLabel;

    [FieldJsonBind('occupation')]
    [FieldDataSetBind('occupation', ftString, True, 12, 'Profissão', '', taLeftJustify, 1000)]
    [Translation('Profissão')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    edtProfissao: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    [Translation('Saldo')]
    lblSaldo: TLabel;

    [FieldJsonBind('balance')]
    [FieldDataSetBind('balance', ftCurrency, True, 10, 'Saldo', 'R$ ###,###,##0.00', taLeftJustify, 500)]
    [Translation('Saldo')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCoin)]
    edtSaldo: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    [Translation('Data de Nascimento')]
    lblDataNascimento: TLabel;

    [FieldJsonBind('birthdate')]
    [FieldDataSetBind('birthdate', ftDate, True, 8, 'Data Nasc', '##/##/####;0;_', taLeftJustify, 1150)]
    [Translation('Data Nascimento')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    dateBirth: TDateTimePicker;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    [Translation('Ultima Transação')]
    lblUltimaTransacao: TLabel;

    [FieldJsonBind('lasttransaction')]
    [FieldDataSetBind('lasttransaction', ftTime, True, 7, 'Ult. Trans', '##:##:##;0;_', taLeftJustify, 1250)]
    [Translation('Ultima Transação')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    timeTrans: TDateTimePicker;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label8: TLabel;

    [FieldJsonBind('cpf')]
    [FieldDataSetBind('cpf', ftString, True, 8, 'CPF', '###.###.###-##;0;_', taLeftJustify, 800)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCPF)]
    edtCPF: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label9: TLabel;

    [FieldJsonBind('cnpj')]
    [FieldDataSetBind('cnpj', ftString, True, 10, 'CNPJ', '##.###.###/####-##;0;_', taLeftJustify, 1400)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCNPJ)]
    edtCNPJ: TEdit;

    [FieldJsonBind('picture')]
    [FieldDataSetBind('picture', ftString, False)]
    [HorseStorage('jpg', 'application/octet-stream', '/users/stream', 'users')]
    [ImageAttribute('ico_genericuser')]
    Image1: TImage;

    StackPanel1: TStackPanel;
    StackPanel2: TStackPanel;
    pnlImageData: TPanel;
    procedure Image1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageUsuarios: TPageUsuarios;

implementation

{$R *.dfm}

procedure TPageUsuarios.Image1DblClick(Sender: TObject);
begin
  inherited;
  with TOpenDialog.Create(Self) do
  try
    Caption := 'Escolha a Imagem';
    Options := [ofPathMustExist, ofFileMustExist];
    if Execute then
      Image1.Picture.LoadFromFile(FileName);
  finally
    Free;
  end;
end;

end.
