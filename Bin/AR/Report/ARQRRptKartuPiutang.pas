unit ARQRRptKartuPiutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmARQRRptKartuPiutang = class(TfmRptLv4)
    QRDBText1: TQRDBText;
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
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    qrlValuta: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Total : Currency;
    bCheckced : boolean;
  end;

var
  fmARQRRptKartuPiutang: TfmARQRRptKartuPiutang;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptKartuPiutang.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
{  With qu003,SQL do
    Begin
       Close;Clear;
       Add('SELECT DISTINCT K.CustID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,CONVERT(VARCHAR(8),K.Transdate,112),'
          +'CASE WHEN K.Nama='''' THEN K.SaleID ELSE K.SaleID+'' (''+K.Nama+'')'' END as IP,ISNULL(K.TTLPj-K.Kredit,0) as Kredit,'
          +'ISNULL(K.Debit,0) as Debit FROM(SELECT A.FlagCounter,A.CustID,A.CurrID,A.Transdate,A.SaleID,A.Nama,ISNULL(A.TTLPj,0) as TTLPj,'
          +'ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM ARTrReturPenjualanDt F INNER JOIN ARTrReturPenjualanHd G '
          +'ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=A.SaleId '
          +'AND G.CustId=A.CustId AND CONVERT(VARCHAR(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) as Kredit,'
          +'(SELECT ISNULL(SUM(L.ValuePayment),0) FROM ARTrPiutangDt L INNER JOIN ARTrPiutangHd Q ON L.PiutangId=Q.PiutangId '
          +'WHERE L.SaleID = A.SaleID AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''') as Debit '
          +'FROM ARTrPenjualanHd A UNION ALL SELECT ''L'',A.Custid,A.CurrID,A.Transdate,A.KonInvPelID,'''',ISNULL(A.TTLKj,0),0,'
          +'(SELECT ISNULL(SUM(L.ValuePayment),0) FROM ARTrPiutangDt L INNER JOIN ARTrPiutangHd Q ON L.PiutangId=Q.PiutangId '
          +'WHERE L.SaleID = A.KonInvPelID AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''') '
          +'FROM ARTrKonInvPelHd A) as K WHERE K.CustID='''+qu001.FieldByName('CustID').AsString+''' '
          +'AND K.CurrID='''+qu002.FieldByName('CurrID').AsString+''' AND ISNULL(K.TTLPj-K.Kredit,0)<>0 ');
       if bCheckced then
          Add(' AND ISNULL(K.TTLPj-K.Kredit-K.Debit,0)<>0 ');
       if FgTrans = 'L' then
          Add('AND K.FlagCounter<>''C'' ');
       if FgTrans = 'C' then
          Add('AND K.FlagCounter=''C'' ');
       Add(' AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''' '
          +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112)');
       Open;
    End;}
end;

procedure TfmARQRRptKartuPiutang.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutang.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  Total :=0;
end;

procedure TfmARQRRptKartuPiutang.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Total := Total + (qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency-qu003.FieldByName('Retur').AsCurrency);
end;

procedure TfmARQRRptKartuPiutang.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(CurrtoStr(Total));
end;

end.
