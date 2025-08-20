unit OPRptProduksiDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCore, ComCtrls, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmOPRptProduksiDet = class(TfmRptDlg)
    quActTanggal: TStringField;
    quActProdID: TStringField;
    quActSiteID: TStringField;
    quActNoUnit: TStringField;
    quActShift: TStringField;
    quActFgArea: TStringField;
    quActNamaArea: TStringField;
    quActItemId: TStringField;
    quActMaterial: TStringField;
    quActJumlah: TBCDField;
    quActNumAll: TAutoIncField;
    quActSalesName: TStringField;
    quActNoUnit_1: TStringField;
    quActSalesName_1: TStringField;
    quActQty: TBCDField;
    quActPayload: TBCDField;
    quActTonase: TBCDField;
    quActBCM: TBCDField;
    quActDelPoint: TStringField;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn11: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn15: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    procedure bbCancelClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPRptProduksiDet: TfmOPRptProduksiDet;

implementation

{$R *.dfm}
uses MyUnit, UnitDate, UnitGeneral;

procedure TfmOPRptProduksiDet.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmOPRptProduksiDet.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dgrReport.SaveToXLS(saveDlg.FileName, true)
      else
        dgrReport.SaveToXLS(saveDlg.FileName + '.xls', true);
    end;
end;

procedure TfmOPRptProduksiDet.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportColumn1,TRUE);
  SetReadOnly2(dgrReportColumn2,TRUE);
  SetReadOnly2(dgrReportColumn3,TRUE);
  SetReadOnly2(dgrReportColumn4,TRUE);
  SetReadOnly2(dgrReportColumn5,TRUE);
  SetReadOnly2(dgrReportColumn6,TRUE);
  SetReadOnly2(dgrReportColumn7,TRUE);
  SetReadOnly2(dgrReportColumn8,TRUE);
  SetReadOnly2(dgrReportColumn9,TRUE);
  SetReadOnly2(dgrReportColumn10,TRUE);
  SetReadOnly2(dgrReportColumn11,TRUE);
  SetReadOnly2(dgrReportColumn12,TRUE);
  SetReadOnly2(dgrReportColumn13,TRUE);
  SetReadOnly2(dgrReportColumn14,TRUE);
  SetReadOnly2(dgrReportColumn15,TRUE);
  SetReadOnly2(dgrReportColumn16,TRUE);
  SetReadOnly2(dgrReportColumn17,TRUE);
end;

procedure TfmOPRptProduksiDet.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;

  dtpDari.Date := EncodeDate(getyear(date),getmonth(date),1);
  dtpSmp.Date := date;
  dtpDari.SetFocus;
  bbRefreshClick(bbRefresh);
end;

procedure TfmOPRptProduksiDet.bbRefreshClick(Sender: TObject);
var sQuery : string;
begin
  inherited;
  sQuery := ' select CONVERT(VARCHAR(10),C.TransDate,111) as Tanggal,A.ProdID,C.SiteID,B.NoUnit, '
           +' CASE WHEN B.FGShift=''1'' THEN ''Shift 1'' ELSE ''Shift 2'' END as Shift, '
           +' B.FgArea,D.NmMaster as NamaArea,B.ItemId,E.NmMaster as Material, '
           +' B.Jumlah,B.NumAll,F.SalesName,A.NoUnit,G.SalesName,A.Qty,A.Payload,A.Tonase,A.BCM,A.DelPoint '
           +' from OPTrProduksiDtSN A '
           +' INNER JOIN OPTrProduksiDt B on A.ProdID=B.ProdID AND A.NumAll=B.NumAll '
           +' INNER JOIN OPTrProduksiHd C on C.ProdID=B.ProdID '
           +' LEFT JOIN AllMaster D on B.FgArea=D.KdMaster AND D.FgMaster=''E'' '
           +' LEFT JOIN AllMaster E on B.ItemId=E.KdMaster AND E.FgMaster=''H'' '
           +' LEFT JOIN ARMsSales F on B.SalesID=F.SalesId '
           +' LEFT JOIN ARMsSales G on A.SalesID=G.SalesId '
           +' WHERE CONVERT(VARCHAR(8),C.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' '
           +' ORDER BY C.TransDate,C.SiteID,B.NoUnit,B.FGShift,B.NumAll ';

  with quAct do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;
end;

end.
