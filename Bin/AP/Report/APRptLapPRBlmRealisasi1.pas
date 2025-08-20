unit APRptLapPRBlmRealisasi;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ComCtrls,
  StdCtrls, DB, ADODB, Buttons, ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmAPRptLapPRBlmRealisasi = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    dgrReport: TdxDBGrid;
    quReport: TADOQuery;
    dsReport: TDataSource;
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
    dgrReportColumn11: TdxDBGridColumn;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    bbExp: TBitBtn;
    bbColp: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    quReportPRID: TStringField;
    quReportTgl: TStringField;
    quReportPart_Number: TStringField;
    quReportNama_Barang: TStringField;
    quReporttypeunit: TStringField;
    quReportNoUnit: TStringField;
    quReportJumlah: TBCDField;
    quReportUOMID: TStringField;
    quReportJumPO: TBCDField;
    quReportSiteName: TStringField;
    quReportDivisiID: TStringField;
    quReportUpdUser: TStringField;
    quReportUpdDate: TDateTimeField;
    dgrReportColumn14: TdxDBGridColumn;
    quReportketerangan: TStringField;
    CheckBox1: TCheckBox;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
    sQuery : string;
  public
    { Public declarations }
  end;

var
  fmAPRptLapPRBlmRealisasi: TfmAPRptLapPRBlmRealisasi;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, ConMain, Unitdate;

procedure TfmAPRptLapPRBlmRealisasi.bbRefreshClick(Sender: TObject);
begin
  inherited;
  sQuery := 'select A.PRID,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,A.ItemID as Part_Number, '
           +'C.ItemName as Nama_Barang,C.typeunit,A.NoUnit,A.Jumlah,A.UOMID, '
           +'ISNULL((SELECT SUM(X.Jumlah) FROM APTrPurchaseOrderDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND '
           +'X.FgNum=A.NumAll AND X.FgOto=''Y''),0) as JumPO, '
           +'D.SiteName as SiteName,B.DivisiID,A.UpdDate,A.UpdUser, '
           +'ISNULL((SELECT TOP 1 X.keterangan FROM APTrPurchaseOrderDt X INNER JOIN Aptrpurchaseorderhd Y on X.POID=Y.POID '
           +'WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND '
           +'X.FgNum=A.NumAll AND X.FgOto=''Y'' ORDER BY Y.Transdate DESC),''-'') as keterangan '
           +'from APTrPurchaseRequestDt A '
           +'inner join APTrPurchaseRequestHd b on a.PRID=b.prid AND B.FgForm=''PR'' '
           +'inner join INMsItem C on A.ItemID=C.ItemID '
           +'inner join INMsSites D on B.SiteID=D.SiteID '
           +'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' '
           +'ORDER BY B.TransDate';

  with quReport do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;
end;

procedure TfmAPRptLapPRBlmRealisasi.FormShow(Sender: TObject);
begin
  inherited;
  if getmonth(date) = 1 then
  dtpDari.Date := EncodeDate(getyear(date)-1,12,1)
  else
  dtpDari.Date := EncodeDate(getyear(date),getmonth(date)-1,1);
  dtpSmp.Date := date;
  dtpDari.SetFocus;
  bbRefreshClick(bbRefresh);
end;

procedure TfmAPRptLapPRBlmRealisasi.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dgrReport.SaveToXLS(saveDlg.FileName, true)
      else
       ; dgrReport.SaveToXLS(saveDlg.FileName + '.xls', true)
    end
end;

procedure TfmAPRptLapPRBlmRealisasi.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
