unit uCarro;

interface

uses
  uVeiculo;

  type
  TCarro = class(Tveiculo)
  strict private
    FVelocidade: Word;

  private
    property Velocidade: Word read FVelocidade write FVelocidade;

  public
    function Acelerar(): Word; override;

  end;

implementation

{ TCarro }

function TCarro.Acelerar(): Word;
begin
  if (OnOffMotorStatus = 'Desligado') then
    Velocidade := 0
  else
    {case Value of
      0:
        Velocidade := 0;
      1:
        Velocidade := 5;
      2:
        Velocidade := 10;
      3:
        Velocidade := 50;
      4:
        Velocidade := 100;
      5:
        Velocidade := 140;
    end;}
  Result := Velocidade;
end;

end.
