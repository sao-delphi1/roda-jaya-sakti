unit QRRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmQRRetur = class(TfmRptLv3)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    GroupFooterBand1: TQRBand;
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure bndCHBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut : integer;
  end;

var
  fmQRRetur: TfmQRRetur;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmQRRetur.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptUrut(IntToStr(Urut));
end;

procedure TfmQRRetur.QRDBText4Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmQRRetur.bndCHBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Urut := 1;
end;

procedure TfmQRRetur.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := Urut + 1;
end;

end.
