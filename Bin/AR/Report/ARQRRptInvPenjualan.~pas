unit ARQRRptInvPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmQRRptInvPenjualan = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRShape1: TQRShape;
    qlbValuta: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRExpr1: TQRExpr;
    qlbBank: TQRLabel;
    qlbRekening: TQRLabel;
    QRExpr2: TQRExpr;
    LaDiskon: TQRLabel;
    laGT: TQRLabel;
    qlbTerbilang: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    qlbCurr1: TQRLabel;
    qlbCurr2: TQRLabel;
    qlbCurr5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel18: TQRLabel;
    laSubTotal: TQRLabel;
    qlbCurr3: TQRLabel;
    QRLabel23: TQRLabel;
    laPPN: TQRLabel;
    qlbCurr4: TQRLabel;
    QRShape5: TQRShape;
    qlbCabang: TQRLabel;
    qlbNamaRekening: TQRLabel;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    qlbjatuhTempo: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    qlbTempo: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    qlbKet: TQRLabel;
    QRLabel22: TQRLabel;
    qlbHalaman: TQRLabel;
    QRShape4: TQRShape;
    QRLabel19: TQRLabel;
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BndTitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Data : String;
    Count,TRec,Halaman : Currency;
  end;

var
  fmQRRptInvPenjualan: TfmQRRptInvPenjualan;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmQRRptInvPenjualan.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu001.FieldByName('FgTax').AsString = 'Y' then
    Value:= FormatRptqtykurung(Value)
  else
    Value:= FormatRptkurung(Value);
end;

procedure TfmQRRptInvPenjualan.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmQRRptInvPenjualan.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if TRec = 12 then
    bnd001.ForceNewPage := True
  else
    bnd001.ForceNewPage := False;

  if TRec <> 11 then
  begin
    QRShape9.Enabled := False;
    QRLabel16.Enabled := False;
  end else
  begin
    QRShape9.Enabled := True;
    QRLabel16.Enabled := True;
  end;

  if Data = qu002.FieldByName('ItemName').AsString then
    QRLabel11.Caption := ''
  else
  begin
   count := count+1;
   QRLabel11.Caption :=CurrToStr(count);
  End;
end;

procedure TfmQRRptInvPenjualan.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Count := 0;
  Halaman := 0;
end;

procedure TfmQRRptInvPenjualan.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TRec := TRec + 1;
end;

procedure TfmQRRptInvPenjualan.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TRec := 0;
end;

procedure TfmQRRptInvPenjualan.BndTitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  TRec := 0;
  Halaman := Halaman + 1;
  qlbHalaman.Caption := 'Halaman :'+CurrToStr(Halaman);
end;

end.
