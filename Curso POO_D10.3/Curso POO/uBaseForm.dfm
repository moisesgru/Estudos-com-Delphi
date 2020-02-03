object frmBaseForm: TfrmBaseForm
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 55
  Caption = 'Formul'#225'rio Base'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FadeIn: TTimer
    Enabled = False
    Interval = 5
    OnTimer = FadeInTimer
    Left = 584
    Top = 56
  end
  object FadeOut: TTimer
    Enabled = False
    Interval = 5
    OnTimer = FadeOutTimer
    Left = 584
    Top = 8
  end
end
