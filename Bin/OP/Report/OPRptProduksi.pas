unit OPRptProduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmOPRptProduksi = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
    quActTanggal: TStringField;
    quActProdID: TStringField;
    quActSiteID: TStringField;
    quActNoUnit: TStringField;
    quActShift: TStringField;
    quActFgArea: TStringField;
    quActNamaArea: TStringField;
    quActItemId: TStringField;
    quActMaterial: TStringField;
    quActJumHauler: TIntegerField;
    quActJumlah: TBCDField;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    dxDBGrid1: TdxDBGrid;
    quActDt: TADOQuery;
    dsActDt: TDataSource;
    quActDtProdID: TStringField;
    quActDtNumAll: TIntegerField;
    quActDtFgNum: TAutoIncField;
    quActDtItemId: TStringField;
    quActDtQty: TBCDField;
    quActDtNote: TStringField;
    quActDtUpdUser: TStringField;
    quActDtUpdDate: TDateTimeField;
    quActDtBCM: TBCDField;
    quActDtNoUnit: TStringField;
    quActDtSalesID: TStringField;
    quActDtDelPoint: TStringField;
    quActDtPayload: TBCDField;
    quActDtNilai1: TBCDField;
    quActDtNilai2: TBCDField;
    quActDtTonase: TBCDField;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    quActNumAll: TAutoIncField;
    quActSalesName: TStringField;
    dgrReportColumn11: TdxDBGridColumn;
    quActDtLDriver: TStringField;
    quCalc: TADOQuery;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    procedure quActDtCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure dsActDtStateChange(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPRptProduksi: TfmOPRptProduksi;

implementation

uses MyUnit, UnitGeneral, UnitDate;

{$R *.dfm}

procedure TfmOPRptProduksi.quActDtCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROM ARMsSales WHere SalesID='''+quActDtSalesID.ASString+''' ');
    Open;
  end;
  quActDtLDriver.AsString := quCalc.FieldByName('SalesName').AsString;
end;

procedure TfmOPRptProduksi.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  quActDt.Active := TRUE;

  dtpDari.Date := EncodeDate(getyear(date),getmonth(date),1);
  dtpSmp.Date := date;
  dtpDari.SetFocus;
  bbRefreshClick(bbRefresh);
end;

procedure TfmOPRptProduksi.dsActStateChange(Sender: TObject);
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
end;

procedure TfmOPRptProduksi.dsActDtStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dxDBGrid1Column1,TRUE);
  SetReadOnly2(dxDBGrid1Column2,TRUE);
  SetReadOnly2(dxDBGrid1Column3,TRUE);
  SetReadOnly2(dxDBGrid1Column4,TRUE);
  SetReadOnly2(dxDBGrid1Column5,TRUE);
  SetReadOnly2(dxDBGrid1Column6,TRUE);
  SetReadOnly2(dxDBGrid1Column7,TRUE);
end;

procedure TfmOPRptProduksi.bbExcelClick(Sender: TObject);
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

procedure TfmOPRptProduksi.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmOPRptProduksi.bbRefreshClick(Sender: TObject);
var sQuery : string;
begin
  inherited;
  sQuery := ' SELECT CONVERT(VARCHAR(10),B.TransDate,111) as Tanggal,A.ProdID,B.SiteID,A.NoUnit, '
           +' CASE WHEN FGShift=''1'' THEN ''Shift 1'' ELSE ''Shift 2'' END as Shift, '
           +' A.FgArea,C.NmMaster as NamaArea,A.ItemId,D.NmMaster as Material, '
           +' ISNULL((SELECT COUNT(X.NoUnit) FROM OPTrProduksiDtSN X WHERE X.ProdID=A.ProdID AND X.NumAll=A.NumAll),0) as JumHauler, '
           +' A.Jumlah,A.NumAll,E.SalesName '
           +' from OPTrProduksiDt A '
           +' INNER JOIN OPTrProduksiHd B on A.ProdID=B.ProdID '
           +' LEFT JOIN AllMaster C on A.FgArea=C.KdMaster AND C.FgMaster=''E'' '
           +' LEFT JOIN AllMaster D on A.ItemId=D.KdMaster AND D.FgMaster=''H'' '
           +' LEFT JOIN ARMsSales E on A.SalesID=E.SalesId '
           +' WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' '
           +' ORDER BY B.TransDate,B.SiteID,A.NoUnit,A.FGShift,A.NumAll ';

  with quAct do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;
end;

end.
