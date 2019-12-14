unit uUsuario;

interface

uses
  uFisica;

type
  TUsuario = class(TFisica)
  private
    FEmail: string;
    procedure SetEmail(const Value: string);
  public
    property Email: string read FEmail write SetEmail;
  end;

implementation

uses
  System.SysUtils;

{ TUsuario }
procedure TUsuario.SetEmail(const Value: string);
var
  axEmail: string;
  Validado: Boolean;
begin
  axEmail := Trim(UpperCase(Value));
  Validado := False;
  Validado := (Pos('@', axEmail) > 1);
  Delete(axEmail, 1, Pos('@', axEmail));
  Validado := (Length(axEmail) > 0) and (Pos('.', axEmail) > 2);

  if (not Validado) then
    raise Exception.Create('Não é um e-mail válido.')
  else
    FEmail := Value;
end;

end.
