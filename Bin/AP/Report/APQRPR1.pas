unit APQRPR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, APQRMaterialReuqest, DB, ADODB, QuickRpt, QRCtrls, StdCtrls,
  ExtCtrls, jpeg;

type
  TfmAPQRPR1 = class(TfmAPQRMaterialRequest)
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
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPQRPR1: TfmAPQRPR1;

implementation

{$R *.dfm}
uses Myunit;

procedure TfmAPQRPR1.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul1;
end;

procedure TfmAPQRPR1.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul2;
end;

procedure TfmAPQRPR1.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul3;
end;

procedure TfmAPQRPR1.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul4;
end;

procedure TfmAPQRPR1.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul5;
end;

procedure TfmAPQRPR1.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto1;
end;

procedure TfmAPQRPR1.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto2;
end;

procedure TfmAPQRPR1.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto3;
end;

procedure TfmAPQRPR1.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto4;
end;

procedure TfmAPQRPR1.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto5;
end;

procedure TfmAPQRPR1.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab1;
end;

procedure TfmAPQRPR1.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab2;
end;

procedure TfmAPQRPR1.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab3;
end;

procedure TfmAPQRPR1.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab4;
end;

procedure TfmAPQRPR1.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab5;
end;

end.
