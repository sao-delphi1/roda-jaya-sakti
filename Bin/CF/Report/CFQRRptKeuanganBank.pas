unit CFQRRptKeuanganBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, QuickRpt, DB, ADODB, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmCFQRRptKeuanganBank = class(TfmRptLv1)
    ChildBand1: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qu002: TADOQuery;
    SummaryBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    ds002: TDataSource;
    quAwal: TADOQuery;
    QRSubDetail2: TQRSubDetail;
    qu003: TADOQuery;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrlTotal: TQRLabel;
    QRDBText6: TQRDBText;
    GroupFooterBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlTotalPrint(sender: TObject; var Value: String);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari,TanggalSampai : TDateTime;
    Awal,Akhir : currency;
    StForm : string;
  end;

var
  fmCFQRRptKeuanganBank: TfmCFQRRptKeuanganBank;

implementation

uses UnitGeneral, MyUnit, RptLv0;

{$R *.dfm}

procedure TfmCFQRRptKeuanganBank.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuanganBank.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
   value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuanganBank.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Awal :=0;
  Akhir := 0;
end;

procedure TfmCFQRRptKeuanganBank.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value :='Saldo Awal '+StForm+' '+qu001.Fieldbyname('BankName').AsString+' Tanggal '+FormatDateTime('dd/MM/yyyy',TanggalDari)+' : '+FormatRptkurung(currtostr(Awal));
end;

procedure TfmCFQRRptKeuanganBank.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quAwal,sql do
  Begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Case WHEN K.Jenis=''D'' THEN K.Amount ELSE K.Amount*-1 END),0) as Saldo FROM ( '
       +'SELECT B.TransDate,B.BankID,A.RekeningID,Jenis,Amount FROM CFtrkkbbDt A inner join Cftrkkbbhd B on A.voucherid=B.voucherID UNION ALL '
       +'SELECT A.TransDate,A.BankID,B.RekeningID,CASE WHEN A.FlagKKBB IN (''BM'',''KM'') THEN ''D'' ELSE ''K'' END, '
       +'CASE WHEN A.FlagKKBB IN (''BM'',''KM'') THEN JumlahD ELSE JumlahK END FROM CFTrKKBBHD A '
       +'Inner join CFMsBank B on A.BankID=B.BankID '
       +') as K '
       +'where K.rekeningid in (select X.rekeningid from cfmsbank X where X.BankID='''+qu001.Fieldbyname('TempField').AsString+''') '
       +'AND CONVERT(VARCHAR(8),K.TransDate,112) <'''+FormatDateTime('yyyyMMdd',TanggalDari)+''' ');
    Open;
  End;
  Awal := quAwal.FieldByName('Saldo').AsCurrency;
end;

procedure TfmCFQRRptKeuanganBank.qrlTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(Awal))
end;

procedure TfmCFQRRptKeuanganBank.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
   if (qu003.FieldByName('Jenis').AsString='D') Then
  Begin
    QRDBText2.Left := 475;
    Awal := Awal + qu003.fieldbyname('Amount').AsCurrency;
  End
  else
  if (qu003.FieldByName('Jenis').AsString='K') Then
  Begin
    QRDBText2.Left := 570;
    Awal := Awal - qu003.fieldbyname('Amount').AsCurrency;
  End
  Else
    PrintBand := False;
end;

procedure TfmCFQRRptKeuanganBank.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value :='Saldo Akhir '+StForm+' '+qu001.Fieldbyname('BankName').AsString+' Tanggal '+FormatDateTime('dd/MM/yyyy',TanggalSampai)+' : '+FormatRptkurung(currtostr(Awal));
end;

procedure TfmCFQRRptKeuanganBank.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  with qu003,sql do
  Begin
    Close;Clear;
    Add('SELECT K.Transdate,K.VoucherID as VoucherNo,Convert(Varchar(10),K.Transdate,103) as Tanggal,K.Note,K.Amount,K.Jenis,L.BankName FROM ( '
       +'SELECT A.voucherID,B.TransDate,C.BankID,A.RekeningID,Jenis,Amount,A.Note+ISNULL('' - ''+B.Note,'''') as Note FROM CFtrkkbbDt A inner join Cftrkkbbhd B on A.voucherid=B.voucherID '
       +'INNER JOIN CFMsBank C on A.RekeningID=C.RekeningId UNION ALL '
       +'SELECT A.voucherID,B.TransDate,B.BankID,A.RekeningID,CASE WHEN Jenis=''D'' THEN ''K'' ELSE ''D'' END,Amount ,A.Note+ISNULL('' - ''+B.Note,'''')  '
       //+',B.Note as Note '
       +'FROM CFtrkkbbDt A '
       +'inner join Cftrkkbbhd B on A.voucherid=B.voucherID '
       +'WHERE B.FlagKKBB IN (''BM'',''KM'',''BK'',''KK'') AND B.FgPayment=''T'' '
       +') as K INNER JOIN CFMsBank L ON K.BankID=L.BankId '
       +'where K.BankID='''+qu001.Fieldbyname('TempField').AsString+''' '
       +'AND CONVERT(VARCHAR(8),K.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',TanggalDari)+''' AND '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''' '
       +'ORDER BY K.TransDate,K.jenis ');
    Open;
  End;
end;

end.


