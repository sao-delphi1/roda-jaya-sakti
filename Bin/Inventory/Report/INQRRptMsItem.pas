unit INQRRptMsItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmINQRRptMsItem = class(TfmRptLv3)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel21: TQRLabel;
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    jumlah : integer;
  end;

var
  fmINQRRptMsItem: TfmINQRRptMsItem;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmINQRRptMsItem.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRpt(Value);
end;

procedure TfmINQRRptMsItem.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Jumlah := Jumlah + 1;
end;

procedure TfmINQRRptMsItem.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Jumlah Barang Terdaftar : '+FormatRptQtyKurung(InttoStr(Jumlah));
end;

procedure TfmINQRRptMsItem.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Jumlah := 0;
end;

end.
