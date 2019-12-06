unit uDelphiPOOTester;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.ComCtrls, uVeiculo, Vcl.Samples.Spin, Vcl.Buttons;

type
  TfrmDelphiPOOTester = class(TForm)
    lblHeranca: TLabel;
    lblPolimorfismo: TLabel;
    lblEncapsulamento: TLabel;
    lblAbstracao: TLabel;
    Panel1: TPanel;
    Memo1: TMemo;
    mmoDescricao: TRichEdit;
    Splitter1: TSplitter;
    btnOnOff: TButton;
    rgVeiculos: TRadioGroup;
    lblAcelerador: TLabel;
    btnCriarVeiculo: TButton;
    lblMarca: TLabel;
    lblModelo: TLabel;
    lblMarcaSet: TLabel;
    lblModeloSet: TLabel;
    lblTipoCriado: TLabel;
    lblTipoCriadoSet: TLabel;
    Label1: TLabel;
    lblMotorSet: TLabel;
    lblPortasSet: TLabel;
    lblRodas: TLabel;
    lblRodasSet: TLabel;
    lblPortas: TLabel;
    lblVelocidadeSet: TLabel;
    lblVelocidade: TLabel;
    lblFuel: TLabel;
    lbllblFuelSet: TLabel;
    UpDown1: TUpDown;
    lblZoom: TLabel;
    btnAcelerar: TBitBtn;
    btnDesacelerar: TBitBtn;
    procedure lblHerancaClick(Sender: TObject);
    procedure lblPolimorfismoClick(Sender: TObject);
    procedure lblEncapsulamentoClick(Sender: TObject);
    procedure lblAbstracaoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnOnOffClick(Sender: TObject);
    procedure btnCriarVeiculoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgVeiculosClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Splitter1Moved(Sender: TObject);
    procedure btnAcelerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDesacelerarClick(Sender: TObject);
  private
    { Private declarations }
    VeloAtual: Word;
    Veiculo: TVeiculo;
    procedure controlesMotor;
    procedure limparControles;
  public
    { Public declarations }
  end;

var
  frmDelphiPOOTester: TfrmDelphiPOOTester;

implementation

uses
  uMotocicleta, uCarro, uCaminhao;

{$R *.dfm}

procedure TfrmDelphiPOOTester.controlesMotor;
begin
  with Veiculo do
  begin
    OnOffMotorStatus(False);
    lblMarcaSet.Caption := Marca;
    lblModeloSet.Caption := Modelo;
    lblRodasSet.Caption := IntToStr(QtdRodas);
    lblPortasSet.Caption := IntToStr(QtdPortas);
    lblMotorSet.Caption := 'Desligado';
    lbllblFuelSet.Caption := Combustivel;
    btnOnOff.Caption := 'Ligar motor';
    lblMotorSet.font.Color := clMaroon;
  end;
end;

procedure TfrmDelphiPOOTester.limparControles;
begin
  lblTipoCriadoSet.Caption := EmptyStr;
  lblMarcaSet.Caption := EmptyStr;
  lblModeloSet.Caption := EmptyStr;
  lblRodasSet.Caption := EmptyStr;
  lblPortasSet.Caption := EmptyStr;
  lbllblFuelSet.Caption := EmptyStr;
  lblMotorSet.Caption := EmptyStr;
  lblVelocidadeSet.Caption := EmptyStr;
  btnOnOff.Caption := 'Ligar motor';
end;

procedure TfrmDelphiPOOTester.btnAcelerarClick(Sender: TObject);
var
  I, VeloMax: Word;
begin
  VeloMax := 0;
  if Assigned(Veiculo) then
  begin

    VeloMax := Veiculo.Acelerar;
    for I := VeloAtual to VeloMax-1 do
    begin
      Sleep(100);
      VeloAtual := VeloAtual + 1;
      lblVelocidadeSet.Caption := IntToStr(VeloAtual) + ' K/h';
      Application.ProcessMessages;
    end;
  end;
end;

procedure TfrmDelphiPOOTester.btnDesacelerarClick(Sender: TObject);
var
  I, VeloMin: Word;
begin
  VeloMin := 0;
  if Assigned(Veiculo) then
  begin

    VeloMin := Veiculo.Desacelerar;
    for I := VeloMin to VeloAtual-1 do
    begin
      Sleep(100);
      VeloAtual := VeloAtual - 1;
      lblVelocidadeSet.Caption := IntToStr(VeloAtual) + ' K/h';
      Application.ProcessMessages;
    end;
  end;
end;

procedure TfrmDelphiPOOTester.btnCriarVeiculoClick(Sender: TObject);
begin
  limparControles;
  case rgVeiculos.ItemIndex of
    0: // Moto
      begin
        if Assigned(Veiculo) then
          FreeAndNil(Veiculo);
        Veiculo := TMotoclicleta.Create;
        Veiculo.Marca := 'Yamaha';
        Veiculo.Modelo := 'NMAX';
        Veiculo.Combustivel := 'Gasolina';
        Veiculo.QtdRodas := 2;
        Veiculo.QtdPortas := 0;
        lblTipoCriadoSet.Caption := 'Nova Moto';
        controlesMotor;
      end;
    1: // Carro
      begin
        if Assigned(Veiculo) then
          FreeAndNil(Veiculo);
        Veiculo := TCarro.Create;
        Veiculo.Marca := 'Fiat';
        Veiculo.Modelo := 'Palio';
        Veiculo.Combustivel := 'Alcool';
        Veiculo.QtdRodas := 4;
        Veiculo.QtdPortas := 4;
        lblTipoCriadoSet.Caption := 'Novo Carro';
        controlesMotor;
      end;
    2: // Caminhão
      begin
        if Assigned(Veiculo) then
          FreeAndNil(Veiculo);
        Veiculo := TCaminhao.Create;
        Veiculo.Marca := 'Ford';
        Veiculo.Modelo := 'F-1000';
        Veiculo.Combustivel := 'Disel';
        Veiculo.QtdRodas := 10;
        Veiculo.QtdPortas := 2;
        lblTipoCriadoSet.Caption := 'Novo Caminhão';
        controlesMotor;
      end;
  end;
  lblVelocidadeSet.Caption := '0 K/h';
end;

procedure TfrmDelphiPOOTester.btnOnOffClick(Sender: TObject);
begin
  if Assigned(Veiculo) then
  begin
    with Veiculo do
    begin
      if (OnOffMotorStatus() = 'Desligado') then
      begin
        btnOnOff.Caption := 'Desligar motor';
        OnOffMotorStatus(True);
        lblMotorSet.Caption := OnOffMotorStatus;
        lblMotorSet.font.Color := clGreen;
      end
      else if (OnOffMotorStatus = 'Ligado') then
      begin
        {if trkbAcelerador.Position = 0 then
        begin
          btnOnOff.Caption := 'Ligar motor';
          OnOffMotorStatus(False);
          lblMotorSet.Caption := OnOffMotorStatus;
          lblMotorSet.font.Color := clMaroon;
        end
        else
          ShowMessage('Você não pode desligar o veículo em movimento!');}
      end;
    end;
  end
  else
    ShowMessage('Veículo Não Existe');
end;

procedure TfrmDelphiPOOTester.rgVeiculosClick(Sender: TObject);
begin
  if Assigned(Veiculo) then
    FreeAndNil(Veiculo);
  limparControles;
end;

procedure TfrmDelphiPOOTester.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  //mmoDescricao.Zoom := UpDown1.Position;
  //lblZoom.Caption := 'Zoom: '+IntToStr(UpDown1.Position)+'%';
end;

procedure TfrmDelphiPOOTester.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(Veiculo);
end;

procedure TfrmDelphiPOOTester.FormCreate(Sender: TObject);
begin
  VeloAtual := 0;
end;

{$REGION 'controles RichEdit'}

procedure ScrollMemo(Memo: TRichEdit; Direction, Zoom: Integer);
var
  ScrollMessage: TWMVScroll;
  I: Integer;
begin
  ScrollMessage.Msg := WM_VSCROLL;
  Memo.Lines.BeginUpdate;
  try
    for I := 0 to Memo.Lines.Count do
    begin
      ScrollMessage.ScrollCode := Direction;
      ScrollMessage.Pos := 0;
      Memo.Dispatch(ScrollMessage);
    end;
  finally
    //Memo.Zoom := 100;
    Memo.Lines.EndUpdate;
    //Memo.Zoom := Zoom;
  end;
end;

procedure TfrmDelphiPOOTester.lblHerancaClick(Sender: TObject);
var
  Arq: TResourceStream;
begin
  Arq := TResourceStream.Create(HInstance, 'HERANCA', 'RTFFILE');
  try
    Arq.SaveToFile('HERANCA.RTF');
    mmoDescricao.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + '\HERANCA.RTF');
  finally
    Arq.Free;
  end;
  ScrollMemo(mmoDescricao, SB_LINEUP, UpDown1.Position);
end;

procedure TfrmDelphiPOOTester.lblPolimorfismoClick(Sender: TObject);
var
  Arq: TResourceStream;
begin
  Arq := TResourceStream.Create(HInstance, 'POLIMORFISMO', 'RTFFILE');
  try
    Arq.SaveToFile('POLIMORFISMO.RTF');
    mmoDescricao.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + '\POLIMORFISMO.RTF');
  finally
    Arq.Free;
  end;
  ScrollMemo(mmoDescricao, SB_LINEUP, UpDown1.Position);
end;

procedure TfrmDelphiPOOTester.lblAbstracaoClick(Sender: TObject);
begin
  with mmoDescricao do
  begin
    Lines.Clear;
  end;
end;

procedure TfrmDelphiPOOTester.lblEncapsulamentoClick(Sender: TObject);
var
  Arq: TResourceStream;
begin
  Arq := TResourceStream.Create(HInstance, 'ENCAPSULAMENTO', 'RTFFILE');
  try
    Arq.SaveToFile('ENCAPSULAMENTO.RTF');
    mmoDescricao.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + '\ENCAPSULAMENTO.RTF');
  finally
    Arq.Free;
  end;
  ScrollMemo(mmoDescricao, SB_LINEUP, UpDown1.Position);
end;

procedure TfrmDelphiPOOTester.Splitter1Moved(Sender: TObject);
begin
  UpDown1.Left := Splitter1.Left-47;
  lblZoom.Left := Splitter1.Left - 135;
end;

procedure TfrmDelphiPOOTester.FormResize(Sender: TObject);
begin
  mmoDescricao.Width := ((self.Width div 2) + 200);
  UpDown1.Left := Splitter1.Left-47;
  lblZoom.Left := Splitter1.Left-135;
end;
{$ENDREGION 'controles RichEdit'}

end.
