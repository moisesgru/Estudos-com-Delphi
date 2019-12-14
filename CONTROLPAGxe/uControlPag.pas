unit uControlPag;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, uButtonHelper, uLibrary, FMX.Edit, Data.DB, Datasnap.DBClient,
  FMX.Layouts, FMX.Bind.Navigator, Data.Bind.Components, Data.Bind.DBScope, Data.Bind.EngExt, FMX.Bind.DBEngExt,
  FMX.Bind.Editors, Data.Bind.DBLinks, FMX.Bind.DBLinks;

type
  TfrmControlPag = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ClientDataSet1: TClientDataSet;
    Edit1: TEdit;
    DataSource1: TDataSource;
    BindNavigator1: TBindNavigator;
    Edit2: TEdit;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Apelido: TStringField;
    BindingsList1: TBindingsList;
    BindScopeDB1: TBindScopeDB;
    DBLinkEdit1Nome1: TBindDBEditLink;
    DBLinkEdit2Apelido1: TBindDBEditLink;
    ClientDataSet1Email: TStringField;
    Edit3: TEdit;
    DBLinkEdit3Email1: TBindDBEditLink;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ClientDataSet1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlPag: TfrmControlPag;

implementation

{$R *.fmx}

uses uIFTernario, uPessoa, uFisica, uUsuario;

procedure TfrmControlPag.Button1Click(Sender: TObject);
var
  aux: String;
  auxBol: boolean;
begin
  auxBol := Button1.Switch('ON', 'OFF');
  aux := __IFTernario.IFTernario<String>(auxBol, 'True', 'False');
  ShowMessage(aux);
end;

procedure TfrmControlPag.Button2Click(Sender: TObject);
var
  aux: String;
  auxBol: boolean;
begin
  auxBol := Button2.Switch('Ligado', 'Desligado');
  aux := __IFTernario.IFTernario<String>(auxBol, 'True', 'False');
  ShowMessage(aux);
end;

procedure TfrmControlPag.Button3Click(Sender: TObject);
var
  PessoaFisica: TFisica;
begin
  PessoaFisica := TFisica.Create;
  try
    PessoaFisica.Nome := 'Moises';
    PessoaFisica.Cpf := '318';
    PessoaFisica.Telefone := '11';
    PessoaFisica.Endereço := 'Rua';
    ShowMessage(PessoaFisica.Nome + ' - ' + PessoaFisica.Cpf + ' - ' + PessoaFisica.Telefone);
  finally
    PessoaFisica.Free;
  end;
end;

procedure TfrmControlPag.ClientDataSet1BeforePost(DataSet: TDataSet);
var
  Usuario: TUsuario;
begin
  Usuario := TUsuario.Create;
  try
    with ClientDataSet1 do
    begin
      Usuario.Nome := FieldByName('Nome').AsString;
      Usuario.Cpf := FieldByName('Apelido').AsString;
      Usuario.Telefone := '1123';
      Usuario.Endereço := 'Rua 123';
      Usuario.Email := FieldByName('Email').AsString;
      //ShowMessage(Usuario.Nome + ' - ' + Usuario.Cpf + ' - ' + Usuario.Telefone);
    end;
  finally
    Usuario.Free;
  end;
end;

procedure TfrmControlPag.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
