unit ExportImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore, ComObj;

type
  TfmExportImport = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
    quReport: TADOQuery;
    dsReport: TDataSource;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    quReportPRID: TStringField;
    quReportItemID: TStringField;
    quReportQty: TBCDField;
    quReportUOMID: TStringField;
    quReportNote: TStringField;
    quReportUpdDate: TDateTimeField;
    quReportUpdUser: TStringField;
    quReportMRID: TStringField;
    quReportJumlah: TBCDField;
    quReportTypeUnit: TStringField;
    quReportNoUnit: TStringField;
    quReportTransdate: TDateTimeField;
    quReportSalesID: TStringField;
    quReportFgForm: TStringField;
    quReportNote_1: TStringField;
    quReportUpdDate_1: TDateTimeField;
    quReportUpdUser_1: TStringField;
    quReportNoPR: TStringField;
    quReportSiteID: TStringField;
    quReportwarehouseID: TStringField;
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
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn15: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn18: TdxDBGridColumn;
    dgrReportColumn19: TdxDBGridColumn;
    dgrReportColumn20: TdxDBGridColumn;
    dgrReportColumn21: TdxDBGridColumn;
    bbExcel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    quReportAcc1: TStringField;
    quReportAcc2: TStringField;
    quReportAcc3: TStringField;
    dxDBGrid1: TdxDBGrid;
    BitBtn1: TBitBtn;
    quPakai: TADOQuery;
    dsPakai: TDataSource;
    quPakaiTransID: TStringField;
    quPakaiItemID: TStringField;
    quPakaiFgStatus: TStringField;
    quPakaiQty: TBCDField;
    quPakaiAlasan: TStringField;
    quPakaiUpdDate: TDateTimeField;
    quPakaiUpdUser: TStringField;
    quPakaiPrice: TBCDField;
    quPakaiFgJadi: TStringField;
    quPakaiRekeningID: TStringField;
    quPakaiNoUnit: TStringField;
    quPakaiKMawal: TStringField;
    quPakaiKMakhir: TStringField;
    quPakaiNomorban: TStringField;
    quPakaiJmlAwl: TBCDField;
    quPakaiStatusban: TStringField;
    quPakaiserial: TStringField;
    quPakaikeperluan: TStringField;
    quPakaiTransID_1: TStringField;
    quPakaiTransDate: TDateTimeField;
    quPakaiWareHouseID: TStringField;
    quPakaiNote_1: TStringField;
    quPakaiAcknowledgeBy: TStringField;
    quPakaiUpdDate_1: TDateTimeField;
    quPakaiUpduser_1: TStringField;
    quPakaiFlagIN: TStringField;
    quPakaiexpedisi: TStringField;
    quPakaiDriver: TStringField;
    quPakainosegel: TStringField;
    quPakainosj: TStringField;
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
    dxDBGrid1Column14: TdxDBGridColumn;
    dxDBGrid1Column15: TdxDBGridColumn;
    dxDBGrid1Column16: TdxDBGridColumn;
    dxDBGrid1Column17: TdxDBGridColumn;
    dxDBGrid1Column18: TdxDBGridColumn;
    dxDBGrid1Column19: TdxDBGridColumn;
    dxDBGrid1Column20: TdxDBGridColumn;
    dxDBGrid1Column21: TdxDBGridColumn;
    dxDBGrid1Column22: TdxDBGridColumn;
    dxDBGrid1Column23: TdxDBGridColumn;
    dxDBGrid1Column24: TdxDBGridColumn;
    dxDBGrid1Column25: TdxDBGridColumn;
    dxDBGrid1Column26: TdxDBGridColumn;
    dxDBGrid1Column27: TdxDBGridColumn;
    dxDBGrid1Column28: TdxDBGridColumn;
    dxDBGrid1Column29: TdxDBGridColumn;
    Button2: TButton;
    quPinjam: TADOQuery;
    dsPinjam: TDataSource;
    quPinjamPOID: TStringField;
    quPinjamItemID: TStringField;
    quPinjamQty: TBCDField;
    quPinjamUOMID: TStringField;
    quPinjamItemName: TStringField;
    quPinjamNote: TStringField;
    quPinjamNoUnit: TStringField;
    quPinjamCustID: TStringField;
    quPinjamTransdate: TDateTimeField;
    quPinjamSalesID: TStringField;
    quPinjamAdministrasi: TBCDField;
    quPinjamWareHouseID: TStringField;
    quPinjamDivisiID: TStringField;
    quPinjamWarehouse2: TStringField;
    quPinjamSite2: TStringField;
    quPinjamKeterangan: TStringField;
    dxDBGrid2: TdxDBGrid;
    Button3: TButton;
    BitBtn2: TBitBtn;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column3: TdxDBGridColumn;
    dxDBGrid2Column4: TdxDBGridColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    dxDBGrid2Column7: TdxDBGridColumn;
    dxDBGrid2Column8: TdxDBGridColumn;
    dxDBGrid2Column9: TdxDBGridColumn;
    dxDBGrid2Column10: TdxDBGridColumn;
    dxDBGrid2Column11: TdxDBGridColumn;
    dxDBGrid2Column12: TdxDBGridColumn;
    dxDBGrid2Column13: TdxDBGridColumn;
    dxDBGrid2Column14: TdxDBGridColumn;
    dxDBGrid2Column15: TdxDBGridColumn;
    dxDBGrid2Column16: TdxDBGridColumn;
    dgrReportColumn22: TdxDBGridColumn;
    dgrReportColumn23: TdxDBGridColumn;
    dgrReportColumn24: TdxDBGridColumn;
    dgrReportColumn25: TdxDBGridColumn;
    dgrReportColumn26: TdxDBGridColumn;
    quReportKdCab: TStringField;
    quReportFgSelesai: TStringField;
    quReportReqBy: TStringField;
    quReportFgOto: TStringField;
    quReportNoteOto: TStringField;
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    sQuery : string;
  public
    { Public declarations }
  end;

var
  fmExportImport: TfmExportImport;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, ConMain, Unitdate;

procedure TfmExportImport.bbRefreshClick(Sender: TObject);
begin
  inherited;
  sQuery := 'select A.PRID,A.ItemID,A.Qty,A.UOMID,A.Note,A.UpdDate,A.UpdUser,A.MRID,A.Jumlah,A.TypeUnit,A.NoUnit,'
           +'B.Transdate,B.SalesID,B.FgForm,B.Note,B.UpdDate,B.UpdUser,B.NoPR,B.SiteID,B.warehouseID,B.DivisiID,B.Acc1,B.Acc2,B.Acc3, '
           +'B.KdCab,B.FgSelesai,A.ReqBy,A.FgOto,A.NoteOto '
           +'from APTrPurchaseRequestDt A inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND FgForm=''PR'' '
           +'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ';

  with quReport do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;

  sQuery := 'select '
           +'A.TransID,A.ItemID,A.FgStatus,A.Qty,A.Alasan,A.UpdDate,A.UpdUser,A.Price,A.FgJadi,A.RekeningID,A.NoUnit,A.KMawal,'
           +'A.KMakhir,A.Nomorban,A.JmlAwl,A.Statusban,A.serial,A.keperluan,A.TransID,'
           +'B.TransDate,B.WareHouseID,B.Note as Note_1,B.AcknowledgeBy,B.UpdDate as UpdDate_1,B.UpdUser as Upduser_1,B.FlagIN,'
           +'B.expedisi,B.Driver,B.nosegel,B.nosj '
           +'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID '
           +'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ';

  with quPakai do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;

  sQuery := 'select A.POID,ItemID,Qty,UOMID,ItemName,A.Note,NoUnit,CustID,Transdate,SalesID,Administrasi,WareHouseID,DivisiID,Warehouse2,Site2,B.Note as Keterangan '
           +'from ARTrPurchaseOrderDt A '
           +'inner join ARTrPurchaseOrderHd B on A.POID=B.POID '
           +'WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ';

  with quPinjam do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;

end;

procedure TfmExportImport.bbExcelClick(Sender: TObject);
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

procedure TfmExportImport.FormShow(Sender: TObject);
begin
  inherited;
  dtpDari.Date := Date;
  dtpSmp.Date := date;
  dtpDari.SetFocus;
  quReport.Active := TRUE;
  if kdCab<>'HO' then
  begin
    bbRefreshClick(bbRefresh);
    button1.Visible := False;
    button2.Visible := False;
    button3.Visible := False;
    ProgressBar1.Visible := False;
    Label1.Visible := False;
  end else
  begin
    bbRefreshClick(bbRefresh);
    bbRefresh.Enabled := False;
    dgrReport.Enabled := False;
    bbExcel.Enabled := False;
    dxDBGrid1.Enabled := False;
    BitBtn1.Enabled := False;
    dxDBGrid2.Enabled := False;
    BitBtn2.Enabled := False;
    dtpDari.Enabled := False;
    dtpSmp.Enabled := False;
  end;
end;

procedure TfmExportImport.Button1Click(Sender: TObject);
var
  PRID,ItemID,Qty,UOMID,Note,UpdDate,Upduser,MRID,Jumlah,TypeUnit,NoUnit : string;
  TransDate,SalesID,FgForm,Note1,UpdDate1,Upduser1,NoPR,SiteID,WarehouseID,DivisiID,FGSelesai,KdCab,ReqBy,FgOto,NoteOto : string;
  Excel : variant;
  i : integer;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    i:=3;
    ProgressBar1.Visible := True;
    Label1.Visible := True;
    ProgressBar1.Position := 0;
    while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
    begin
      PRID := VarToSTr(Excel.cells.range['A'+inttostr(i)]);
      ItemID := VarToSTr(Excel.cells.range['B'+inttostr(i)]);
      Qty := VarToSTr(Excel.cells.range['C'+inttostr(i)]);
      UOMID := VarToSTr(Excel.cells.range['D'+inttostr(i)]);
      Note := VarToSTr(Excel.cells.range['E'+inttostr(i)]);
      UpdDate := FormatDateTime('yyyy-mm-dd',StrToDatetime(VarToStr(Excel.cells.range['F'+inttostr(i)])));
      Upduser := VarToSTr(Excel.cells.range['G'+inttostr(i)]);
      MRID := VarToSTr(Excel.cells.range['H'+inttostr(i)]);
      Jumlah := VarToSTr(Excel.cells.range['I'+inttostr(i)]);
      TypeUnit := VarToSTr(Excel.cells.range['J'+inttostr(i)]);
      NoUnit := VarToSTr(Excel.cells.range['K'+inttostr(i)]);
      TransDate := FormatDateTime('yyyy-mm-dd',StrToDatetime(VarToStr(Excel.cells.range['L'+inttostr(i)])));
      SalesID := VarToSTr(Excel.cells.range['M'+inttostr(i)]);
      FgForm := VarToSTr(Excel.cells.range['N'+inttostr(i)]);
      Note1 := VarToSTr(Excel.cells.range['O'+inttostr(i)]);
      UpdDate1 := FormatDateTime('yyyy-mm-dd',StrToDatetime(VarToStr(Excel.cells.range['P'+inttostr(i)])));
      Upduser1 := VarToSTr(Excel.cells.range['Q'+inttostr(i)]);
      NoPR := VarToSTr(Excel.cells.range['R'+inttostr(i)]);
      SiteID := VarToSTr(Excel.cells.range['S'+inttostr(i)]);
      WarehouseID := VarToSTr(Excel.cells.range['T'+inttostr(i)]);
      DivisiID := VarToSTr(Excel.cells.range['U'+inttostr(i)]);
      KdCab := VarToSTr(Excel.cells.range['V'+inttostr(i)]);
      FgSelesai := VarToSTr(Excel.cells.range['W'+inttostr(i)]);
      ReqBy := VarToSTr(Excel.cells.range['X'+inttostr(i)]);
      FgOto := VarToSTr(Excel.cells.range['Y'+inttostr(i)]);
      NoteOto := VarToSTr(Excel.cells.range['Z'+inttostr(i)]);

      with quAct,SQL do
      begin
        Close;Clear;
        Add('IF NOT EXISTS (SELECT PRID From ApTrPurchaseRequestHD WHERE PRID='''+PRID+''' ) '
           +'INSERT INTO APTrPurchaseRequestHd (PRID,TransDate,SalesID,FgForm,Note,UpdDate,UpdUser,NoPR,SiteID,WarehouseID,DivisiID,KdCab,FgSelesai) '
           +'VALUES ('''+PRID+''','''+TransDate+''','''+SalesID+''','''+FgForm+''','''+Note1+''','''+UpdDate1+''','''+UpdUser1+''','''+NoPr+''','''+SiteID+''','
           +''''+WarehouseID+''','''+DivisiID+''','''+KdCab+''','''+FgSelesai+''') ');
        Add('IF NOT EXISTS (SELECT PRID From ApTrPurchaseRequestdt WHERE PRID='''+PRID+''' AND ItemID='''+itemID+''' ) '
           +'INSERT INTO APTrPurchaseRequestdt (PRID,itemID,Qty,UOMID,Note,UpdDate,UpdUser,MRID,Jumlah,TypeUnit,NoUnit,ReqBy,FgOto,Noteoto) '
           +'VALUES ('''+PRID+''','''+ItemID+''','''+Qty+''','''+UOMID+''','''+Note+''','''+UpdDate+''','''+UpdUser+''','''+MRID+''','''+Jumlah+''','''+TypeUnit+''','
           +''''+NoUnit+''','''+ReqBy+''','''+FgOto+''','''+Noteoto+''') ');
        //ShowMessage(sql.text);
        ExecSQL;
        i:=i+1;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
    end;

  end;
  ProgressBar1.Visible := False;
  Label1.Visible := False;
  ShowMessage('Data PR Sudah Berhasil di Upload');
end;

procedure TfmExportImport.BitBtn1Click(Sender: TObject);
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

procedure TfmExportImport.Button2Click(Sender: TObject);
var transID,itemID,FgStatus,Qty,Alasan,UpdDate,UpdUser,Price,Fgjadi,RekeningID : string;
  NoUnit,Kmawal,KmAkhir,NomorBan,JmlAwal,StatusBan,Serial,keperluan,transdate,warehouseid,note1 : string;
  acknowledgeby,upddate1,upduser1,flagin,expedisi,driver,nosegel,nosj : string;
  Excel : variant;
  i : integer;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    i:=3;
    ProgressBar1.Visible := True;
    Label1.Visible := True;
    ProgressBar1.Position := 0;
    while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
    begin
      TransID := VarToSTr(Excel.cells.range['A'+inttostr(i)]);
      ItemID := VarToSTr(Excel.cells.range['B'+inttostr(i)]);
      FgStatus := VarToSTr(Excel.cells.range['C'+inttostr(i)]);
      Qty := VarToSTr(Excel.cells.range['D'+inttostr(i)]);
      Alasan := VarToSTr(Excel.cells.range['E'+inttostr(i)]);
      UpdDate := FormatDateTime('yyyy-mm-dd',StrToDatetime(VarToStr(Excel.cells.range['F'+inttostr(i)])));
      Upduser := VarToSTr(Excel.cells.range['G'+inttostr(i)]);
      Price := VarToSTr(Excel.cells.range['H'+inttostr(i)]);
      Fgjadi := VarToSTr(Excel.cells.range['I'+inttostr(i)]);
      RekeningID := VarToSTr(Excel.cells.range['J'+inttostr(i)]);
      NoUnit := VarToSTr(Excel.cells.range['K'+inttostr(i)]);
      KMAwal := VarToSTr(Excel.cells.range['L'+inttostr(i)]);
      KMAkhir := VarToSTr(Excel.cells.range['M'+inttostr(i)]);
      NomorBan := VarToSTr(Excel.cells.range['N'+inttostr(i)]);
      JmlAwal := VarToSTr(Excel.cells.range['O'+inttostr(i)]);
      StatusBan := VarToSTr(Excel.cells.range['P'+inttostr(i)]);
      Serial := VarToSTr(Excel.cells.range['Q'+inttostr(i)]);
      keperluan := VarToSTr(Excel.cells.range['R'+inttostr(i)]);
      transdate := FormatDateTime('yyyy-mm-dd',StrToDatetime(VarToStr(Excel.cells.range['S'+inttostr(i)])));
      WarehouseID := VarToSTr(Excel.cells.range['T'+inttostr(i)]);
      note1 := VarToSTr(Excel.cells.range['U'+inttostr(i)]);
      acknowledgeby := VarToSTr(Excel.cells.range['V'+inttostr(i)]);
      upddate1 := FormatDateTime('yyyy-mm-dd',StrToDatetime(VarToStr(Excel.cells.range['W'+inttostr(i)])));
      upduser1 := VarToSTr(Excel.cells.range['X'+inttostr(i)]);
      flagin := VarToSTr(Excel.cells.range['Y'+inttostr(i)]);
      expedisi := VarToSTr(Excel.cells.range['Z'+inttostr(i)]);
      driver := VarToSTr(Excel.cells.range['AA'+inttostr(i)]);
      nosegel := VarToSTr(Excel.cells.range['AB'+inttostr(i)]);
      nosj := VarToSTr(Excel.cells.range['AC'+inttostr(i)]);

      with quAct,SQL do
      begin
        Close;Clear;
        Add('IF NOT EXISTS (SELECT TransID From INTrAdjustmentHd WHERE TransID='''+transID+''' ) '
           +'INSERT INTO INTrAdjustmentHd (TransID,TransDate,WareHouseID,Note,AcknowledgeBy,UpdDate,UpdUser,FlagIN,expedisi,Driver,nosegel,nosj) '
           +'VALUES ('''+transid+''','''+TransDate+''','''+warehouseid+''','''+note1+''','''+acknowledgeby+''','''+UpdDate1+''','''+UpdUser1+''','''+flagin+''','''+expedisi+''','''+driver+''','''+nosegel+''','''+nosj+''') ');
        Add('IF NOT EXISTS (SELECT TransID From INTrAdjustmentdt WHERE TransID='''+transID+''' AND ItemID='''+itemID+''' ) '
           +'INSERT INTO INTrAdjustmentdt (TransID,ItemID,FgStatus,Qty,Alasan,UpdDate,UpdUser,Price,FgJadi,RekeningID,NoUnit,KMawal,KMakhir,Nomorban,JmlAwl,Statusban,serial,keperluan) '
           +'VALUES ('''+transid+''','''+ItemID+''','''+fgstatus+''','''+qty+''','''+alasan+''','''+UpdDate+''','''+UpdUser+''','''+price+''','''+fgjadi+''','''+rekeningid+''','''+NoUnit+''''
           +','''+kmawal+''','''+KmAkhir+''','''+NomorBan+''','''+JmlAwal+''','''+StatusBan+''','''+Serial+''','''+keperluan+''') ');
        //ShowMessage(sql.text);
        ExecSQL;
        i:=i+1;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
    end;

  end;
  ProgressBar1.Visible := False;
  Label1.Visible := False;
  ShowMessage('Data Pemakaian Sudah Berhasil di Upload');
end;

procedure TfmExportImport.BitBtn2Click(Sender: TObject);
begin
  inherited;
    if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dxDBGrid2.SaveToXLS(saveDlg.FileName, true)
      else
        dxDBGrid2.SaveToXLS(saveDlg.FileName + '.xls', true);
    end;
end;

procedure TfmExportImport.Button3Click(Sender: TObject);
var POID,itemID,Qty,UOMID,ItemName,Note,NoUnit : string;
  CustID,TransDAte,SalesID,Administrasi,WarehouseID,DivisiID,Warehouse2,Site2,Keterangan : string;
  Excel : variant;
  i : integer;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    i:=3;
    ProgressBar1.Visible := True;
    Label1.Visible := True;
    ProgressBar1.Position := 0;
    while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
    begin
      POID := VarToSTr(Excel.cells.range['A'+inttostr(i)]);
      ItemID := VarToSTr(Excel.cells.range['B'+inttostr(i)]);
      Qty := VarToSTr(Excel.cells.range['C'+inttostr(i)]);
      UOMID := VarToSTr(Excel.cells.range['D'+inttostr(i)]);
      itemname := VarToSTr(Excel.cells.range['E'+inttostr(i)]);
      Note := VarToSTr(Excel.cells.range['F'+inttostr(i)]);
      NoUnit := VarToSTr(Excel.cells.range['G'+inttostr(i)]);
      CustID := VarToSTr(Excel.cells.range['H'+inttostr(i)]);
      transdate := FormatDateTime('yyyy-mm-dd',StrToDatetime(VarToStr(Excel.cells.range['I'+inttostr(i)])));
      SalesID := VarToSTr(Excel.cells.range['J'+inttostr(i)]);
      Administrasi := VarToSTr(Excel.cells.range['K'+inttostr(i)]);
      warehouseID := VarToSTr(Excel.cells.range['L'+inttostr(i)]);
      DivisiID := VarToSTr(Excel.cells.range['M'+inttostr(i)]);
      Warehouse2 := VarToSTr(Excel.cells.range['N'+inttostr(i)]);
      Site2 := VarToSTr(Excel.cells.range['O'+inttostr(i)]);
      Keterangan := VarToSTr(Excel.cells.range['P'+inttostr(i)]);

      with quAct,SQL do
      begin
        Close;Clear;
        Add('IF NOT EXISTS (SELECT POID From ARTrPurchaseOrderHd WHERE POID='''+POID+''' ) '
           +'INSERT INTO ARTrPurchaseOrderHd (POID,CustID,Transdate,SalesID,Administrasi,WareHouseID,DivisiID,Warehouse2,Site2,Note,ttlso,fgtax,tglkirim,fgcetak,taxamount,discount,discamount,jenis,currid,ongkir,repacking) '
           +'VALUES ('''+POID+''','''+CustID+''','''+Transdate+''','''+SalesID+''',0,'''+WarehouseID+''','''+DivisiID+''','''+Warehouse2+''','''+Site2+''','''+Keterangan+''',0,''T'','''+Transdate+''',''T'',0,0,0,''S'',''IDR'',0,0) ');
        Add('IF NOT EXISTS (SELECT POID From ARTrPurchaseOrderDt WHERE POID='''+POID+''' AND ItemID='''+itemID+''' ) '
           +'INSERT INTO ARTrPurchaseOrderDt (POID,ItemID,Qty,UOMID,ItemName,Note,NoUnit,fgtax,discitem,jumlah) '
           +'VALUES ('''+POID+''','''+ItemID+''','''+Qty+''','''+UOMID+''','''+ItemName+''','''+Note+''','''+NoUnit+''',''T'',0,'''+Qty+''') ');
        //ShowMessage(sql.text);
        ExecSQL;
        i:=i+1;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
    end;

  end;
  ProgressBar1.Visible := False;
  Label1.Visible := False;
  ShowMessage('Data Peminjaman Sudah Berhasil di Upload');
end;

end.
