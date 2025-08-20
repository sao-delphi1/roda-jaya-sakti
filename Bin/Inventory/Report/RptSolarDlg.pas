unit RptSolarDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls;

type
  TfmRptSolarDlg = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    dgrReport: TdxDBGrid;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptSolarDlg: TfmRptSolarDlg;

implementation

{$R *.dfm}

end.
