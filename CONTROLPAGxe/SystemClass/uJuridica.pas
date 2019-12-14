unit uJuridica;

interface

uses
  uPessoa;

type
  TJuridica = class(TPessoa)
  private
    FCnpj: string;
    Fie: string;
    Fdt_abertura: string;
  public
    property Cnpj: string read FCnpj write FCnpj;
    property Ie: string read Fie write Fie;
    property Dt_abertura: string read Fdt_abertura write Fdt_abertura;
  end;

implementation

end.
