program DelphiPOOTester;

uses
  Vcl.Forms,
  uDelphiPOOTester in 'uDelphiPOOTester.pas' {frmDelphiPOOTester},
  uVeiculo in 'uVeiculo.pas',
  uMotocicleta in 'uMotocicleta.pas',
  uCarro in 'uCarro.pas',
  uCaminhao in 'uCaminhao.pas';

{$R RESOURCE.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDelphiPOOTester, frmDelphiPOOTester);
  Application.Run;
end.
