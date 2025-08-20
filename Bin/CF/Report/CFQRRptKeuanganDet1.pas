unit CFQRRptKeuanganDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, QuickRpt, DB, ADODB, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmCFQRRptKeuanganDet = class(TfmRptLv1)
    ChildBand1: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    ds002: TDataSource;
    quAwal: TADOQuery;
    QRDBText6: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    qu002: TADOQuery;
    qu003: TADOQuery;
    GroupFooterBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    qu003Transdate: TDateTimeField;
    qu003Tanggal: TStringField;
    qu003Note: TStringField;
    qu003Amount: TBCDField;
    qu003GroupRekId: TStringField;
    qu003BankName: TStringField;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    ds003: TDataSource;
    qu004: TADOQuery;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    BCDField1: TBCDField;
    StringField3: TStringField;
    StringField4: TStringField;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    qu003VoucherNo: TStringField;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlTotalPrint(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari,TanggalSampai : TDateTime;
    Awal,Akhir,Masuk,Keluar,sMasuk,sKeluar : currency;
  end;

var
  fmCFQRRptKeuanganDet: TfmCFQRRptKeuanganDet;

implementation

uses UnitGeneral, MyUnit, RptLv0;

{$R *.dfm}

procedure TfmCFQRRptKeuanganDet.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuanganDet.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
   value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuanganDet.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Awal :=0;
  Akhir := 0;
  Masuk := 0;
  Keluar := 0;
  sMasuk := 0;
  sKeluar := 0;
end;

procedure TfmCFQRRptKeuanganDet.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value :='Valuta '+Value  ;
end;

procedure TfmCFQRRptKeuanganDet.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  sMasuk :=0;
  sKeluar := 0;
end;

procedure TfmCFQRRptKeuanganDet.qrlTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(awal))
end;

procedure TfmCFQRRptKeuanganDet.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  masuk :=0;
  Keluar :=0;
end;

procedure TfmCFQRRptKeuanganDet.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(currtostr(Masuk));
end;

procedure TfmCFQRRptKeuanganDet.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(currtostr(Keluar));
end;

procedure TfmCFQRRptKeuanganDet.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(currtostr(Masuk-Keluar));
end;

procedure TfmCFQRRptKeuanganDet.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptkurung(currtostr(sMasuk));
end;

procedure TfmCFQRRptKeuanganDet.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptkurung(currtostr(sKeluar));
end;

procedure TfmCFQRRptKeuanganDet.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(currtostr(sMasuk-sKeluar));
end;

procedure TfmCFQRRptKeuanganDet.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'TOTAL PER VALUTA '+qu001.Fieldbyname('ValutaId').AsString;
end;

procedure TfmCFQRRptKeuanganDet.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'TOTAL PER REKENING '+qu002.Fieldbyname('RekeningName').AsString;
end;

procedure TfmCFQRRptKeuanganDet.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  with qu003,sql do
  begin
     Close;Clear;
     add(' select A.Transdate,VoucherNo,Convert(Varchar(10),Transdate,103) as Tanggal,A.Note,A.Amount,A.GroupRekId,B.BankName'
        +' FROM AllMoney A LEFT JOIN CFMsbank B ON A.tempField=B.BankId WHERE FgBBKK IN(''KM'',''KK'',''PIK'') AND'
        +' Convert(varchar(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',TanggalDari)+''' AND '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''''
        +' AND ValutaId='''+qu001.FieldByName('ValutaID').AsString+''' AND RekeningId='''+qu002.Fieldbyname('RekeningId').AsString+'''');
     add(' order by Convert(varchar(8),TransDate,112),NumAll');
     Open;
   end;
end;

procedure TfmCFQRRptKeuanganDet.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if (qu003.FieldByName('GroupRekId').AsString =sDGRPj) or
     (qu003.FieldByName('GroupRekId').AsString =sDGRPLL) Then
  Begin
    QRDBText2.Left := 768;
    Masuk := Masuk + qu003.fieldbyname('Amount').AsCurrency;
    sMasuk := sMasuk + qu003.fieldbyname('Amount').AsCurrency;
  End
  else
  if (qu003.FieldByName('GroupRekId').AsString =sDGRPb) or
     (qu003.FieldByName('GroupRekId').AsString =sDGRBi) Then
  Begin
    QRDBText2.Left := 892;
    Keluar := Keluar + qu003.fieldbyname('Amount').AsCurrency;
    sKeluar := sKeluar + qu003.fieldbyname('Amount').AsCurrency;
  End
  Else
   Awal := 0;
end;

end.


