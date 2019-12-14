program ProjetoControlPag;

uses
  FMX.Forms,
  uControlPag in 'uControlPag.pas' {frmControlPag},
  uPessoa in 'SystemClass\uPessoa.pas',
  uButtonHelper in 'UtilitiesClass\uButtonHelper.pas',
  uIFTernario in 'UtilitiesClass\uIFTernario.pas',
  uLibrary in 'UtilitiesClass\uLibrary.pas',
  uContato in 'SystemClass\uContato.pas',
  uFisica in 'SystemClass\uFisica.pas',
  uJuridica in 'SystemClass\uJuridica.pas',
  uIPessoa in 'SystemClass\uIPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmControlPag, frmControlPag);
  Application.Run;

end.
