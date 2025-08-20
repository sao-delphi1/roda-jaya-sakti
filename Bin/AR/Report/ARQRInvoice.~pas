unit ARQRInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls,
  dxCntner, dxExEdtr, dxEdLib, dxDBELib;

type
  TfmARQRinvoice = class(TfmRptLv4)
    QRShape8: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText13: TQRDBText;
    qlbjatuhTempo: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText6: TQRDBText;
    qlbTempo: TQRLabel;
    QRLabel21: TQRLabel;
    qlbKet: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRLabel26: TQRLabel;                                                                                
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape3: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel20: TQRLabel;
    qlbBank: TQRLabel;
    laGT: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    qlbTerbilang: TQRLabel;
    qlbCurr5: TQRLabel;
    qlbNamaRekening: TQRLabel;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    laongkir: TQRLabel;
    QRLabel3: TQRLabel;
    qlbbank1: TQRLabel;
    QRLabel18: TQRLabel;
    laSubTotal: TQRLabel;
    qlbCurr3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText11: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel14: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRShape6: TQRShape;
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure laSubTotalPrint(sender: TObject; var Value: String);
    procedure laongkirPrint(sender: TObject; var Value: String);
    procedure laGTPrint(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure BndTitleAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut,NewUrut : Integer;
  end;

var
  fmARQRinvoice: TfmARQRinvoice;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRinvoice.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := 0;
  NewUrut := 0;
end;

procedure TfmARQRinvoice.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := '@ '+qu001.FieldByName('CurrID').ASString+' '+FormatRptQtyKurung2(qu002.FieldByName('HargaKurs').ASString)+
           ', Rate: '+FormatRptQtyKurung2(qu002.FieldByName('Rate').ASString);
end;

procedure TfmARQRinvoice.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Urut := Urut+1;
  NewUrut := NewUrut + 1;

  if NewUrut > 19 then
  begin
    QRShape6.Enabled := TRUE;
    bnd001.ForceNewPage := True;
  end Else
  begin
    QRShape6.Enabled := False;
    bnd001.ForceNewPage := False;
  end;


end;

procedure TfmARQRinvoice.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptUrut(inttoStr(Urut));
end;

procedure TfmARQRinvoice.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  //Urut := Urut + 1;
end;

procedure TfmARQRinvoice.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmARQRinvoice.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmARQRinvoice.laSubTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmARQRinvoice.laongkirPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmARQRinvoice.laGTPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmARQRinvoice.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtyKurung2(Value);
end;

procedure TfmARQRinvoice.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu001.FieldByName('namattd').AsString<>'' then
  Value := qu001.FieldByName('namattd').AsString;
end;

procedure TfmARQRinvoice.BndTitleAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  NewUrut := 0;
end;

end.
