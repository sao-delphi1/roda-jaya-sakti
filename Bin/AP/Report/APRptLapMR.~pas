unit APRptLapMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmAPRptLapMR = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    Button1: TButton;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    dgrReportColumn15: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    quReport: TADOQuery;
    dsReport: TDataSource;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    quReportPRID: TStringField;
    quReportTgl: TStringField;
    quReportPart_Number: TStringField;
    quReportNama_Barang: TStringField;
    quReporttypeunit: TStringField;
    quReportNoUnit: TStringField;
    quReportJumlah: TBCDField;
    quReportUOMID: TStringField;
    quReportJumPR: TBCDField;
    quReportJumPakai: TBCDField;
    quReportSiteName: TStringField;
    quReportDivisiID: TStringField;
    quReportketerangan: TStringField;
    quReportupduser: TStringField;
    quReportupddate: TDateTimeField;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sQuery,FgDivisi : string;
  end;

var
  fmAPRptLapMR: TfmAPRptLapMR;

implementation

uses UnitGeneral, UnitDate, MyUnit, ConMain, Search;

{$R *.dfm}

procedure TfmAPRptLapMR.bbRefreshClick(Sender: TObject);
begin
  inherited;
  sQuery := ' select A.PRID,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,A.ItemID as Part_Number, '
           +' C.ItemName as Nama_Barang,C.typeunit,A.NoUnit,A.Jumlah,A.UOMID, '
           +' ISNULL((SELECT SUM(X.Jumlah) FROM APTrPurchaseRequestDT X WHERE X.MRID=A.PRID AND X.ItemID=A.ItemID And X.FgNum=A.NUmAll),0) as JumPR, '
           +' ISNULL((SELECT SUM(X.Qty) FROM INTrAdjustmentDt X Where X.ItemID=A.ItemID AND X.MRID=A.PRID AND X.FgNum=A.NumAll),0) as JumPakai, '
           +' D.SiteName,B.DivisiID,''-'' as keterangan,A.upduser,A.upddate '
           +' from APTrPurchaseRequestDt A '
           +' inner join APTrPurchaseRequestHd b on a.PRID=b.prid '
           +' inner join INMsItem C on A.ItemID=C.ItemID '
           +' inner join INMsSites D on B.SiteID=D.SiteID '
           +' WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' AND B.FgForm=''MR'' AND ISNULL(B.FgDivisi,''LOG'')='''+FgDivisi+''' ';
  if KdCab<>'HO' then
  sQuery := sQuery + ' AND B.KdCab='''+KdCab+''' ';
  sQuery := sQuery + ' ORDER BY B.TransDate';

  with quReport do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;
end;

procedure TfmAPRptLapMR.FormShow(Sender: TObject);
begin
  inherited;
  dtpDari.Date := EncodeDate(getyear(date),getmonth(date),1);
  dtpSmp.Date := date;
  dtpDari.SetFocus;

  laTitle.Caption := laTitle.Caption+' '+FgDivisi;

  bbRefreshClick(bbRefresh);
end;

procedure TfmAPRptLapMR.bbExcelClick(Sender: TObject);
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

procedure TfmAPRptLapMR.Button1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Material Request';
     SQLString := ' select A.PRID,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,A.ItemID as Part_Number, '
                 +' C.ItemName as Nama_Barang,C.typeunit,A.NoUnit,A.Jumlah,A.UOMID, '
                 +' ISNULL((SELECT SUM(X.Jumlah) FROM APTrPurchaseRequestDT X WHERE X.MRID=A.PRID AND X.ItemID=A.ItemID And X.FgNum=A.NUmAll),0) as JumPR, '
                 +' ISNULL((SELECT SUM(X.Qty) FROM INTrAdjustmentDt X Where X.ItemID=A.ItemID AND X.MRID=A.PRID AND X.FgNum=A.NumAll),0) as JumPakai, '
                 +' D.SiteName,B.DivisiID,''-'' as keterangan,A.upduser,A.upddate '
                 +' from APTrPurchaseRequestDt A '
                 +' inner join APTrPurchaseRequestHd b on a.PRID=b.prid '
                 +' inner join INMsItem C on A.ItemID=C.ItemID '
                 +' inner join INMsSites D on B.SiteID=D.SiteID '
                 +' WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
                 +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' AND B.FgForm=''MR'' AND ISNULL(B.FgDivisi,''LOG'')='''+FgDivisi+''' ';
     if KdCab<>'HO' then
     SQLString := SQLString + ' AND B.KdCab='''+KdCab+''' ';
     SQLString := SQLString + ' ORDER BY B.TransDate';

     if ShowModal = MrOK then
     begin
       quReport.Locate('PRID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmAPRptLapMR.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
