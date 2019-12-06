unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  IPessoa = interface
  ['{A40D0E15-ED71-4582-9A78-F9B2C3798751}']
  procedure SetNome(Value: String);
  function GetNome: String;
  property Nome: String read GetNome Write SetNome;
  end;
  IFisica = interface
  ['{3B2DA259-F2F5-4139-80C8-C76E1514DDE5}']
  function CPF(Value:String):IFisica;overload;
  function CPF:String;overload;
  function Apelido: String;overload;
  function Apelido(Value:String):IFisica;overload;
  function Pessoa: IPessoa;overload;
  end;
  IJuridica = interface
  ['{3B2DA259-F2F5-4139-80C8-C76E1514DDE5}']
  function CNPJ(Value:String):IJuridica;overload;
  function CNPJ:String;overload;
  function Fantasia(Value:String):IJuridica;overload;
  function Fantasia:String;overload;
  function Pessoa: IPessoa;
  end;

  TPessoaFisica = class(TInterfacedObject, IPessoa, IFisica)
  private
    FNome: String;
    FApelido: String;
    FCpf:String;
  public
    function GetNome: string;
    procedure SetNome(Value: string);
    function CPF(Value: string): IFisica;overload;
    function CPF: String;overload;
    class function New: IFisica;
    function Pessoa: IPessoa;
  function Apelido: String;overload;
  function Apelido(Value:String):IFisica;overload;


  end;

  TPessoaJuridica = class(TInterfacedObject, IPessoa, IJuridica)
  private
    FNome: String;
    FRs: String;
    FCnpj: String;
  public
    function GetNome: string;
    procedure SetNome(Value: string);
    function CNPJ(Value: string): IJuridica;overload;
    function CNPJ: string;overload;

    class function New: IJuridica;
    function Pessoa: IPessoa;
    function Fantasia(Value: string): IJuridica;overload;
    function Fantasia: String;overload;

  end;


  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Const
  FORMATO: String = 'CPF = %s; Apelido = %s; Nome = %s';
Var
  PF: IFisica;
  PJ: IJuridica;
  Msg: string;
begin
  PF := TPessoaFisica.New;
  PF.CPF('123').Apelido('Moises').Pessoa.Nome := 'Moises Teles';
  Msg := Format(FORMATO,[PF.CPF, PF.Apelido, PF.Pessoa.Nome]);
  ShowMessage(Msg);

  PJ := TPessoaJuridica.New;
  PJ.CNPJ('9999');
  PJ.Fantasia('Loja1');
  PJ.Pessoa.Nome := 'RAZAOSOCIAL';

  Msg := Format(FORMATO,[PJ.CNPJ, PJ.Fantasia, PJ.Pessoa.Nome]);
  ShowMessage(Msg);


  PJ.CNPJ('77').Fantasia('Loja2').Pessoa.Nome := 'NOVARS';

  Msg := Format(FORMATO,[PJ.CNPJ, PJ.Fantasia, PJ.Pessoa.Nome]);
  ShowMessage(Msg);


end;



{ TPessoaFisica }

function TPessoaFisica.CPF(Value: string): IFisica;
begin
  Result :=  Self;
  FCpf := Value;
end;

function TPessoaFisica.Apelido: String;
begin
  Result := FApelido;
end;

function TPessoaFisica.Apelido(Value: String): IFisica;
begin
  FApelido :=Value;
  Result :=  Self;
end;

function TPessoaFisica.CPF: String;
begin
   Result := FCpf;
end;

function TPessoaFisica.GetNome: string;
begin
  Result := FNome;
end;

class function TPessoaFisica.New: IFisica;
begin
  Result := TPessoaFisica.Create;
end;

function TPessoaFisica.Pessoa: IPessoa;
begin
Result := Self;
end;

procedure TPessoaFisica.SetNome(Value: string);
begin
  FNome := Value;
end;

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ(Value: string): IJuridica;
begin
  Result := Self;
  FCnpj :=   Value;
end;

function TPessoaJuridica.CNPJ: string;
begin
  Result := FCnpj
end;

function TPessoaJuridica.Fantasia(Value: string): IJuridica;
begin
  FRs := Value;
  Result := Self;
end;

function TPessoaJuridica.Fantasia: String;
begin
  Result := FRs
end;

function TPessoaJuridica.GetNome: string;
begin
  Result := FNome;
end;

class function TPessoaJuridica.New: IJuridica;
begin
Result := TPessoaJuridica.Create;
end;

function TPessoaJuridica.Pessoa: IPessoa;
begin
Result := Self;
end;

procedure TPessoaJuridica.SetNome(Value: string);
begin
  FNome := Value;
end;

end.