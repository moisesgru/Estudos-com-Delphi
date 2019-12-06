unit uVeiculo;

interface

uses
  System.SysUtils;

type
  TVeiculo = class

  strict private
    FMarca: string;
    FModelo: string;
    FCombustivel: string;
    FMotorPower: Boolean;
    FQtdRodas: Word;
    FQtdPortas: Word;
    FVelocidade: Word;

  private
    property MotorPower: Boolean read FMotorPower write FMotorPower;
    property Velocidade: Word read FVelocidade write FVelocidade;

  published
    property Marca: string read FMarca write FMarca;
    property Modelo: string read FModelo write FModelo;
    property Combustivel: string read FCombustivel write FCombustivel;
    property QtdRodas: Word read FQtdRodas write FQtdRodas;
    property QtdPortas: Word read FQtdPortas write FQtdPortas;

  public
    function OnOffMotorStatus(OnOff: Boolean) : String; overload;
    function OnOffMotorStatus() : String; overload;
    function Acelerar(): Word; virtual; abstract;
    function Desacelerar(): Word; virtual; abstract;

  end;

implementation

{ TVeiculo }

function TVeiculo.OnOffMotorStatus(OnOff: Boolean) : String;
begin
  if (OnOff = True) then
    MotorPower := True
  else if (OnOff = False) then
    MotorPower := False;

  Result := '';
end;

function TVeiculo.OnOffMotorStatus(): String;
begin
  if MotorPower then
    Result := 'Ligado'
  else
    Result := 'Desligado';
end;

end.
