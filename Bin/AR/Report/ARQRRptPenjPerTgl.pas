unit ARQRRptPenjPerTgl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmARQRRptPenjPerTgl = class(TfmRptLv4)
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
    A: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    qrlValuta: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    qlbTHPP: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure qlbTHPPPrint(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    GrandTotal,GrandHPP : currency ;
    FgLap : string;
  end;

var
  fmARQRRptPenjPerTgl: TfmARQRRptPenjPerTgl;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptPenjPerTgl.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptPenjPerTgl.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmARQRRptPenjPerTgl.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GrandTotal := GrandTotal + qu002.FieldByName('Total').AsCurrency;
end;

procedure TfmARQRRptPenjPerTgl.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  GrandTotal := 0;
  GrandHPP := 0;
end;

procedure TfmARQRRptPenjPerTgl.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Grand Total : '+FormatRptkurung(CurrToStr(GrandTotal))
end;

procedure TfmARQRRptPenjPerTgl.qlbTHPPPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Grand Total HPP : '+FormatRptkurung(CurrToStr(GrandHPP))
end;

procedure TfmARQRRptPenjPerTgl.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if FgLap = 'Detail' then
    GrandHPP := GrandHPP + qu003.FieldByName('TotalHPP').AsCurrency
  else
    GrandHPP := 0;
end;

end.
