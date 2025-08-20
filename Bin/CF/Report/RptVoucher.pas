unit RptVoucher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmRptVoucher = class(TfmRptLv3)
    QRImage1: TQRImage;
    QRShape2: TQRShape;
    GroupFooterBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    qlbTTerBayar: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape16: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qlbKas: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape30: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape11: TQRShape;
    QRLabel18: TQRLabel;
    QRShape12: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText10: TQRDBText;
    procedure bndCHBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure bndCHAfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut : integer;
    GT : Currency;
  end;

var
  fmRptVoucher: TfmRptVoucher;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmRptVoucher.bndCHBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Urut := 1;
end;

procedure TfmRptVoucher.QRLabel13Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRpturut(InttoStr(urut));
end;

procedure TfmRptVoucher.QRDBText7Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmRptVoucher.bndCHAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GT := 0;
end;

procedure TfmRptVoucher.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := 'GRAND TOTAL : ' + FormatRptKurung(Currtostr(GT));
end;

procedure TfmRptVoucher.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu001.FieldByName('CurrID').AsString = 'IDR' then
  QRLabel21.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, GT))+'Rupiah #'
  else
  QRLabel21.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, GT))+'Dollars #';
end;

procedure TfmRptVoucher.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := Urut + 1;
  GT := GT + qu002.FieldByName('Amount').AsCurrency;
end;

end.
