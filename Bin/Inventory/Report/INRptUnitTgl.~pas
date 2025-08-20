unit INRptUnitTgl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmINRptUnitTgl = class(TfmRptLv4)
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel15: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel33: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel39: TQRLabel;
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRLabel37Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Halaman,Pagea : integer;
    GTotal,Total,TQty,GTQty : currency;
  end;

var
  fmINRptUnitTgl: TfmINRptUnitTgl;

implementation

uses MyUnit, RptLv0;

{$R *.dfm}

procedure TfmINRptUnitTgl.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Periode : '+qu001.FieldByName('Tanggal').ASString;
end;

procedure TfmINRptUnitTgl.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Halaman := Halaman+1;
end;

procedure TfmINRptUnitTgl.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if Halaman<>Pagea then
  Begin
  Pagea := Pagea +1;
  MyReport.NewPage;

  end;
end;

procedure TfmINRptUnitTgl.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := A1;
end;

procedure TfmINRptUnitTgl.QRLabel27Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := A2;
end;

procedure TfmINRptUnitTgl.QRLabel23Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := A3;
end;

procedure TfmINRptUnitTgl.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := B1;
end;

procedure TfmINRptUnitTgl.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := B2;
end;

procedure TfmINRptUnitTgl.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := B3;
end;

procedure TfmINRptUnitTgl.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := C1;
end;

procedure TfmINRptUnitTgl.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := C2;
end;

procedure TfmINRptUnitTgl.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := C3;
end;

procedure TfmINRptUnitTgl.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := D1;
end;

procedure TfmINRptUnitTgl.QRLabel26Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := D2;
end;

procedure TfmINRptUnitTgl.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := D3;
end;

procedure TfmINRptUnitTgl.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := E1;
end;

procedure TfmINRptUnitTgl.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := E2;
end;

procedure TfmINRptUnitTgl.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := E3;
end;

procedure TfmINRptUnitTgl.QRLabel33Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(qu003.FieldByName('Jumlah').AsCurrency*qu003.FieldByName('Price').AsCurrency));
end;

procedure TfmINRptUnitTgl.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Total := 0;
  TQty := 0;
end;

procedure TfmINRptUnitTgl.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TQty := TQty + (qu003.FieldByName('Jumlah').AsCurrency);
  GTQty := GTQty + (qu003.FieldByName('Jumlah').AsCurrency);
  Total := Total + (qu003.FieldByName('Jumlah').AsCurrency*qu003.FieldByName('Price').AsCurrency);
  GTotal := GTotal + (qu003.FieldByName('Jumlah').AsCurrency*qu003.FieldByName('Price').AsCurrency);
end;

procedure TfmINRptUnitTgl.QRLabel34Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Per Unit : Rp '+FormatRptKurung(CurrToStr(Total));
end;

procedure TfmINRptUnitTgl.QRLabel35Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Grand Total : Rp '+FormatRptKurung(CurrToStr(GTotal));
end;

procedure TfmINRptUnitTgl.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GTotal := 0;
  GTQty := 0;
end;

procedure TfmINRptUnitTgl.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmINRptUnitTgl.QRLabel37Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total : '+FormatRptKurung(CurrToStr(TQty));
end;

procedure TfmINRptUnitTgl.QRLabel38Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Grand Total : '+FormatRptKurung(CurrToStr(GTQty));
end;

end.
