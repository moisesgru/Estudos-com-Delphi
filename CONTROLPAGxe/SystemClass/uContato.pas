unit uContato;

interface

type
  TContato = class
  private
    Ftelefone: string;
    Fcelular: string;
  published
    property Telefone: string read Ftelefone write Ftelefone;
    property Celular: string read Fcelular write Fcelular;
  end;

implementation

end.
