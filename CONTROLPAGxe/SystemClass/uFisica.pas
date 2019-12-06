unit uFisica;

interface

uses
  uPessoa;

type
  TFisica = class(TPessoa)
  private
    Fcpf: string;
    Frg: string;
    Fdt_nascimento: string;
  public
    property Dt_Nascimento: string read Fdt_nascimento write Fdt_nascimento;
    property Rg: string read Frg write Frg;
    property Cpf: string read Fcpf write Fcpf;
  end;

implementation

end.
