unit PickDatabase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxButton,
  dxEditor, dxEdLib, dxDBELib, StdCtrls,inifiles;

type
  TfmPickDatabase = class(TfmStdLv0)
    bbOK1: TdxButton;
    Label1: TLabel;
    cmbDatabase: TComboBox;
    bbCancel1: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure bbOK1Click(Sender: TObject);
    procedure bbCancel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SServer,Passdb,database,StClient,ServerVPN,Server,Status : string;
  end;

var
  fmPickDatabase: TfmPickDatabase;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmPickDatabase.FormShow(Sender: TObject);
var MyIniFile : TIniFile;
begin
  inherited;
  cmbDatabase.Items.Clear;
  MyIniFile  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Setting.ini');
  SServer    := Decrypt (MyIniFile.ReadString('Server','02','(Local)'));
  ServerVPN  := Decrypt (MyIniFile.ReadString('Server','06','(Local)'));
  Passdb     := Decrypt (MyIniFile.ReadString('Server','03','upi'));
  StClient   := Decrypt (MyIniFile.ReadString('Server','07','upi'));
  database   := Decrypt (MyIniFile.ReadString('Server','01','upi'));
  updateable := (MyIniFile.ReadString('Server','44','Y'));
  with cmbDatabase do
  begin
    Items.Add (Decrypt(MyIniFile.ReadString('Server','02','UPIData')));
    Items.Add (Decrypt(MyIniFile.ReadString('Server','06','UPIData')));
  end;
  cmbDatabase.ItemIndex :=0;
end;

procedure TfmPickDatabase.bbOK1Click(Sender: TObject);
begin
  inherited;
  if cmbDatabase.Text = '' then
  begin
    ShowMessage('Koneksi belum dipilih');
    cmbDatabase.SetFocus;
    Abort;
  end;
  if cmbDatabase.ItemIndex = 0 then
    Server := SServer
  else
    Server := ServerVPN;
  ModalResult := mrOk ;
end;

procedure TfmPickDatabase.bbCancel1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
  Status := 'Cancel';
end;

end.
