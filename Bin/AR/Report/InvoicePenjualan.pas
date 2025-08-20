unit InvoicePenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmInvoicePenjualan = class(TfmRptLv3)
    GroupFooterBand1: TQRBand;
    qlbValuta: TQRLabel;
    QRLabel20: TQRLabel;
    qlbBank: TQRLabel;
    laGT: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    qlbTerbilang: TQRLabel;
    qlbCurr1: TQRLabel;
    qlbCurr5: TQRLabel;
    QRLabel23: TQRLabel;
    laPPN: TQRLabel;
    qlbCurr4: TQRLabel;
    QRShape5: TQRShape;
    qlbNamaRekening: TQRLabel;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    laongkir: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape8: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText13: TQRDBText;
    qlbjatuhTempo: TQRLabel;
    QRLabel31: TQRLabel;
    qlbTempo: TQRLabel;
    QRLabel21: TQRLabel;
    qlbKet: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel24: TQRLabel;
    qlbbank1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRImage1: TQRImage;
    QRShape2: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText11: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel28: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel18: TQRLabel;
    laSubTotal: TQRLabel;
    qlbCurr3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape6: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRImage8: TQRImage;
    QRDBText12: TQRDBText;
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure LaDiskonPrint(sender: TObject; var Value: String);
    procedure laPPNPrint(sender: TObject; var Value: String);
    procedure laSubTotalPrint(sender: TObject; var Value: String);
    procedure laongkirPrint(sender: TObject; var Value: String);
    procedure larepakPrint(sender: TObject; var Value: String);
    procedure laadminPrint(sender: TObject; var Value: String);
    procedure laGTPrint(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure BndTitleAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel34Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut,NewUrut : Integer;
  end;

var
  fmInvoicePenjualan: TfmInvoicePenjualan;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmInvoicePenjualan.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
//  Urut := Urut + 1;
end;

procedure TfmInvoicePenjualan.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptUrut(inttoStr(Urut));
end;

procedure TfmInvoicePenjualan.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung2(Value);
end;

procedure TfmInvoicePenjualan.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.LaDiskonPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.laPPNPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.laSubTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.laongkirPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.larepakPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.laadminPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.laGTPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Urut := Urut+1;
  NewUrut := NewUrut+1;

  if NewUrut > 19 then
  begin
    QRShape6.Enabled := True;
    bnd001.ForceNewPage := True;
  end Else
  begin
    QRShape6.Enabled := False;
    bnd001.ForceNewPage := False;
  end;


end;

procedure TfmInvoicePenjualan.GroupFooterBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  Urut := 0;
  NewUrut := 0;
end;

procedure TfmInvoicePenjualan.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmInvoicePenjualan.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := '@ '+qu001.FieldByName('CurrID').ASString+' '+FormatRptQtyKurung2(qu002.FieldByName('HargaKurs').ASString)+
           ', Rate: '+FormatRptQtyKurung2(qu002.FieldByName('Rate').ASString);
end;

procedure TfmInvoicePenjualan.QRLabel2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('FPS').AsString;
end;

procedure TfmInvoicePenjualan.BndTitleAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  NewUrut := 0;
end;

procedure TfmInvoicePenjualan.QRLabel34Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(inttostr(newurut));
end;

end.
