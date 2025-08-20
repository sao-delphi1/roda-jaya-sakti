unit QRPRBlmPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmQRPRBlmPO = class(TfmRptLv3)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQRPRBlmPO: TfmQRPRBlmPO;

implementation

{$R *.dfm}
uses MyUnit;

procedure TfmQRPRBlmPO.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmQRPRBlmPO.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

procedure TfmQRPRBlmPO.QRDBText4Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptKurung(Value);
end;

end.
