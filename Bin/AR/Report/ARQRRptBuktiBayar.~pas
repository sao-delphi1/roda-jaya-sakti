unit ARQRRptBuktiBayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmQRRptBuktiBayar = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    qlbNamaInvoice: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    lbSuppCust: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    qlbTerbilang: TQRLabel;
    qu003: TADOQuery;
    ds002: TDataSource;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQRRptBuktiBayar: TfmQRRptBuktiBayar;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmQRRptBuktiBayar.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

end.
