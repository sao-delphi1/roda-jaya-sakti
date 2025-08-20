unit ARQRRptBuatMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptBuatMR = class(TfmRptLv0)
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    qlbBarang: TQRLabel;
    quCalc: TADOQuery;
    quStock: TADOQuery;
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARQRRptBuatMR: TfmARQRRptBuatMR;

implementation

uses Myunit;
{$R *.dfm}

procedure TfmARQRRptBuatMR.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var jumlah,TotB,TotK,konversi : CURRENCY;
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('Select ISNULL(CASE WHEN A.Konversi=0 THEN 1 ELSE A.Konversi END,1) as Konversi,A.UOMID,A.UOMID2 From InMsitem A Where A.ItemId=+'''+qu001.FieldByName('ItemID').AsString+''' ');
  Open;
  End;

  jumlah := qu001.FieldByName('JumlahUOMID2').AsCurrency;
  konversi := quCalc.FieldByName('konversi').AsCurrency;
  if quCalc.FieldByName('UOMID').AsString = quCalc.FieldByName('UOMID2').AsString then
  begin
    qlbBarang.Caption := FormatRptKurung(CurrtoStr(jumlah)) + ' ' + quCalc.FieldByName('UOMID2').AsString;
    end else
    begin
    with quStock,SQL do
    begin
      Close;Clear;
      Add('Select FLOOR('+currtoStr(jumlah)+'/'+currtostr(konversi)+') as hasil ');
      //showmessage(sql.text);
    Open;
    End;
    TotB := quStock.FieldByName('hasil').AsCurrency;
    TotK := jumlah - (quStock.FieldByName('hasil').AsCurrency*konversi);
    qlbBarang.Caption := '';
    if TotB <> 0 then
      qlbBarang.Caption := FormatRptqtyKurung(CurrtoStr(TotB)) + ' ' + quCalc.FieldByName('UOMID').AsString;

    if TotK <> 0 then
      qlbBarang.Caption := qlbBarang.Caption + ' ' + FormatRptKurung(CurrtoStr(TotK)) + ' ' + quCalc.FieldByName('UOMID2').AsString;
    end;
end;

end.
