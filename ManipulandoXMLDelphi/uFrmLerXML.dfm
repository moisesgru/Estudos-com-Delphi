object FrmLerXML: TFrmLerXML
  Left = 0
  Top = 0
  Caption = 'Como Ler XML em Delphi'
  ClientHeight = 227
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 18
    Top = 16
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome'
  end
  object Label10: TLabel
    Left = 21
    Top = 48
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sexo'
  end
  object BtnLerXML: TButton
    Left = 0
    Top = 193
    Width = 338
    Height = 34
    Caption = 'Ler XML'
    TabOrder = 0
    OnClick = BtnLerXMLClick
  end
  object EdtNome: TEdit
    Left = 69
    Top = 13
    Width = 244
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object EdtSexo: TEdit
    Left = 69
    Top = 45
    Width = 116
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object ListViewTelefones: TListView
    Left = 6
    Top = 77
    Width = 326
    Height = 114
    Columns = <
      item
        Caption = 'C'#243'd.'
      end
      item
        Caption = 'Nome'
      end
      item
        Caption = 'Sexo'
      end>
    TabOrder = 3
    ViewStyle = vsReport
  end
  object XMLDocument: TXMLDocument
    Left = 280
    Top = 40
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog: TOpenDialog
    Filter = 'arquivos do tipo xml |*.xml'
    Left = 208
    Top = 40
  end
end
