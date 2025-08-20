unit INRptSuratJalanTrf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmINRptSuratJalanTrf = class(TfmRptLv4)
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    qlbNamaInvoice: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText14: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel23: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBImage1: TQRDBImage;
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Data,CekBulat : String;
    Count : Currency;
  end;

var
  fmINRptSuratJalanTrf: TfmINRptSuratJalanTrf;

implementation

{$R *.dfm}

uses MyUnit;

procedure TfmINRptSuratJalanTrf.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('WarehouseName').ASString;
end;

procedure TfmINRptSuratJalanTrf.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('AlamatPT').ASString;
end;

procedure TfmINRptSuratJalanTrf.QRLabel31Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('SaleID').ASString;
end;

procedure TfmINRptSuratJalanTrf.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if CekBulat = 'Y' then
  Value:= FormatRptUrut(Value)
  else
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmINRptSuratJalanTrf.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  count := count+1;
  QRLabel15.Caption :=CurrToStr(count);

  if (qu002.FieldByName('Qty').AsCurrency = qu002.FieldByName('Qty').AsInteger) then
  CekBulat:= 'Y'
  else
  CekBulat:= 'T';
end;

procedure TfmINRptSuratJalanTrf.QRLabel32Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('tgl').ASString;
end;

procedure TfmINRptSuratJalanTrf.GroupFooterBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  count := 0;
end;

procedure TfmINRptSuratJalanTrf.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if (qu003.RecordCount=0) then
  PrintBand := false;
end;

end.
