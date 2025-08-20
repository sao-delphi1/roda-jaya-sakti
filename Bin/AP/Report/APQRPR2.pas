unit APQRPR2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, APQRMaterialReuqest, DB, ADODB, QuickRpt, QRCtrls, StdCtrls,
  ExtCtrls, jpeg;

type
  TfmAPQRPR2 = class(TfmAPQRMaterialRequest)
    QRLabel14: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPQRPR2: TfmAPQRPR2;

implementation

{$R *.dfm}
uses Myunit;

procedure TfmAPQRPR2.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul1;
end;

procedure TfmAPQRPR2.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul2;
end;

procedure TfmAPQRPR2.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul3;
end;

procedure TfmAPQRPR2.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul4;
end;

procedure TfmAPQRPR2.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto1;
end;

procedure TfmAPQRPR2.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto2;
end;

procedure TfmAPQRPR2.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto3;
end;

procedure TfmAPQRPR2.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto4;
end;

procedure TfmAPQRPR2.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab1;
end;

procedure TfmAPQRPR2.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab2;
end;

procedure TfmAPQRPR2.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab3;
end;

procedure TfmAPQRPR2.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab4;
end;

end.
