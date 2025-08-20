unit APQRRptSisaTerimaBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmAPQRRptSisaTerimaBarang = class(TfmRptLv3)
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    qrlTotalUSD: TQRBand;
    quCalc: TADOQuery;
    ChildBand1: TQRChildBand;
    quSN: TADOQuery;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText16: TQRDBText;
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Tgldari : TDateTime;
    TotalIDR,TotalUSD,TotalAsset,Nilai : Currency;
    SerialNumber : string;
  end;

var
  fmAPQRRptSisaTerimaBarang: TfmAPQRRptSisaTerimaBarang;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmAPQRRptSisaTerimaBarang.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmAPQRRptSisaTerimaBarang.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmAPQRRptSisaTerimaBarang.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung(Value);
end;

end.
