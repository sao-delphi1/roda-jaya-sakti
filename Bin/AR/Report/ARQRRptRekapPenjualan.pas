unit ARQRRptRekapPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptRekapPenjualan = class(TfmRptLv0)
    bnd001: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    qu002: TADOQuery;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    qlbNoBukti: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    qlbHalaman: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure BndTitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    TDebet,TKredit,TRec,Halaman : currency;
    Data,NBulan,Tahun : String;
    Count : Currency;
  end;

var
  fmARQRRptRekapPenjualan: TfmARQRRptRekapPenjualan;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptRekapPenjualan.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptRekapPenjualan.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if Data = qu001.FieldByName('CustID').AsString then
  begin
    TDebet := TDebet + qu002.FieldByName('Debet').AsCurrency;
    TKredit := TKredit + qu002.FieldByName('Kredit').AsCurrency;
  end;
  TRec := TRec + 1;
end;

procedure TfmARQRRptRekapPenjualan.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TDebet));
  TDebet := 0;
end;

procedure TfmARQRRptRekapPenjualan.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TKredit));
  TKredit := 0;
end;

procedure TfmARQRRptRekapPenjualan.BndTitleBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var FormatBukti : string;
begin
  inherited;
  TRec := 0;
  if Data <> qu001.FieldByName('CustID').AsString then
  begin
    TDebet := 0;
    TKredit := 0;
  end;

  if Data = qu001.FieldByName('CustID').AsString then
  begin
    Halaman := Halaman + 1;
//    Count := 1;
    if qu001.FieldByName('Valuta').AsString = 'IDR' then
    begin
      if Count < 10 then
        FormatBukti := 'TGH'+NBulan+'/R'+Tahun+'-000'+CurrToStr(Count)
      else
      if Count < 100 then
        FormatBukti := 'TGH'+NBulan+'/R'+Tahun+'-00'+CurrToStr(Count)
      else
      if Count < 1000 then
        FormatBukti := 'TGH'+NBulan+'/R'+Tahun+'-0'+CurrToStr(Count)
      else
        FormatBukti := 'TGH'+NBulan+'/R'+Tahun+'-'+CurrToStr(Count);
    end else
    begin
      if Count < 10 then
        FormatBukti := 'TGH'+NBulan+'/D'+Tahun+'-000'+CurrToStr(Count)
      else
      if Count < 100 then
        FormatBukti := 'TGH'+NBulan+'/D'+Tahun+'-00'+CurrToStr(Count)
      else
      if Count < 1000 then
        FormatBukti := 'TGH'+NBulan+'/D'+Tahun+'-0'+CurrToStr(Count)
      else
        FormatBukti := 'TGH'+NBulan+'/D'+Tahun+'-'+CurrToStr(Count);
    end;
    qlbNoBukti.Caption := FormatBukti;
    qlbHalaman.Caption := CurrToStr(Halaman);
  end else
  begin
    Halaman := 1;
    count := count+1;
    if qu001.FieldByName('Valuta').AsString = 'IDR' then
    begin
      if Count < 10 then
        FormatBukti := 'TGH'+NBulan+'/R'+Tahun+'-000'+CurrToStr(Count)
      else
      if Count < 100 then
        FormatBukti := 'TGH'+NBulan+'/R'+Tahun+'-00'+CurrToStr(Count)
      else
      if Count < 1000 then
        FormatBukti := 'TGH'+NBulan+'/R'+Tahun+'-0'+CurrToStr(Count)
      else
        FormatBukti := 'TGH'+NBulan+'/R'+Tahun+'-'+CurrToStr(Count);
    end else
    begin
      if Count < 10 then
        FormatBukti := 'TGH'+NBulan+'/D'+Tahun+'-000'+CurrToStr(Count)
      else
      if Count < 100 then
        FormatBukti := 'TGH'+NBulan+'/D'+Tahun+'-00'+CurrToStr(Count)
      else
      if Count < 1000 then
        FormatBukti := 'TGH'+NBulan+'/D'+Tahun+'-0'+CurrToStr(Count)
      else
        FormatBukti := 'TGH'+NBulan+'/D'+Tahun+'-'+CurrToStr(Count);
    end;
    qlbNoBukti.Caption := FormatBukti;
    qlbHalaman.Caption := CurrToStr(Halaman);
  End;
  Data := qu001.FieldByName('CustID').AsString;
end;

procedure TfmARQRRptRekapPenjualan.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if TRec = 10 then
    bnd001.ForceNewPage := True
  else
    bnd001.ForceNewPage := False;

  if TRec <> 9 then
  begin
    QRShape3.Enabled := False;
    QRLabel3.Enabled := False;
    bnd001.Height := bnd001.Height;
  end else
  begin
    QRShape3.Enabled := True;
    QRLabel3.Enabled := True;
    bnd001.Height := bnd001.Height;
  end;
end;

procedure TfmARQRRptRekapPenjualan.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  Count := 0;
  Data := '';
end;

end.
