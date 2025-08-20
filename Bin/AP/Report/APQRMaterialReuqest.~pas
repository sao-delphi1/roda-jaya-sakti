unit APQRMaterialReuqest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmAPQRMaterialRequest = class(TfmRptLv4)
    QRLabel13: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel19: TQRLabel;
    quAct: TADOQuery;
    QRImage1: TQRImage;
    QRLabel34: TQRLabel;
    QRDBText9: TQRDBText;
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bndCHAfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
  Urut : integer;
    { Public declarations }
  end;

var
  fmAPQRMaterialRequest: TfmAPQRMaterialRequest;

implementation

{$R *.dfm}
uses MyUnit;

procedure TfmAPQRMaterialRequest.BndDetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
 { with qu002,SQL do
   Begin
     Close;Clear;
     add('select ISNULL(SUM(CASE WHEN Fgtrans<50 Then A.Qty Else A.Qty*-1 End),0) as Stok FROM AllItem A '
        +'WHERE A.ItemID='''+qu001.FieldByName('ItemID').AsString+''' AND A.WareHouseID='''+qu001.FieldByName('WarehouseID').AsString+''' ');
     Open;
   End; }
end;

procedure TfmAPQRMaterialRequest.bndCHAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut:= 1;
end;

procedure TfmAPQRMaterialRequest.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptUrut(InttoStr(Urut));
end;

procedure TfmAPQRMaterialRequest.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Urut:= Urut+1;
end;

procedure TfmAPQRMaterialRequest.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  //Value := qu001.FieldByname('WarehouseName').AsString;
end;

procedure TfmAPQRMaterialRequest.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  //Value := qu001.FieldByname('Address').AsString;
end;

end.
