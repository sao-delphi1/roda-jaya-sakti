unit QRRptINStok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, QRCtrls, DB, ADODB, StdCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TfmINQRRptStok = class(TfmRptLv2)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    S_CountStokBarang: TADOStoredProc;
    S_BarangMasuk: TADOStoredProc;
    QRSubDetail1: TQRSubDetail;
    qu002: TADOQuery;
    QRDBText10: TQRDBText;
    quCalc: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qlbTotalStockPrint(sender: TObject; var Value: String);
    procedure qlbTotalAssetPrint(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel11Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari : TDateTime;
    TanggalSampai : TdateTime;
    bChecked,bDetail : Boolean;
    TStock,Total,SubTotal : currency;
  end;

var
  fmINQRRptStok: TfmINQRRptStok;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRRptStok.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmINQRRptStok.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
//var asset,Total : currency;
  var Nilai : currency;
begin
  inherited;
{  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(K.Nilai),0) as Total FROM ('
       +'SELECT B.Transdate,A.PurchaseID,A.ItemID,CASE WHEN B.CurrID=''IDR'' THEN A.Qty*A.Price ELSE A.Qty*A.Price*B.Rate END as Nilai '
       +'FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
       +'SELECT B.Transdate,A.KonsinyasiID,A.ItemID,CASE WHEN A.CurrID=''IDR'' THEN A.Qty*A.Price ELSE A.Qty*A.Price*B.Rate END '
       +'FROM APTrKonsinyasiDt A INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID UNION ALL '
       +'SELECT C.Transdate,A.ReturnID,A.ItemID,CASE WHEN B.CurrID=''IDR'' THEN A.Qty*A.Price*-1 ELSE A.Qty*A.Price*B.Rate*-1 END '
       +'FROM APTrReturnDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID INNER JOIN APTrReturnHd C ON A.ReturnID=C.ReturnID AND C.FlagRetur=''B'' UNION ALL '
       +'SELECT M.Transdate,L.KonReturID,L.ItemID,CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END FROM ('
       +'SELECT A.ItemID,B.CurrID,A.Price,B.Rate,A.SNID FROM APTrPurchaseDtSN A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
       +'SELECT A.ItemID,B.CurrID,B.Price,C.Rate,A.SNID FROM APTrKonsinyasiDtSN A INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID '
       +'INNER JOIN APTrKonsinyasiHd C ON A.KonsinyasiID=C.KonsinyasiID AND B.KonsinyasiID=C.KonsinyasiID) as K '
       +'INNER JOIN ARTrKonReturDtSN L ON K.ItemID=L.ItemID AND K.SNID=L.SNID INNER JOIN ARTrKonReturHd M ON L.KonReturID=M.KonReturID UNION ALL '
       +'SELECT D.Transdate,A.ReturnKonID,A.ItemID,CASE WHEN B.CurrID=''IDR'' THEN A.Qty*B.Price*-1 ELSE A.Qty*B.Price*C.Rate*-1 END '
       +'FROM APTrReturnKonDt A INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID '
       +'INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID INNER JOIN APTrReturnKonHd D ON A.ReturnKonID=D.ReturnKonID UNION ALL '
       +'SELECT B.Transdate,A.KonTransBrgID,A.ItemID,ISNULL(SUM(A.Modal*-1),0) FROM ARTrKonTransBrgDtSN A '
       +'INNER JOIN ARTrKonTransBrgDt C ON A.KonTransBrgID=C.KonTransBrgID AND A.ItemID=C.ItemID '
       +'INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID GROUP BY A.KonTransBrgID,A.ItemID,B.Transdate UNION ALL '
       +'SELECT B.Transdate,A.SaleID,A.ItemID,ISNULL(SUM(A.Modal*-1),0) FROM ARTrPenjualanSN A '
       +'INNER JOIN ARTrPenjualanDt C ON A.SaleID=C.SaleID AND A.ItemID=C.ItemID '
       +'INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID GROUP BY A.SaleID,A.ItemID,B.Transdate UNION ALL '
       +'SELECT D.Transdate,A.ReturnID,A.ItemID,ISNULL(SUM(A.Modal),0) FROM ARTrReturPenjualanDtSN A '
       +'INNER JOIN ARTrReturPenjualanDt C ON A.ReturnID=C.ReturnID AND A.SaleID=C.SaleID AND A.ItemID=C.ItemID '
       +'INNER JOIN ARTrReturPenjualanHd D ON A.ReturnID=D.ReturnID AND C.ReturnID=D.ReturnID AND D.FlagRetur=''B'' '
       +'GROUP BY A.ReturnID,A.ItemID,C.Qty,D.Transdate UNION ALL '
       +'SELECT B.Transdate,A.SaleID,A.ItemID,A.Qty*A.Modal*-1 FROM ARTrPenjualanCost A '
       +'INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID) as K '
       +'WHERE K.ItemID='''+qu002.FieldByName('ItemID').AsString+''' AND '
       +'CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyymmdd',TanggalSampai)+''' ');
    Open;
  end;
  Total := quCalc.FieldByName('Total').AsCurrency;
  if qu002.FieldByName('Stok_Akhir').AsInteger = 0 then asset := 0 else
    asset := Total / qu002.FieldByName('Stok_Akhir').AsInteger;
  lbAsset.Caption := FormatRptkurung(CurrToStr(asset));
  lbTotal.Caption := FormatRptkurung(CurrToStr(Total));  }
  //if bChecked then
   // PrintBand := qu002.FieldByName('Stok_Akhir').AsInteger <> 0;

  Nilai := qu002.FieldByName('Stock').AsCurrency*qu002.FieldByName('Harga').AsCurrency;
  QRLabel10.Caption := FormatRptKurung(CurrToStr(Nilai));
  SubTotal := SubTotal + Nilai;
end;

procedure TfmINQRRptStok.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmINQRRptStok.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  TStock := 0;
  Total := 0;
end;

procedure TfmINQRRptStok.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  //TStock := TStock + qu002.FieldByName('Stok_Akhir').AsCurrency;
  //Total := Total + (qu002.FieldByName('Stok_Akhir').AsCurrency * qu002.FieldByName('HPP').AsCurrency);
end;

procedure TfmINQRRptStok.qlbTotalStockPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Grand Total : '+FormatRptqtykurung(CurrToStr(TStock))
end;

procedure TfmINQRRptStok.qlbTotalAssetPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(Total))
end;

procedure TfmINQRRptStok.QRDBText15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptqtykurung(Value);
end;

procedure TfmINQRRptStok.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  SubTotal := 0;
end;

procedure TfmINQRRptStok.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'GRAND TOTAL : '+FormatRptkurung(CurrToStr(SubTotal));
end;

end.
