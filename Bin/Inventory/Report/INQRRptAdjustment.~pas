unit INQRRptAdjustment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmINQRRptAdjustment = class(TfmRptLv0)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    bnd001: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qu002: TADOQuery;
    QRDBText10: TQRDBText;
    QRShape3: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Data : String;
    Count : Currency;
  end;

var
  fmINQRRptAdjustment: TfmINQRRptAdjustment;

implementation

{$R *.dfm}

procedure TfmINQRRptAdjustment.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if Data = qu002.FieldByName('ItemName').AsString then
    QRLabel15.Caption := ''
  else
  begin
   count := count+1;
   QRLabel15.Caption :=CurrToStr(count);
  End;
end;

end.
