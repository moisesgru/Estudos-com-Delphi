unit uCliente;

interface

uses uClienteTelefone, System.Generics.Collections;

type
  TCliente = class
  private
    FTelefones: TObjectList<TClienteTelefone>;
    FNome: string;
    FSexo: string;
  public
    property Nome : string read FNome write FNome;
    property Sexo : string read FSexo write FSexo;
    property Telefones : TObjectList<TClienteTelefone> read FTelefones write FTelefones;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils;

{ TCliente }

constructor TCliente.Create;
begin
  inherited Create;
  FTelefones := TObjectList<TClienteTelefone>.Create;
end;


destructor TCliente.Destroy;
begin
  if Assigned(FTelefones) then
    FreeAndNil(FTelefones);

  inherited;
end;

end.
