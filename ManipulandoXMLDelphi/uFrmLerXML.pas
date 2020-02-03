unit uFrmLerXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom,
  Xml.XMLDoc, uCliente;

type
  TfrmLerXML = class(TForm)
    edtNome: TEdit;
    edtSexo: TEdit;
    btnLerXML: TButton;
    XMLDocument: TXMLDocument;
    OpenDialog: TOpenDialog;
    Label8: TLabel;
    Label10: TLabel;
    ListViewTelefones: TListView;
    procedure btnLerXMLClick(Sender: TObject);
  private
    procedure CarregarXML(_NomeArquivo: string);
    procedure ExibirDadosCliente(_Cliente: TCliente);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLerXML: TfrmLerXML;

implementation

uses
  uClienteTelefone;

{$R *.dfm}

procedure TfrmLerXML.btnLerXMLClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    CarregarXML(OpenDialog.FileName);
  end;
end;

procedure TfrmLerXML.CarregarXML(_NomeArquivo: string);
var
  Cliente: TCliente;
  NodeTelefones, NodeTelefone: IXMLNode;
begin
  try
    Cliente := TCliente.Create;
    with XMLDocument do
    begin
      LoadFromFile(_NomeArquivo);
      Active := True;

      with DocumentElement.ChildNodes do
      begin
        Cliente.Nome := FindNode('nome').Text;
        Cliente.Sexo := FindNode('sexo').Text;

        NodeTelefones := FindNode('telefones');
        NodeTelefones.ChildNodes.First;
        NodeTelefone := NodeTelefones.ChildNodes['telefone'];
        repeat
          Cliente.Telefones.Add(TClienteTelefone.Create);
          Cliente.Telefones[Cliente.Telefones.Count - 1].IDClienteTelefone := StrToInt(NodeTelefone.Attributes['n']);
          Cliente.Telefones[Cliente.Telefones.Count - 1].DDD := NodeTelefone.ChildValues['ddd'];
          Cliente.Telefones[Cliente.Telefones.Count - 1].Numero := NodeTelefone.ChildValues['numero'];
          NodeTelefone := NodeTelefone.NextSibling;
        until NodeTelefone = nil;
      end;
    end;

    ExibirDadosCliente(Cliente);

  except
    on E: Exception do
      raise Exception.Create('Erro ao carregar o XML' + #13 + 'Mensagem Original: ' + E.Message);
  end;
end;

procedure TfrmLerXML.ExibirDadosCliente(_Cliente: TCliente);
var
  I: Integer;
  ITemListView: TListItem;
begin
  edtNome.Text := _Cliente.Nome;
  edtSexo.Text := _Cliente.Sexo;
  ListViewTelefones.Clear;
  for I := 0 to _Cliente.Telefones.Count - 1 do
  begin
    ITemListView := ListViewTelefones.Items.Add;
    ITemListView.Caption := IntToStr(_Cliente.Telefones[I].IDClienteTelefone);
    ITemListView.SubItems.Add(_Cliente.Telefones[I].DDD);
    ITemListView.SubItems.Add(_Cliente.Telefones[I].Numero);
  end;
  FreeAndNil(_Cliente);
end;

end.
