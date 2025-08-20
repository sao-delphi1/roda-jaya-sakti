unit QRRptSalesO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ARQRRptSuratJalan, DB, ADODB, QuickRpt, StdCtrls, QRCtrls,
  ExtCtrls;

type
  TfmQRRptSalesO = class(TfmQRRptSuratJalan)
    QRExpr2: TQRExpr;
    QRBand1: TQRBand;
    QRShape7: TQRShape;
    QRShape2: TQRShape;
    qlbBank: TQRLabel;
    qlbRekening: TQRLabel;
    qlbTerbilang: TQRLabel;
    qlbCabang: TQRLabel;
    qlbNamaRekening: TQRLabel;
    qlbValuta: TQRLabel;
    QRExpr1: TQRExpr;
    laGT: TQRLabel;
    qlbCurr1: TQRLabel;
    qlbCurr5: TQRLabel;
    QRShape8: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape3: TQRShape;
    QRLabel31: TQRLabel;
    qlbCurr2: TQRLabel;
    LaDiskon: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQRRptSalesO: TfmQRRptSalesO;

implementation

uses UnitGeneral, MyUnit;
{$R *.dfm}

procedure TfmQRRptSalesO.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

procedure TfmQRRptSalesO.QRExpr2Print(sender: TObject; var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

procedure TfmQRRptSalesO.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  Value:= FormatRpt(Value);
end;

end.
