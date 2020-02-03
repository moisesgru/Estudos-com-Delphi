program Trabalhando_XML_Delphi;

uses
  Vcl.Forms,
  uFrmEscreverXML in 'uFrmEscreverXML.pas' {FrmEscreverXML},
  uFrmLerXML in 'uFrmLerXML.pas' {frmLerXML},
  uCliente in 'Model\uCliente.pas',
  uClienteTelefone in 'uClienteTelefone.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLerXML, frmLerXML);
  Application.Run;
end.
