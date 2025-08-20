unit QRRptAPKartuHutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmAPQRRptKartuHutang = class(TfmRptLv4)
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    ChildBand1: TQRChildBand;
    qlbSerilNumber: TQRLabel;
    qu004: TADOQuery;
    quStatus: TADOQuery;
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari  : TDateTime;
    tglsmp   : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    bCheckced : Boolean;
    SerialNumber,SN : string;
  end;

var
  fmAPQRRptKartuHutang: TfmAPQRRptKartuHutang;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmAPQRRptKartuHutang.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  With qu003,SQL do
    Begin
       Close;Clear;
       add('SELECT K.SuppID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,K.PurchaseID as IP,ISNULL(K.Kredit,0) as Kredit,'
          +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentDt L INNER JOIN APTrPaymentHd H ON L.PaymentID=H.PaymentID '
          +'WHERE L.PurchaseID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) + '
          +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.PaymentKonsID '
          +'WHERE L.KonsinyasiInvID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) as Debit '
          +'FROM (SELECT A.SuppID,A.TransDate,A.PurchaseID,A.CurrID,ISNULL(A.TTLPb,0)-ISNULL((Select ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F '
          +'INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID WHERE G.FlagRetur=''B'' AND F.purchaseID=A.PurchaseID AND G.SuppID=A.SuppID AND '
          +'CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) as Kredit '
          +'FROM APTrPurchaseHd A UNION ALL SELECT A.SuppID,A.TransDate,A.KonsinyasiInvID,A.CurrID,ISNULL(A.TTLKs,0) FROM APTrKonsinyasiInvHD A UNION ALL '
          +'SELECT A.SuppID,A.Transdate,A.VoucherNo,A.CurrID,ISNULL(A.Amount,0) FROM CFTrCreditCard A) as K '
          +'WHERE K.SuppID = '''+qu001.Fieldbyname('SuppId').AsString+''' AND K.CurrID='''+qu002.FieldByname('CurrId').AsString+''' AND K.Kredit <> 0 ');
       if bCheckced then
         add('AND ISNULL(K.Kredit-ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentDt L INNER JOIN APTrPaymentHd H ON L.PaymentID=H.PaymentID '
            +'WHERE L.PurchaseID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDateTime('yyyyMMdd',tglDari)+'''),0)-'
            +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.PaymentKonsID '
            +'WHERE L.KonsinyasiInvID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDateTime('yyyyMMdd',tglDari)+'''),0),0) > 0 ');
       add('AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''' '
          +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112)');
       Open;
    End;

end;

procedure TfmAPQRRptKartuHutang.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutang.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Hutang Per Supplier '+qu001.Fieldbyname('SuppName').AsString+' Per '+qu002.FieldByname('CurrId').AsString+' :';
end;

procedure TfmAPQRRptKartuHutang.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
  TotalUSD :=0;
end;

procedure TfmAPQRRptKartuHutang.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrToStr(TotalIDR));
end;

procedure TfmAPQRRptKartuHutang.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrToStr(TotalUSD));
end;

procedure TfmAPQRRptKartuHutang.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  If LeftJust(UpperCase(qu002.FieldByName('CurrId').AsString),3)='IDR' Then
  Begin
   TotalIDR:=TotalIDR+(qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency);
  End
  Else
  Begin
   TotalUSD:=TotalUSD+(qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency);
  End;
end;

procedure TfmAPQRRptKartuHutang.ChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  with qu004,SQL do
  begin
    Close;Clear;
    Add('SELECT K.SNID,K.FgJual FROM ('
       +'SELECT PurchaseID,SNID,FgJual FROM APTrPurchaseDtSN UNION ALL SELECT A.KonsinyasiInvID,A.SNID,B.FgJual '
       +'FROM APTrKonsinyasiInvDtSN A INNER JOIN APTrKonsinyasiDtSN B ON A.KonsinyasiID=B.KonsinyasiID AND '
       +'A.SNID=B.SNID AND A.ItemID=B.ItemID) as K '
       +'WHERE K.PurchaseID='''+qu003.FieldByName('IP').AsString+''' '
       +'AND K.SNID NOT IN (SELECT SNID FROM APTrReturnSN)');
    Open;
  end;
  PrintBand := qu004.FieldByName('SNID').AsString <> '';
  while not qu004.Eof do
  begin
    SN := qu004.FieldbyName('SNID').AsString;
    with quStatus,SQL do
    begin
      Close;Clear;
      Add('SELECT K.SNID,K.SaleID,K.Price,L.CustName,CONVERT(VARCHAR(8),K.Transdate,112) as Tgl,K.Status, '
         +'CASE WHEN K.CurrID=''IDR'' THEN ''Rp'' ELSE ''$'' END as CurrID FROM ( '
         +'SELECT A.SNID,A.SaleID,A.Price,B.CustID,B.Transdate,1 as Status,B.CurrID '
         +'FROM ARTrPenjualanSN A INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID UNION ALL '
         +'SELECT A.SNID,A.KonTransBrgID,0,B.CustID,B.Transdate,2,'''' '
         +'FROM ARTrKonTransBrgDtSN A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID) as K '
         +'INNER JOIN ARMsCustomer L ON K.CustID=L.CustID WHERE K.SNID = '''+SN+''' ');
      Open;
    end;
    if (quStatus.FieldByName('SNID').AsString = '') or (qu004.FieldByName('FgJual').AsString = 'T') then
      SerialNumber := SerialNumber +#13+ qu004.FieldbyName('SNID').AsString +' (Stock)'
    else
    if quStatus.FieldByName('Status').AsString = '1' then
      SerialNumber := SerialNumber +#13+ quStatus.FieldbyName('SNID').AsString +' Terjual ke customer '+quStatus.FieldByName('CustName').AsString +
                     ' dengan harga '+quStatus.FieldByName('CurrID').AsString+' '+ FormatRptqtykurung(quStatus.FieldByName('Price').AsString)+' ('+quStatus.FieldByName('SaleID').AsString+')'
    else
      SerialNumber := SerialNumber +#13+ quStatus.FieldbyName('SNID').AsString +' Konsinyasi ke customer '+quStatus.FieldByName('CustName').AsString +
                     ' ('+quStatus.FieldByName('SaleID').AsString+')';
    qu004.Next;
  end;
  if SerialNumber <> '' then
    qlbSerilNumber.Caption := 'Serial Number: '+SerialNumber
  else
    qlbSerilNumber.Caption := '' ;
  SerialNumber := '';
end;

end.
