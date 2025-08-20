unit INQRRptHistoryStok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmINQRRptHistoryStok = class(TfmRptLv3)
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    S_CountStokBarang: TADOStoredProc;
    Bnd002: TQRSubDetail;
    ds002: TDataSource;
    qu003: TADOQuery;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qlbSaldo: TQRLabel;
    qrlSisa: TQRLabel;
    quCalc: TADOQuery;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel12: TQRLabel;
    qlbKota: TQRLabel;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlSisaPrint(sender: TObject; var Value: String);
    procedure Bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure bndCHBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    tgldari : TDateTime;
    tglsmp  : TDateTime;
    saldo,Balance,tMasuk,tKeluar   : Currency;
  end;

var
  fmINQRRptHistoryStok: TfmINQRRptHistoryStok;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRRptHistoryStok.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  tMasuk := 0;
  tKeluar := 0;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN FgTrans < 51 THEN Qty ELSE Qty*-1 END),0) as Stock '
       +'FROM AllItem WHERE CONVERT(VARCHAR(8),Transdate,112) <= '''+FormatDateTime('yyyymmdd',tgldari)+''' '
       +'AND WarehouseID='''+qu001.FieldByName('WarehouseID').AsString+''' AND ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');
    Open;
  end;
  qrlSisa.Caption := CurrToStr(quCalc.FieldByName('Stock').AsInteger);
end;

procedure TfmINQRRptHistoryStok.qrlSisaPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmINQRRptHistoryStok.Bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu003.FieldByName('kode').AsString = '1' then
  begin
      QRDBText5.Left := 211;
//      QRDBText8.Left := 663;
      saldo := saldo + qu003.FieldByName('Qty').AsInteger;
      tMasuk := tMasuk + qu003.FieldByName('Qty').AsInteger;
//      Balance := Balance + (qu003.FieldByName('Qty').AsInteger*qu003.FieldByName('Price').AsCurrency);
  end
  else
  begin
      QRDBText5.Left := 273;
//      QRDBText8.Left := 783;
      saldo := saldo - qu003.FieldByName('Qty').AsInteger;
      tKeluar := tKeluar + qu003.FieldByName('Qty').AsInteger;
//      Balance := Balance - (qu003.FieldByName('Qty').AsInteger*qu003.FieldByName('Price').AsCurrency);
  end;
  qlbSaldo.Caption :=  CurrToStr(saldo);
  PrintBand := qu003.FieldByName('Tanggal').AsString <> '';
//  qlbSaldoValue.Caption := CurrToStr(Balance);
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT DISTINCT K.City FROM (SELECT A.KonTransBrgID,C.City FROM ARTrKonTransBrgHd A '
       +'INNER JOIN ARMsCustomer C ON A.CustID=C.CustID UNION ALL '
       +'SELECT A.KonsinyasiID,C.City FROM APTrKonsinyasiHd A INNER JOIN APMsSupplier C ON A.SuppID=C.SuppID) as K '
       +'WHERE K.KonTransBrgID='''+qu003.FieldByName('Flag').AsString+''' ');
    Open;
    if not IsEmpty then
      qlbKota.Caption := quCalc.FieldByName('City').AsString
    else
      qlbKota.Caption := '';
  end;
end;

procedure TfmINQRRptHistoryStok.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  saldo := StrToCurr(qrlSisa.Caption);
//  Balance := StrToCurr(qrlSisaValue.Caption);
  with qu003,SQL do
  begin
     Close;Clear;
{     add('SELECT CONVERT(VARCHAR(10),TransDate,103) as Tanggal,TransDate,'
        +'CASE WHEN FgTrans < 50 THEN ''1'' else ''2'' END as Kode,VoucherNo as Flag,QTy,FgTrans,TempField2 FROM AllItem '
        +'WHERE ItemId='''+qu002.FieldByName('ItemId').AsString+''' AND WareHouseId='''+qu001.FieldByName('WareHouseId').AsString+''' '
        +'AND CONVERT(VARCHAR(10),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',tgldari)+''' AND '''+FormatDateTime('yyyyMMdd',tglsmp)+''' '
        +'ORDER by CONVERT(VARCHAR(10),TransDate,112),kode,NumAll');}
     add('SELECT CONVERT(VARCHAR(10),A.TransDate,103)as Tanggal,A.TransDate,'
        +'CASE WHEN FgTrans < 50 THEN ''1'' else ''2'' END as Kode,A.VoucherNo as Flag,A.QTy,A.FgTrans,ISNULL(C.Price-(C.Price*D.Discount*0.01),0) as Price,'
        +'A.TempField2 FROM Allitem A LEFT JOIN ARTrKonInvPelDt C ON A.VoucherNo=C.KonTransBrgID AND A.ItemID=C.ItemID '
        +'LEFT JOIN ARTrKonInvPelHd D ON C.KonInvPelID=D.KonInvPelID '
        +'WHERE A.ItemId='''+qu002.FieldByName('ItemId').AsString+''' AND A.WareHouseId='''+qu001.FieldByName('WareHouseId').AsString+''' '
        +'AND CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',tgldari)+''' AND '''+FormatDateTime('yyyyMMdd',tglsmp)+''' '
        +'ORDER by CONVERT(VARCHAR(10),A.TransDate,112),kode,NumAll');
    Open;
  End;
end;

procedure TfmINQRRptHistoryStok.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmINQRRptHistoryStok.bndCHBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  QRLabel11.Caption := 'Harga / '+qu002.FieldByName('UOMID').AsString;
end;

procedure TfmINQRRptHistoryStok.QRLabel1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(tMasuk))
end;

procedure TfmINQRRptHistoryStok.QRLabel2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(tKeluar))
end;

procedure TfmINQRRptHistoryStok.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Harga Jual : Rp '+FormatRptkurung(CurrToStr(qu002.FieldByName('HargaJual').AsCurrency))
end;

end.
