unit ARQRRptSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptSales = class(TfmRptLv0)
    qu002: TADOQuery;
    ds002: TDataSource;
    qu003: TADOQuery;
    bndCH: TQRBand;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    bnd002: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    qlbHarga: TQRLabel;
    qlbSubTotal: TQRLabel;
    qlbJumlah: TQRLabel;
    qlbStock: TQRLabel;
    qlbSuppName: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    quCalc: TADOQuery;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel8: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    GroupFooterBand1: TQRBand;
    GroupFooterBand2: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel29: TQRLabel;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Total,STotal,subtotal,GT : currency;
  end;

var
  fmARQRRptSales: TfmARQRRptSales;

implementation

uses DateUtils, MyUnit;
{$R *.dfm}

procedure TfmARQRRptSales.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var sisa,Stok : currency;
begin
  inherited;
  //qlbTgl.Caption := inttostr(DaysBetween(qu002.FieldByName('TglKirim').AsDateTime, Date))+' Hari';
 { sisa := qu003.fieldbyName('Qty').asCurrency-qu003.fieldbyname('QtyK').asCurrency;
  qlbJumlah.Caption := currtostr(sisa);
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN K.FgTrans < 50 THEN K.QTy ELSE K.Qty* -1 END),0) as Stock '
       +'FROM ALLITEM K WHERE CONVERT(VARCHAR(8),K.TransDate,112)<='''+FormatDateTime('YYYYMMDD',Date)+''''
       +'AND K.ItemID='''+qu003.FieldByName('ItemID').AsString+''' ');
    Open;
  end;
  Stok := quCalc.fieldbyname('Stock').asCurrency;

  if Stok = 0 then
    qlbstock.caption := '-'
  else
    qlbStock.caption := CurrToStr(Stok); }

  Total := qu003.fieldbyname('Qty').asCurrency*qu003.fieldbyname('Price').asCurrency;
end;

procedure TfmARQRRptSales.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(currtostr(Total));
end;

procedure TfmARQRRptSales.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  STotal := STotal+Total;
end;

procedure TfmARQRRptSales.QRLabel23Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(currtostr(STotal));
end;

procedure TfmARQRRptSales.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(currtostr(STotal));
end;

procedure TfmARQRRptSales.QRLabel27Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(currtostr(STotal));
end;

procedure TfmARQRRptSales.GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  subtotal := subtotal + STotal;
end;

procedure TfmARQRRptSales.GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GT := GT + Subtotal;
end;

procedure TfmARQRRptSales.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GT := 0;
end;

procedure TfmARQRRptSales.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  subtotal := 0;
end;

procedure TfmARQRRptSales.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  STotal := 0;
end;

procedure TfmARQRRptSales.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

end.

