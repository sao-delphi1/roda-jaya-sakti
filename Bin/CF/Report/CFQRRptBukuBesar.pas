unit CFQRRptBukuBesar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmCFRptBukuBesar = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    qlbNote: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    quAwal: TADOQuery;
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptBukuBesar: TfmCFRptBukuBesar;

implementation

{$R *.dfm}

procedure TfmCFRptBukuBesar.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quAwal,SQL do
  begin
    Close;Clear;
    Add('SELECT DISTINCT ISNULL(SUM(CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE K.Amount*-1 END),0) as Awal FROM ('
       +'SELECT A.RekeningID,B.Transdate,A.Jenis,ISNULL(A.Amount,0) as Amount,B.CurrID,B.Rate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FgPayment=''T'' UNION ALL '
       +'SELECT B.RekeningID,A.Transdate,CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'') THEN ''D'' '
       +'WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'') THEN ''K'' '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'') THEN ''D'' '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'') THEN ''K'' END,'
       +'ISNULL(CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'') THEN JumlahD WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'') THEN JumlahK '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'') THEN JumlahD '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'') THEN JumlahK END,0),A.CurrID,A.Rate FROM CFTrKKBBHd A '
       +'INNER JOIN CFMsBank B ON A.BankID=B.BankID WHERE A.FgPayment=''T'' AND A.FgPayment=''T'' UNION ALL '
       +'SELECT rekeningKas,Transdate,CASE WHEN A.FlagKKBB IN (''KM'',''ARK'') THEN ''D'' ELSE ''K'' END, '
       +'ISNULL(CASE WHEN A.FlagKKBB IN (''KM'',''ARK'') THEN JumlahD WHEN A.FlagKKBB IN (''KK'',''APK'') THEN JumlahK END,0),CurrID,Rate '
       +'FROM CFTrKKBBHd A WHERE FlagKKBB IN (''KM'',''KK'',''ARK'',''APK'') AND FgPayment=''T'' UNION ALL '
       //tabel penjualan
       +'SELECT RekeningU,Transdate,''D'',ISNULL(TTLKj,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL ' 
       +'SELECT RekeningD,Transdate,''D'',ISNULL((STKJ*Discount*0.01),0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningK,Transdate,''K'',ISNULL(StKj,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningO,Transdate,''K'',ISNULL(Ongkir,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningA,Transdate,''K'',ISNULL(Administrasi,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningR,Transdate,''K'',ISNULL(RePack,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       +'SELECT RekeningP,Transdate,''K'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE (STKJ-(STKJ*Discount*0.01))*0.1 END,0),CurrID,Rate FROM ARTrKonInvPelHd UNION ALL '
       //tabel pembelian
       +'SELECT RekeningU,Transdate,''K'',ISNULL(TTLks*Rate,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningK,Transdate,''D'',ISNULL(SubTotal,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningO,Transdate,''D'',ISNULL(Ongkir*Rate,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningR,Transdate,''D'',ISNULL(Repack*Rate,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningA,Transdate,''D'',ISNULL(Administrasi*Rate,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningD,Transdate,''D'',ISNULL(SubTotal*Disc*0.01*Rate,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningDP,Transdate,''D'',ISNULL(DP*Rate,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       +'SELECT RekeningP,Transdate,''D'',ISNULL(PPN*Rate,0),CurrID,Rate FROM ApTrkonsinyasiInvhD UNION ALL '
       //retur pembelian
       +'SELECT RekeningD,Transdate,''D'',ISNULL(TTLRetur,0),''IDR'',1 FROM APTrReturnHd UNION ALL '
       +'SELECT RekeningP,Transdate,''K'',ISNULL(TTLPPN,0),''IDR'',1 FROM APTrReturnHd UNION ALL '
       +'SELECT RekeningK,Transdate,''K'',ISNULL(TTLRetur-TTLPPN+TTLDiskon,0),''IDR'',1 FROM APTrReturnHd UNION ALL '
       +'SELECT RekeningDisc,Transdate,''D'',ISNULL(TTLDiskon,0),''IDR'',1 FROM APTrReturnHd UNION ALL '
       //retur penjualan
       +'SELECT RekeningD,Transdate,''D'',ISNULL(TTLRetur,0),''IDR'',1 FROM ARTrReturPenjualanHd UNION ALL '
       +'SELECT RekeningP,Transdate,''K'',ISNULL(TTLPPN,0),''IDR'',1 FROM ARTrReturPenjualanHd UNION ALL '
       +'SELECT RekeningK,Transdate,''K'',ISNULL(TTLRetur-TTLPPN+TTLDiskon,0),''IDR'',1 FROM ARTrReturPenjualanHd UNION ALL '
       +'SELECT RekeningDisc,Transdate,''D'',ISNULL(TTLDiskon,0),''IDR'',1 FROM ARTrReturPenjualanHd '
       +') as K '
       //+'WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+FormatDateTime('yyyyMMdd',TanggalDari)+''' '
       +'AND K.RekeningID='''+qu002.FieldByName('RekeningID').AsString+''' ');
    //showmessage(sql.Text);
    Open;
  end;

end;

end.
