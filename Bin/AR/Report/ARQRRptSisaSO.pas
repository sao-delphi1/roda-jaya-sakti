unit ARQRRptSisaSO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ARQRRptSisaTransferBarang, DB, ADODB, QuickRpt, QRCtrls,
  StdCtrls, ExtCtrls;

type
  TfmARQRRptSisaSO = class(TfmARQRRptSisaTransferBarang)
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    qlbawal: TQRLabel;
    qlbdev: TQRLabel;
    QRDBText8: TQRDBText;
    qlbtgl: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText11: TQRDBText;
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Total,GrandTotal : currency;
    Modal,Konversi,SubTotal : Currency;
    Status,StatusPO : string;
    Estimasi,CekStock : Boolean;
    Sampai : TDateTime;
    CekEstimasi : Integer;
  end;

var
  fmARQRRptSisaSO: TfmARQRRptSisaSO;

implementation

uses MyUnit,DateUtils;

{$R *.dfm}

procedure TfmARQRRptSisaSO.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var SatB,SatK,Barang : String;
    StokB,StokK,StockB,StockK : Integer;
    //SelisihTgl : Integer;
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN K.FgTrans < 50  THEN K.QTy ELSE K.Qty * - 1 END),0) as Stock '
       +'FROM ALLITEM K WHERE CONVERT(VARCHAR(8),K.TransDate,112)<='''+FormatDateTime('YYYYMMDD',Date)+''''
       +'AND K.ItemID='''+qu003.FieldByName('ItemID').AsString+''' ');
    Open;
  end;
  CekEstimasi := qu003.FieldByName('Qty').AsInteger - quCalc.FieldByName('Stock').AsInteger;
  if Status <> 'DO' then
  begin
    Barang := qu003.FieldByName('ItemName').AsString;
    StokB := qu003.FieldByName('Qty').AsInteger DIV qu003.FieldByName('Konversi').AsInteger;
    StokK := qu003.FieldByName('Qty').AsInteger MOD qu003.FieldByName('Konversi').AsInteger;
    SatB := qu003.FieldByName('SatB').AsString;
    SatK := qu003.FieldByName('Satuan').AsString;
    //disini
    qlbawal.Caption := qu003.FieldByName('QtyAwal').AsString;
    qlbdev.Caption := qu003.FieldByName('QtyDev').AsString;
    //selisih
    qlbTgl.Caption := inttostr(DaysBetween(qu002.FieldByName('TglKirim').AsDateTime, Date))+' Hari';

    if StokB = 0 then
    begin
      qlbJumlah.Caption := FormatRptqtykurung(IntToStr(StokK))+ ' '+SatK;
      //qlbAwal.Caption := FormatRptqtykurung(IntToStr(StokK))+ ' '+SatK;
      //qlbDev.Caption := FormatRptqtykurung(IntToStr(StokK))+ ' '+SatK
      end else
    if StokK = 0 then
    begin
      qlbJumlah.Caption := FormatRptqtykurung(IntToStr(StokB))+ ' '+SatB;
      //qlbAwal.Caption := FormatRptqtykurung(IntToStr(StokK))+ ' '+SatB;
      //qlbDev.Caption := FormatRptqtykurung(IntToStr(StokK))+ ' '+SatB
    end else
    begin
      qlbJumlah.Caption := FormatRptqtykurung(IntToStr(StokB))+ ' '+SatB+' '+FormatRptqtykurung(IntToStr(StokK))+' '+SatK;
      //qlbAwal.Caption := FormatRptqtykurung(IntToStr(StokK))+ ' '+SatB+' '+FormatRptqtykurung(IntToStr(StokK))+' '+SatK;
      //qlbDev.Caption := FormatRptqtykurung(IntToStr(StokK))+ ' '+SatB+' '+FormatRptqtykurung(IntToStr(StokK))+' '+SatK;
      end;

    StockB := quCalc.FieldByName('Stock').AsInteger DIV qu003.FieldByName('Konversi').AsInteger ;
    StockK := quCalc.FieldByName('Stock').AsInteger MOD qu003.FieldByName('Konversi').AsInteger;
    if StockB = 0 then
      qlbStock.Caption := FormatRptqtykurung(IntToStr(StockK))+ ' '+SatK
    else
    if StockK = 0 then
      qlbStock.Caption := FormatRptqtykurung(IntToStr(StockB))+ ' '+SatB
    else
      qlbStock.Caption := FormatRptqtykurung(IntToStr(StockB))+ ' '+SatB+' '+FormatRptqtykurung(IntToStr(StockK))+' '+SatK;
    end else
    begin
      StokK := qu003.FieldByName('Qty').AsInteger;
      StatusPO := qu003.FieldByName('Status').AsString;
      qlbJumlah.Caption := FormatRptqtykurung(IntToStr(StokK)) + ' '+ qu003.FieldByName('Satuan').AsString;
      qlbAwal.Caption := FormatRptqtykurung(IntToStr(StokK)) + ' '+ qu003.FieldByName('Satuan').AsString;
      qlbDev.Caption := FormatRptqtykurung(IntToStr(StokK)) + ' '+ qu003.FieldByName('Satuan').AsString;
      if StatusPO = '0' then
      begin
        with quCalc,SQL do
        begin
          Close;Clear;
          Add('SELECT CASE WHEN A.UOMID=B.UOMID THEN A.Price/B.Konversi ELSE A.Price END as Price '
             +'FROM ARTrPurchaseOrderDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
             +'WHERE A.POID='''+qu003.FieldByName('POID').AsString+''' AND A.ItemID='''+qu003.FieldByName('ItemID').AsString+''' ');
          Open;
        end;
      end else
      begin
        with quCalc,SQL do
        begin
          Close;Clear;
          Add('SELECT DealerPrice as Price FROM INMsItem WHERE ItemID='''+qu003.FieldByName('ItemID').AsString+''' ');
          Open;
        end;
      end;
      qlbHarga.Caption := FormatRptkurung(CurrToStr(quCalc.FieldByName('Price').AsCurrency)) +' / '+ qu003.FieldByName('Satuan').AsString;
      qlbSubTotal.Caption := FormatRptkurung(CurrToStr(quCalc.FieldByName('Price').AsCurrency*StokK));
  end;

  if quCalc.FieldByName('Stock').AsInteger = 0 then     //disini
        qlbstock.caption := '-';
end;

end.
