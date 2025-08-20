unit OPRptProduksiHaulDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ComCtrls,
  StdCtrls, DB, ADODB, Buttons, ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmOPRptProduksiHaulDet = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    dxDBGrid1: TdxDBGrid;
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
    quActProdId: TStringField;
    quActNoUnit: TStringField;
    quActQty: TBCDField;
    quActPayload: TBCDField;
    quActTonase: TBCDField;
    quActBCM: TBCDField;
    quActDelPoint: TStringField;
    quActNmMaster: TStringField;
    quActItemId: TStringField;
    quActFgArea: TStringField;
    quActShift: TStringField;
    quActDigger: TStringField;
    quActHslProduksi: TStringField;
    quActArea: TStringField;
    quActDriverH: TStringField;
    quActDriverD: TStringField;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    quActTanggal: TDateTimeField;
    procedure bbExcelClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPRptProduksiHaulDet: TfmOPRptProduksiHaulDet;

implementation

uses MyUnit, UnitGeneral;
{$R *.dfm}

procedure TfmOPRptProduksiHaulDet.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
  begin
    if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
      dxDBGrid1.SaveToXLS(saveDlg.FileName, true)
    else
      dxDBGrid1.SaveToXLS(saveDlg.FileName + '.xls', true);
  end;
end;

procedure TfmOPRptProduksiHaulDet.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select A.ProdId,D.Transdate as Tanggal,A.NoUnit,A.Qty,A.Payload,A.Tonase,A.BCM,A.DelPoint,B.NmMaster, '
       +'C.ItemId,C.FgArea,CASE WHEN C.FGShift=''1'' THEN ''Shift 1'' ELSE ''Shift 2'' END as Shift,C.NoUnit as Digger, '
       +' E.NmMaster as HslProduksi,F.NmMaster as Area,G.SalesName as DriverH,H.SalesName as DriverD '
       +'from OPTrProduksiDtSN A '
       +'LEFT JOIN OPTrProduksidt C on A.ProdID=C.ProdID AND A.NumAll=C.NumAll AND A.ItemId=C.ItemId '
       +'LEFT JOIN OPTrProduksiHd D on A.ProdID=D.ProdID '
       +'LEFT JOIN AllMaster B on A.DelPoint=B.KdMaster '
       +'LEFT JOIN AllMaster E on C.ItemId=E.KdMaster '
       +'LEFT JOIN AllMaster F on C.FgArea=F.KdMaster '
       +'LEFT JOIN ARMsSales G on A.SalesID=G.SalesID '
       +'LEFT JOIN ARMsSales H on C.SalesID=H.SalesID '
       +'WHERE CONVERT(VARCHAR(10),D.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dtpDari.Date)+''' AND '
       +''''+FormatDateTime('yyyymmdd',dtpSmp.Date)+''' '
       +'ORDER BY D.Transdate ');
    Open;
  end;
end;

procedure TfmOPRptProduksiHaulDet.dsActStateChange(Sender: TObject);
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

procedure TfmOPRptProduksiHaulDet.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;

  dtpDari.Date := Date;
  dtpSmp.Date := Date;

  bbRefreshClick(bbRefresh);
end;

procedure TfmOPRptProduksiHaulDet.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
