unit uBaseForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB;

type
  TfrmBaseForm = class(TForm)
    FadeIn: TTimer;
    FadeOut: TTimer;
    procedure FadeOutTimer(Sender: TObject);
    procedure FadeInTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    constructor Create(AOwner: TComponent; EscToClose, ReturnToTab: Boolean); reintroduce;
  private
    FCanClose: Boolean;
    FEscToClose: Boolean;
    FReturnToTab: Boolean;
    { Private declarations }
  protected
    function GetTitulo: string; virtual;
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  frmBaseForm: TfrmBaseForm;

implementation

{$R *.dfm}
{$REGION 'Eventos do Formulário'}

constructor TfrmBaseForm.Create(AOwner: TComponent; EscToClose, ReturnToTab: Boolean);
begin
  inherited Create(AOwner);
  FEscToClose := EscToClose;
  FReturnToTab := ReturnToTab;
end;

procedure TfrmBaseForm.FormShow(Sender: TObject);
begin
  AlphaBlendValue := 0;
  Caption := GetTitulo;
  FCanClose := False;
  FadeIn.Enabled := True;
end;

function TfrmBaseForm.GetTitulo: string;
begin
 //
end;

procedure TfrmBaseForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (FCanClose = False) then
    FadeOut.Enabled := True;
  CanClose := FCanClose;
end;

procedure TfrmBaseForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        if FEscToClose then
          FadeOut.Enabled := True;
      end;
    VK_RETURN:
      begin
        if FReturnToTab then
          Perform(WM_NEXTDLGCTL, 0, 0);
      end;
  end;
end;
{$ENDREGION 'Eventos do Formulário'}
{$REGION 'TIMERS - FadeIn & FadeOut'}

procedure TfrmBaseForm.FadeInTimer(Sender: TObject);
begin
  AlphaBlendValue := AlphaBlendValue + 15;
  FadeIn.Enabled := not(AlphaBlendValue = 255);
end;

procedure TfrmBaseForm.FadeOutTimer(Sender: TObject);
begin
  AlphaBlendValue := AlphaBlendValue - 15;
  if (AlphaBlendValue = 0) then
  begin
    FadeOut.Enabled := False;
    FCanClose := True;
    Close;
  end;
end;
{$ENDREGION 'TIMERS - FadeIn & FadeOut'}

end.
