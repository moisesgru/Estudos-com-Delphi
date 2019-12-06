object frmDelphiPOOTester: TfrmDelphiPOOTester
  Left = 0
  Top = 0
  Caption = 'Delphi POO Tester'
  ClientHeight = 451
  ClientWidth = 1194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    1194
    451)
  PixelsPerInch = 120
  TextHeight = 17
  object lblHeranca: TLabel
    Left = 21
    Top = 0
    Width = 81
    Height = 27
    Cursor = crHandPoint
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Heran'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lblHerancaClick
  end
  object lblPolimorfismo: TLabel
    Left = 115
    Top = 0
    Width = 124
    Height = 27
    Cursor = crHandPoint
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Polimorfismo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lblPolimorfismoClick
  end
  object lblEncapsulamento: TLabel
    Left = 249
    Top = 0
    Width = 158
    Height = 27
    Cursor = crHandPoint
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Encapsulamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lblEncapsulamentoClick
  end
  object lblAbstracao: TLabel
    Left = 416
    Top = 0
    Width = 96
    Height = 27
    Cursor = crHandPoint
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Abstra'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -22
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = lblAbstracaoClick
  end
  object lblAcelerador: TLabel
    Left = 162
    Top = 280
    Width = 82
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Acelerador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMarca: TLabel
    Left = 426
    Top = 258
    Width = 51
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Marca:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblModelo: TLabel
    Left = 426
    Top = 307
    Width = 49
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Motor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMarcaSet: TLabel
    Left = 519
    Top = 258
    Width = 4
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
  end
  object lblModeloSet: TLabel
    Left = 519
    Top = 282
    Width = 4
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
  end
  object lblTipoCriado: TLabel
    Left = 426
    Top = 233
    Width = 88
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Tipo criado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTipoCriadoSet: TLabel
    Left = 519
    Top = 233
    Width = 4
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
  end
  object Label1: TLabel
    Left = 426
    Top = 282
    Width = 59
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Modelo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMotorSet: TLabel
    Left = 519
    Top = 307
    Width = 4
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
  end
  object lblPortasSet: TLabel
    Left = 519
    Top = 381
    Width = 4
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
  end
  object lblRodas: TLabel
    Left = 426
    Top = 356
    Width = 51
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Rodas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRodasSet: TLabel
    Left = 519
    Top = 356
    Width = 4
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
  end
  object lblPortas: TLabel
    Left = 426
    Top = 381
    Width = 54
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Portas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblVelocidadeSet: TLabel
    Left = 519
    Top = 403
    Width = 4
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
  end
  object lblVelocidade: TLabel
    Left = 426
    Top = 403
    Width = 87
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Velocidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFuel: TLabel
    Left = 426
    Top = 331
    Width = 37
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Fuel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbllblFuelSet: TLabel
    Left = 519
    Top = 331
    Width = 4
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
  end
  object lblZoom: TLabel
    Left = 558
    Top = 12
    Width = 83
    Height = 17
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Alignment = taRightJustify
    Caption = 'Zoom: 100%'
  end
  object Panel1: TPanel
    Left = 10
    Top = 33
    Width = 1172
    Height = 185
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 705
      Top = 0
      Width = 9
      Height = 185
      Cursor = crSizeWE
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ResizeStyle = rsUpdate
      OnMoved = Splitter1Moved
      ExplicitLeft = 650
      ExplicitHeight = 186
    end
    object Memo1: TMemo
      Left = 714
      Top = 0
      Width = 458
      Height = 185
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
    end
    object mmoDescricao: TRichEdit
      Left = 0
      Top = 0
      Width = 705
      Height = 185
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 1
    end
  end
  object btnOnOff: TButton
    Left = 162
    Top = 233
    Width = 243
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Ligar motor'
    TabOrder = 1
    OnClick = btnOnOffClick
  end
  object rgVeiculos: TRadioGroup
    Left = 10
    Top = 233
    Width = 147
    Height = 151
    Cursor = crHandPoint
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    BiDiMode = bdRightToLeftNoAlign
    Caption = 'Escolha o Ve'#237'culo'
    Items.Strings = (
      'Motocicleta'
      'Carro'
      'Caminh'#227'o')
    ParentBiDiMode = False
    TabOrder = 2
    OnClick = rgVeiculosClick
  end
  object btnCriarVeiculo: TButton
    Left = 8
    Top = 391
    Width = 146
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akBottom]
    Caption = 'Criar Ve'#237'culo'
    TabOrder = 3
    OnClick = btnCriarVeiculoClick
  end
  object UpDown1: TUpDown
    Left = 647
    Top = 10
    Width = 67
    Height = 23
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Min = 100
    Max = 200
    Increment = 10
    Orientation = udHorizontal
    TabOrder = 4
    OnClick = UpDown1Click
  end
  object btnAcelerar: TBitBtn
    Left = 162
    Top = 303
    Width = 91
    Height = 25
    Caption = 'Acelerar'
    TabOrder = 5
    OnClick = btnAcelerarClick
  end
  object btnDesacelerar: TBitBtn
    Left = 162
    Top = 331
    Width = 91
    Height = 25
    Caption = 'Desacelerar'
    TabOrder = 6
    OnClick = btnDesacelerarClick
  end
end
