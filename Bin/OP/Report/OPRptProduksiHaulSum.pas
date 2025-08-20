unit OPRptProduksiHaulSum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCore, dxTL, dxDBCtrl, dxDBGrid, ComCtrls;

type
  TfmOPRptProduksiHaulSum = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    dgrReport: TdxDBGrid;
    dxDBGrid1: TdxDBGrid;
    quActDt: TADOQuery;
    dsActDt: TDataSource;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    quActNoUnit: TStringField;
    quActRetase: TBCDField;
    quActPayload: TBCDField;
    quActTonase: TBCDField;
    quActBCM: TBCDField;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    quActDtProdId: TStringField;
    quActDtNoUnit: TStringField;
    quActDtQty: TBCDField;
    quActDtPayload: TBCDField;
    quActDtTonase: TBCDField;
    quActDtBCM: TBCDField;
    quActDtDelPoint: TStringField;
    quActDtNmMaster: TStringField;
    quActDtItemId: TStringField;
    quActDtFgArea: TStringField;
    quActDtShift: TStringField;
    quActDtHslProduksi: TStringField;
    quActDtArea: TStringField;
    quActDtDriverH: TStringField;
    quActDtDriverD: TStringField;
    quActDtDigger: TStringField;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    dxDBGrid1Column13: TdxDBGridColumn;
    quActDtTanggal: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure dsActDtStateChange(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPRptProduksiHaulSum: TfmOPRptProduksiHaulSum;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, Search;

procedure TfmOPRptProduksiHaulSum.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := True;
  quActDt.Active := TRUE;

  dtpDari.Date := date;
  dtpSmp.date := date;
  bbRefreshClick(bbRefresh);
end;

procedure TfmOPRptProduksiHaulSum.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select A.NoUnit,ISNULL(SUM(A.Qty),0) as Retase,A.Payload,ISNULL(SUM(A.Tonase),0) as Tonase,ISNULL(SUM(A.BCM),0) as BCM '
       +'from OPTrProduksiDtSN A '
       +'INNER JOIN OPTrProduksiHd B on A.ProdID=B.ProdID ');
    Add('WHERE CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dtpDari.Date)+''' AND '
       +''''+FormatDateTime('yyyymmdd',dtpSmp.Date)+''' ');
    Add('GROUP BY A.NoUnit,A.Payload ');
    Open;
  end;

  with quActDt,SQL do
  begin
    Close;Clear;
    Add('select A.ProdId,D.TransDate as Tanggal,A.NoUnit,A.Qty,A.Payload,A.Tonase,A.BCM,A.DelPoint,B.NmMaster, '
       +'C.ItemId,C.FgArea,CASE WHEN C.FGShift=''1'' THEN ''Shift 1'' ELSE ''Shift 2'' END as Shift,C.NoUnit as Digger, '
       +'E.NmMaster as HslProduksi,F.NmMaster as Area,G.SalesName as DriverH,H.SalesName as DriverD '
       +'from OPTrProduksiDtSN A '
       +'LEFT JOIN OPTrProduksidt C on A.ProdID=C.ProdID AND A.NumAll=C.NumAll AND A.ItemId=C.ItemId '
       +'LEFT JOIN OPTrProduksiHd D on A.ProdID=D.ProdID '
       +'LEFT JOIN AllMaster B on A.DelPoint=B.KdMaster '
       +'LEFT JOIN AllMaster E on C.ItemId=E.KdMaster '
       +'LEFT JOIN AllMaster F on C.FgArea=F.KdMaster '
       +'LEFT JOIN ARMsSales G on A.SalesID=G.SalesID '
       +'LEFT JOIN ARMsSales H on C.SalesID=H.SalesID '
       +'where A.NoUnit=:NoUnit '
       +'AND CONVERT(VARCHAR(10),D.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dtpDari.Date)+''' AND '
       +''''+FormatDateTime('yyyymmdd',dtpSmp.Date)+''' '
       +'ORDER BY D.Transdate ');
    Open;
  end;
end;

procedure TfmOPRptProduksiHaulSum.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportColumn1,TRUE);
  SetReadOnly2(dgrReportColumn2,TRUE);
  SetReadOnly2(dgrReportColumn3,TRUE);
  SetReadOnly2(dgrReportColumn4,TRUE);
  SetReadOnly2(dgrReportColumn5,TRUE);
end;

procedure TfmOPRptProduksiHaulSum.dsActDtStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dxDBGrid1Column1,TRUE);
  SetReadOnly2(dxDBGrid1Column2,TRUE);
  SetReadOnly2(dxDBGrid1Column3,TRUE);
  SetReadOnly2(dxDBGrid1Column4,TRUE);
  SetReadOnly2(dxDBGrid1Column5,TRUE);
  SetReadOnly2(dxDBGrid1Column6,TRUE);
  SetReadOnly2(dxDBGrid1Column7,TRUE);
  SetReadOnly2(dxDBGrid1Column8,TRUE);
  SetReadOnly2(dxDBGrid1Column9,TRUE);
  SetReadOnly2(dxDBGrid1Column10,TRUE);
  SetReadOnly2(dxDBGrid1Column11,TRUE);
  SetReadOnly2(dxDBGrid1Column12,TRUE);
  SetReadOnly2(dxDBGrid1Column13,TRUE);
end;

procedure TfmOPRptProduksiHaulSum.bbExcelClick(Sender: TObject);
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

procedure TfmOPRptProduksiHaulSum.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
