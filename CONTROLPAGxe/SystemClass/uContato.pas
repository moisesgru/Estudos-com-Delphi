unit uContato;

interface

type
  TContato = class
  private
    FTelefone: string;
    FCelular: string;
    FRecado : string;
  public
    property Telefone: string read FTelefone write FTelefone;
    property Celular: string read FCelular write FCelular;
    property Recado: string read FRecado write FRecado;
  end;

implementation

end.
