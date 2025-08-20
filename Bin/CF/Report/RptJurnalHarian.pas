unit RptJurnalHarian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls;

type
  TfmRptJurnalHarian = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptJurnalHarian: TfmRptJurnalHarian;

implementation

{$R *.dfm}

procedure TfmRptJurnalHarian.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := Date;
  dt2.Date := Date;
end;

end.
