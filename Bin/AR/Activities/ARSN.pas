unit ARSN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, StdCtrls, dxCore, dxButton, ExtCtrls, dxExEdtr,
  dxCntner, DB, ADODB, dxEditor, dxEdLib;

type
  TfmARSN = class(TfmStdLv0)
    bbOK1: TdxButton;
    bbCancel1: TdxButton;
    Label1: TLabel;
    Label2: TLabel;
    cbNomer: TComboBox;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bbOK1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Voucher,Tanggal,Flag,sampai : string;
  end;

var
  fmARSN: TfmARSN;

implementation

{$R *.dfm}

procedure TfmARSN.FormShow(Sender: TObject);
begin
  inherited;
  Label3.Caption := Voucher;
  if Flag = 'DO' then
  begin
    Label1.Caption := 'NO DO LAMA :';
    Label2.Caption := 'NO DO BARU :';
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT TOP 5 LEFT('''+Voucher+''',11)+VoucherNo as Nomer FROM AllSale WHERE VoucherNo NOT IN ('
         +'SELECT RIGHT(KonTransBrgID,4) FROM ARTrKonTransBrgHd '
         +'WHERE CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+Tanggal+''' AND '''+sampai+''') '
         +'AND VoucherNo < (SELECT RIGHT(KonTransBrgID,4) FROM ARTrKonTransBrgHd WHERE KonTransbrgID='''+Voucher+''') '
         +'ORDER BY VoucherNo');
      Open;
    end;
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT TOP 5 LEFT('''+Voucher+''',11)+VoucherNo as Nomer FROM AllSale WHERE VoucherNo NOT IN ('
         +'SELECT RIGHT(KonInvPelID,4) FROM ARTrKonInvPelHd '
         +'WHERE CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+Tanggal+''' AND '''+sampai+''') '
         +'AND VoucherNo < (SELECT RIGHT(KonInvPelID,4) FROM ARTrKonInvPelHd WHERE KonInvPelID='''+Voucher+''') '
         +'ORDER BY VoucherNo');
      Open;
    end;
  end;
  quAct.First;
  cbNomer.Clear;
  While Not quAct.Eof do
  Begin
    cbNomer.Items.Add(quAct.Fieldbyname('Nomer').AsString);
    quAct.Next;
  End;
  cbNomer.ItemIndex:=0;
end;

procedure TfmARSN.bbOK1Click(Sender: TObject);
begin
  inherited;
  if TRIM(cbNomer.Text) = '' then
  begin
    ShowMessage('Field No tidak boleh kosong');
    cbNomer.SetFocus;
    Abort;
  end;
  if Flag = 'DO' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrKonTransBrgHd SET KonTransBrgID='''+cbNomer.Text+''' '
         +'WHERE KonTransbrgID='''+Voucher+''' ');
      Add('UPDATE AllItem SET VoucherNo='''+cbNomer.Text+''' '
         +'WHERE VoucherNo='''+Voucher+''' ');
      ExecSQL;
    end;
  end else
  begin
  with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrKonInvPelHd SET KonInvPelID='''+cbNomer.Text+''' '
         +'WHERE KonInvPelID='''+Voucher+''' ');
      ExecSQL;
    end;
  end;
  ModalResult:=mrOk;
end;

end.
