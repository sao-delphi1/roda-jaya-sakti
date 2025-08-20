unit APRptPenerimaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmAPRptPenerimaan = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    dgrReport: TdxDBGrid;
    quReport: TADOQuery;
    dsReport: TDataSource;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    quReportNoBPB: TStringField;
    quReportTanggal: TStringField;
    quReportItemID: TStringField;
    quReportItemName: TStringField;
    quReportQty: TBCDField;
    quReportUOMID: TStringField;
    quReporttypeunit: TStringField;
    quReportNoUnit: TStringField;
    quReportNote: TStringField;
    quReportCurrID: TStringField;
    quReportQty_1: TBCDField;
    quReportUOMID_1: TStringField;
    quReportKirim: TBCDField;
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
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    quReportFgOto: TStringField;
    quReportKeterangan: TStringField;
    quReportTerima: TBCDField;
    CheckBox1: TCheckBox;
    quReportA: TStringField;
    quReportB: TStringField;
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn15: TdxDBGridColumn;
    Button1: TButton;
    dgrLayout: TdxDBGridColumn;
    quReportLayoutID: TStringField;
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StatusLap,Divisi : string;
  end;

var
  fmAPRptPenerimaan: TfmAPRptPenerimaan;

implementation

uses MyUnit, UnitGeneral, ConMain, Unitdate, Search;
{$R *.dfm}

procedure TfmAPRptPenerimaan.bbExcelClick(Sender: TObject);
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

procedure TfmAPRptPenerimaan.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmAPRptPenerimaan.bbRefreshClick(Sender: TObject);
var sQuery : string;
begin
  inherited;
  if StatusLap='PN' then
  begin
  sQuery := 'select B.NoBPB,CONVERT(varchar(15),B.transdate,111) as Tanggal,A.ItemID,C.ItemName, '
           +'A.Qty,A.UOMID,C.typeunit,A.NoUnit,A.Note,A.CurrID,A.Qty,A.UOMID, '
           +'ISNULL((select SUM(F.Kirim) FROM ( '
           +'select X.PRID,X.ItemID,X.FgNum,ISNULL((SELECT SUM(M.Qty) FROM INTrTransferItemDt M Where X.PRID=M.PRID AND M.ItemID=X.ItemID AND M.FgNum=X.FgNum),0) as Kirim '
           +'from APTrPurchaseOrderDt X Where X.POID=A.POID AND X.NumAll=A.FgNum AND A.ItemID=X.ItemID2 ) as F),0) as Kirim, '
           +'''T'' as FgOto,'''' as Keterangan,'


           +'ISNULL((select SUM(W.Qty) from APTrPurchaseOrderDt X '
           +'INNER JOIN INTrTransferItemDt Y on Y.ItemID2=X.ItemID2 AND X.FgNum=Y.FgNum AND X.PRID=Y.PRID '
           +'INNER JOIN INTrAdjustmentHd Z on Y.TransferID=Z.NoSj '
           +'INNER JOIN INTrAdjustmentDt W on Y.ItemID2=W.ItemID and W.TransID=Z.TransID '
           +'Where X.POID=A.POID AND X.NumAll=A.FgNum AND X.ItemID2=A.ItemID),0) as terima, '

           +'B.WarehouseID as A,B.WarehouseID as B,A.LayoutID '
           +'from APTrKonsinyasiDt A '
           +'inner join INMsItem C on A.ItemID=C.ItemID '
           +'inner join APTrKonsinyasiHd B on A.KonsinyasiID=B.KonsinyasiID '
           +'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' '
           +'ORDER BY B.TransDate,A.CurrID,C.ItemName ';
  end else
  if StatusLap='RL' then
  begin
  sQuery := 'SELECT K.* FROM ( '
           +'select A.TransferID as NoBPB,CONVERT(varchar(15),B.TransferDate,111) as Tanggal,A.ItemID2 as ItemID,C.ItemName, '
           +'A.Qty,C.UOMID,C.typeunit,A.NoUnit,A.PRID as Note,'
           +'ISNULL((SELECT X.WarehouseName FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseDest),A.SiteID) as CurrID,'
           +'A.Qty as Qty_1,C.UOMID as UOMID_1,A.Qty as Kirim,ISNULL(A.FgOto,''T'') as FgOto,A.Keterangan, '
           +'ISNULL((Select SUM(X.Qty) FROM INTrAdjustmentDT X inner join INtradjustmenthd Y on X.TransID=Y.TransID Where '
           +'X.ItemID=A.ItemID2 AND Y.nosj=A.TransferID),0) as Terima,B.Warehousesrc as A,B.WarehouseDest as B,A.LayoutID '
           +'from INTrTransferItemDt A '
           +'inner join INMsItem C on A.ItemID2=C.ItemID '
           +'inner join INTrTransferItemHd B on A.TransferID=B.TransferID AND B.FgTrf=''RL'' '
           +'WHERE CONVERT(VARCHAR(8),B.TransferDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ) as K ';
  if CheckBox1.Checked then
  sQuery := sQuery +'WHERE K.Qty-K.Terima>0 ';
  sQuery := sQuery +'ORDER BY K.Tanggal,K.NoBPB,K.ItemName ';
  end else
  begin
  sQuery := 'SELECT K.* FROM ( '
           +'select A.TransferID as NoBPB,CONVERT(varchar(15),B.TransferDate,111) as Tanggal,A.ItemID2 as ItemID,C.ItemName, '
           +'A.Qty,C.UOMID,C.typeunit,A.NoUnit,A.PRID as Note,'
           +'ISNULL((SELECT X.WarehouseName FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseDest),A.SiteID) as CurrID,'
           +'A.Qty as Qty_1,C.UOMID as UOMID_1,A.Qty as Kirim,ISNULL(A.FgOto,''T'') as FgOto,A.Keterangan, '
           +'ISNULL((Select SUM(X.Qty) FROM INTrAdjustmentDT X inner join INtradjustmenthd Y on X.TransID=Y.TransID Where '
           +'X.ItemID=A.ItemID2 AND Y.nosj=A.TransferID),0) as Terima,B.Warehousesrc as A,B.WarehouseDest as B,A.LayoutID '
           +'from INTrTransferItemDt A '
           +'inner join INMsItem C on A.ItemID=C.ItemID '
           +'inner join INTrTransferItemHd B on A.TransferID=B.TransferID AND B.FgTrf=''SP'' AND B.FgDivisi='''+Divisi+''' '
           +'WHERE CONVERT(VARCHAR(8),B.TransferDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ) as K ';
  if CheckBox1.Checked then
  sQuery := sQuery +'WHERE K.Qty-K.Terima>0 ';
  sQuery := sQuery +'ORDER BY K.Tanggal,K.NoBPB,K.ItemName ';
  end;
  with quReport do
  begin
    if active then close;
    SQL.Text := sQuery;
    //showmessage(sql.Text);
    Open;
  end;
end;

procedure TfmAPRptPenerimaan.FormShow(Sender: TObject);
begin
  inherited;
  if StatusLap='PN' then
  begin
    Caption := 'Laporan Penerimaan Barang';
    dgrReportColumn14.Visible := False;
    dgrReportColumn15.Visible := False;
  end else
  if StatusLap='RL' then
  begin
    Caption := 'Laporan Realisasi PR';
    dgrReportColumn1.Caption := 'No Surat Jalan';
    dgrReportColumn10.Caption := 'Tujuan';
    dgrReportColumn10.Width := 100;
    dgrReportColumn11.Visible := False;
    dgrReportColumn8.Visible := False;
    dgrReportColumn14.Visible := False;
  end else
  begin
    Caption := 'Laporan Rekap Mutasi Gudang';
    dgrReportColumn1.Caption := 'No Surat Jalan';
    dgrReportColumn10.Caption := 'Tujuan';
    dgrReportColumn10.Width := 100;
    dgrReportColumn11.Visible := False;
    dgrReportColumn8.Visible := False;
  end;

  //if getmonth(date) = 1 then
  //dtpDari.Date := EncodeDate(getyear(date)-1,12,1)
  //else
  dtpDari.Date := EncodeDate(getyear(date),1,1);
  dtpSmp.Date := date;
  dtpDari.SetFocus;
  bbRefreshClick(bbRefresh);
end;

procedure TfmAPRptPenerimaan.Button1Click(Sender: TObject);
var sQuery : string;
begin
  inherited;
  if StatusLap='PN' then
  begin
  sQuery := 'select B.NoBPB,CONVERT(varchar(15),B.transdate,111) as Tanggal,A.ItemID,C.ItemName, '
           +'A.Qty,A.UOMID,C.typeunit,A.NoUnit,A.Note,A.CurrID,A.Qty,A.UOMID, '
           +'ISNULL((SELECT SUM(X.Qty) FROM INTrTransferItemDt X Where X.PRID=A.Note AND X.ItemID=A.ItemID AND X.FgNum=A.FgNum),0) '
           +'as Kirim,''T'' as FgOto,'''' as Keterangan,0.0 as Terima,B.WarehouseID as A,B.WarehouseID as B,A.LayoutID '
           +'from APTrKonsinyasiDt A '
           +'inner join INMsItem C on A.ItemID=C.ItemID '
           +'inner join APTrKonsinyasiHd B on A.KonsinyasiID=B.KonsinyasiID '
           +'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' '
           +'ORDER BY B.TransDate,A.CurrID,C.ItemName ';
  end else
  if StatusLap='RL' then
  begin
  sQuery := 'SELECT K.* FROM ( '
           +'select A.TransferID as NoBPB,CONVERT(varchar(15),B.TransferDate,111) as Tanggal,A.ItemID,C.ItemName, '
           +'A.Qty,C.UOMID,C.typeunit,A.NoUnit,A.PRID as Note,'
           +'ISNULL((SELECT X.WarehouseName FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseDest),A.SiteID) as CurrID,'
           +'A.Qty as Qty_1,C.UOMID as UOMID_1,A.Qty as Kirim,ISNULL(A.FgOto,''T'') as FgOto,A.Keterangan, '
           +'ISNULL((Select SUM(X.Qty) FROM INTrAdjustmentDT X inner join INtradjustmenthd Y on X.TransID=Y.TransID Where '
           +'X.ItemID=A.ItemID AND Y.nosj=A.TransferID),0) as Terima,B.Warehousesrc as A,B.WarehouseDest as B,A.LayoutID '
           +'from INTrTransferItemDt A '
           +'inner join INMsItem C on A.ItemID=C.ItemID '
           +'inner join INTrTransferItemHd B on A.TransferID=B.TransferID AND B.FgTrf=''RL'' '
           +'WHERE CONVERT(VARCHAR(8),B.TransferDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ) as K ';
  if CheckBox1.Checked then
  sQuery := sQuery +'WHERE K.Qty-K.Terima>0 ';
  sQuery := sQuery +'ORDER BY K.Tanggal,K.NoBPB,K.ItemName ';
  end else
  begin
  sQuery := 'SELECT K.* FROM ( '
           +'select A.TransferID as NoBPB,CONVERT(varchar(15),B.TransferDate,111) as Tanggal,A.ItemID,C.ItemName, '
           +'A.Qty,C.UOMID,C.typeunit,A.NoUnit,A.PRID as Note,'
           +'ISNULL((SELECT X.WarehouseName FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseDest),A.SiteID) as CurrID,'
           +'A.Qty as Qty_1,C.UOMID as UOMID_1,A.Qty as Kirim,ISNULL(A.FgOto,''T'') as FgOto,A.Keterangan, '
           +'ISNULL((Select SUM(X.Qty) FROM INTrAdjustmentDT X inner join INtradjustmenthd Y on X.TransID=Y.TransID Where '
           +'X.ItemID=A.ItemID AND Y.nosj=A.TransferID),0) as Terima,B.Warehousesrc as A,B.WarehouseDest as B,A.LayoutID '
           +'from INTrTransferItemDt A '
           +'inner join INMsItem C on A.ItemID=C.ItemID '
           +'inner join INTrTransferItemHd B on A.TransferID=B.TransferID AND B.FgTrf=''SP'' AND B.FgDivisi='''+Divisi+''' '
           +'WHERE CONVERT(VARCHAR(8),B.TransferDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ) as K ';
  if CheckBox1.Checked then
  sQuery := sQuery +'WHERE K.Qty-K.Terima>0 ';
  sQuery := sQuery +'ORDER BY K.Tanggal,K.NoBPB,K.ItemName ';
  end;
  with TfmSearch.Create(Self) do
  try
     Title := 'Pencarian';
     SQLString := sQuery;

     if ShowModal = MrOK then
     begin
       quReport.Locate('NoBPB;Itemid',VarArrayOf([Res[0],Res[2]]),[loPartialKey]);
     end;
  finally
     free;
  end;
end;

end.
