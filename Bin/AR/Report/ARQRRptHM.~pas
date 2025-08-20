unit ARQRRptHM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptHM = class(TfmRptLv4)
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    SummaryBand1: TQRBand;
    GroupFooterBand2: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape4: TQRShape;
    QRShape2: TQRShape;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel37Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QRLabel39Print(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel41Print(sender: TObject; var Value: String);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec,total : currency;
    gjan,gfeb,gmar,gapr,gmay,gjun,gjul,gaug,gsep,goct,gnov,gdec,gtotal : currency;
    { Public declarations }
  end;

var
  fmARQRRptHM: TfmARQRRptHM;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptHM.QRDBText2Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmARQRRptHM.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  jan := jan + qu003.FieldBYName('Jan').AsCurrency;
  feb := feb + qu003.FieldBYName('feb').AsCurrency;
  mar := mar + qu003.FieldBYName('mar').AsCurrency;
  apr := apr + qu003.FieldBYName('apr').AsCurrency;
  may := may + qu003.FieldBYName('may').AsCurrency;
  jun := jun + qu003.FieldBYName('jun').AsCurrency;
  jul := jul + qu003.FieldBYName('jul').AsCurrency;
  aug := aug + qu003.FieldBYName('aug').AsCurrency;
  sep := sep + qu003.FieldBYName('sep').AsCurrency;
  oct := oct + qu003.FieldBYName('oct').AsCurrency;
  nov := nov + qu003.FieldBYName('nov').AsCurrency;
  dec := dec + qu003.FieldBYName('dec').AsCurrency;
  total := total + qu003.FieldBYName('total').AsCurrency;
end;

procedure TfmARQRRptHM.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  jan := 0;
  feb := 0;
  mar := 0;
  apr := 0;
  may := 0;
  jun := 0;
  jul := 0;
  aug := 0;
  sep := 0;
  oct := 0;
  nov := 0;
  dec := 0;
  total := 0;
end;

procedure TfmARQRRptHM.GroupFooterBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  gjan := gjan + jan;
  gfeb := gfeb + feb;
  gmar := gmar + mar;
  gapr := gapr + apr;
  gmay := gmay + may;
  gjun := gjun + jun;
  gjul := gjul + jul;
  gaug := gaug + aug;
  gsep := gsep + sep;
  goct := goct + oct;
  gnov := gnov + nov;
  gdec := gdec + dec;
  gtotal := gtotal + total;
end;

procedure TfmARQRRptHM.QRLabel15Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(Jan));
end;

procedure TfmARQRRptHM.QRLabel16Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(feb));
end;

procedure TfmARQRRptHM.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(mar));
end;

procedure TfmARQRRptHM.QRLabel18Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(apr));
end;

procedure TfmARQRRptHM.QRLabel19Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(may));
end;

procedure TfmARQRRptHM.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(jun));
end;

procedure TfmARQRRptHM.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(jul));
end;

procedure TfmARQRRptHM.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(aug));
end;

procedure TfmARQRRptHM.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(sep));
end;

procedure TfmARQRRptHM.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(oct));
end;

procedure TfmARQRRptHM.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(nov));
end;

procedure TfmARQRRptHM.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(dec));
end;

procedure TfmARQRRptHM.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(total));
end;

procedure TfmARQRRptHM.QRLabel29Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gjan));
end;

procedure TfmARQRRptHM.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gfeb));
end;

procedure TfmARQRRptHM.QRLabel31Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gmar));
end;

procedure TfmARQRRptHM.QRLabel32Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gapr));
end;

procedure TfmARQRRptHM.QRLabel33Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gmay));
end;

procedure TfmARQRRptHM.QRLabel34Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gjun));
end;

procedure TfmARQRRptHM.QRLabel35Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gjul));
end;

procedure TfmARQRRptHM.QRLabel36Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gaug));
end;

procedure TfmARQRRptHM.QRLabel37Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gsep));
end;

procedure TfmARQRRptHM.QRLabel38Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(goct));
end;

procedure TfmARQRRptHM.QRLabel39Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gnov));
end;

procedure TfmARQRRptHM.QRLabel40Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gdec));
end;

procedure TfmARQRRptHM.QRLabel41Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(CurrToStr(gtotal));
end;

procedure TfmARQRRptHM.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  gjan := 0;
  gfeb := 0;
  gmar := 0;
  gapr := 0;
  gmay := 0;
  gjun := 0;
  gjul := 0;
  gaug := 0;
  gsep := 0;
  goct := 0;
  gnov := 0;
  gdec := 0;
  gtotal := 0;
end;

end.
