unit RptJurnalDay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmRptJurnalDay = class(TfmRptLv4)
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape15: TQRShape;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bndCHAfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut : integer;
    TotalKredit,TotalDebit : Currency;
  end;

var
  fmRptJurnalDay: TfmRptJurnalDay;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmRptJurnalDay.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmRptJurnalDay.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmRptJurnalDay.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := urut+1;
end;

procedure TfmRptJurnalDay.bndCHAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := 1;
  if TotalDebit <> 0 then TotalDebit := TotalDebit else TotalDebit := 0;
  if TotalKredit <> 0 then TotalKredit := TotalKredit else TotalKredit := 0;
end;

procedure TfmRptJurnalDay.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
{  if Urut = 4 then
  bnd001.ForceNewPage := TRUE
  else
  bnd001.ForceNewPage := FALSE;    }

  if Urut MOD 2 = 0 then
  bnd001.Color := clAqua
  else
  bnd001.Color := clYellow;
end;

procedure TfmRptJurnalDay.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TotalDebit := TotalDebit + qu002.FieldByName('Debit').asCurrency;
  TotalKredit := TotalKredit + qu002.FieldByName('Kredit').asCurrency;
end;

procedure TfmRptJurnalDay.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalDebit));
end;

procedure TfmRptJurnalDay.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalKredit));
end;

end.
