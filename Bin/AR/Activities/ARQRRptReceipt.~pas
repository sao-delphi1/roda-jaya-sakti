unit ARQRRptReceipt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptReceipt = class(TfmRptLv4)
    QRLabel2: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel26: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    laGT: TQRLabel;
    qlbTerbilang: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText20: TQRDBText;
    qlbNo: TQRLabel;
    Button1: TButton;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape18: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    quCalc: TADOQuery;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText20Print(sender: TObject; var Value: String);
    procedure laGTPrint(sender: TObject; var Value: String);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bndCHAfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure qlbNoPrint(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut : Integer;
  end;

var
  fmARQRRptReceipt: TfmARQRRptReceipt;

implementation

{$R *.dfm}
uses MyUnit, RptLv1;

procedure TfmARQRRptReceipt.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := 1;
end;

procedure TfmARQRRptReceipt.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := Urut + 1;
end;

procedure TfmARQRRptReceipt.QRDBText20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptReceipt.laGTPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptReceipt.GroupFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if urut > 8 then
    GroupFooterBand1.AlignToBottom := True
  else
    GroupFooterBand1.AlignToBottom := False;

  if urut > 8 then
    BndPF.AlignToBottom := True
  else
    BndPF.AlignToBottom := False;
end;

procedure TfmARQRRptReceipt.bndCHAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut := 1;
end;

procedure TfmARQRRptReceipt.qlbNoPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptUrut(IntToStr(Urut));
end;

procedure TfmARQRRptReceipt.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quCalc,SQL do
 begin
   Close;Clear;
   Add('SELECT isnull(STUFF(g.y,1,1,''''),'''') as No_DO FROM ARTrPurchaseOrderHd A '
      +'CROSS APPLY ( '
      +'Select distinct '','' + G.KonTransBrgID from ARTrKonTransBrghd G '
      +'Where G.SOID=A.POID for xml path ('''') ) as g(y) '
      +'WHERE A.POID='''+qu002.FieldBYName('NoPO').AsString+''' ');
   Open;
 end;
 QRLabel10.Caption := quCalc.FieldBYName('No_DO').AsString ;
end;

end.
