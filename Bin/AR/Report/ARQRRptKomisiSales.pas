unit ARQRRptKomisiSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmARQRRptKomisiSales = class(TfmRptLv4)
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    qrlValuta: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    qlbAging: TQRLabel;
    QRLabel1: TQRLabel;
    quCheck: TADOQuery;
    GroupFooterBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Data : string;
    Total,GrandTotal,TotalS,TotalM,TotalBayar,TotalNota,TotalNMesin,TotalNSP,TotalBayarMesin,TotalBayarSP : currency;
  end;

var
  fmARQRRptKomisiSales: TfmARQRRptKomisiSales;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptKomisiSales.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptKomisiSales.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quCheck,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN Jenis=''K'' THEN Amount ELSE Amount*-1 END),0) as Total FROM CFTrKKBBDt WHERE RekeningID='''+sDRPj+''' AND Note='''+qu003.FieldByName('KonInvPelId').AsString+''' ');
    Open;
  end;
  if qu003.FieldByName('Total').AsCurrency - quCheck.FieldByName('Total').AsCurrency > 0 then
    QRLabel1.Caption := 'BELUM'
  else
    QRLabel1.Caption := 'LUNAS';
  if qu003.FieldByName('KonInvPelID').AsString =  Data then
  begin
    QRDBText2.Enabled := False; QRDBText3.Enabled := False;  QRDBText4.Enabled := False;
    QRDBText5.Enabled := False; QRDBText6.Enabled := False;  QRDBText7.Enabled := False;
    QRDBText12.Enabled := False; QRLabel1.Enabled := False;
  end else
  begin
    if qu003.FieldByName('Jenis').AsString = 'S' then
    begin
//      TotalS := TotalS + qu003.FieldByName('Komisi').AsCurrency;
//      TotalBayarSP := TotalBayarSP + qu003.FieldByName('Total').AsCurrency;
      TotalNSP := TotalNSP + qu003.FieldByName('Penjualan').AsCurrency;
    end else
    begin
//      TotalM := TotalM + qu003.FieldByName('Komisi').AsCurrency;
      TotalNMesin := TotalNMesin + qu003.FieldByName('Penjualan').AsCurrency;
//      TotalBayarMesin := TotalBayarMesin + qu003.FieldByName('Amount').AsCurrency;
    end;
    TotalNota := TotalNota + qu003.FieldByName('Penjualan').AsCurrency;
//    TotalBayar := TotalBayar + qu003.FieldByName('Amount').AsCurrency;
//    Total := Total + qu003.FieldByName('Komisi').AsCurrency;
//    GrandTotal := GrandTotal + qu003.FieldByName('Komisi').AsCurrency;

    QRDBText2.Enabled := True; QRDBText3.Enabled := True;  QRDBText4.Enabled := True;
    QRDBText5.Enabled := True; QRDBText6.Enabled := True;  QRDBText7.Enabled := True;
    QRDBText12.Enabled := True; QRLabel1.Enabled := True;
  end;
  Data := qu003.FieldByName('KonInvPelID').AsString;
end;

procedure TfmARQRRptKomisiSales.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Total := 0;
  TotalS := 0;
  TotalM := 0;
  TotalBayar := 0;
  TotalNota := 0;
  TotalNMesin := 0;
  TotalNSP := 0;
  TotalBayarMesin := 0;
  TotalBayarSP := 0;
end;

procedure TfmARQRRptKomisiSales.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  GrandTotal := 0;
end;

procedure TfmARQRRptKomisiSales.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if qu003.FieldByName('Jenis').AsString = 'S' then
  begin
    TotalS := TotalS + qu003.FieldByName('Komisi').AsCurrency;
    TotalBayarSP := TotalBayarSP + qu003.FieldByName('Amount').AsCurrency;
//    TotalNSP := TotalNSP + qu003.FieldByName('Amount').AsCurrency;
  end else
  begin
    TotalM := TotalM + qu003.FieldByName('Komisi').AsCurrency;
//    TotalNMesin := TotalNMesin + qu003.FieldByName('Total').AsCurrency;
    TotalBayarMesin := TotalBayarMesin + qu003.FieldByName('Amount').AsCurrency;
  end;

//  TotalNota := TotalNota + qu003.FieldByName('Total').AsCurrency;
  TotalBayar := TotalBayar + qu003.FieldByName('Amount').AsCurrency;
  Total := Total + qu003.FieldByName('Komisi').AsCurrency;
  GrandTotal := GrandTotal + qu003.FieldByName('Komisi').AsCurrency;
end;

procedure TfmARQRRptKomisiSales.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Komisi Mesin '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(TotalM))
end;

procedure TfmARQRRptKomisiSales.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Grand Total Komisi : '+FormatRptkurung(CurrToStr(GrandTotal))
end;

procedure TfmARQRRptKomisiSales.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Komisi Spare Part '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(TotalS))
end;

procedure TfmARQRRptKomisiSales.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Komisi '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(Total))
end;

procedure TfmARQRRptKomisiSales.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalNota))
end;

procedure TfmARQRRptKomisiSales.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalBayar))
end;

procedure TfmARQRRptKomisiSales.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Nota Mesin '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(TotalNMesin))
end;

procedure TfmARQRRptKomisiSales.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Nota Spare Part '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(TotalNSP))
end;

procedure TfmARQRRptKomisiSales.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Nota '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(TotalNota))
end;

procedure TfmARQRRptKomisiSales.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Bayar Mesin '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(TotalBayarMesin))
end;

procedure TfmARQRRptKomisiSales.QRLabel23Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Bayar Spare Part '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(TotalBayarSP))
end;

procedure TfmARQRRptKomisiSales.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sub Total Bayar '+qu001.FieldByName('Sales').AsString+ ' '+FormatRptkurung(CurrToStr(TotalBayar))
end;

end.
