unit APQRPR3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, APQRMaterialReuqest, DB, ADODB, QuickRpt, QRCtrls, StdCtrls,
  ExtCtrls;

type
  TfmAPQRPR3 = class(TfmAPQRMaterialRequest)
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
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPQRPR3: TfmAPQRPR3;

implementation

{$R *.dfm}
uses MyUnit;

procedure TfmAPQRPR3.QRLabel14Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul1;
end;

procedure TfmAPQRPR3.QRLabel4Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul2;
end;

procedure TfmAPQRPR3.QRLabel11Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul3;
end;

procedure TfmAPQRPR3.QRLabel22Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul4;
end;

procedure TfmAPQRPR3.QRLabel26Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul5;
end;

procedure TfmAPQRPR3.QRLabel31Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := judul6;
end;

procedure TfmAPQRPR3.QRLabel27Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto1;
end;

procedure TfmAPQRPR3.QRLabel10Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto2;
end;

procedure TfmAPQRPR3.QRLabel21Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto3;
end;

procedure TfmAPQRPR3.QRLabel25Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto4;
end;

procedure TfmAPQRPR3.QRLabel30Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto5;
end;

procedure TfmAPQRPR3.QRLabel33Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := oto6;
end;

procedure TfmAPQRPR3.QRLabel23Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab1;
end;

procedure TfmAPQRPR3.QRLabel5Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab2;
end;

procedure TfmAPQRPR3.QRLabel20Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab3;
end;

procedure TfmAPQRPR3.QRLabel24Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab4;
end;

procedure TfmAPQRPR3.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab5;
end;

procedure TfmAPQRPR3.QRLabel32Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := jab6;
end;

end.
