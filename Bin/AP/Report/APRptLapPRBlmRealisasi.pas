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
    quReportPRID: TStringField;
    quReportTgl: TStringField;
    quReportPart_Number: TStringField;
    quReportNama_Barang: TStringField;
    quReporttypeunit: TStringField;
    quReportNoUnit: TStringField;
    quReportJumlah: TBCDField;
    quReportUOMID: TStringField;
    quReportJumPO: TBCDField;
    quReportJumTerima: TBCDField;
    quReportJumReal: TBCDField;
    quReportSiteName: TStringField;
    quReportDivisiID: TStringField;
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
    dgrReportColumn14: TdxDBGridColumn;
    quReportketerangan: TStringField;
    dgrReportColumn15: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    quReportupduser: TStringField;
    quReportupddate: TDateTimeField;
    quReportFgOto: TStringField;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn18: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    quReportupload: TStringField;
    dgrReportColumn19: TdxDBGridColumn;
    RadioGroup2: TRadioGroup;
    quReportJumST: TBCDField;
    dgrReportColumn20: TdxDBGridColumn;
    RadioGroup3: TRadioGroup;
    quReportNote: TStringField;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
    sQuery : string;
  public
    FgDivisi : string;
    { Public declarations }
  end;

var
  fmAPRptLapPRBlmRealisasi: TfmAPRptLapPRBlmRealisasi;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, ConMain, Unitdate, Search;

procedure TfmAPRptLapPRBlmRealisasi.bbRefreshClick(Sender: TObject);
begin
  inherited;
  sQuery := 'SELECT K.* FROM ( '
           +'select CONVERT(VARCHAR(12),B.tglupload,111) as upload,A.PRID,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,A.ItemID as Part_Number, '
           +'C.ItemName as Nama_Barang,C.typeunit,A.NoUnit,A.Jumlah,A.UOMID, '
           +'ISNULL((SELECT SUM(X.Jumlah) FROM APTrPurchaseOrderDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumPO, '
           //+'ISNULL((SELECT SUM(X.Jumlah) FROM APTrKonsinyasiDt X INNER JOIN APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID '
           //+'WHERE X.Note=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumTerima, '
           +'ISNULL((SELECT SUM(F.Terima) FROM( '
           +'SELECT X.POID,X.ItemID2,ISNULL((SELECT SUM(M.Jumlah) FROM APTrKonsinyasiDT M WHERE M.POID=X.POID AND M.ItemID=X.ItemID2 AND M.FgNum=X.NumAll),0) as Terima '
           +'FROM APTrPurchaseOrderDt X Where X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll) as F ),0) as JumTerima,'
           +'ISNULL((SELECT SUM(X.Qty) FROM INTrTransferItemDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumReal, '
           //+'ISNULL((Select SUM(X.Qty) FROM INTrAdjustmentDT X inner join INtradjustmenthd Y on X.TransID=Y.TransID Where '
           //+'X.ItemID=A.ItemID AND Y.nosj IN (SELECT DISTINCT Z.TransferID FROM INTrTransferItemDt Z '
           //+'WHERE Z.PRID=A.PRID AND Z.ItemID=A.ItemID)),0) as JumST, '

           +'ISNULL((SELECT SUM(G.Terima) FROM ( '
           +'(SELECT X.ItemID2,X.TransferID,ISNULL((Select SUM(M.Qty) FROM INTrAdjustmentDT M '
           +'inner join INtradjustmenthd N on M.TransID=N.TransID '
           +'Where M.ItemID=X.ItemID2 AND N.NoSj=X.TransferID),0) as Terima FROM INTrTransferItemDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll) '
           +') as G ),0) as JumST, '

           +'D.SiteName as SiteName,B.DivisiID, '
           +'ISNULL((SELECT TOP 1 X.KETERANGAN FROM APTrPurchaseOrderDt X INNER JOIN APTRPurchaseOrderHd Y on X.POID=Y.POID '
           +'WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID ORDER BY Y.TransDate DESC),'''') as keterangan,'
           +'ISNULL((SELECT SalesName FROM ARMsSales WHERE SalesID=A.Reqby),''-'') as UpdUser,A.UpdDate, '
           +'CASE WHEN ISNULL(A.FGOto,''W'')=''W'' THEN ''On Progress'' '
           +'     WHEN ISNULL(A.FGOto,''W'')=''Y'' THEN ''On Progress'' '
           +'     WHEN ISNULL(A.FGOto,''W'')=''F'' THEN ''Sent by HO'' '
           +'     WHEN ISNULL(A.FGOto,''W'')=''R'' THEN ''Repair'' '
           +'     WHEN ISNULL(A.FGOto,''W'')=''P'' THEN ''Pending'' '
           +'     WHEN ISNULL(A.FGOto,''W'')=''X'' THEN ''Rejected'' END as FgOto,A.Note '
           +'from APTrPurchaseRequestDt A '
           +'inner join APTrPurchaseRequestHd b on a.PRID=b.prid '
           +'inner join INMsItem C on A.ItemID=C.ItemID '
           +'inner join INMSSites D on B.SiteID=D.SiteID '
           +'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' AND B.FgForm=''PR'' AND ISNULL(B.FgDivisi,''LOG'')='''+FgDivisi+''' ';
  if kdCab<>'HO' then
  sQuery := sQuery + ' AND B.KdCab='''+KdCab+''' ';
  sQuery := sQuery + ' ) as K ';
  if RadioGroup2.ItemIndex=1 then
  sQuery := sQuery + ' WHERE K.Jumlah-K.JumPO>0 ';
  if RadioGroup2.ItemIndex=2 then
  sQuery := sQuery + ' WHERE K.Jumlah-K.JumReal>0  ';
  if RadioGroup2.ItemIndex=3 then
  sQuery := sQuery + ' WHERE K.Jumlah-K.JumST>0  ';
  if RadioGroup2.ItemIndex=4 then
  begin
  sQuery := sQuery + ' WHERE K.Jumlah-K.JumTerima>0  ';
  if RadioGroup3.ItemIndex=1 then
  sQuery := sQuery + ' AND K.Jumlah<>K.JumPO  ';
  if RadioGroup3.ItemIndex=2 then
  sQuery := sQuery + ' AND K.JumPO=0  ';
  end;
  sQuery := sQuery + 'ORDER BY K.Tgl,K.PRID ';

  with quReport do
  begin
    if active then close;
    SQL.Text := sQuery;
    //showmessage(SQL.Text);
    Open;
  end;
end;

procedure TfmAPRptLapPRBlmRealisasi.FormShow(Sender: TObject);
begin
  inherited;
  //if getmonth(date) = 1 then
  //dtpDari.Date := EncodeDate(getyear(date)-1,12,1)
  //else
  dtpDari.Date := EncodeDate(getyear(date),getmonth(date),1);
  dtpSmp.Date := date;
  dtpDari.SetFocus;

  laTitle.Caption := laTitle.Caption + ' ' + FgDivisi;
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
       dgrReport.SaveToXLS(saveDlg.FileName + '.xls', true)
    end
end;

procedure TfmAPRptLapPRBlmRealisasi.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmAPRptLapPRBlmRealisasi.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
    dgrReportColumn1.Visible := True;
    dgrReportColumn2.Visible := True;
    dgrReportColumn3.Visible := True;
    dgrReportColumn4.Visible := True;
    dgrReportColumn5.Visible := True;
    dgrReportColumn6.Visible := True;
    dgrReportColumn7.Visible := True;
    dgrReportColumn8.Visible := True;
    dgrReportColumn9.Visible := True;
    dgrReportColumn10.Visible := True;
    dgrReportColumn11.Visible := True;
    dgrReportColumn12.Visible := True;
    dgrReportColumn13.Visible := True;
    dgrReportColumn14.Visible := True;
    dgrReportColumn15.Visible := False;
    dgrReportColumn16.Visible := False;
    dgrReportColumn17.Visible := True;
    dgrReportColumn18.Visible := True;
  end else
  if RadioGroup1.ItemIndex=1 then
  begin
    dgrReportColumn1.Visible := True;
    dgrReportColumn2.Visible := True;
    dgrReportColumn3.Visible := True;
    dgrReportColumn4.Visible := True;
    dgrReportColumn5.Visible := True;
    dgrReportColumn6.Visible := True;
    dgrReportColumn7.Visible := True;
    dgrReportColumn8.Visible := True;
    dgrReportColumn9.Visible := False;
    dgrReportColumn10.Visible := False;
    dgrReportColumn11.Visible := False;
    dgrReportColumn12.Visible := True;
    dgrReportColumn13.Visible := True;
    dgrReportColumn14.Visible := True;
    dgrReportColumn15.Visible := False;
    dgrReportColumn16.Visible := True;
    dgrReportColumn17.Visible := False;
    dgrReportColumn18.Visible := False;
  end else
  begin
    dgrReportColumn1.Visible := True;
    dgrReportColumn2.Visible := True;
    dgrReportColumn3.Visible := True;
    dgrReportColumn4.Visible := True;
    dgrReportColumn5.Visible := True;
    dgrReportColumn6.Visible := True;
    dgrReportColumn7.Visible := True;
    dgrReportColumn8.Visible := True;
    dgrReportColumn9.Visible := True;
    dgrReportColumn10.Visible := True;
    dgrReportColumn11.Visible := True;
    dgrReportColumn12.Visible := True;
    dgrReportColumn13.Visible := True;
    dgrReportColumn14.Visible := False;
    dgrReportColumn15.Visible := False;
    dgrReportColumn16.Visible := False;
    dgrReportColumn17.Visible := True;
    dgrReportColumn18.Visible := True;
  end;

end;

procedure TfmAPRptLapPRBlmRealisasi.Button1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Purchase Request';
     SQLString := 'SELECT K.* FROM ( '
                 +'select A.PRID,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,A.ItemID as Part_Number, '
                 +'C.ItemName as Nama_Barang,C.typeunit,A.NoUnit,A.Jumlah,A.UOMID, '
                 +'ISNULL((SELECT SUM(X.Jumlah) FROM APTrPurchaseOrderDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumPO, '
                 //+'ISNULL((SELECT SUM(X.Jumlah) FROM APTrKonsinyasiDt X INNER JOIN APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID '
                 //+'WHERE X.Note=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumTerima, '
                 +'ISNULL((SELECT SUM(F.Terima) FROM( '
                 +'SELECT X.POID,X.ItemID2,ISNULL((SELECT SUM(M.Jumlah) FROM APTrKonsinyasiDT M WHERE M.POID=X.POID AND M.ItemID=X.ItemID2 AND M.FgNum=X.NumAll),0) as Terima '
                 +'FROM APTrPurchaseOrderDt X Where X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll) as F ),0) as JumTerima,'
                 +'ISNULL((SELECT SUM(X.Qty) FROM INTrTransferItemDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumReal, '

                 //+'ISNULL((Select SUM(X.Qty) FROM INTrAdjustmentDT X inner join INtradjustmenthd Y on X.TransID=Y.TransID Where '
                 //+'Y.nosj IN (SELECT DISTINCT Z.TransferID FROM INTrTransferItemDt Z WHERE Z.PRID=A.PRID AND Z.ItemID=A.ItemID)),0) as JumST, '

                 +'ISNULL((SELECT SUM(G.Terima) FROM ( '
                 +'(SELECT X.ItemID2,X.TransferID,ISNULL((Select SUM(M.Qty) FROM INTrAdjustmentDT M '
                 +'inner join INtradjustmenthd N on M.TransID=N.TransID '
                 +'Where M.ItemID=X.ItemID2 AND N.NoSj=X.TransferID),0) as Terima FROM INTrTransferItemDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll) '
                 +') as G ),0) as JumST, '
                 
                 +'D.SiteName as SiteName,B.DivisiID, '
                 +'ISNULL((SELECT TOP 1 X.KETERANGAN FROM APTrPurchaseOrderDt X INNER JOIN APTRPurchaseOrderHd Y on X.POID=Y.POID '
                 +'WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID ORDER BY Y.TransDate DESC),'''') as keterangan,'
                 +'ISNULL((SELECT SalesName FROM ARMsSales WHERE SalesID=A.Reqby),''-'') as UpdUser,A.UpdDate, '
                 +'CASE WHEN ISNULL(A.FGOto,''W'')=''W'' THEN ''On Progress'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''Y'' THEN ''On Progress'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''F'' THEN ''Sent by HO'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''R'' THEN ''Repair'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''P'' THEN ''Pending'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''X'' THEN ''Rejected'' END as FgOto,A.Note '
                 +'from APTrPurchaseRequestDt A '
                 +'inner join APTrPurchaseRequestHd b on a.PRID=b.prid '
                 +'inner join INMsItem C on A.ItemID=C.ItemID '
                 +'inner join INMSSites D on B.SiteID=D.SiteID '
                 +'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
                 +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' AND B.FgForm=''PR'' AND ISNULL(B.FgDivisi,''LOG'')='''+FgDivisi+''' ';
     if kdCab<>'HO' then
     SQLString := SQLString + ' AND B.KdCab='''+KdCab+''' ';
     SQLString := SQLString + ' ) as K ';
     if RadioGroup2.ItemIndex=1 then
     SQLString := SQLString + ' WHERE K.Jumlah-K.JumPO>0 ';
     if RadioGroup2.ItemIndex=2 then
     SQLString := SQLString + ' WHERE K.Jumlah-K.JumReal>0  ';
     if RadioGroup2.ItemIndex=3 then
     SQLString := SQLString + ' WHERE K.Jumlah-K.JumST>0  ';
     if RadioGroup2.ItemIndex=4 then
     begin
     SQLString := SQLString + ' WHERE K.Jumlah-K.JumTerima>0  ';
     if RadioGroup3.ItemIndex=1 then
     SQLString := SQLString + ' AND K.Jumlah<>K.JumPO  ';
     if RadioGroup3.ItemIndex=2 then
     SQLString := SQLString + ' AND K.JumPO=0  ';
     end;
     SQLString := SQLString + ' ORDER BY K.Tgl,K.PRID';

     if ShowModal = MrOK then
     begin
       quReport.Locate('PRID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmAPRptLapPRBlmRealisasi.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  if RadioGroup2.ItemIndex=4 then
  RadioGroup3.Visible := True
  else
  RadioGroup3.Visible := False;
end;

end.
