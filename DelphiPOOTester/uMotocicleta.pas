unit uMotocicleta;

interface

uses
  uVeiculo;

type
  TMotoclicleta = class(TVeiculo)
  strict private
    VeloMax: Integer;
    FVelocidade: Word;

  private
    property Velocidade: Word read FVelocidade write FVelocidade;

  public
    function Acelerar(): Word; override;
    function Desacelerar(): Word; override;

  end;

implementation

uses
  System.SysUtils, Vcl.Forms;

{ TMotoclicleta }

function TMotoclicleta.Acelerar(): Word;
begin
  if (OnOffMotorStatus = 'Desligado') then
    Velocidade := 0
  else if Velocidade < 110 then
    Velocidade := Velocidade + 10;

  Result := Velocidade;
end;

function TMotoclicleta.Desacelerar: Word;
begin
  if (OnOffMotorStatus = 'Desligado') then
    Velocidade := 0
  else if Velocidade > 0 then
    Velocidade := Velocidade - 10;

  Result := Velocidade;
end;

end.
