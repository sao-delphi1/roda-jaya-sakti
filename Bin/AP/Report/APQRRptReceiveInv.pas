unit APQRRptReceiveInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmAPQRRptReceiveInv = class(TfmRptLv0)
    QRLabel1: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    GroupFooterBand1: TQRBand;
    QRShape12: TQRShape;
    QRShape19: TQRShape;
    QRShape18: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    qlbTerbilang: TQRLabel;
    qlbNote: TQRLabel;
    qu002: TADOQuery;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel10: TQRLabel;
    bnd001: TQRSubDetail;
    QRLabel17: TQRLabel;
    qlbNo: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure BndTitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qlbNoPrint(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    Data : String;
    Count,DPP,PPN,Total : Currency;
    Urut : integer;
  public
    { Public declarations }
  end;

var
  fmAPQRRptReceiveInv: TfmAPQRRptReceiveInv;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmAPQRRptReceiveInv.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptqtykurung(Value);
end;

procedure TfmAPQRRptReceiveInv.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmAPQRRptReceiveInv.QRExpr4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmAPQRRptReceiveInv.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmAPQRRptReceiveInv.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmAPQRRptReceiveInv.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmAPQRRptReceiveInv.BndTitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Urut := 1;
end;

procedure TfmAPQRRptReceiveInv.qlbNoPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(InttoStr(Urut));
end;

procedure TfmAPQRRptReceiveInv.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := Urut+1;
  DPP := DPP + qu002.FieldByName('DPP').AsCurrency;
  PPN := PPN + qu002.FieldByName('Pajak').AsCurrency;
  Total := Total + qu002.FieldByName('Total').AsCurrency;
end;

procedure TfmAPQRRptReceiveInv.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Currtostr(DPP));
end;

procedure TfmAPQRRptReceiveInv.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Currtostr(PPN));
end;

procedure TfmAPQRRptReceiveInv.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Currtostr(Total));
end;

procedure TfmAPQRRptReceiveInv.GroupFooterBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  DPP := 0;
  Total := 0;
  PPN := 0;
end;

end.
