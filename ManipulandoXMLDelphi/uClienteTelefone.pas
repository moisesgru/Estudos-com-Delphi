unit uClienteTelefone;

interface

type
  TClienteTelefone = class
  private
    FDDD : string;
    FNumero : string;
    FIdClienteTelefone : Integer;
  public
    property DDD : string read FDDD write FDDD;
    property Numero : string read FNumero write FNumero;
    property IdClienteTelefone : Integer read FIdClienteTelefone write FIdClienteTelefone;
  end;

implementation

end.
