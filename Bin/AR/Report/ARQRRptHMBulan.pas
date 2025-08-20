unit ARQRRptHMBulan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptHMBulan = class(TfmRptLv4)
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape2: TQRShape;
    GroupFooterBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    total,subtotal,gtotal : currency;
  end;

var
  fmARQRRptHMBulan: TfmARQRRptHMBulan;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptHMBulan.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmARQRRptHMBulan.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  total := total + qu003.FieldByName('Qty').AsCurrency;
end;

procedure TfmARQRRptHMBulan.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(total));
end;

procedure TfmARQRRptHMBulan.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  total := 0;
end;

procedure TfmARQRRptHMBulan.GroupFooterBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  subtotal := subtotal + total;
end;

procedure TfmARQRRptHMBulan.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  subtotal := 0;
end;

procedure TfmARQRRptHMBulan.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(subtotal));
end;

procedure TfmARQRRptHMBulan.GroupFooterBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  gtotal := gtotal + subtotal;
end;

procedure TfmARQRRptHMBulan.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gtotal));
end;

procedure TfmARQRRptHMBulan.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  gtotal := 0;
end;

procedure TfmARQRRptHMBulan.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Per Unit '+qu002.FieldByName('NoUnit').AsString+' :';
end;

procedure TfmARQRRptHMBulan.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Subtotal '+qu001.FieldByName('CustName').AsString+' :';
end;

end.
