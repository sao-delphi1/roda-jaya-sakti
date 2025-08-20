unit ARQRRptPenjPerCust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmARQRRptPenjPerCust = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText4: TQRDBText;
    qrlValuta: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Total : currency ;
    LapSt : string;
  end;

var
  fmARQRRptPenjPerCust: TfmARQRRptPenjPerCust;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptPenjPerCust.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmARQRRptPenjPerCust.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptPenjPerCust.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  Total := 0;
end;

procedure TfmARQRRptPenjPerCust.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Total := Total + qu001.FieldByName('Total').AsCurrency;
end;

procedure TfmARQRRptPenjPerCust.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Grand Total : '+ FormatRptkurung(CurrToStr(Total))
end;

procedure TfmARQRRptPenjPerCust.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if LapSt = 'Jual' then
    Value := 'Sub Total Per Pelanggan : '+ FormatRptkurung(CurrToStr(qu001.FieldByName('Total').AsCurrency))
  else
    Value := 'Sub Total Per Supplier : '+ FormatRptkurung(CurrToStr(qu001.FieldByName('Total').AsCurrency))
end;

procedure TfmARQRRptPenjPerCust.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu002.RecNo <> 1 then
  begin
    QRDBText6.Enabled := False; QRDBText12.Enabled := False;
  end else
  begin
    QRDBText6.Enabled := True; QRDBText12.Enabled := True;
  end;
end;

end.
