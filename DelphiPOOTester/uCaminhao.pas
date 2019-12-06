unit uCaminhao;

interface

uses
  uVeiculo;

  type
  TCaminhao = class(TVeiculo)
  strict private
    FVelocidade: Word;

  private
    property Velocidade: Word read FVelocidade write FVelocidade;

  public
    function Acelerar(): Word; override;

  end;

implementation

{ TCaminhao }

function TCaminhao.Acelerar(): Word;
begin
  if (OnOffMotorStatus = 'Desligado') then
    Velocidade := 0
  else
    {case Value of
      0:
        Velocidade := 0;
      1:
        Velocidade := 10;
      2:
        Velocidade := 30;
      3:
        Velocidade := 60;
      4:
        Velocidade := 80;
      5:
        Velocidade := 90;
    end;}
  Result := Velocidade;
end;

end.
