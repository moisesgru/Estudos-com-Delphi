unit uButtonHelper;

interface

uses
  FMX.Controls;

type
  TSwitchBtn = class helper for TButton
  public
    function Switch(strOn, strOff: string): boolean;
  end;

implementation

{ TSwitchBtn }
function TSwitchBtn.Switch(strOn, strOff: string): boolean;
begin
  if (Self.Text = strOn) then
  begin
    Self.Text := strOff;
    result := False;
  end
  else
  begin
    Self.Text := strOn;
    result := True;
  end;
end;

end.
