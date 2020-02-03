unit uBaseFormCRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseForm, Data.DB, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.Generics.Collections, Vcl.StdCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  System.Actions, Vcl.ActnList, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmBaseFormCRUD = class(TfrmBaseForm)
    dsQuery: TDataSource;
    dsCrud: TDataSource;
    StatusBar1: TStatusBar;
    Img: TImageList;
    ImgActions: TImageList;
    plTools: TPanel;
    PageControl: TPageControl;
    tbCrud: TTabSheet;
    tbQuery: TTabSheet;
    plBusca: TPanel;
    btnEdtPesquisa: TButtonedEdit;
    ActionList: TActionList;
    actInsert: TAction;
    actEdit: TAction;
    actSave: TAction;
    actDelete: TAction;
    actCancel: TAction;
    actReturn: TAction;
    actCopy: TAction;
    actSearch: TAction;
    actPrint: TAction;
    actFirst: TAction;
    actLast: TAction;
    actNext: TAction;
    actPrior: TAction;
    spdSave: TSpeedButton;
    spdDelete: TSpeedButton;
    spd1: TSpeedButton;
    spdNew: TSpeedButton;
    spdEdit: TSpeedButton;
    spdCancel: TSpeedButton;
    spd3: TSpeedButton;
    spd2: TSpeedButton;
    spbFirst: TSpeedButton;
    spbPrior: TSpeedButton;
    spbNext: TSpeedButton;
    spbLast: TSpeedButton;
    DBGridQuery: TDBGrid;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Sexo: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
    procedure actInsertUpdate(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actPriorExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
  private
    FCheckUnique: TDictionary<string, string>;
    procedure SetCheckUnique(const Value: TDictionary<string, string>);
    procedure DoAfterScroll(DataSet: TDataSet);
    { Private declarations }
  protected
    // Objeto utilizado na rotina filtro
    FieldFilter: TField;

    // Função que retorna o campo chave do DataSet CRUD
    function GetKeyField: string; virtual; abstract;

    // Função que retorna o nome do campo chave para filtrar o registro no DataSet CRUD
    function GetQueryKeyField: string; virtual; abstract;

    // Procedure que carrega a permissão do usuário logado para o formulário em questão
    procedure LoadPermissao; virtual;

    // Procedure que carrega as restrições dos compos do formulário em questão para o usuário logado
    procedure LoadRestricao; virtual;

    // Função que verifica a existência de registro já cadastrado com base nos campos informados em FCheckUnique
    function DoCheckUnique: string; virtual;

    { Protected declarations }
  public
    property CheckUnique: TDictionary<string, string> read FCheckUnique write SetCheckUnique;
    { Public declarations }
  end;

var
  frmBaseFormCRUD: TfrmBaseFormCRUD;

implementation

{$R *.dfm}

procedure TfrmBaseFormCRUD.FormCreate(Sender: TObject);
begin
  inherited;
  FCheckUnique := TDictionary<string, string>.Create;
  // dsQuery.DataSet.AfterScroll := DoAfterScroll;
end;

procedure TfrmBaseFormCRUD.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCheckUnique);
  inherited;
end;

procedure TfrmBaseFormCRUD.actCancelExecute(Sender: TObject);
begin
  inherited;
  dsCrud.DataSet.Cancel;
end;

procedure TfrmBaseFormCRUD.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Você está prestes a excluir este registro. Você tem certeza?', 'Application.Title',
    MB_YESNO + MB_DEFBUTTON2 + MB_ICONWARNING) = IDYES then
    dsCrud.DataSet.Delete;
end;

procedure TfrmBaseFormCRUD.actEditExecute(Sender: TObject);
begin
  inherited;
  dsCrud.DataSet.Edit;
  PageControl.ActivePage := tbCrud;
end;

procedure TfrmBaseFormCRUD.actFirstExecute(Sender: TObject);
begin
  inherited;
  dsCrud.DataSet.First;
end;

procedure TfrmBaseFormCRUD.actInsertExecute(Sender: TObject);
begin
  inherited;
  dsCrud.DataSet.Append;
  PageControl.ActivePage := tbCrud;
end;

procedure TfrmBaseFormCRUD.actInsertUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not(dsCrud.State in [dsInsert, dsEdit]);
end;

procedure TfrmBaseFormCRUD.actLastExecute(Sender: TObject);
begin
  inherited;
  dsCrud.DataSet.Last;
end;

procedure TfrmBaseFormCRUD.actNextExecute(Sender: TObject);
begin
  inherited;
  dsCrud.DataSet.Next;
end;

procedure TfrmBaseFormCRUD.actPriorExecute(Sender: TObject);
begin
  inherited;
  dsCrud.DataSet.Prior;
end;

procedure TfrmBaseFormCRUD.actSaveExecute(Sender: TObject);
begin
  inherited;
  dsCrud.DataSet.Post;
  ClientDataSet1.SaveToFile('C:\Users\moise\Downloads\NewCRUD\Teste.xml', dfXML);
end;

procedure TfrmBaseFormCRUD.actSaveUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := dsCrud.State in [dsInsert, dsEdit];
end;

procedure TfrmBaseFormCRUD.DoAfterScroll(DataSet: TDataSet);
begin
  if not dsQuery.DataSet.IsEmpty then
    dsCrud.DataSet.Filter := GetKeyField + ' = ' + dsQuery.DataSet.FieldByName(GetQueryKeyField).AsString;
  dsCrud.DataSet.Filtered := True;
  if not dsCrud.DataSet.Active then
    dsCrud.DataSet.Open;
  StatusBar1.SimpleText := 'Total de Registros: ' + dsQuery.DataSet.RecordCount.ToString;
end;

function TfrmBaseFormCRUD.DoCheckUnique: string;
begin
  //
end;

procedure TfrmBaseFormCRUD.LoadPermissao;
begin
  //
end;

procedure TfrmBaseFormCRUD.LoadRestricao;
begin
  //
end;

procedure TfrmBaseFormCRUD.SetCheckUnique(const Value: TDictionary<string, string>);
begin
  FCheckUnique := Value;
end;

end.
