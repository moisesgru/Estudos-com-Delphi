unit uFisica;

interface

uses
  uPessoa;

type
  TFisica = class(TPessoa)
  private
    FRg: string;
    FDt_Nascimento: string;
    FApelido: string;
    FCpf: string;
    FNome: string;
  public
    property Nome: string read FNome write FNome;
    property Apelido: string read FApelido write FApelido;
    property Dt_Nascimento: string read FDt_Nascimento write FDt_Nascimento;
    property Rg: string read FRg write FRg;
    property Cpf: string read FCpf write FCpf;
  end;

implementation


end.
