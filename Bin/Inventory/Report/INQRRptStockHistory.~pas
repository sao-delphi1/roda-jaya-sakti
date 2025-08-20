unit INQRRptStockHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmINQRRptStockHistory = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    quCalc: TADOQuery;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    dari,sampai : string;
    masuk,keluar,Saldo : currency;
  end;

var
  fmINQRRptStockHistory: TfmINQRRptStockHistory;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRRptStockHistory.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Saldo := 0;
  with quCalc,sql do
  begin
     Close;Clear;
     Add(' Select ISNULL(SUM(CASE WHEN K.Kode=''AP'' Then K.Jumlah Else K.Jumlah*-1 END),0) as Awal FROM ( '
        +' select ''AP'' as Kode,A.ItemID,A.SNID,A.Jumlah,D.TransDate from APTrKonsinyasiDtSN A '
        +' Inner Join AptrKonsinyasiHD D On A.KonsinyasiID=D.KonsinyasiID UNION ALL '
        +' select ''AR'' as Kode,B.ItemID,B.SNID,B.Qty,C.transDate from ARTrKonTransBrgDtSN B '
        +' Inner Join ARTrkontransbrgHD C on B.KontransBrgid=C.kontransbrgid '
        +' ) as K Where K.ItemID='''+qu002.FieldByName('ItemId').AsString+''' AND K.SNID='''+qu002.FieldByName('SNID').AsString+''' '
        +' AND Convert(varchar(8),K.transdate,112) < '''+dari+''' ');
     //showmessage(sql.text);
     Open;
  end;
  Saldo := quCalc.FieldByName('Awal').AsCurrency;
  QRLabel12.Caption := FormatRptKurung(CurrToStr(Saldo));
  {
  with quCalc,sql do
  begin
     Close;Clear;
     Add(' Select ISNULL(SUM(CASE WHEN K.Kode=''AP'' Then K.Jumlah Else K.Jumlah*-1 END),0) as Akhir FROM ( '
        +' select ''AP'' as Kode,A.ItemID,A.SNID,A.Jumlah,D.TransDate from APTrKonsinyasiDtSN A '
        +' Inner Join AptrKonsinyasiHD D On A.KonsinyasiID=D.KonsinyasiID UNION ALL '
        +' select ''AR'' as Kode,B.ItemID,B.SNID,B.Qty,C.transDate from ARTrKonTransBrgDtSN B '
        +' Inner Join ARTrkontransbrgHD C on B.KontransBrgid=C.kontransbrgid '
        +' ) as K Where K.ItemID='''+qu002.FieldByName('ItemId').AsString+''' AND K.SNID='''+qu002.FieldByName('SNID').AsString+''' '
        +' AND Convert(varchar(8),K.transdate,112) <= '''+sampai+''' ');
     //showmessage(sql.text);
     Open;
  end;
  QRLabel18.Caption := FormatRptKurung(CurrToStr(quCalc.FieldByName('Akhir').AsCurrency));   }
end;

procedure TfmINQRRptStockHistory.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu003.FieldByName('Kode').asString = 'AP' then
  begin
    QRDBText7.Left := 623;
    masuk := masuk + qu003.FieldByName('Jumlah').AsCurrency;
    Saldo := Saldo + qu003.FieldByName('Jumlah').AsCurrency;
  end else
  begin
    QRDBText7.Left := 675;
    keluar := keluar + qu003.FieldByName('Jumlah').AsCurrency;
    Saldo := Saldo - qu003.FieldByName('Jumlah').AsCurrency;
  end;

  QRLabel11.Caption := FormatRptKurung(CurrToStr(Saldo));
end;

procedure TfmINQRRptStockHistory.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  masuk := 0;
  keluar := 0;
  if qu003.RecordCount < 1 then
  begin
    bnd002.Enabled := False;
    SummaryBand1.Enabled := False;
  end else
  begin
    bnd002.Enabled := True;
    SummaryBand1.Enabled := True;
  end;
end;

procedure TfmINQRRptStockHistory.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QRLabel14.Caption := FormatRptKurung(CurrToStr(masuk));
  QRLabel15.Caption := FormatRptKurung(CurrToStr(keluar));
  QRLabel13.Caption := FormatRptKurung(CurrToStr(Saldo));
end;

end.
