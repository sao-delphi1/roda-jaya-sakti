unit OPRptWorkUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, Buttons, ExtCtrls, dxEditor, dxEdLib;

type
  TfmOPRptWorkUnit = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
    quActTSID: TStringField;
    quActNoUnit: TStringField;
    quActJumlah: TBCDField;
    quActTonase: TBCDField;
    quActSalesID: TStringField;
    quActSalesName: TStringField;
    quActTransdate: TDateTimeField;
    quActSiteName: TStringField;
    quActJamMasuk: TDateTimeField;
    quActJamKeluar: TDateTimeField;
    dgrReportColumn1: TdxDBGridColumn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    bbRefresh: TBitBtn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPRptWorkUnit: TfmOPRptWorkUnit;

implementation

{$R *.dfm}

procedure TfmOPRptWorkUnit.FormShow(Sender: TObject);
begin
  inherited;
  dt1.date := Date;
  dt2.Date := date;
end;

procedure TfmOPRptWorkUnit.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quAct, SQl do
  begin
    close;Clear;
    Add('select A.TSID,A.NoUnit,A.Jumlah,A.JamMasuk,A.JamKeluar,A.Tonase,A.SalesID,C.SalesName,B.Transdate,D.SiteName from OPWorkUnitdt A '
       +'inner join OPWorkUnitHd B on A.TSID=B.TSID inner join ARMsSales C on A.SalesID=C.SalesID inner join INMsSites D on B.SiteID=D.SiteID '
       +'Where convert(varchar(10),b.transdate,112) between '''+formatDatetime('yyyymmdd',dt1.date)+''' and '
       +''''+formatdatetime('yyyymmdd',dt2.date)+''' ');
    Open;
  end;
end;

end.
