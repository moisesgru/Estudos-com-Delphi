unit uIFTernario;

interface

type
  TIFTernario = class

  private

  public
    constructor Create;
    destructor Destroy; override;
    class function instantiateObj: TIFTernario;
    function IFTernario<T>(Condition: boolean; T1, T2: T): T;
  end;

function __IFTernario: TIFTernario;

implementation

var
  InstanciaIFTernario: TIFTernario = nil;

function __IFTernario: TIFTernario;
begin
  Result := TIFTernario.instantiateObj;
end;

class function TIFTernario.instantiateObj: TIFTernario;
begin
  if InstanciaIFTernario = nil then
    InstanciaIFTernario := TIFTernario.Create;
  Result := InstanciaIFTernario;
end;

{ TIFTernario }

constructor TIFTernario.Create;
begin
  inherited;
  // algo
end;

destructor TIFTernario.Destroy;
begin
  // algo
  inherited;
end;

function TIFTernario.IFTernario<T>(Condition: boolean; T1, T2: T): T;
begin
  if (Condition) then
    Result := T1
  else
    Result := T2;
end;

initialization

finalization
if InstanciaIFTernario <> nil then
  InstanciaIFTernario.Free;

end.
