unit ImportData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxButton, Inifiles,
  StdCtrls, dxEditor, dxEdLib;

type
  TfmImportData = class(TfmStdLv0)
    Label21: TLabel;
    edDatabase: TdxEdit;
    bbari: TButton;
    bbImport: TdxButton;
    dxButton1: TdxButton;
    OpenDialog: TOpenDialog;
    quImport: TADOQuery;
    Label1: TLabel;
    cmbDatabase: TComboBox;
    dbConn: TADOConnection;
    quData: TADOQuery;
    procedure dxButton1Click(Sender: TObject);
    procedure bbariClick(Sender: TObject);
    procedure bbImportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    //procedure AturStok;
  public
    { Public declarations }
    SServer,Passdb,database,StClient,Data : string;
    initialCatalog, dataSource, passwd: String;
  end;

var
  fmImportData: TfmImportData;

implementation

uses ConMain, MyUnit, AuditData;

{$R *.dfm}
{
procedure TfmImportData.AturStok;
begin
  with quAct,SQL do
  begin
     Close;Clear;
     Add('DELETE FROM Allitem');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2) '
        +'SELECT A.TransferID,A.TransferDate, A.WareHouseDest as WarehouseID, 2 as FgTrans, B.ItemID, B.Qty,''IDR'' as CurrID '
        +',0 as Price,''IN'' as ModuleID, C.WareHouseName FROM INTrTransferItemHd A '
        +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID INNER JOIN INMsWarehouse C ON A.WareHouseSrc=C.WareHouseID '
        +'ORDER BY A.TransferID,A.TransferDate,A.WarehouseDest,B.ItemID,B.Qty');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2) '
        +'SELECT A.TransID,B.Transdate,B.WareHouseID,3,A.ItemID,A.Qty,0,''IN'',C.WareHouseName FROM INTrAdjustmentDt A '
        +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID WHERE A.FgStatus=''T'' ');
     Add('INSERT Allitem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
        +'SELECT A.PurchaseID,B.Transdate, A.WarehouseID, 5, A.ItemID, A.Qty, B.CurrID,A.Price,''AP'',B.SuppID,C.SuppName,B.Rate FROM APTrPurchaseDt A '
        +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID AND A.SuppID=B.SuppID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
        +'INSERT AllItem (VoucherNo,Transdate,WareHouseID,FgTrans,ItemID,Qty,ModuleID,TempField,TempField1,TempField2) '
        +'SELECT A.ReturnRepID,B.Transdate,A.WarehouseID,6,A.ItemID,A.Qty,''AP'',A.ReturnID,A.ItemRepID,C.SuppName '
        +'FROM APTrReturnRepDt A INNER JOIN APTrReturnRepHd B ON A.ReturnRepID=B.ReturnRepID '
        +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2) '
        +'SELECT A.KonsinyasiID,B.Transdate,B.WareHouseID,7,A.ItemID,A.Qty,0,''AP'',C.CustName FROM APTrKonsinyasiDt A '
        +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID ');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,Rate) '
        +'SELECT A.ReturnID, B.Transdate, A.WarehouseID, 8, A.ItemID,A.Qty, D.CurrID, A.Price,''AR'',C.CustName,D.Rate FROM ARTrReturPenjualanDt A '
        +'INNER JOIN ARTrReturPenjualanHd B ON A.ReturnID=B.ReturnID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID '
        +'INNER JOIN ARTrPenjualanHd D ON A.SaleID=D.SaleID');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
        +'SELECT A.KonReturID,B.Transdate,A.WarehouseID,9,A.ItemID,A.Qty,'''',0,''AR'',A.KonTransBrgID,C.CustName,1 FROM ARTrKonReturDt A '
        +'INNER JOIN ARTrKonReturHd B ON A.KonReturID=B.KonReturID '
        +'INNER JOIN ARMsCustomer C ON B.CustID=C.CustID');
     Add('INSERT AllItem (VoucherNo,Transdate,WareHouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2) '
        +'SELECT A.ServiceID,B.Transdate,B.WareHouseID,10,A.ItemID,A.Qty,0,''AR'',C.CustName FROM ARTrServiceDt A '
        +'INNER JOIN ARTrServiceHd B ON A.ServiceID=B.ServiceID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2) '
        +'SELECT A.TransferID,A.TransferDate, A.WareHouseSrc as WarehouseID, 52 as FgTrans, B.ItemID, B.Qty,''IDR'' as CurrID, '
        +'0 as Price,''IN'' as ModuleID, C.WareHouseName FROM INTrTransferItemHd A INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
        +'INNER JOIN INMsWarehouse C ON A.WareHouseDest=C.WareHouseID ORDER BY A.TransferID,A.TransferDate,A.WarehouseSrc,B.ItemID,B.Qty');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2) '
        +'SELECT A.TransID,B.TransDate,B.WareHouseID,53,A.ItemID,A.Qty,0,''IN'',C.WarehouseName FROM INTrAdjustmentDt A '
        +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID WHERE A.FgStatus=''K''');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate,SalesID,Komisi) '
        +'SELECT A.SAleID,B.Transdate,A.WarehouseID,55,A.ItemID,A.Qty,B.CurrID,A.Price,''AR'',B.CustID,C.CustName,B.Rate,B.SalesID,A.Komisi '
        +'FROM ARTrPenjualanDt A INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID ');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
        +'SELECT A.ReturnID, B.Transdate, A.WarehouseID, 56, A.ItemID, A.Qty, D.CurrID, A.Price, ''AP'',A.PurchaseID,C.SuppName,D.Rate '
        +'FROM APTrReturnDt A INNER JOIN APTrReturnHd B ON A.ReturnID=B.ReturnID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
        +'INNER JOIN APTrPurchaseHd D ON A.PurchaseID=D.PurchaseID ');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
        +'SELECT A.ReturnKonID,B.Transdate,A.WarehouseID,57,A.ItemID,A.Qty,'''',0,''AP'',A.KonsinyasiID,C.CustName,1 FROM APTrReturnKonDt A '
        +'INNER JOIN APTrReturnKonHd B ON A.ReturnKonID=B.ReturnKonID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID');
     Add('INSERT AllItem (VoucherNo,Transdate,WareHouseID,FgTrans,ItemID,Qty,ModuleID,TempField,TempField1,TempField2) '
        +'SELECT A.ReturnRepID,B.Transdate,A.WarehouseID,58,A.ItemRepID,A.Qty,''AR'',A.ReturnID,A.ItemRepID,C.CustName FROM ARTrPenggantiReturPenjDt A '
        +'INNER JOIN ARTrPenggantiReturPenjHd B ON A.ReturnRepID=B.ReturnRepID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID');
     Add('INSERT ALlItem (VOucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2) '
        +'SELECT A.KonTransBrgID,B.TransDate,B.WarehouseID,59,A.ItemID,A.qty,0,''AR'',C.CustName '
        +'FROM ARTrKonTransBrgDt A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID');
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2) '
        +'SELECT A.InvServiceID,A.Transdate,B.WarehouseID,60,C.ItemID,C.Qty,0,''AR'',D.CustName FROM ArTrInvServiceHd A '
        +'INNER JOIN ARTrServiceHd B ON A.ServiceID=B.ServiceID INNER JOIN ARTrServiceDt C ON B.ServiceID=C.ServiceID '
        +'INNER JOIN ARMsCustomer D ON B.CustID=D.CustID ');
     ExecSQL;
  end;
end;   }

procedure TfmImportData.dxButton1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfmImportData.bbariClick(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute then edDatabase.Text := OpenDialog.FileName;
end;

procedure TfmImportData.bbImportClick(Sender: TObject);
var mdf,ldf,DbPath,dataSource,CompName : string;
    MyIniFile : TIniFile;
begin
  inherited;
  MyIniFile  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Setting.ini');
  passwd     := Decrypt(MyIniFile.ReadString('Server','03','upi'));
  CompName   := Decrypt(MyIniFile.ReadString('Server','02','(Local)'));
  Data       := cmbDatabase.Text;

  if edDatabase.Text = '' then
  begin
    ShowMessage('File database belum diisi. Tekan tombol cari untuk mencari data yang mau diupload');
    Abort;
  end;

  if cmbDatabase.Text = '' then
  begin
    ShowMessage('Database Cabang Belum Dipilih');
    Abort;
  end;

  DbPath := ExtractFilePath(Application.ExeName);
  if not DirectoryExists(DbPath + 'Data') then CreateDir(DbPath + 'Data');
  initialCatalog := 'master';
  dataSource := edDatabase.Text;

  dbConn.ConnectionString :=
  ' Provider=SQLOLEDB.1;Password='+passwd+';Persist Security Info=False; ' +
  ' User ID=sa;Initial Catalog='+initialCatalog+';Data Source='+CompName;
  dbConn.Open;

  if TRIM(Data) = '' then
  begin
    ShowMessage('Database Cabang belum terdata dalam File Setting.ini');
    Abort;
  end;

  mdf := DbPath+'Data\'+data+'.mdf';
  ldf := DbPath+'Data\'+data+'_log.ldf';

  with quAct,SQL do
  begin
    Close;Clear;
    Add('RESTORE DATABASE '+Data+' FROM DISK = '''+edDatabase.Text+'''  '
       +'WITH REPLACE, MOVE ''AssatiData2_dat'' TO '''+mdf+''','
       +'     MOVE ''AssatiData2_log'' TO '''+ldf+''' ');
       //showmessage(sql.text);
    ExecSQL;
  end;
  quAct.Close;

    with quImport,SQL do
    begin
      Close;Clear;
      Add(''
          //insert data item
        {  +'Insert inmsitem (ItemId,Itemname,ProductID,GroupID,UOMID,Garantee,CurrID,UserPrice,DealerPrice,UpdDate,UpdUser,JangkaGarantee,'
          +'MinimumStok,Ctk,Komisi,FgActive,Note,Jenis,Tipe,Lokasi,UOMID2,Konversi,ItemName2,Sementara,FgUOMID,typeunit,merk) '
          +'Select ItemId,Itemname,ProductID,GroupID,UOMID,Garantee,CurrID,UserPrice,DealerPrice,UpdDate,UpdUser,JangkaGarantee,'
          +'MinimumStok,Ctk,Komisi,FgActive,Note,Jenis,Tipe,Lokasi,UOMID2,Konversi,ItemName2,Sementara,FgUOMID,typeunit,merk FROM '+Data+'.dbo.inmsitem '
          +'Where itemId NOT IN (Select itemId FROM inmsitem) '       }

          //insert data TypeUnit
       {   +'Insert INMsTypeUnit (TypeUnit,Description,updDate,Upduser,FgGroup) '
          +'Select TypeUnit,Description,updDate,Upduser,FgGroup FROM '+Data+'.dbo.INMsTypeUnit '
          +'Where TypeUnit NOT IN (Select TypeUnit FROM INMsTypeUnit) '      }

          //insert data keuangan
          +'insert cftrkkbbhd (VoucherID,TransDate,Actor,BankID,Note,FlagKKBB,UpdDate,UpdUser,CurrId,TglUbah,UserUbah,Transdate1,JumlahD,JumlahK,FgPayment,VoucherNo,Rate,MOP,kdcab) '
          +'select VoucherID,TransDate,Actor,BankID,Note,FlagKKBB,UpdDate,UpdUser,CurrId,TglUbah,UserUbah,Transdate1,JumlahD,JumlahK,FgPayment,VoucherNo,Rate,MOP,kdcab from '+Data+'.dbo.cftrkkbbhd '
          +'where voucherid not in (select voucherid from cftrkkbbhd) '

          //insert data keuangan
          +'insert cftrkkbbdt (VoucherID,RekeningID,Note,Amount,UpdDate,UpdUser,Jenis) '
          +'select VoucherID,RekeningID,Note,Amount,UpdDate,UpdUser,Jenis from '+Data+'.dbo.cftrkkbbdt A '
          +'where voucherid not in (select X.voucherid from cftrkkbbdt X where X.VoucherID=A.VoucherID AND X.rekeningID=A.RekeningID and X.Note=A.Note ANd X.Amount=A.Amount) '

          //insert data mutasi
          +'Insert INTrTransferItemHd (TransferID,TransferDate,WareHouseSrc,WareHouseDest,Note,UpdDate,UpdUser,FgTrf,FgForm,driver,company,tglupload) '
          +'select TransferID,TransferDate,WareHouseSrc,WareHouseDest,Note,UpdDate,UpdUser,FgTrf,FgForm,driver,company,getdate() from '+Data+'.dbo.INTrTransferItemHd '
          +'Where TransferID not in (select TransferID from INTrTransferItemHd) '

          +'Insert INTrTransferItemDt (TransferID,ItemID,Qty,UpdDate,UpdUser,PRID,note,SiteID,QtyK,FgOto,Keterangan,otoby) '
          +'select A.TransferID,ItemID,Qty,UpdDate,UpdUser,PRID,note,SiteID,QtyK,FgOto,Keterangan,otoby from  '+Data+'.dbo.INTrTransferItemDt A '
          +'Where TransferID NOT IN (SELECT X.TransferID From INTrTransferItemDt X '
          +'WHERE X.TransferID=A.TransferID AND ISNULL(X.SiteID,'''')=ISNULL(A.SiteID,'''') AND X.ItemID=A.ItemID AND X.Qty=A.Qty) '

          //insert data kanibal
          +'Insert INTrKanibalhd (TransID,Company,Transdate,SiteID,NoUnit,TypeUnit,CompanySrc,NoUnitSrc,KM,KMSrc,Note,upddate,upduser,SiteSrc,fgoto,warehouseid) '
          +'select TransID,Company,Transdate,SiteID,NoUnit,TypeUnit,CompanySrc,NoUnitSrc,KM,KMSrc,Note,upddate,upduser,SiteSrc,fgoto,warehouseid from '+Data+'.dbo.INTrKanibalhd '
          +'Where TransID not in (select TransID from INTrKanibalhd) '

          +'Insert INTrKanibaldt (TransID,ItemID,Kerusakan,Note,ActionPlan,Qty,UOMID,Objection,upddate,upduser) '
          +'select TransID,ItemID,Kerusakan,Note,ActionPlan,Qty,UOMID,Objection,upddate,upduser from '+Data+'.dbo.INTrKanibaldt A '
          +'Where TransID NOT IN (SELECT X.TransID From INTrKanibaldt X WHERE X.TransID=A.TransID AND X.ItemID=A.ItemID ) ');

          //insert data purchaseRequest
       if Data='MRMF' then
       begin

       Add('Insert APTrPurchaseRequestHd (PRID,Transdate,SalesID,FgForm,Note,UpdDate,UpdUser,NoPR,SiteID,warehouseID,DivisiID,kdCab,tglupload) '
          +'select PRID,Transdate,SalesID,FgForm,Note,UpdDate,UpdUser,NoPR,SiteID,warehouseID,DivisiID,kdCab,getdate() from  '+Data+'.dbo.APTrPurchaseRequestHd '
          +'Where PRID not in (select PRID from APTrPurchaseRequestHd) ');

       end else
       begin

       Add('Insert APTrPurchaseRequestHd (PRID,Transdate,SalesID,FgForm,Note,UpdDate,UpdUser,NoPR,SiteID,warehouseID,DivisiID,kdCab,tglupload,FgDivisi) '
          +'select PRID,Transdate,SalesID,FgForm,Note,UpdDate,UpdUser,NoPR,SiteID,warehouseID,DivisiID,kdCab,getdate(),ISNULL(FgDivisi,''LOG'') from  '+Data+'.dbo.APTrPurchaseRequestHd '
          +'Where PRID not in (select PRID from APTrPurchaseRequestHd) ');

       end;


       Add('Insert APTrPurchaseRequestDt (PRID,ItemID,Qty,UOMID,Note,UpdDate,UpdUser,MRID,Jumlah,TypeUnit,NoUnit,ReqBy,FgOto,noteoto) '
          +'select PRID,ItemID,Qty,UOMID,Note,UpdDate,UpdUser,MRID,Jumlah,TypeUnit,NoUnit,ReqBy,FgOto,noteoto from  '+Data+'.dbo.APTrPurchaseRequestDt A '
          +'WHERE PRID NOT IN (SELECT X.PRID From APTrPurchaseRequestDt  X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.MRID=A.MRID AND X.Qty=A.Qty ) '

          //insert data pemakaian
          +'Insert INTrAdjustmenthd (TransID,TransDate,WareHouseID,UpdDate,upduser,flagin,expedisi,Driver,nosj,nosegel,tglupload) '
          +'select TransID,TransDate,WareHouseID,UpdDate,upduser,flagin,expedisi,Driver,nosj,nosegel,getdate() from '+Data+'.dbo.INTrAdjustmenthd '
          +'Where TransID not in (select TransID from INTrAdjustmenthd) '

          +'Insert INTrAdjustmentdt (TransID,ItemID,FgStatus,Qty,Alasan,UpdDate,UpdUser,Price,NoUnit,kmawal,kmakhir,nomorban,keperluan,jmlawl,statusban,serial,MRID,FgNum) '
          +'select A.TransID,ItemID,FgStatus,Qty,Alasan,UpdDate,UpdUser,Price,NoUnit,kmawal,kmakhir,nomorban,keperluan,jmlawl,statusban,serial,MRID,FgNum from '+Data+'.dbo.INTrAdjustmentdt A '
          +'WHERE TransID NOT IN (SELECT X.TransID From INTrAdjustmentdt  X WHERE X.TransID=A.TransID AND X.ItemID=A.ItemID AND ISNULL(X.NoUnit,'''')=ISNULL(A.NoUnit,'''') AND X.Qty=A.Qty ) ');
      ExecSQL;
    end;

  //============================proses ulang stock=======================================
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM Allitem');
    //realisasi PR
   { Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseDest as WarehouseID, 3 as FgTrans, B.ItemID, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,B.SiteID,B.NumAll '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseDest=C.WareHouseID '
       +'WHERE A.FgTrf=''RL'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseDest,B.ItemID,B.Qty'); }
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseSrc as WarehouseID, 83 as FgTrans, B.ItemID, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,B.SiteID,B.NumAll '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseSrc=C.WareHouseID '
       +'WHERE A.FgTrf=''RL'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseSrc,B.ItemID,B.Qty');

    //mutasi sparepart
  {  Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseDest as WarehouseID, 2 as FgTrans, B.ItemID, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=A.warehouseDest),B.NumAll '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseDest=C.WareHouseID '
       +'WHERE A.FgTrf=''SP'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseDest,B.ItemID,B.Qty');     }
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseSrc as WarehouseID, 52 as FgTrans, B.ItemID, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=A.WareHouseSrc),B.NumAll '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseSrc=C.WareHouseID '
       +'WHERE A.FgTrf=''SP'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseSrc,B.ItemID,B.Qty');
       
    //mutasi inventaris
  {  Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseDest as WarehouseID, 12 as FgTrans, B.ItemID, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=A.WareHouseDest),B.NumAll '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseDest=C.WareHouseID '
       +'WHERE A.FgTrf=''IN'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseDest,B.ItemID,B.Qty');     }
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransferID,A.TransferDate, A.WareHouseSrc as WarehouseID, 62 as FgTrans, B.ItemID, B.Qty,''IDR'' as CurrID, '
       +'0 as Price,''IN'' as ModuleID, C.WareHouseName,(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=A.WareHouseSrc),B.NumAll '
       +'FROM INTrTransferItemHd A '
       +'INNER JOIN INTrTransferItemDt B ON A.TransferID=B.TransferID '
       +'INNER JOIN INMsWarehouse C ON A.WareHouseSrc=C.WareHouseID '
       +'Where A.FgTrf=''IN'' ORDER BY A.TransferID,A.TransferDate,A.WarehouseSrc,B.ItemID,B.Qty ');
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
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.Transdate,B.WareHouseID,3,A.ItemID,A.Qty,0,''IN'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''T'' AND B.FlagIN=''TR'' ');
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,53,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND B.FlagIN=''TR'' ');

    //pemakaian inventaris
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,99,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND B.FlagIN=''PI'' ');

    //terima dan pakai ban
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.Transdate,B.WareHouseID,23,A.ItemID,A.Qty,0,''IN'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''T'' AND B.FlagIN=''TB'' ');
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,24,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''L'' AND B.FlagIN=''TB'' ');
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,73,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND B.FlagIN=''TB'' ');

    //terima solar
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.Transdate,B.WareHouseID,25,A.ItemID,A.Qty,0,''IN'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''T'' AND B.FlagIN=''TS'' ');

    //peminjaman
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.POID,B.Transdate,B.WareHouseID,88,A.ItemID,A.Qty,0,''AR'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM ARTrPurchaseOrderDt A '
       +'INNER JOIN ARTrPurchaseOrderHd B ON A.POID=B.POID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID AND B.FgCetak=''Y'' ');


    //terima sparepart
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,26,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''T'' AND B.FlagIN=''PN'' ');

    //pakai solar
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.Transdate,B.WareHouseID,75,A.ItemID,A.Qty,0,''IN'',C.WareHouseName,'
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WareHouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND B.FlagIN=''PS'' ');

    //pakai sparepart
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,76,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND B.FlagIN=''PN'' ');

    //pakai oli
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,79,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''O'' AND B.FlagIN=''PO'' ');

    //pakai oli
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
       +'SELECT A.TransID,B.TransDate,B.WareHouseID,80,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
       +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
       +'WHERE A.FgStatus=''K'' AND B.FlagIN=''PO'' ');

    //penerimaan barang
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField,TempField2,CurrID,Rate,SourceNo,barang) '
       +'SELECT A.KonsinyasiID,B.Transdate,B.WareHouseID,7,A.ItemID,A.Qty,A.Price,''AP'',B.SuppID,C.SuppName,A.CurrID,B.Rate,A.NumAll, '
       +'(SELECT X.SiteID FROM APTrPurchaseRequestHD X Where X.PRID=A.Note) '
       +'FROM APTrKonsinyasiDt A '
       +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID ');

    //Add('DELETE FROM Allitem where transdate<''20200829'' and warehouseid=''TGF'' ');
    ExecSQL;
    ShowMessage('Data sudah berhasil di proses ulang');
  end;
  //================================================================================

  ShowMessage('Data sudah berhasil di upload.'); //kalo ini tdk jalan berarti error
  Self.Close;
end;

procedure TfmImportData.FormShow(Sender: TObject);
var MyIniFile : TIniFile;
begin
  inherited;
  cmbDatabase.Items.Clear;
  MyIniFile  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'setupcab.ini');

  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','01',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','02',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','03',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','04',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','05',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','06',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','07',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','08',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','09',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','10',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','11',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','12',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','13',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','14',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','15',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','16',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','17',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','18',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','19',''));
  cmbDatabase.Items.Add(MyIniFile.ReadString('Server','20',''));
  cmbDatabase.ItemIndex :=0;
end;

end.
