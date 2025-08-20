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
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel12: TQRLabel;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlSisaPrint(sender: TObject; var Value: String);
    procedure Bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
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
       +'FROM AllItem WHERE CONVERT(VARCHAR(8),Transdate,112) < '''+FormatDateTime('yyyymmdd',tgldari)+''' '
       +'AND WarehouseID='''+qu001.FieldByName('WarehouseID').AsString+''' AND ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');
    Open;
  end;
  qrlSisa.Caption := CurrToStr(quCalc.FieldByName('Stock').AsCurrency);
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
      QRDBText5.Left := 299;
      saldo := saldo + qu003.FieldByName('Qty').AsCurrency;
      tMasuk := tMasuk + qu003.FieldByName('Qty').AsCurrency;
  end
  else
  begin
      QRDBText5.Left := 361;
      saldo := saldo - qu003.FieldByName('Qty').AsCurrency;
      tKeluar := tKeluar + qu003.FieldByName('Qty').AsCurrency;
  end;
  qlbSaldo.Caption :=  CurrToStr(saldo);
end;

procedure TfmINQRRptHistoryStok.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  {
   TR = Stok Opname +3 -53
   TS = Terima Solar +25
   PN = Terima Sparepart +26
   TB = Terima Ban +23 +stock24 -73
   PG = penggunaan Sparepart -76
   PS = Pakai Solar -75
  }
  saldo := StrToCurr(qrlSisa.Caption);
  with qu003,SQL do
  begin
  {
   TR = Stok Opname +3 -53 *
   TS = Terima Solar +25 *
   PN = Terima Sparepart +26 *
   TB = Terima Ban +23 +stock24 -73
   PG = penggunaan Sparepart -76 *
   PS = Pakai Solar -75 *
  }
     Close;Clear;
     add('SELECT CONVERT(VARCHAR(10),A.TransDate,103)as Tanggal,A.TransDate,'
        +'CASE WHEN FgTrans < 50 THEN ''1'' else ''2'' END as Kode,A.VoucherNo as Flag,A.QTy,A.FgTrans, '
        +'CASE WHEN FgTrans=7 THEN ''PENERIMAAN BARANG'' '
        +'     WHEN FgTrans=2 THEN ''TERIMA MUTASI SPAREPART'' '
        +'     WHEN FgTrans=3 THEN ''REALISASI SPAREPART'' '
        +'     WHEN FgTrans=12 THEN ''TERIMA MUTASI INVENTARIS'' '
        +'     WHEN FgTrans=52 THEN ''MUTASI KELUAR SPAREPART'' '
        +'     WHEN FgTrans=62 THEN ''MUTASI KELUAR INVENTARIS'' '
        +'     WHEN FgTrans=83 THEN ''REALISASI PR'' '
        +'     WHEN FgTrans=3 THEN ''TAMBAHAN STOCK OPNAME'' '
        +'     WHEN FgTrans=53 THEN ''PENGURANGAN STOCK OPNAME'' '
        +'     WHEN FgTrans=25 THEN ''PENERIMAAN SOLAR'' '
        +'     WHEN FgTrans=26 THEN ''PENERIMAAN SPAREPART'' '
        +'     WHEN FgTrans=75 THEN ''PEMAKAIAN SOLAR'' '
        +'     WHEN FgTrans=76 THEN ''PEMAKAIAN SPAREPART'' '
        +'     WHEN FgTrans=23 THEN ''TERIMA LEPAS BAN '' '
        +'     WHEN FgTrans=24 THEN ''TERIMA STOCK BAN'' '
        +'     WHEN FgTrans=88 THEN ''BA PEMINJAMAN'' '
        +'     WHEN FgTrans=73 THEN ''PEMASANGAN BAN'' ELSE '''' END as Relasi '
        +'FROM Allitem A '
        +'WHERE A.ItemId='''+qu002.FieldByName('ItemId').AsString+''' AND A.WareHouseId='''+qu001.FieldByName('WareHouseId').AsString+''' '
        +'AND CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',tgldari)+''' AND '''+FormatDateTime('yyyyMMdd',tglsmp)+''' '
        +'ORDER by CONVERT(VARCHAR(10),A.TransDate,112),kode');
    Open;
  End;
end;

procedure TfmINQRRptHistoryStok.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
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

end.
