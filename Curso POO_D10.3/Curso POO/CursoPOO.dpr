program CursoPOO;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uBaseForm in 'uBaseForm.pas' {frmBaseForm},
  uBaseFormCRUD in 'uBaseFormCRUD.pas' {frmBaseFormCRUD};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
