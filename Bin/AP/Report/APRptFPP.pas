unit APRptFPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmAPRptFPP = class(TfmRptLv4)
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel9: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel17: TQRLabel;
    qr2: TQRLabel;
    qr3: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel50: TQRLabel;
    qr4: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    qr1: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    qr5: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    qr6: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    qr7: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel42: TQRLabel;
    qr9: TQRLabel;
    QRLabel44: TQRLabel;
    qlbterbilang: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape2: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape3: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel54: TQRLabel;
    qr8: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRImage8: TQRImage;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    qr10: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    qr11: TQRLabel;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure qr1Print(sender: TObject; var Value: String);
    procedure qr2Print(sender: TObject; var Value: String);
    procedure qr3Print(sender: TObject; var Value: String);
    procedure qr4Print(sender: TObject; var Value: String);
    procedure qr5Print(sender: TObject; var Value: String);
    procedure qr6Print(sender: TObject; var Value: String);
    procedure qr7Print(sender: TObject; var Value: String);
    procedure qr9Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure qr11Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut : integer;
  end;

var
  fmAPRptFPP: TfmAPRptFPP;

implementation

uses MyUnit;
{$R *.dfm}

procedure TfmAPRptFPP.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Urut := Urut + 1;
end;

procedure TfmAPRptFPP.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung(IntToStr(Urut));
end;

procedure TfmAPRptFPP.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := 0;
end;

procedure TfmAPRptFPP.QRDBText27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung2(Value);
end;

procedure TfmAPRptFPP.qr1Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.qr2Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.qr3Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.qr4Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.qr5Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.qr6Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.qr7Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.qr9Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmAPRptFPP.qr11Print(sender: TObject; var Value: String);
begin
  inherited;
  value:= FormatRptkurung(value);
end;

end.
