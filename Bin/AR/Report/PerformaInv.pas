unit PerformaInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmPerformaInv = class(TfmRptLv4)
    GroupFooterBand1: TQRBand;
    qlbBank: TQRLabel;
    qlbRekening: TQRLabel;
    qlbNamaRekening: TQRLabel;
    qlbrekening1: TQRLabel;
    qlbbank1: TQRLabel;
    qlbTerbilang: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape8: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    qlbValuta: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    LaDiskon: TQRLabel;
    qlbCurr1: TQRLabel;
    qlbCurr2: TQRLabel;
    QRLabel18: TQRLabel;
    laSubTotal: TQRLabel;
    qlbCurr3: TQRLabel;
    QRLabel23: TQRLabel;
    laPPN: TQRLabel;
    qlbCurr4: TQRLabel;
    QRShape5: TQRShape;
    QRExpr2: TQRExpr;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    latotalan: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    laongkir: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    laadmin: TQRLabel;
    QRShape2: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    larepak: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBImage1: TQRDBImage;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    quAct: TADOQuery;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRDBText12: TQRDBText;
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure LaDiskonPrint(sender: TObject; var Value: String);
    procedure laPPNPrint(sender: TObject; var Value: String);
    procedure laSubTotalPrint(sender: TObject; var Value: String);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel37Print(sender: TObject; var Value: String);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel80Print(sender: TObject; var Value: String);
    procedure QRLabel43Print(sender: TObject; var Value: String);
    procedure QRLabel51Print(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel50Print(sender: TObject; var Value: String);
    procedure QRLabel46Print(sender: TObject; var Value: String);
    procedure QRLabel54Print(sender: TObject; var Value: String);
    procedure QRLabel55Print(sender: TObject; var Value: String);
    procedure QRLabel56Print(sender: TObject; var Value: String);
    procedure QRLabel42Print(sender: TObject; var Value: String);
    procedure QRLabel66Print(sender: TObject; var Value: String);
    procedure QRLabel67Print(sender: TObject; var Value: String);
    procedure QRLabel49Print(sender: TObject; var Value: String);
    procedure QRLabel41Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Urut,hal : integer;
    jumlah : currency;
  end;

var
  fmPerformaInv: TfmPerformaInv;

implementation

Uses MyUnit, RptLv0;

{$R *.dfm}

procedure TfmPerformaInv.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  jumlah := jumlah+qu002.FieldBYName('Qty').AsCurrency;

  hal := hal + 1;
  if hal > 15 then
  begin
    hal := 1;
    MyReport.NewPage;
  end;
end;

procedure TfmPerformaInv.QRLabel24Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptUrut(inttostr(Urut));
end;

procedure TfmPerformaInv.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmPerformaInv.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmPerformaInv.QRExpr2Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmPerformaInv.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmPerformaInv.LaDiskonPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmPerformaInv.laPPNPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmPerformaInv.laSubTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmPerformaInv.GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  jumlah := 0;
  Urut := 1;
  hal := 1;
end;

procedure TfmPerformaInv.QRLabel36Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByname('WarehouseName').AsString;
end;

procedure TfmPerformaInv.QRLabel37Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByname('AlamatPT').AsString;
end;

procedure TfmPerformaInv.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  {if qu001.FieldByname('FgOtoJkt').AsString = 'T' then
  begin
    //QRLabel48.Enabled := False;
    //QRLabel49.Enabled := False;
  end else
  begin
   // QRLabel48.Enabled := True;
   // QRLabel49.Enabled := True;
  end;      }

  {with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT '
       +'(SELECT SalesName FROM ARMsSales WHERE SalesID='''+qu001.FieldByName('SalesID').AsString+''') as Sales4, '
       +'(SELECT SalesName FROM ARMsSales WHERE SalesID='''+qu001.FieldByName('UserA').AsString+''') as Sales5, '
       +'(SELECT jabatan FROM ARMsSales WHERE SalesID='''+qu001.FieldByName('SalesID').AsString+''') as jabatan4, '
       +'(SELECT jabatan FROM ARMsSales WHERE SalesID='''+qu001.FieldByName('UserA').AsString+''') as jabatan5 ');
    Open;
  end;
  QrLabel45.Caption := quAct.FieldByName('Sales4').ASString;
  QrLabel42.Caption := quAct.FieldByName('Sales5').ASString;
  QrLabel48.Caption := quAct.FieldByName('jabatan4').ASString;
  QrLabel49.Caption := quAct.FieldByName('jabatan5').ASString;
  QrLabel66.Caption := quAct.FieldByName('Sales5').ASString;
  QrLabel76.Caption := quAct.FieldByName('Sales4').ASString;
  QrLabel67.Caption := quAct.FieldByName('jabatan5').ASString;
  QrLabel77.Caption := quAct.FieldByName('jabatan4').ASString;     }

end;

procedure TfmPerformaInv.QRLabel80Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Qty : '+FormatRptKurung(Currtostr(jumlah));
end;

procedure TfmPerformaInv.QRLabel43Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := judul7;
end;

procedure TfmPerformaInv.QRLabel51Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := judul8;
end;

procedure TfmPerformaInv.QRLabel40Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := oto7;
end;

procedure TfmPerformaInv.QRLabel50Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := oto8;
end;

procedure TfmPerformaInv.QRLabel46Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := oto9;
end;

procedure TfmPerformaInv.QRLabel54Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := jab7;
end;

procedure TfmPerformaInv.QRLabel55Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := jab8;
end;

procedure TfmPerformaInv.QRLabel56Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := jab9;
end;

procedure TfmPerformaInv.QRLabel42Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldBYName('UserA').ASString;
end;

procedure TfmPerformaInv.QRLabel66Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := oto9;
end;

procedure TfmPerformaInv.QRLabel67Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := jab9;
end;

procedure TfmPerformaInv.QRLabel49Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldBYName('JabatA').ASString;
end;

procedure TfmPerformaInv.QRLabel41Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := judul9;
end;

procedure TfmPerformaInv.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Urut := Urut + 1;
end;

end.
