unit Control;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons;

type
  TfmQC = class(TfmStdLv2)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    StatusF : String;
    { Public declarations }
  end;

var
  fmQC: TfmQC;

implementation

{$R *.dfm}

procedure TfmQC.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmQC.FormShow(Sender: TObject);
begin
  inherited;
  if StatusF='H' then
  label2.Visible := False;
end;

procedure TfmQC.Button1Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseRequestDt SET FgOto=''Y'' WHERE PRID='''+Label1.Caption+''' ');
    if StatusF='D' then
    Add('AND ItemID='''+LAbel2.Caption+''' AND NumALL='''+Label3.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Berhasil di-Otorisasi');
  ModalResult := MROK;
end;

procedure TfmQC.Button2Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseRequestDt SET FgOto=''T'' WHERE PRID='''+Label1.Caption+''' ');
    if StatusF='D' then
    Add('AND ItemID='''+LAbel2.Caption+''' AND NumALL='''+Label3.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Pengajuan masih status Waiting');
  ModalResult := MROK;
end;

procedure TfmQC.Button3Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseRequestDt SET FgOto=''X'' WHERE PRID='''+Label1.Caption+''' ');
    if StatusF='D' then
    Add('AND ItemID='''+LAbel2.Caption+''' AND NumALL='''+Label3.Caption+''' ');
    ExecSQL;
  end;
  ShowMessage('Pengajuan telah ditolak');
  ModalResult := MROK;
end;

end.
