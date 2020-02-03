unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uBaseFormCRUD;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
{$WARN CONSTRUCTING_ABSTRACT OFF}
  frmBaseFormCRUD := TfrmBaseFormCRUD.Create(Self, False, True);
  frmBaseFormCRUD.ClientDataSet1.LoadFromFile('C:\Users\moise\Downloads\NewCRUD\Teste.xml');
  frmBaseFormCRUD.ShowModal;
{$WARN CONSTRUCTING_ABSTRACT DEFAULT}
end;

end.
