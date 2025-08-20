unit ARQRRptReceiveInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptReceiveInv = class(TfmRptLv0)
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    qlbNote: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    bnd001: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    qlbNo: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    qlbTerbilang: TQRLabel;
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
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape12: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRDBText11: TQRDBText;
    qu002: TADOQuery;
    QRDBText12: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabel15: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    Data : String;
    Count : Currency;
  public
    { Public declarations }
  end;

var
  fmARQRRptReceiveInv: TfmARQRRptReceiveInv;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptReceiveInv.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if Data = qu002.FieldByName('POID').AsString then
    qlbNo.Caption := ''
  else
  begin
   count := count+1;
   qlbNo.Caption :=CurrToStr(count);
  End;
end;

procedure TfmARQRRptReceiveInv.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Count := 0;
end;

procedure TfmARQRRptReceiveInv.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmARQRRptReceiveInv.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
Value := FormatRptqtykurung(Value);
end;

procedure TfmARQRRptReceiveInv.QRExpr4Print(sender: TObject;
  var Value: String);
begin
  inherited;
Value := FormatRptqtykurung(Value);
end;

procedure TfmARQRRptReceiveInv.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);

end;

procedure TfmARQRRptReceiveInv.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
Value := FormatRptqtykurung(Value);
end;

procedure TfmARQRRptReceiveInv.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
Value := FormatRptqtykurung(Value);
end;

end.
