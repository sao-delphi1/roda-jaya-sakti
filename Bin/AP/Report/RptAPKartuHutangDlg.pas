unit RptAPKartuHutangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmAPRptKartuHutangDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListSupp: TdxDBGridMaskColumn;
    dbgListSuppName: TdxDBGridMaskColumn;
    dt1: TdxDateEdit;
    bbCancel: TdxButton;
    CBInfo: TCheckBox;
    cbxOuts: TCheckBox;
    procedure rbAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPRptKartuHutangDlg: TfmAPRptKartuHutangDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, Search;

{$R *.dfm}

procedure TfmAPRptKartuHutangDlg.rbAllClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmAPRptKartuHutangDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date:=date;
end;

procedure TfmAPRptKartuHutangDlg.bbPreviewClick(Sender: TObject);
var a: integer;
begin
  inherited;
  with TfmApQRRptKartuHutang.Create(Self) do
  try
    tglDari:=dt1.Date;
    qrlTitle.Caption := laTitle.Caption;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);

    if cbxOuts.Checked then
      bCheckced := True
    else
      bCheckced := False;
    if CBInfo.Checked then
      ChildBand1.Enabled := TRUE
    else
      ChildBand1.Enabled := False;

    With qu001,SQL do
    Begin
       Close;Clear;
       add('SELECT DISTINCT K.SuppID,L.SuppName,(K.SuppID+''-''+L.SuppName) as Supp FROM ('
          +'SELECT A.Transdate,A.TTLPb, ISNULL((SELECT ISNULL(Sum(Price*Qty),0) FROM APTrReturnDt F INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID '
          +'WHERE G.FlagRetur=''B'' AND F.purchaseID=A.PurchaseID  AND G.SuppID=A.SuppID AND '
          +'CONVERT(VARCHAR(8),G.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Retur,'
          +'ISNULL((SELECT ISNULL(SUM(Amount),0) FROM CfTrkkbbhD M INNER JOIN cftrkkbbdt N ON M.voucherid=N.voucherid '
          +'WHERE N.note=A.PurchaseID AND M.Actor=A.SuppID AND CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Bayar,'
          +'A.SuppID  FROM APTrPurchaseHd A UNION ALL SELECT A.Transdate,A.TTLKs,0,'
          +'ISNULL((SELECT ISNULL(SUM(Amount),0) FROM CfTrkkbbhD M INNER JOIN cftrkkbbdt N ON M.voucherid=N.voucherid '
          +'WHERE N.note=A.KonsinyasiInvID AND M.Actor=A.SuppID AND CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0)+ '
          +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentKonsHd M INNER JOIN APTrPaymentKonsDt N ON M.PaymentKonsID=N.PaymentKonsID '
          +'WHERE N.KonsinyasiInvID=A.KonsinyasiInvID AND M.SuppID=A.SuppID AND CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Bayar, '
          +'A.SuppID  FROM APTrKonsinyasiInvHD A UNION ALL SELECT A.Transdate,A.Amount,0,ISNULL((SELECT ISNULL(SUM(Amount),0) FROM CfTrkkbbhD M INNER JOIN cftrkkbbdt N ON M.voucherid=N.voucherid '
          +'WHERE N.note=A.VoucherNo AND M.Actor=A.SuppID AND '
          +'CONVERT(VARCHAR(8),M.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Bayar,A.SuppID FROM CFTrCreditCard A) as K '
          +'INNER JOIN APMsSupplier L ON K.SuppID=L.SuppID '
          +'WHERE CONVERT(VARCHAR(8),K.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
          +'AND ISNULL(K.TTLPb-K.Retur ');
         if bCheckced then
           Add('-K.Bayar');
         Add(',0)>0 ');
       if rbSelect.Checked then
       Add(' AND K.SuppID IN '+SelGrid(quAct,dbgList,'SuppID'));
       Add('ORDER BY K.SuppId');
       ShowMessage(sql.text);
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
    End;

    With qu002,SQL do
    Begin
       Close;Clear;
       add('SELECT DISTINCT K.SuppID,K.CurrID,L.CurrName,(K.CurrID+''-''+L.CurrName) as Valuta FROM ('
          +'SELECT B.SuppID,B.CurrID,B.TTLPb,B.Transdate,ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F '
          +'INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID WHERE G.FlagRetur=''B'' AND F.purchaseID=B.PurchaseID  AND G.SuppID=B.SuppID '
          +'AND CONVERT(VARCHAR(8),G.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Retur,'
          +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentHd M INNER JOIN APtrPaymentDt N ON M.PaymentID=N.PaymentID '
          +'WHERE N.PurchaseID=B.PurchaseID AND M.SuppID=B.SuppID AND '
          +'CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Bayar '
          +'FROM APTrPurchaseHd B UNION ALL SELECT B.SuppID,B.CurrID,B.TTLKs,B.Transdate,0, '
          +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentHd M INNER JOIN APTrPaymentDt N ON M.PaymentID=N.PaymentID '
          +'WHERE N.PurchaseID=B.KonsinyasiInvID AND M.SuppID=B.SuppID AND CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0)+ '
          +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentKonsHd M INNER JOIN APTrPaymentKonsDt N ON M.PaymentKonsID=N.PaymentKonsID '
          +'WHERE N.KonsinyasiInvID=B.KonsinyasiInvID AND M.SuppID=B.SuppID AND CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) '
          +'FROM APTrKonsinyasiInvHD B UNION ALL SELECT B.SuppID,B.CurrID,B.Amount,B.Transdate,0,ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentHd M '
          +'INNER JOIN APTrPaymentDt N ON M.PaymentID=N.PaymentID WHERE N.PurchaseID=B.VoucherNo AND M.SuppID=B.SUppID AND '
          +'CONVERT(VARCHAR(8),M.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) FROM CFTrCreditCard B) as K INNER JOIN SAMsValuta L ON K.CurrID=L.CurrID '
          +'WHERE K.SuppID=:SuppID AND CONVERT(VARCHAR(8),K.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
          +'AND ISNULL(K.TTLPb-K.Retur');
       if bCheckced then
          Add('-K.Bayar');
       Add(',0)>0 ORDER By K.SuppID');
       Parameters.ParamByName('SuppId').DataType := ftString;
       Open;
    End;

    qu003.Open;
    qu004.Open;

    if Sender=bbPreview then
       MyReport.PreviewModal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmAPRptKartuHutangDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := ' SELECT SuppName as Nama_Supplier ,SuppId as Kode_Supplier'
                   +' FROM APMsSupplier A '
                   +' ORDER BY SuppID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SuppID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
