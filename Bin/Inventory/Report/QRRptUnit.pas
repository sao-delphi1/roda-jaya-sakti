unit QRRptUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmQRRptUnit = class(TfmRptLv4)
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
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
    GroupFooterBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
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
    QRDBText2: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText3: TQRDBText;
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
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText5: TQRDBText;
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
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Total,GTotal,TQty,GTQty : currency;
  end;

var
  fmQRRptUnit: TfmQRRptUnit;

implementation

USES MyUnit;
{$R *.dfm}

procedure TfmQRRptUnit.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := A1;
end;

procedure TfmQRRptUnit.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := A2;
end;

procedure TfmQRRptUnit.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := A3;
end;

procedure TfmQRRptUnit.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value :=  B1;
end;

procedure TfmQRRptUnit.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := B2;
end;

procedure TfmQRRptUnit.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := B3;
end;

procedure TfmQRRptUnit.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := C1;
end;

procedure TfmQRRptUnit.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := C2;
end;

procedure TfmQRRptUnit.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := C3;
end;

procedure TfmQRRptUnit.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := D1;
end;

procedure TfmQRRptUnit.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := D2;
end;

procedure TfmQRRptUnit.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := D3;
end;

procedure TfmQRRptUnit.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := E1;
end;

procedure TfmQRRptUnit.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := E2;
end;

procedure TfmQRRptUnit.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := E3;
end;

procedure TfmQRRptUnit.QRLabel33Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(qu002.FieldByName('Jumlah').AsCurrency*qu002.FieldByName('Price').AsCurrency));
end;

procedure TfmQRRptUnit.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Total := 0;
  TQty := 0;
end;

procedure TfmQRRptUnit.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := 'Total Per Unit : Rp '+FormatRptKurung(CurrToStr(Total));
end;

procedure TfmQRRptUnit.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := 'Grand Total : Rp '+FormatRptKurung(CurrToStr(GTotal));
end;

procedure TfmQRRptUnit.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GTotal := 0;
  GTQty := 0;
end;

procedure TfmQRRptUnit.QRDBText14Print(sender: TObject; var Value: String);
begin
  inherited;
//  Value := FormatRptKurung(Value);
end;

procedure TfmQRRptUnit.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TQty := TQty + (qu002.FieldByName('Jumlah').AsCurrency);
  GTQty := GTQty + (qu002.FieldByName('Jumlah').AsCurrency);
  Total := Total + (qu002.FieldByName('Jumlah').AsCurrency*qu002.FieldByName('Price').AsCurrency);
  GTotal := GTotal + (qu002.FieldByName('Jumlah').AsCurrency*qu002.FieldByName('Price').AsCurrency);
end;

procedure TfmQRRptUnit.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmQRRptUnit.QRLabel35Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := 'Total : '+FormatRptKurung(CurrToStr(TQty));
end;

procedure TfmQRRptUnit.QRLabel34Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := 'Grand Total : '+FormatRptKurung(CurrToStr(GTQty));
end;

end.
