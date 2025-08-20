unit ARQRRptSuratJalan;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmQRRptSuratJalan = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qlbNamaInvoice: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    qu003: TADOQuery;
    ds002: TDataSource;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    qrlDate: TQRLabel;
    QRDBText3: TQRDBText;
    quCalc: TADOQuery;
    QRLabel40: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Data,CekBulat : String;
    Count : Currency;
  end;

var
  fmQRRptSuratJalan: TfmQRRptSuratJalan;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmQRRptSuratJalan.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if CekBulat = 'Y' then
  Value:= FormatRptUrut(Value)
  else
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmQRRptSuratJalan.bnd001BeforePrint(Sender: TQRCustomBand;
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

  {if qu002.FieldByName('FgLoot').asString = 'Y' then
  begin
    with quCalc,SQL do
    begin
     Close;Clear;
     Add('SELECT isnull(STUFF(g.y,1,1,''''),'''') as lokasi FROM ARTrKonTransBrgDt A '
        +'CROSS APPLY ( '
        //+'Select distinct '','' + G.SNID + ''('' + CAST(CAST(G.Qty AS MONEY) AS VARCHAR) + '')'' from ARTrKonTransBrgDtSN G '
        +'Select distinct '','' + G.SNID from ARTrKonTransBrgDtSN G '
        +'Where G.KonTransBrgID=A.KontransBrgID AND G.ItemID=A.ItemID for xml path ('''') ) as g(y) '
        +'WHERE A.KonTransBrgId='''+qu001.FieldBYName('kontransbrgid').AsString+''' and A.Itemid='''+qu002.FieldByName('ItemId').AsString+''' ');
     //showmessage(sql.text);
     Open;

    end;
    QRLabel11.Caption := quCalc.FieldBYName('lokasi').AsString ;
  end else
  begin   }
    QRLabel11.Caption := '';
  //end;

 if (qu002.FieldByName('Qty').AsCurrency = qu002.FieldByName('Qty').AsInteger) then
  CekBulat:= 'Y'
  else
  CekBulat:= 'T';
end;

procedure TfmQRRptSuratJalan.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Count := 0;
end;

procedure TfmQRRptSuratJalan.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu001.FieldByName('City').AsString = '' then
    Value := qu001.FieldByName('Address').AsString + #13 + 'UP : ' + qu001.FieldByName('CPerson').AsString
  else
    Value := qu001.FieldByName('Address').AsString + #13 + 'UP : ' + qu001.FieldByName('CPerson').AsString + ' ' + qu001.FieldByName('City').AsString;
end;

procedure TfmQRRptSuratJalan.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('WarehouseName').ASString;
end;

procedure TfmQRRptSuratJalan.QRLabel29Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('AlamatPT').ASString;
end;

procedure TfmQRRptSuratJalan.QRLabel31Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('SaleID').ASString;
end;

procedure TfmQRRptSuratJalan.QRLabel32Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('Tgl').ASString;  Value := qu001.FieldByName('Tgl').ASString;
end;

procedure TfmQRRptSuratJalan.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Count := 0;
end;

end.
