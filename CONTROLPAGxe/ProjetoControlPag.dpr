program ProjetoControlPag;

uses
  FMX.Forms,
  uControlPag in 'uControlPag.pas' {frmControlPag},
  uButtonHelper in 'UtilitiesClass\uButtonHelper.pas',
  uIFTernario in 'UtilitiesClass\uIFTernario.pas',
  uLibrary in 'UtilitiesClass\uLibrary.pas',
  uUsuario in 'SystemClass\uUsuario.pas',
  uContato in 'SystemClass\uContato.pas',
  uEndereco in 'SystemClass\uEndereco.pas',
  uFisica in 'SystemClass\uFisica.pas',
  uPessoa in 'SystemClass\uPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmControlPag, frmControlPag);
  Application.Run;

end.
