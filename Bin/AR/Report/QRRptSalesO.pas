unit QRRptSalesO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ARQRRptSuratJalan, DB, ADODB, QuickRpt, StdCtrls, QRCtrls,
  ExtCtrls;

type
  TfmQRRptSalesO = class(TfmQRRptSuratJalan)
    QRExpr2: TQRExpr;
    GroupFooterBand2: TQRBand;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel15Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut : integer;
  end;

var
  fmQRRptSalesO: TfmQRRptSalesO;

implementation

uses UnitGeneral, MyUnit, RptLv0;
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

procedure TfmQRRptSalesO.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if Urut <> 14 then
  QRShape25.Enabled := FALSE
  else
  QRShape25.Enabled := TRUE;

  if urut > 10 then
  GroupFooterBand2.AlignToBottom := TRUE
  ELSE
  GroupFooterBand2.AlignToBottom := FALSE;
end;

procedure TfmQRRptSalesO.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Urut := 1;
end;

procedure TfmQRRptSalesO.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := Urut +1 ;
  if Urut > 15 then
  MyReport.NewPage;
end;

procedure TfmQRRptSalesO.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptUrut(InttoStr(Urut));
end;

end.
