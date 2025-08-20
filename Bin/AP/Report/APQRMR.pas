unit APQRMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, APQRMaterialReuqest, DB, ADODB, QuickRpt, QRCtrls, StdCtrls,
  ExtCtrls, jpeg;

type
  TfmAPQRMR = class(TfmAPQRMaterialRequest)
    QRLabel14: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPQRMR: TfmAPQRMR;

implementation

{$R *.dfm}

end.
