unit ARQRRptHMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptHMUnit = class(TfmRptLv4)
    QRDBText1: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    GroupFooterBand1: TQRBand;
    GroupFooterBand2: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    total,subtotal,gtotal : currency;
  end;

var
  fmARQRRptHMUnit: TfmARQRRptHMUnit;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptHMUnit.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmARQRRptHMUnit.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  total := 0;
end;

procedure TfmARQRRptHMUnit.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  total := total + qu003.FieldByName('Qty').AsCurrency;
end;

procedure TfmARQRRptHMUnit.GroupFooterBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  subtotal := subtotal + total;
end;

procedure TfmARQRRptHMUnit.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  subtotal := 0;
end;

procedure TfmARQRRptHMUnit.GroupFooterBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  gtotal := gtotal + subtotal;
end;

procedure TfmARQRRptHMUnit.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  gtotal := 0;
end;

procedure TfmARQRRptHMUnit.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total '+qu002.FieldByName('Satuan').AsString+' :';
end;

procedure TfmARQRRptHMUnit.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(total));
end;

procedure TfmARQRRptHMUnit.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gtotal));
end;

procedure TfmARQRRptHMUnit.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(subtotal));
end;

procedure TfmARQRRptHMUnit.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Subtotal Per Unit '+qu001.FieldByName('NoUnit').AsString+' :';
end;

end.
