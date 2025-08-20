unit ARQRRptPenjPerSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmARQRRptPenjPerSales = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    quLBRG: TADOQuery;
    QRLabel21: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    quCek: TADOQuery;
    QRDBText6: TQRDBText;
    qrlValuta: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Total : currency ;
  end;

var
  fmARQRRptPenjPerSales: TfmARQRRptPenjPerSales;

implementation

uses MyUnit, UnitGeneral;

{$R *.dfm}

procedure TfmARQRRptPenjPerSales.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptPenjPerSales.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmARQRRptPenjPerSales.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Total := Total + qu001.FieldByName('Total').AsCurrency;
end;

procedure TfmARQRRptPenjPerSales.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  Total := 0;
end;

procedure TfmARQRRptPenjPerSales.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Grand Total : '+ FormatRptkurung(CurrToStr(Total))
end;

end.
