unit uControlPag;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, uButtonHelper, uLibrary, FMX.Edit;

type
  TfrmControlPag = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControlPag: TfrmControlPag;

implementation

{$R *.fmx}

uses uIFTernario, uFisica;

procedure TfrmControlPag.Button1Click(Sender: TObject);
var aux : String;
    auxBol : boolean;
begin
  auxBol := Button1.Switch('ON', 'OFF');
  aux := __IFTernario.IFTernario<String>(auxBol, 'True', 'False' );
  ShowMessage(aux);
end;

procedure TfrmControlPag.Button2Click(Sender: TObject);
var aux : String;
    auxBol : boolean;
begin
  auxBol := Button2.Switch('Ligado', 'Desligado');
  aux := __IFTernario.IFTernario<String>( auxBol, 'True', 'False' );
  ShowMessage(aux);
end;

procedure TfrmControlPag.Button3Click(Sender: TObject);
var fisica : TFisica;
begin
  fisica := TFisica.Create;
  try
    fisica.Nome_razao := 'Moises';
    fisica.Cpf := '318';
    fisica.Telefone := '11';
    ShowMessage(fisica.Nome_razao+' - '+fisica.Cpf+' - '+fisica.Telefone);
  finally
    fisica.Free;
  end;
end;

procedure TfrmControlPag.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
