unit uPessoa;

interface

uses
  uContato;

type
  IPessoa = interface
    ['{9D5FCA59-5F92-4A60-BEE0-814E48798E11}']
  procedure SetNome(Value:String);
  function GetNome:string;
  property Nome: String read GetNome write SetNome;
  end;

  TPessoa = class(TContato)
  private
    Fnome_razao: string;
    Fapelido_fantazia: string;
    Fendereço: string;
    Fbairro: string;
    Fcep: string;
    Fcidade: string;
    Festado: string;
  public
    property Nome_razao: string read Fnome_razao write Fnome_razao;
    property Apelido_fantazia: string read Fapelido_fantazia write Fapelido_fantazia;
    property Endereço: string read Fendereço write Fendereço;
    property Bairro: string read Fbairro write Fbairro;
    property Cep: string read Fcep write Fcep;
    property Cidade: string read Fcidade write Fcidade;
    property Estado: string read Festado write Festado;
  end;

implementation

end.
