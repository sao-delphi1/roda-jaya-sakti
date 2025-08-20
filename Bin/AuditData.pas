unit AuditData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, DB, dxExEdtr, dxCntner, ADODB, Buttons, dxCore,
  dxContainer, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, dxButton, IniFiles,
  ExtCtrls;

type
  TfmTrAuditData = class(TfmStdLv1)
    dbgAllItem: TdxDBGrid;
    quMainTransfer1: TIntegerField;
    quMainAdjustment_Tambah: TIntegerField;
    quMainPembelian: TIntegerField;
    quMainPengganti_Retur_Pembelian: TIntegerField;
    quMainTerima_Barang_Kosninyasi: TIntegerField;
    quMainRetur_Penjualan: TIntegerField;
    quMainRetur_Konsinyasi_Jual: TIntegerField;
    quMainService: TIntegerField;
    quMainTransfer2: TIntegerField;
    quMainAdjustment_Kurang: TIntegerField;
    quMainPenjualan: TIntegerField;
    quMainRetur_Pembelian: TIntegerField;
    quMainRetur_Konsinyasi_Beli: TIntegerField;
    quMainPengganti_Retur_Penjualan: TIntegerField;
    quMainKonsinyasi_Jual: TIntegerField;
    quMainInvoice_Service: TIntegerField;
    dbgAllItemTransfer1: TdxDBGridMaskColumn;
    dbgAllItemAdjustment_Tambah: TdxDBGridMaskColumn;
    dbgAllItemPembelian: TdxDBGridMaskColumn;
    dbgAllItemPengganti_Retur_Pembelian: TdxDBGridMaskColumn;
    dbgAllItemTerima_Barang_Kosninyasi: TdxDBGridMaskColumn;
    dbgAllItemRetur_Penjualan: TdxDBGridMaskColumn;
    dbgAllItemRetur_Konsinyasi_Jual: TdxDBGridMaskColumn;
    dbgAllItemService: TdxDBGridMaskColumn;
    dbgAllItemTransfer2: TdxDBGridMaskColumn;
    dbgAllItemAdjustment_Kurang: TdxDBGridMaskColumn;
    dbgAllItemPenjualan: TdxDBGridMaskColumn;
    dbgAllItemRetur_Pembelian: TdxDBGridMaskColumn;
    dbgAllItemRetur_Konsinyasi_Beli: TdxDBGridMaskColumn;
    dbgAllItemPengganti_Retur_Penjualan: TdxDBGridMaskColumn;
    dbgAllItemKonsinyasi_Jual: TdxDBGridMaskColumn;
    dbgAllItemInvoice_Service: TdxDBGridMaskColumn;
    dbgTable: TdxDBGrid;
    quTable: TADOQuery;
    dsTable: TDataSource;
    quTableTr_Transfer1: TIntegerField;
    quTableTr_Adjustment_Tambah: TIntegerField;
    quTableTr_Pembelian: TIntegerField;
    quTableTr_Pengganti_Retur_Pembelian: TIntegerField;
    quTableTr_Terima_Barang_Konsinyasi: TIntegerField;
    quTableTr_Retur_Penjualan: TIntegerField;
    quTableTr_Retur_Konsinyasi_Jual: TIntegerField;
    quTableTr_Service: TIntegerField;
    quTableTr_Transfer2: TIntegerField;
    quTableTr_Adjustment_Kurang: TIntegerField;
    quTableTr_Penjualan: TIntegerField;
    quTableTr_Retur_Pembelian: TIntegerField;
    quTableTr_Retur_Konsinyasi_Beli: TIntegerField;
    quTableTr_Pengganti_Retur_Penjualan: TIntegerField;
    quTableTr_Konsinyasi_Jual: TIntegerField;
    quTableTr_Invoice_Service: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    dbgTableTr_Transfer1: TdxDBGridMaskColumn;
    dbgTableTr_Adjustment_Tambah: TdxDBGridMaskColumn;
    dbgTableTr_Pembelian: TdxDBGridMaskColumn;
    dbgTableTr_Pengganti_Retur_Pembelian: TdxDBGridMaskColumn;
    dbgTableTr_Terima_Barang_Konsinyasi: TdxDBGridMaskColumn;
    dbgTableTr_Retur_Penjualan: TdxDBGridMaskColumn;
    dbgTableTr_Retur_Konsinyasi_Jual: TdxDBGridMaskColumn;
    dbgTableTr_Service: TdxDBGridMaskColumn;
    dbgTableTr_Transfer2: TdxDBGridMaskColumn;
    dbgTableTr_Adjustment_Kurang: TdxDBGridMaskColumn;
    dbgTableTr_Penjualan: TdxDBGridMaskColumn;
    dbgTableTr_Retur_Pembelian: TdxDBGridMaskColumn;
    dbgTableTr_Retur_Konsinyasi_Beli: TdxDBGridMaskColumn;
    dbgTableTr_Pengganti_Retur_Penjualan: TdxDBGridMaskColumn;
    dbgTableTr_Konsinyasi_Jual: TdxDBGridMaskColumn;
    dbgTableTr_Invoice_Service: TdxDBGridMaskColumn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    bbAData: TdxButton;
    dxButton1: TdxButton;
    quMainSparepart_Service: TIntegerField;
    quTableTr_SparePart_Service: TIntegerField;
    dbgAllItemSparePart: TdxDBGridColumn;
    dbgTableTr_Sparepart: TdxDBGridColumn;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    dbgAllMoney: TdxDBGrid;
    dbgAllMoneyKMasuk: TdxDBGridMaskColumn;
    dbgAllMoneyKKeluar: TdxDBGridMaskColumn;
    dbgAllMoneyBMasuk: TdxDBGridMaskColumn;
    dbgAllMoneyBKeluar: TdxDBGridMaskColumn;
    dbgAllMoneyPembHutang: TdxDBGridMaskColumn;
    dbgAllMoneyPemHutKons: TdxDBGridMaskColumn;
    dbgAllMoneyPiutang: TdxDBGridMaskColumn;
    dbgAllMoneyPiutKons: TdxDBGridMaskColumn;
    dbgAllMoneyPiutService: TdxDBGridMaskColumn;
    dbgTrMoney: TdxDBGrid;
    dbgTrMoneyKasM: TdxDBGridMaskColumn;
    dbgTrMoneyKasK: TdxDBGridMaskColumn;
    dbgTrMoneyBankM: TdxDBGridMaskColumn;
    dbgTrMoneyBankK: TdxDBGridMaskColumn;
    dbgTrMoneyPembHutang: TdxDBGridMaskColumn;
    dbgTrMoneyPembHutKons: TdxDBGridMaskColumn;
    dbgTrMoneyPembPiutang: TdxDBGridMaskColumn;
    dbgTrMoneyPembPiutKons: TdxDBGridMaskColumn;
    dbgTrMoneyPembPiuService: TdxDBGridMaskColumn;
    bbMoney: TdxButton;
    Panel1: TPanel;
    quAllMoney: TADOQuery;
    quAllMoneyKMasuk: TIntegerField;
    quAllMoneyKKeluar: TIntegerField;
    quAllMoneyBMasuk: TIntegerField;
    quAllMoneyBKeluar: TIntegerField;
    quAllMoneyPembHutang: TIntegerField;
    quAllMoneyPemHutKons: TIntegerField;
    quAllMoneyPiutang: TIntegerField;
    quAllMoneyPiutKons: TIntegerField;
    quAllMoneyPiutService: TIntegerField;
    dsAllMoney: TDataSource;
    quTransMoney: TADOQuery;
    quTransMoneyKasM: TIntegerField;
    quTransMoneyKasK: TIntegerField;
    quTransMoneyBankM: TIntegerField;
    quTransMoneyBankK: TIntegerField;
    quTransMoneyPembHutang: TIntegerField;
    quTransMoneyPembHutKons: TIntegerField;
    quTransMoneyPembPiutang: TIntegerField;
    quTransMoneyPembPiuService: TIntegerField;
    dsTransMoney: TDataSource;
    quTransMoneyPembPiutKons: TIntegerField;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure dsTableStateChange(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure bbADataClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure bbMoneyClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  fmTrAuditData: TfmTrAuditData;

implementation

uses MyUnit, ConMain, UnitGeneral;

{$R *.dfm}

procedure TfmTrAuditData.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Open;
  quTable.Open;
  quAllMoney.Open;
  quTransMoney.Open;
end;

procedure TfmTrAuditData.dsTableStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgTable,TRUE);
end;

procedure TfmTrAuditData.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgAllItem,TRUE);
end;

procedure TfmTrAuditData.bbADataClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM Allitem WHERE convert(varchar(10),Transdate,112)>=''20220101'' ');

    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseSrc as WarehouseID, 83 as FgTrans, B.ItemID2, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,B.SiteID,B.NumAll,B.LayoutID '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseSrc=C.WareHouseID '
       +'WHERE A.FgTrf=''RL'' AND convert(varchar(10),A.TransferDate,112)>=''20220101'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseSrc,B.ItemID,B.Qty');

    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo,B.LayoutID) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseSrc as WarehouseID, 52 as FgTrans, B.ItemID2, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=A.WareHouseSrc),B.NumAll,B.LayoutID '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseSrc=C.WareHouseID '
       +'WHERE A.FgTrf=''SP'' AND convert(varchar(10),A.TransferDate,112)>=''20220101'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseSrc,B.ItemID,B.Qty');

    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseSrc as WarehouseID, 62 as FgTrans, B.ItemID2, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=A.WareHouseSrc),B.NumAll,B.LayoutID '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseSrc=C.WareHouseID '
       +'Where A.FgTrf=''IN'' AND convert(varchar(10),A.TransferDate,112)>=''20220101'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseSrc,B.ItemID,B.Qty ');
  {
   TR = Stok Opname +3 -53 *
   TS = Terima Solar +25 *
   PN = Terima Sparepart +26 *
   TB = Terima Ban +23 +stock24 -73
   PG = penggunaan Sparepart -76 *
   PS = Pakai Solar -75 *
   inventaris 99
  }
    //stok opname
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.Transdate,B.WareHouseID,3,A.ItemID,A.Qty,0,''IN'',C.WareHouseName,'
       +'A.Barang,A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''T'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''TR'' ');

    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,53,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'A.Barang,A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''TR'' ');

    //pemakaian inventaris
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,99,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''PI'' ');

    //terima dan pakai ban
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.Transdate,B.WareHouseID,23,A.ItemID,A.Qty,0,''IN'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''T'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''TB'' ');

    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,24,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''L'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''TB'' ');

    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,73,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''TB'' ');

    //terima solar
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.Transdate,B.WareHouseID,25,A.ItemID,A.Qty,0,''IN'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''T'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''TS'' ');

    //peminjaman
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.POID,B.Transdate,B.WareHouseID,88,A.ItemID,A.Qty,0,''AR'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM ARTrPurchaseOrderDt A '
       +'INNER JOIN ARTrPurchaseOrderHd B ON A.POID=B.POID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID AND B.FgCetak=''Y'' '
       +'WHERE convert(varchar(10),B.Transdate,112)>=''20220101'' ');


    //terima sparepart
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,26,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''T'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''PN'' ');

    //pakai solar
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.Transdate,B.WareHouseID,75,A.ItemID,A.Qty,0,''IN'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''PS'' ');

    //pakai sparepart
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,76,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''PN'' ');

    //pakai oli
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,79,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''O'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''PO'' ');

    //pakai oli
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo,LayoutID) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,80,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll,A.LayoutID FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND convert(varchar(10),B.Transdate,112)>=''20220101'' AND B.FlagIN=''PO'' ');

    //penerimaan barang
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField,TempField2,CurrID,Rate,SourceNo,barang,LayoutID) '
       +'SELECT A.KonsinyasiID,B.Transdate,B.WareHouseID,7,A.ItemID,A.Qty,A.Price,''AP'',B.SuppID,C.SuppName,A.CurrID,B.Rate,A.NumAll, '
       +'(SELECT X.SiteID FROM APTrPurchaseRequestHD X Where X.PRID=A.Note),A.LayoutID '
       +'FROM APTrKonsinyasiDt A '
       +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
       +'WHERE convert(varchar(10),B.Transdate,112)>=''20220101'' ');

    //Add('DELETE FROM Allitem where transdate<''20200829'' and warehouseid=''TGF'' ');
    ExecSQL;
    ShowMessage('Data sudah berhasil di proses ulang');
  end;
  quMain.Requery();
end;

procedure TfmTrAuditData.dxButton1Click(Sender: TObject);
var dbName, SPath : String;
    MyIniFile : TIniFile;
begin
  inherited;
  SPath      := ExtractFilePath(Application.ExeName) + 'setting.ini';
  MyIniFile  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Setting.ini');
  dbName     := Decrypt (MyIniFile.ReadString('Server','01','UPIData'));
  with quAct,SQL do
  begin
    Close;Clear;
    Add('BACKUP LOG ['+dbName+'] WITH Truncate_Only dbcc SHRINKFILE (AssatiData2_dat, 1)');
    Add('BACKUP LOG ['+dbName+'] WITH Truncate_Only dbcc SHRINKFILE (AssatiData2_log, 1)');
    ExecSQL;
    ShowMessage('Data sudah berhasil di maintenance');
  end;
  Self.Close;
end;

procedure TfmTrAuditData.bbMoneyClick(Sender: TObject);
begin
  inherited;
{  with quAct,SQL do
  begin
     Close;Clear;
     Add('DELETE FROM AllMoney WHERE FgTrans NOT IN (6,15,18,19,80,82,90)');
     add('DELETE FROM AllMoney WHERE FgTrans=6 AND FgBBKK IN(''PIK'',''PIB'')');
     Add('INSERT AllMoney(VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID,B.Transdate,A.RekeningID,C.GroupRekID,A.Amount,''KM'' as FgBBKK,B.BankID as TempField,'''' as TempField1,1 as FgTrans,A.Note,B.Actor, '
        +'B.CurrID,B.Actor,1 as Rate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID '
        +'INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID WHERE B.FlagKKBB=11');
     Add('INSERT AllMoney(VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,Tempfield,Tempfield1,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID, B.Transdate,A.RekeningID,C.GroupRekID,A.Amount,''KK'',B.BankID,'''',2,A.Note,B.Actor,B.CurrID,B.Actor,1 '
        +'FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID WHERE B.FlagKKBB=12');
     Add('INSERT AllMoney(VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,Tempfield,Tempfield1,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID,B.Transdate,A.RekeningID,C.GroupRekID,A.Amount,''BM'' as FgBBKK,B.BankID as TempField,D.BankName,3 as FgTrans,A.Note,B.Actor, '
        +'B.CurrID,B.Actor,1 as Rate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID '
        +'INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID INNER JOIN CFMsBank D ON B.BankID=D.BankID WHERE B.FlagKKBB=21');
     Add('INSERT AllMoney(VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,Tempfield,Tempfield1,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID,B.Transdate,A.RekeningID,C.GroupRekID,A.Amount,''BK'' as FgBBKK,B.BankID as TempField,D.BankName,4 as FgTrans,A.Note,B.Actor, '
        +'B.CurrID,B.Actor,1 as Rate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID '
        +'INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID INNER JOIN CFMsBank D ON B.BankID=D.BankID WHERE B.FlagKKBB=22');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PaymentID, B.Transdate, '''+sDRPb+''', '''+sDGRPb+''', A.ValuePayment, ''KK'' as FgBBKK,A.BankID as TempField, '''' as TempField1, '
        +'5, ''Pembayaran Hutang Nota ''+A.PurchaseID+'' Supplier ''+C.SuppName, B.SuppID, A.PurchaseID, B.CurrID, C.SuppName, 1 as Rate '
        +'FROM APTrPaymentDt A INNER JOIN APTrPaymentHd B ON A.PaymentID=B.PaymentID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PaymentID, B.Transdate, '''+sDRPb+''', '''+sDGRPb+''', A.ValuePayment, ''BK'', A.BankID, D.BankName, '
        +'5,''Pembayaran Hutang Nota ''+A.PurchaseID+'' Supplier ''+C.SuppName, B.SuppID, A.PurchaseID, B.CurrID, C.SuppName, 1 as Rate '
        +'FROM APTrPaymentDt A INNER JOIN APTrPaymentHd B ON A.PaymentID=B.PaymentID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
        +'INNER JOIN CFMsBank D ON A.BankID=D.BankID WHERE A.BankID IS NOT NULL');
{     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PaymentKonsID, B.Transdate, '''+sDRPb+''', '''+sDGRPb+''', A.ValuePayment, ''KK'' as FgBBKK, '''' as TempField, '''' as TempField1, '
        +'6, ''Pembayaran Hutang Konsinyasi Nota ''+A.KonsinyasiInvID+'' Supplier ''+C.SuppName, B.SuppID, A.KonsinyasiInvID, B.CurrID, C.SuppName, 1 as Rate '
        +'FROM APTrPaymentKonsDt A INNER JOIN APTrPaymentKonsHd B ON A.PaymentKonsID=B.PaymentKonsID '
        +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PaymentKonsID, B.Transdate, '''+sDRPb+''', '''+sDGRPb+''', A.ValuePayment, ''BK'' as FgBBKK, A.BankID, D.BankName, '
        +'6, ''Pembayaran Hutang Nota ''+A.KonsinyasiInvID+'' Supplier ''+C.SuppName, B.SuppID, A.KonsinyasiInvID, B.CurrID, C.SuppName, 1 as Rate '
        +'FROM APTrPaymentKonsDt A INNER JOIN APTrPaymentKonsHd B ON A.PaymentKonsID=B.PaymentKonsID '
        +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID INNER JOIN CFMsBank D ON D.BankID=A.BankID WHERE A.BankID IS NOT NULL');   }
{     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID,A.Transdate,B.RekeningID,C.GroupRekID,B.Amount,''PIK'',6,''Pinjaman Karyawan ''+D.SalesName as Note,A.Actor,A.CurrID,D.SalesName,1 '
        +'FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID INNER JOIN CFMsRekening C ON B.RekeningID=C.RekeningID '
        +'INNER JOIN ARMsSales D ON D.SalesID=A.Actor WHERE A.FlagKKBB=31 AND A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,FgTrans,Note,Actor,ValutaID,TempField3,Rate,TempField,TempField1) '
        +'SELECT A.VoucherID,A.Transdate,B.RekeningID,C.GroupRekID,B.Amount,''PIB'',6,''Pinjaman Karyawan ''+D.SalesName as Note,'
        +'A.Actor,A.CurrID,D.SalesName,1,A.BankID,E.BankName '
        +'FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID INNER JOIN CFMsRekening C ON B.RekeningID=C.RekeningID '
        +'INNER JOIN ARMsSales D ON D.SalesID=A.Actor INNER JOIN CFMsBank E ON A.BankID=E.BankID '
        +'WHERE A.FlagKKBB=32 AND A.BankID IS NOT NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutangID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''KM'' as FgBBKK, A.BankID as TempField, '''' as TempField1, '
        +'8 as FgTrans, ''Pembayaran Piutang Nota ''+A.SaleID+'' - ''+ C.CustName as Note, B.CustID, A.SaleID, B.CurrID, C.CustName, 1 as Rate FROM ARTrPiutangDT A '
        +'INNER JOIN ARTrPiutangHd B ON A.PiutangID=B.PiutangID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutangID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''BM'' as FgBBKK, A.BankID, D.BankName, '
        +'8 as FgTrans, ''Pembayaran Piutang Nota ''+A.SaleID+'' - ''+ C.CustName as Note, B.CustID, A.SaleID, B.CurrID, C.CustName, 1 as Rate FROM ARTrPiutangDT A '
        +'INNER JOIN ARTrPiutangHd B ON A.PiutangID=B.PiutangID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID '
        +'INNER JOIN CFMsBank D ON A.BankID=D.BankID WHERE A.BankID IS NOT NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutangID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''KM'' as FgBBKK, '''' as TempField, '''' as TempField1, '
        +'9 as FgTrans, ''Pembayaran Piutang Karyawan ''+A.VoucherID+'' - ''+ C.SalesName as Note, B.SalesID, A.VoucherID, B.CurrID, C.SalesName, 1 as Rate '
        +'FROM CFTrPiutangInternalDt A INNER JOIN CFTrPiutangInternalHd B ON A.PiutangID=B.PiutangID '
        +'INNER JOIN ARMsSales C ON C.SalesID=B.SalesID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutangID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''BM'' as FgBBKK, A.BankID, D.BankName, '
        +'9 as FgTrans, ''Pembayaran Piutang Karyawan ''+A.VoucherID+'' - ''+ C.SalesName as Note, B.SalesID, A.VoucherID, B.CurrID, C.SalesName, 1 as Rate '
        +'FROM CFTrPiutangInternalDt A INNER JOIN CFTrPiutangInternalHd B ON A.PiutangID=B.PiutangID '
        +'INNER JOIN ARMsSales C ON B.SalesID=C.SalesID INNER JOIN CFMsBank D ON A.BankID=D.BankID WHERE A.BankID IS NOT NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutInvServiceID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''KM'' as FgBBKK, '''' as TempField, '''' as TempField1, '
        +'11 as FgTrans, ''Pembayaran Piutang Service Nota ''+A.InvServiceID+'' Pelanggan ''+C.CustName as Note, B.CustID, A.InvServiceID, B.CurrID, C.CustName, 1 as Rate '
        +'FROM ARTrPiutInvServiceDt A INNER JOIN ARTrPiutInvServiceHd B ON A.PiutInvServiceID=B.PiutInvServiceID '
        +'INNER JOIN ARMsCustomer C ON B.CustID=C.CustID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutInvServiceID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''BM'' as FgBBKK, A.BankID, D.BankName, '
        +'11 as FgTrans, ''Pembayaran Piutang Service Nota ''+A.InvServiceID+'' Pelanggan ''+C.CustName as Note, B.CustID, A.InvServiceID, B.CurrID, C.CustName, 1 as Rate '
        +'FROM ARTrPiutInvServiceDt A INNER JOIN ARTrPiutInvServiceHd B ON A.PiutInvServiceID=B.PiutInvServiceID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID '
        +'INNER JOIN CFMsBank D ON A.BankID=D.BankID WHERE A.BankID IS NOT NULL');
     ExecSQL;
     ShowMessage('Proses Ulang keuangan sudah selesai');
  end;
  quAllMoney.Requery();
  quTransMoney.Requery();     }
end;

procedure TfmTrAuditData.dxButton2Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('DELETE FROM AllLootNumber ');
   Add('insert AllLootNumber (fgNum,voucherno,TransDate,FgTrans,SNID,qty,expdate,warehouseid,ItemId) '
      +'select A.NumAll,A.TransID,C.transdate,CASE WHEN B.FgStatus=''T'' THEN 2 ELSE 52 END,A.SNID,A.Jumlah,A.ExpDate,C.WareHouseid,A.ItemID '
      +'from INTrAdjustmentSN A '
      +'inner join INTrAdjustmentDt B on A.TransID=B.TransID '
      +'Inner join INTrAdjustmentHd C on B.TransID=C.TransID '
      +'union all '
      +'select '''',A.TransferID,B.TransferDate,4,A.SNID,A.Qty,A.ExpDate,B.WareHouseDest,A.ItemID from INTrTransferItemSN A '
      +'Inner join INTrTransferItemHd B on A.TransferID=B.TransferID '
      +'union all '
      +'select '''',A.TransferID,B.TransferDate,54,A.SNID,A.Qty,A.ExpDate,B.WareHouseSrc,A.ItemID from INTrTransferItemSN A '
      +'Inner join INTrTransferItemHd B on A.TransferID=B.TransferID '
      +'union all '
      +'select A.NumAll,A.KonsinyasiID,B.TransDate,1,A.SNID,A.Jumlah,A.ExpDate,B.WareHouseID,A.ItemID from APTrKonsinyasiDtSN A '
      +'inner join APTrKonsinyasiHd b on A.KonsinyasiID=B.KonsinyasiID '
      +'union all '
      +'select A.NumAll,A.ReturnKonID,C.TransDate,6,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.ItemID from APTrReturnKonSN A '
      +'inner join APTrReturnKondt B on A.ReturnKonID=B.ReturnKonID '
      +'inner join APTrReturnKonHd C on C.ReturnKonID=B.ReturnKonID '
      +'union all '
      +'select A.NumAll,A.ReturnID,C.TransDate,6,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.ItemID from APTrReturnSN A '
      +'inner join APTrReturndt B on A.ReturnID=B.ReturnID '
      +'inner join APTrReturnHd C on C.ReturnID=B.ReturnID '
      +'union all '
      +'select A.NumAll,A.ReturnID,C.TransDate,55,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.ItemID from ARTrReturPenjualanDtSN A '
      +'inner join ARTrReturPenjualanDt B on A.ReturnID=B.ReturnID '
      +'inner join ARTrReturPenjualanHd C on C.ReturnID=B.ReturnID '
      +'union all '
      +'select A.NumAll,A.KonReturID,C.TransDate,56,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.ItemID from ARTrKonReturDtSN A '
      +'inner join ARTrKonReturDt B on A.KonReturID=B.KonReturID '
      +'inner join ARTrKonReturHd C on C.KonReturID=B.KonReturID '
      +'union all '
      +'select A.urut,A.KonTransBrgID,B.transdate,51,A.SNID,A.Qty,'''',B.WareHouseID,A.ItemID from ARTrKonTransBrgDtSN A '
      +'inner join ARTrKonTransBrgHd B on A.KonTransBrgID=B.KonTransBrgID ');
   //ShowMessage(sql.text);
   ExecSQL;
   ShowMessage('Proses Ulang Loot sudah selesai');
  End;


end;

procedure TfmTrAuditData.dxButton3Click(Sender: TObject);
begin
  inherited;
  {
  with quAct,SQL do
   begin
     Close;Clear;
     Add('Select ISNULL(SUM(Qty),0) as Qty FROM ARTrKonInvPelCost WHERE KoninvPelid='''+quMainKonInvPelID.AsString+''' AND '
        +'Itemid='''+quDetilItemID.ASString+''' and NumAll='''+quDetilNumAll.AsString+''' ');
     Open;
   End;
   Qty := quAct.FieldByName('Qty').AsCurrency;
   Jum := quDetilQty.AsCurrency;
   i := 1;
   if quDetilQty.AsCurrency <> Qty then
   begin
     with quAct,SQL do
     begin
       Close;Clear;
       Add('delete FROM ARTrKonInvPelCost WHERE koninvpelid='''+quMainKonInvPelID.AsString+''' AND '
          +'Itemid='''+quDetilItemID.ASString+''' and NumAll='''+quDetilNumAll.AsString+''' ');
       ExecSQL;
     End;

     while (i = 1) do
     begin
       with quAct,SQL do
       begin
         Close;Clear;
         Add('Select TOP 1 K.* FROM ( '
            +'select A.VoucherNo,A.TransDate,A.ItemID,ISNULL(A.Qty-(Select ISNULL(SUM(B.Qty),0) FROM artrkoninvpelcost B '
            +'Where B.ItemID=A.ItemId AND B.PurchaseID=A.VoucherNo),0) as Qty '
            +',(SELECT F.Price FROM ( '
            +'select X.KonsinyasiID,X.ItemID,Z.Price from APTrKonsinyasidt X '
            +'inner join APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID  '
            +'inner join APTrPurchaseOrderDt Z on Y.POID=Z.POID and X.ItemID=Z.ItemID AND X.FgNum=Z.NumAll '
            +'UNION ALL '
            +'select X.TransID,X.ItemID,X.Price from INTrAdjustmentDt X ) as F '
            +'WHERE F.KonsinyasiID=A.VoucherNo AND F.Itemid=A.Itemid ) as price '
            +'from allitem A where A.FgTrans<50 and A.ItemID='''+quDetilItemID.ASString+''' '
            +') as K WHERE K.Qty<>0 AND '
            +'CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyymmdd',quMainTransDate.AsDateTime)+''' ');
          Open;
        End;
        Qtyy :=  quAct.FieldByName('Qty').AsCurrency;
        PurchaseId := quAct.FieldByName('VoucherNo').AsString;
        Price := quAct.FieldByName('price').AsCurrency;

        if (Qtyy <= Jum) AND (Qtyy <> 0) AND (Jum <> 0) then
        begin

          with quAct,SQL do
          begin
            Close;Clear;
            Add('Insert ARTrKonInvPelCost (KonInvPelid,KonTransBrgID,itemid,PurchaseID,Qty,Price,UpdDate,UpdUser,NumAll) '
               +'select '''+quMainKonInvPelID.AsString+''','''+quDetilKonTransBrgId.AsString+''','''+quDetilItemId.AsString+''','''+PurchaseId+''','''+CurrTostr(Qtyy)+''' '
               +','''+CurrtoStr(Price)+''',GetDate(),'''+dmMain.UserId+''','''+quDetilNumAll.AsString+''' ');
            ExecSQL;
          End;
          Jum := Jum - Qtyy;
          i := 1;
        end else
        begin
          if (jum<>0) then
          begin
            with quAct,SQL do
            begin
              Close;Clear;
              Add('Insert ARTrKonInvPelCost (KonInvPelid,KonTransBrgID,itemid,PurchaseID,Qty,Price,UpdDate,UpdUser,NumAll) '
                 +'select '''+quMainKonInvPelID.AsString+''','''+quDetilKonTransBrgId.AsString+''','''+quDetilItemId.AsString+''','''+PurchaseId+''','''+CurrTostr(Jum)+''' '
                 +','''+CurrtoStr(Price)+''',GetDate(),'''+dmMain.UserId+''','''+quDetilNumAll.AsString+''' ');
              ExecSQL;
            End;
          end;
          Jum := 0;
          i := 2;
        end;
     end;
   end;
   }
end;

end.
