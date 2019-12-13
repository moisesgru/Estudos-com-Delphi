unit uEndereco;

interface

uses
  uContato;

type
  TEndereco = class(TContato)
  private
    FEndere�o: string;
    FBairro: string;
    FCep: string;
    FCidade: string;
    FEstado: string;
  public
    property Endere�o: string read FEndere�o write FEndere�o;
    property Bairro: string read FBairro write FBairro;
    property Cep: string read FCep write FCep;
    property Cidade: string read FCidade write FCidade;
    property Estado: string read FEstado write FEstado;
  end;

implementation

end.
