unit INTrAdjustment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxDBELib, dxEditor, DBCtrls;

type
  TfmINTrAdjustment = class(TfmStdLv4)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbg: TdxDBGrid;
    quWareHouse: TADOQuery;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgQty: TdxDBGridColumn;
    dbgItemID: TdxDBGridButtonColumn;
    quItem: TADOQuery;
    dbgItemName: TdxDBGridColumn;
    dbgFgStatus: TdxDBGridImageColumn;
    dbgListTransID: TdxDBGridColumn;
    dbgListTransDate: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    quWareHouseWareHouseID: TStringField;
    quWareHouseWareHouseName: TStringField;
    quAct1: TADOQuery;
    quMainTransID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainWareHouseID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainLWareHouseName: TStringField;
    quDetilTransID: TStringField;
    quDetilItemID: TStringField;
    quDetilFgStatus: TStringField;
    quDetilQty: TBCDField;
    quDetilAlasan: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLItemName: TStringField;
    Label3: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    DBText1: TDBText;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Panel2: TPanel;
    dbgAlasan: TdxDBGridColumn;
    dbgLUOM: TdxDBGridColumn;
    quDetilLUOMID: TStringField;
    dxButton1: TdxButton;
    ActPrint: TAction;
    dbgPrice: TdxDBGridColumn;
    quDetilPrice: TBCDField;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNTransID: TStringField;
    quSNItemID: TStringField;
    quSNSNID: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quSNFgJual: TStringField;
    quSNFgSN: TStringField;
    quSNJumlah: TBCDField;
    quSNExpDate: TDateTimeField;
    quSNPrice: TBCDField;
    quSNNumAll: TIntegerField;
    dbgBatch: TdxDBGrid;
    dbgBatchKonsinyasiID: TdxDBGridMaskColumn;
    dbgBatchItemID: TdxDBGridMaskColumn;
    dbgBatchUpdDate: TdxDBGridDateColumn;
    dbgBatchUpdUser: TdxDBGridMaskColumn;
    dbgBatchFgJual: TdxDBGridMaskColumn;
    dbgBatchFgSN: TdxDBGridMaskColumn;
    dbgBatchJumlah: TdxDBGridColumn;
    dbgBatchPrice: TdxDBGridCurrencyColumn;
    dbgBatchExpDate: TdxDBGridDateColumn;
    quMainFlagIN: TStringField;
    dbgBatchSNID: TdxDBGridButtonColumn;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton5: TdxButton;
    dxButton4: TdxButton;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    quDetilRekeningID: TStringField;
    dbgColumn8: TdxDBGridColumn;
    dbgColumn9: TdxDBGridButtonColumn;
    quDetilLRekeningName: TStringField;
    dbgColumn10: TdxDBGridColumn;
    dbgColumn11: TdxDBGridButtonColumn;
    quDetilLTypeUnit: TStringField;
    dbgColumn12: TdxDBGridColumn;
    dbgColumn13: TdxDBGridColumn;
    quDetilkmawal: TStringField;
    quDetilkmakhir: TStringField;
    quDetilnomorban: TStringField;
    Label4: TLabel;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label6: TLabel;
    quMainexpedisi: TStringField;
    quMainDriver: TStringField;
    quMainnosj: TStringField;
    Label7: TLabel;
    dxDBEdit3: TdxDBEdit;
    dbgColumn15: TdxDBGridColumn;
    quDetilJmlAwl: TBCDField;
    quDetilSelisih: TCurrencyField;
    dbgColumn16: TdxDBGridColumn;
    quMainnosegel: TStringField;
    Label8: TLabel;
    dxDBEdit4: TdxDBEdit;
    quDetilStatusban: TStringField;
    dbgColumn17: TdxDBGridImageColumn;
    dbgColumn18: TdxDBGridImageColumn;
    quDetilserial: TStringField;
    quDetilkeperluan: TStringField;
    dbgColumn19: TdxDBGridColumn;
    dbgColumn20: TdxDBGridImageColumn;
    dxButton6: TdxButton;
    quMainLsites: TStringField;
    quDetilNumAll: TAutoIncField;
    dbgColumn22: TdxDBGridColumn;
    quDetilMRID: TStringField;
    quDetilfgNum: TIntegerField;
    dbgColumn21: TdxDBGridButtonColumn;
    quMaintglupload: TDateTimeField;
    dbgColumn23: TdxDBGridImageColumn;
    dbgColumn24: TdxDBGridColumn;
    quDetilLNama: TStringField;
    dbgColumn25: TdxDBGridImageColumn;
    quMainFgDivisi: TStringField;
    quDetilModal: TBCDField;
    quDetilJual: TBCDField;
    quAct2: TADOQuery;
    dbgColumn26: TdxDBGridColumn;
    quDetilLMerk: TStringField;
    quDetilLDivisi: TStringField;
    dbgColumn27: TdxDBGridColumn;
    quDetilNoUnit: TStringField;
    dbgColumn14: TdxDBGridImageColumn;
    quDetilLayoutID: TStringField;
    dbgColumn28: TdxDBGridButtonColumn;
    quDetilbarang: TStringField;
    quDetilJumlah: TBCDField;
    dbgColumn29: TdxDBGridColumn;
    dbgColumn30: TdxDBGridColumn;
    quDetilLStock: TCurrencyField;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dbgEnter(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quDetilItemIDChange(Sender: TField);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure dbgBatchSNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dbgColumn9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dbgColumn11ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton6Click(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dbgColumn21ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quMainAfterInsert(DataSet: TDataSet);
    procedure dbgColumn28ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilJumlahChange(Sender: TField);
  private
    { Private declarations }
    procedure cekupload;
    procedure CekEdit;
    procedure CekHapus;
    procedure CekTambah;
  public
    { Public declarations }
    StLap,baru,FgDivisi : string;
    angka1,angka2,angka3 : integer;
  end;

var
  fmINTrAdjustment: TfmINTrAdjustment;

implementation

uses ConMain, StdLv0, UnitGeneral, StdLv2, StdLv1, StdLv3, Search, MyUnit,
  Allitem, INQRRptAdjusment, INQRRptAdjustment, RptTerimaSolar, RptLv0;

{$R *.dfm}

procedure TfmINTrAdjustment.CekEdit;
begin
  if FgEdit<>'Y' then
  begin
    if (quMainUpdUser.ASString<>dmmain.userid) then
    begin
      ShowMessage('Tidak Bisa Ubah Inputan User Lain');
      abort;
    end;
  end;
end;

procedure TfmINTrAdjustment.CekHapus;
begin
  if FgDelete<>'Y' then
  begin
    if (quMainUpdUser.ASString<>dmmain.userid) then
    begin
      ShowMessage('Tidak Bisa Hapus Inputan User Lain');
      abort;
    end;
  end;
end;

procedure TfmINTrAdjustment.CekTambah;
begin
  if FgTambah<>'Y' then
  begin
    if (quMainUpdUser.ASString<>dmmain.userid) then
    begin
      ShowMessage('Tidak Bisa Tambah Inputan User Lain');
      abort;
    end;
  end;
end;

procedure TfmINTrAdjustment.cekupload;
begin
  with quact,sql do
  begin
    close;clear;
    add('select case when tglupload is null then 1 else 0 end as hasil from intradjustmenthd where transid='''+quMainTransID.AsString+''' ');
    open;
  end;
  if (quact.fieldbyname('hasil').asinteger = 0) and (kdcab<>'HO') then
  begin
    ShowMessage('sudah pernah di upload. tidak bisa diubah');
    abort;
  end;
end;

procedure TfmINTrAdjustment.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,qumain.State<>dsinsert);
end;

procedure TfmINTrAdjustment.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  If Trim(quMainTransDate.AsString)='' Then
  Begin
     MsgInfo('tanggal tidak boleh kosong');
     quMainTransDate.FocusControl;
     Abort;
  End;

  If (Trim(quMainnosj.AsString)='') AND (StLap='PN') Then
  Begin
     MsgInfo('No SJ tidak boleh kosong');
     quMainnoSJ.FocusControl;
     Abort;
  End;

  if TRIM(quMainWarehouseID.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak boleh kosong !');
     quMainWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quMainLWareHouseName.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak terdaftar di Master Gudang !');
     quMainWarehouseID.FocusControl;
     Abort;
  end;

  if qumain.State=dsinsert then
  Begin
    with quAct,SQl do
    begin
      Close;Clear;
      Add('Select TOP 1 nosj,CONVERT(VARCHAR(10),Transdate,103) as tanggal,transid FROM INTrAdjustmentHd where FlagIN=''PN'' AND nosj='''+quMainnosj.AsString+''' ');
      Open;
    end;
    if quAct.RecordCount>0 then
    begin
      ShowMessage('Surat Jalan Sudah Ada, dipakai di nota penerimaan no'+quAct.FieldBYName('TransID').AsString+' tanggal '+quAct.FieldBYName('tanggal').AsString);
      Abort;
    end;
  End;

  if qumain.State=dsinsert then
  Begin
    if StLap='TR' then
    ST := 'ADJ-'+kdcab+'/'+FormatDateTime('YY/MM-', quMainTransDate.AsDateTime)
    else
    ST := kdcab+'/'+FormatDateTime('YYYY-', quMainTransDate.AsDateTime);
    quMainTransID.Value  := ST + FormatFloat('000000', RunNumberGL(quAct, 'INTrAdjustmentHd', 'TransId', ST, '0') + 1);
  End;


  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmINTrAdjustment.quDetilBeforePost(DataSet: TDataSet);
Var CekHargaBarang ,CekHargaPO: string;
    Stock : currency;
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLItemName.Value)='' then
  begin
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
    { with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT Count(*) FROM  INTradjustmentDt  WHERE TransId=:TransId AND ItemId=:ItemId');
        with Parameters do
        begin
           ParamByName('TransId').Value := quMainTransID.Value;
           ParamByName('ItemId').Value  := quDetilItemID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
     end; }
    quDetilUpdDate.AsDateTime := GetServerDateTime;
    quDetilUpdUser.AsString := dmMain.UserId;
  end;

  if (stlap<>'SD') and (stlap<>'PI') and (stlap<>'TR') then
  begin
    with quAct, SQL do
    begin
      Close; Clear;
      Add('SELECT NoUnit FROM INMsNoUnit WHERE NoUnit='''+qudetilNoUnit.ASString+''' AND FgActive=''Y'' ');
      Open;
      if quAct.RecordCount <> 1 then
      begin
        MsgInfo('No Unit Tidak Terdaftar ');
        quDetilNoUnit.FocusControl;
        Abort;
      end;
    end;
   end;

  if (stlap<>'TR') and (stlap<>'PN') then
  begin
    if StLap='PI' then
    begin
      If (TRIM(quDetilNoUnit.AsString)='') then
      Begin
        MsgInfo('Kode Karyawan Tidak Boleh Kosong');
        quDetilNoUnit.FocusControl;
        Abort;
      End;
    end else
    if StLap='SD' then
    begin
      If (TRIM(quDetilNoUnit.AsString)='') then
      Begin
        MsgInfo('Kode Departemen Tidak Boleh Kosong');
        quDetilNoUnit.FocusControl;
        Abort;
      End;
    end else
    begin
      If (TRIM(quDetilNoUnit.AsString)='') then
      Begin
        MsgInfo('No Unit Tidak Boleh Kosong');
        quDetilNoUnit.FocusControl;
        Abort;
      End;
    end;
  end;

  if (stlap='PS')  then
  begin
    If (TRIM(quDetilkeperluan.AsString)='') then
    Begin
      MsgInfo('Keperluan Tidak Boleh Kosong');
      quDetilkeperluan.FocusControl;
      Abort;
    End;
  end;

  if (stlap='TB')  then
  begin
    If (TRIM(quDetilAlasan.AsString)='') then
    Begin
      MsgInfo('Merk/Keterangan Tidak Boleh Kosong');
      quDetilAlasan.FocusControl;
      Abort;
    End;

    If (TRIM(quDetilStatusban.AsString)='') then
    Begin
      MsgInfo('Kondisi Ban Tidak Boleh Kosong');
      quDetilStatusban.FocusControl;
      Abort;
    End;

    If (TRIM(quDetilserial.AsString)='') then
    Begin
      MsgInfo('Serial Number Tidak Boleh Kosong');
      quDetilserial.FocusControl;
      Abort;
    End;

    If (TRIM(quDetilkmawal.AsString)='') then
    Begin
      MsgInfo('KM/HM Tidak Boleh Kosong');
      quDetilkmawal.FocusControl;
      Abort;
    End;

    If (TRIM(quDetilnomorban.AsString)='') then
    Begin
      MsgInfo('Posisi Tidak Boleh Kosong');
      quDetilnomorban.FocusControl;
      Abort;
    End;

    If (TRIM(quDetilAlasan.AsString)='') then
    Begin
      MsgInfo('Merk Tidak Boleh Kosong');
      quDetilAlasan.FocusControl;
      Abort;
    End;
  end;

 if (stlap<>'PN') and (stlap<>'PI') and (stlap<>'SD') and (stlap<>'TR') then
  begin
   with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT NoUnit FROM  INMsNoUnit  WHERE NoUnit='''+quDetilNounit.AsString+''' ');
        Open;
        if quAct.RecordCount = 0 then
        begin
           MsgInfo('No Unit Tidak Terdaftar');
           quDetilNoUnit.FocusControl;
           Abort;
        end;
     end;
   end;

  If TRIM(quDetilFgStatus.AsString)='' then
  Begin
    MsgInfo('Status tidak boleh kosong');
    quDetilFgStatus.FocusControl;
    Abort;
  End;

  if quDetilQty.AsCurrency <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if (stLap='TR') then
  begin

  if TRIM(quDetilJumlah.AsString)='' then
  begin
     MsgInfo('Jumlah Fisik Tidak boleh kosong');
     quDetilJumlah.FocusControl;
     Abort;
  end;

  end;

  if qumain.State=dsinsert then
  Begin
    with quAct,SQl do
    begin
      Close;Clear;
      Add('select k.ItemID,k.ItemName,k.UserPrice,k.Price '
          +'from( '
          +'select a.ItemID,b.ItemName,b.UserPrice,a.Price  '
          +'from APTrPurchaseOrderDt A  '
          +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID) as K '
          +'where A.ItemID='''+quDetilItemID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('UserPrice').AsInteger < 0 then
    begin
      ShowMessage('Harga barang ['+quAct.FieldByName('ItemID').AsString+'] Masih 0');
      quDetilItemID.FocusControl;
      Abort;
    end;
  end;
  {
   TR = Stok Opname +3 -53 *
   TS = Terima Solar +25 *
   PN = Terima Sparepart +26 *
   TB = Terima Ban +23 +stock24 -73
   PG = penggunaan Sparepart -76 *
   PS = Pakai Solar -75 *
   PO = Penggunaan Oli -79 -80
   PI = Penggunaan Inventaris Ke Orang -99
   SU = Penggunaan Inventaris Ke Unit -98
   SD = Penggunaan Inventaris Ke Dept -97
  }


  {
   TB = Terima Ban +23 +stock24 -73
   PG = penggunaan Sparepart -76 *
   PS = Pakai Solar -75 *
   PO = Penggunaan Oli -79 -80
   PI = Penggunaan Inventaris Ke Orang -99
   SU = Penggunaan Inventaris Ke Unit -98
   SD = Penggunaan Inventaris Ke Dept -97
  }

  if (StLap<>'TS') and (StLap<>'PS') and (StLap<>'TR') then
  begin

  if TRIM(quDetilLayoutID.AsString)='' then
  begin
     MsgInfo('Kode Rak tidak boleh kosong !');
     quDetilLayoutID.FocusControl;
     Abort;
  end;

  end;

  if (StLap='TB') or (StLap='PS') or (StLap='PT') or (StLap='SU') or
     (StLap='PG') or (StLap='PO') or (StLap='PI') or (StLap='SD') then
  begin

  if (quDetilFgStatus.AsString='K') or (quDetilFgStatus.AsString='O') then
  begin

    with quAct,SQL do
    begin
      Close;Clear;
      Add('select ISNULL(SUM(case when fgtrans<50 then qty else qty*-1 end),0) as Stok from allitem '
         +'where warehouseid='''+quMainWareHouseID.AsString+''' '
         +'and itemid='''+quDetilItemID.AsString+''' '
         +'and barang='''+quMainLsites.AsString+''' '
         +'and LayoutID='''+quDetilLayoutID.AsString+''' '
         +'AND CONVERT(VARCHAR(10),Transdate,112) <= '''+FormatDatetime('yyyymmdd',quMainTransdate.asdatetime)+'''  ');
      Open;
    end;

    Stock := quAct.FieldByName('Stok').AsCurrency;

    if Stock-quDetilQty.AsCurrency<0 then
    begin
      ShowMessage('Tidak Bisa Input, Tidak Cukup Stock!'+char(13)+'Stock saat ini: '+FormatRptKurung(CurrToStr(Stock)));
      quDetilQty.FocusControl;
      Abort;
    end;

  end;

  end;




end;

    {CekHargaBarang := quAct.FieldByName('UserPrice').asstring;
    if CekHargaBarang< 0 then
    begin
      ShowMessage('Harga Barang Masih 0');
      Abort;
    end;  }

  //1
  {SELECT a.ItemName, CASE WHEN A.Qty<0 THEN SUM(b.Qty) ELSE 0 END
		 FROM APTrPurchaseOrderDt A 
		 INNER JOIN INTrAdjustmentDt B ON A.ItemID=B.ItemID
		 INNER JOIN INTrAdjustmentHd C ON B.TransID=C.TransID
		 where C.FlagIN IN('TB','PI','SU','SD','PS','PG','PO')
		 GROUP BY A.ITEMNAME,A.Qty}

  //2
  {SELECT a.ItemName,
		 ISNULL((SELECT SUM(B.Qty) as Total FROM INTrAdjustmentDt B
		 INNER JOIN INTrAdjustmentHd C ON b.TransID=C.TransID
		 INNER JOIN INMsWarehouse D ON C.WareHouseID=D.WarehouseID
           WHERE B.ItemID=A.ItemID AND D.WarehouseID=c.WareHouseID),0) as Jumlah,
		   A.ItemID,A.TypeUnit,A.Nounit FROM APTrPurchaseOrderDt A
		    }
  //3
  {SELECT a.ItemName,(SELECT ISNULL(SUM(CASE WHEN b.Price<0  THEN b.Price ELSE b.Price * - 1 END),0) 
           FROM APTrPurchaseOrderDt B 
		   WHERE B.ItemID=d.ItemID AND c.WareHouseID=e.WarehouseID
           AND CONVERT(VARCHAR(8),C.TransDate,112) <= '20210929') as Harga
		   FROM INMsItem A 
		   INNER JOIN INTrAdjustmentDT D ON A.ItemID=D.ItemID
		   INNER JOIN INTrAdjustmentHd C ON D.TransID=C.TransID
		   INNER JOIN INMsWarehouse E ON C.WareHouseID=E.WarehouseID
		   where C.FlagIN IN('TB','PI','SU','SD','PS','PG','PO')}

procedure TfmINTrAdjustment.dbgEnter(Sender: TObject);
begin
  inherited;
  if (quMain.State=dsEdit) or (quMain.State=dsInsert) then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
  
end;

procedure TfmINTrAdjustment.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Ekspedisi';
       SQLString := 'SELECT DISTINCT Expedisi FROM INTrAdjustmentHD Where FlagIN=''TS'' ';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainExpedisi.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmINTrAdjustment.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quDetilLItemName.FocusControl;
  quDetilItemID.FocusControl;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';

       SQLString := ' SELECT K.* FROM ( '
                   +' SELECT A.ItemName as Nama_Barang,A.ItemID as Kode_Barang, '
                   +' A.Typeunit,A.Merk,A.UOMID As Satuan '
                   +' FROM INMsItem A '
                   +' WHERE A.FgActive=''Y'' AND A.Ctk=''Y'' '
                   +' ) as K '
                   //+' WHERE K.Stock<>0 '
                   +' ORDER BY K.Nama_Barang';
                   //showmessage(SQLString);
       KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[1];
             quDetilFgStatus.FocusControl;
       end;
    finally
       free;
    end;
end;

procedure TfmINTrAdjustment.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgLUOM,TRUE);
  SetReadOnly(dbgColumn10,TRUE);
  SetReadOnly(dbgColumn16,TRUE);
  SetReadOnly(dbgColumn24,TRUE);
  SetReadOnly(dbgColumn26,TRUE);
  SetReadOnly(dbgColumn27,TRUE);
  SetReadOnly(dbgColumn30,TRUE);
end;

procedure TfmINTrAdjustment.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINTrAdjustment.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsCurrency:=1;
  if (StLap = 'TR') then
  quDetilFgStatus.AsString := 'T';
  if (StLap = 'TB') or (StLap = 'PI') or (StLap = 'SU') or (StLap = 'SD') then
  quDetilFgStatus.AsString := 'K';
  if (StLap = 'TS') or (StLap = 'PN') then
  quDetilFgStatus.AsString := 'T';
  if (StLap = 'PS') or (StLap = 'PG') or (StLap = 'PO') then
  quDetilFgStatus.AsString := 'K';
  if (StLap = 'TR') then
  quDetilBarang.ASString := quMainLsites.ASString;
  quDetilItemID.FocusControl;
  quDetilPrice.AsCurrency := 0;
  quDetilJumlah.AsCurrency := 0;
end;

procedure TfmINTrAdjustment.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Date;
  quMainFlagIN.ASString := StLap;
  quMainFgDivisi.ASString := FgDivisi;
  quMainTransDate.FocusControl;
end;

procedure TfmINTrAdjustment.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Adjustment';
       SQLString := ' SELECT TransId as Kode_Transaksi '
                   +' ,Convert(Varchar(10),Transdate,103) as Tgl_Transaksi '
                   +' ,Note as Keterangan '
                   +' FROM INTrAdjustmentHd '
                   +' WHERE '+FSQLWhere
                   +' AND FlagIN='''+STLap+''' AND ISNULL(FgDivisi,''LOG'')='''+FgDivisi+''' ORDER BY TransId ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('TransId',Res[0],[]);
       end;
    finally
       free;
    end;

    
end;

procedure TfmINTrAdjustment.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  cekupload;
  CekHapus;
  
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainTransID.AsString+''' ');
    ExecSQL;
  end;

end;

procedure TfmINTrAdjustment.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  cekupload;
  CekHapus;
  
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainTransID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans='+InttoStr(angka1)+' '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainTransID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans='+InttoStr(angka2)+' '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainTransID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans='+InttoStr(angka3)+' '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;
end;

procedure TfmINTrAdjustment.quDetilAfterPost(DataSet: TDataSet);
//var harga: Currency;
begin
  inherited;
  {
   TR = Stok Opname +3 -53
   TS = Terima Solar +25
   PN = Terima Sparepart +26
   TB = Terima Ban +23 +stock24 -73
   PG = penggunaan Sparepart -76
   PS = Pakai Solar -75
   PO = Penggunaan Oli -79 -80
   Peminjaman = -88
  }
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainTransID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans='+InttoStr(angka1)+' '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainTransID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans='+InttoStr(angka2)+' '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainTransID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans='+InttoStr(angka3)+' '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;


  if quDetilFgStatus.Value='T' then
  begin
    with quAct,SQL do
    begin
       Close;Clear;
       Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,barang,ItemID,Qty,TempField,TempField2,SourceNo,ModuleID,LayoutID) '
          +'VALUES ('''+quDetilTransID.AsString+''',:TransDate,'''+quMainWareHouseID.AsString+''','+InttoStr(angka1)+','''+quMainLsites.AsString+''', '
          +''''+quDetilItemID.ASString+''','+quDetilQty.AsString+','''+quMainLWareHouseName.AsString+''','''+quMainLWareHouseName.AsString+''', '
          +''''+quDetilNumAll.AsString+''',''IN'','''+quDetilLayoutID.Asstring+''')');
       with Parameters do
       begin
         ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
       end;
       ExecSQL;
    end;
  end;
  if quDetilFgStatus.Value='L' then
  begin
    with quAct,SQL do
    begin
       Close;Clear;
       Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,barang,ItemID,Qty,TempField,TempField2,SourceNo,ModuleID,LayoutID) '
          +'VALUES ('''+quDetilTransID.AsString+''',:TransDate,'''+quMainWareHouseID.AsString+''','+InttoStr(angka2)+','''+quMainLsites.AsString+''', '
          +''''+quDetilItemID.ASString+''','+quDetilQty.AsString+','''+quMainLWareHouseName.AsString+''','''+quMainLWareHouseName.AsString+''', '
          +''''+quDetilNumAll.AsString+''',''IN'','''+quDetilLayoutID.Asstring+''')');
       with Parameters do
       begin
         ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
       end;
       ExecSQL;
    end;
  end;

  if quDetilFgStatus.Value='K' then
  begin
    with quAct,SQL do
    begin
       Close;Clear;
       Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,barang,ItemID,Qty,TempField,TempField2,SourceNo,ModuleID,LayoutID) '
          +'VALUES ('''+quDetilTransID.AsString+''',:TransDate,'''+quMainWareHouseID.AsString+''','+InttoStr(angka3)+','''+quMainLsites.AsString+''', '
          +''''+quDetilItemID.ASString+''','+quDetilQty.AsString+','''+quMainLWareHouseName.AsString+''','''+quMainLWareHouseName.AsString+''', '
          +''''+quDetilNumAll.AsString+''',''IN'','''+quDetilLayoutID.Asstring+''')');
       with Parameters do
       begin
         ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
       end;
       ExecSQL;
    end;
  end;

  if quDetilFgStatus.Value='O' then
  begin
    with quAct,SQL do
    begin
       Close;Clear;
       Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,barang,ItemID,Qty,TempField,TempField2,SourceNo,ModuleID,LayoutID) '
          +'VALUES ('''+quDetilTransID.AsString+''',:TransDate,'''+quMainWareHouseID.AsString+''','+InttoStr(angka2)+','''+quMainLsites.AsString+''', '
          +''''+quDetilItemID.ASString+''','+quDetilQty.AsString+','''+quMainLWareHouseName.AsString+''','''+quMainLWareHouseName.AsString+''', '
          +''''+quDetilNumAll.AsString+''',''IN'','''+quDetilLayoutID.Asstring+''')');
       with Parameters do
       begin
         ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
       end;
       ExecSQL;
    end;
  end;

  qudetil.Requery();
end;

procedure TfmINTrAdjustment.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
   try
      Title := 'Gudang';
      SQLString := 'SELECT WareHouseID as Kode_Gudang, WareHouseName as Nama_Gudang'
                  +' FROM INMsWareHouse ORDER BY WareHouseId';
      if ShowModal = MrOK then
      begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainWareHouseID.Value := Res[0];
      end;
   finally
      free;
   end;
end;

procedure TfmINTrAdjustment.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmINTrAdjustment.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmINTrAdjustment.bbSimpanDetilClick(Sender: TObject);
begin
  inherited;
  if Self.quDetil.State = dsInsert then
  begin
   Self.quDetil.Edit;
   Self.quDetil.Post;
   Self.quDetil.Requery();
  end;
  if Self.quDetil.State = dsEdit then
  begin
   quDetil.Post;
  end;
end;

procedure TfmINTrAdjustment.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmINTrAdjustment.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112),TransID';
  FFieldTgl   := 'TransDate';
  FAfterWhere :=' AND ISNULL(FlagIN,''TR'')='''+StLap+''' AND ISNULL(FgDivisi,''LOG'')='''+FgDivisi+''' ';
  SettingDxGrid(dbg);
  inherited;
  dxbutton1.Visible := False;
  dxbutton6.Visible := False;
  {
   TR = Stok Opname +3 -53 *
   TS = Terima Solar +25 *
   PN = Terima Sparepart +26 *
   TB = Terima Ban +23 +stock24 -73
   PG = penggunaan Sparepart -76 *
   PS = Pakai Solar -75 *
   PO = Penggunaan Oli -79 -80
   PI = Penggunaan Inventaris Ke Orang -99
   SU = Penggunaan Inventaris Ke Unit -98
   SD = Penggunaan Inventaris Ke Dept -97
  }
  if StLap='TR' then
  begin
    Caption := 'Stok Opname';
    dbgColumn11.Visible := False;
    dbgColumn18.Visible := False;
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label7.Visible := False; dxDBEdit3.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False; //Panel1.Height := 115;
    //bbsave.Top := 26; bbCancel.Top := 26; dbg.Top := 114; Height := 486;
    angka1 := 3; angka2 := 3; angka3 := 53; dbgColumn25.Visible := True;
    dbgFgStatus.Visible := False;
    dbgColumn25.Visible := False;
    dbgQty.Visible := False;
    dbgColumn29.Visible := True;
   // dbgColumn30.Visible := True;
  end;
  if StLap='PI' then
  begin
    if FgDivisi='SF' then
    Caption := 'Pemberian Safety Untuk Karyawan'
    else
    Caption := 'Pemberian Inventaris Untuk Karyawan';
    dbgColumn11.Visible := False;
    dbgColumn18.Visible := False;
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label7.Visible := False; dxDBEdit3.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False; //Panel1.Height := 115;
    dbgColumn21.Visible := false; dbgFgStatus.Visible := false;
    dbgColumn11.Visible := true; dbgColumn11.Caption := 'Karyawan';
    dbgColumn24.Visible := true;
    //bbsave.Top := 26; bbCancel.Top := 26; dbg.Top := 114; Height := 486;
    angka3 := 99;
  end;
  if StLap='SU' then
  begin
    if FgDivisi='SF' then
    Caption := 'Penggunaan Safety Pada Unit'
    else
    Caption := 'Penggunaan Inventaris Pada Unit';
    dbgColumn11.Visible := False;
    dbgColumn18.Visible := False;
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label7.Visible := False; dxDBEdit3.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False; //Panel1.Height := 115;
    dbgColumn21.Visible := false; dbgFgStatus.Visible := false;
    dbgColumn11.Visible := true; dbgColumn11.Caption := 'NoUnit';
    //bbsave.Top := 26; bbCancel.Top := 26; dbg.Top := 114; Height := 486;
    angka3 := 99;
  end;
  if StLap='SD' then
  begin
    if FgDivisi='SF' then
    Caption := 'Penggunaan Safety Pada Departemen'
    else
    Caption := 'Penggunaan Inventaris Pada Departemen';
    dbgColumn11.Visible := False;
    dbgColumn18.Visible := False;
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label7.Visible := False; dxDBEdit3.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False; //Panel1.Height := 115;
    dbgColumn21.Visible := false; dbgFgStatus.Visible := false;
    dbgColumn11.Visible := true; dbgColumn11.Caption := 'Departemen';
    dbgColumn24.Visible := false;
    dbgColumn27.Visible := true;
    //bbsave.Top := 26; bbCancel.Top := 26; dbg.Top := 114; Height := 486;
    angka3 := 99;
  end;
  if StLap='PO' then
  begin
    Caption := 'Pemakaian Oli';
    dbgColumn11.Visible := True;
    dbgColumn18.Visible := False;
    dbg.Bands[0].Caption := 'Detail Penggunaan Oli';
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label7.Visible := False; dxDBEdit3.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False; //Panel1.Height := 115;
    dbgColumn12.Visible := TRUE;
    dbgColumn12.Caption := 'KM';
    dbgColumn21.Visible := False;
    dbgColumn23.Visible := True;
    dbgFgStatus.Visible := False;
    //bbsave.Top := 26; bbCancel.Top := 26; dbg.Top := 114; Height := 486;
    angka1 := 3; angka2 := 80; angka3 := 79; //79=tambah 80=ganti
  end;
  if StLap='PN' then
  begin
    if FgDivisi='SF' then
    Caption := 'Penerimaan Barang Safety'
    else
    if FgDivisi='HR' then
    Caption := 'Penerimaan Inventaris'
    else
    Caption := 'Penerimaan Sparepart';
    dbgFgStatus.Visible := False;
    dbgColumn18.Visible := False;
    angka1 := 26; angka2 := 26; angka3 := 106; //hanya terima
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label7.Top := label4.Top; dxDBEdit3.Top := dxDBButtonEdit1.Top;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False; //dbgColumn11.Visible := false;
  end;
  if StLap='PG' then
  begin
    Caption := 'Penggunaan Sparepart';
    dbgFgStatus.Visible := False;
    dbgColumn18.Visible := False;
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label7.Visible := False; dxDBEdit3.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False;
    angka1 := 46; angka2 := 46; angka3 := 76; //hanya keluar
  end;
  if StLap='TS' then
  begin
    Caption := 'Terima Solar';
    //dbgFgStatus.Visible := TRUE;
    dbgColumn11.Visible := TRUE;
    dbgColumn18.Visible := False;
    dbgColumn20.Visible := True;
    dbgColumn15.Visible := True;
    dbgColumn16.Visible := True;
    dbgColumn12.Visible := True;
    dbgColumn12.Caption := 'KM awal';
    dbgColumn13.Visible := True;
    dbgQty.Caption := 'JmlTerima';
    dxbutton6.Visible := TRUE;
    dbgColumn20.Visible := FALSE;
    dbgColumn28.Visible := False;
    angka1 := 25; angka2 := 25; angka3 := 105; //hanya terima
  end;
  if StLap='PS' then
  begin
    Caption := 'Pakai Solar';
    dbgFgStatus.Visible := False;
    dbgColumn11.Visible := TRUE;
    dbgColumn18.Visible := False;
    dbgColumn20.Visible := True;
    dbgColumn15.Visible := False;
    dbgColumn16.Visible := False;
    //dbgColumn13.Visible := True;
    dbgColumn12.Visible := TRUE;
    dbgColumn12.Caption := 'KM';
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label7.Visible := False; dxDBEdit3.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False; dbgColumn28.Visible := False;
    angka1 := 39; angka2 := 49; angka3 := 75; //hanya keluar
  end;
  if StLap='TB' then
  begin
    Caption := 'Terima/Penggunaan Ban';
    dbgColumn18.Visible := True;
    dbgFgStatus.Visible := False;
    dbgColumn11.Visible := True;
    dbgColumn14.Visible := True;
    dbgColumn17.Visible := True;
    dbgColumn19.Visible := True;
    dbgColumn12.Visible := True;
    angka1 := 23; angka2 := 24; angka3 := 73;
    label4.Visible := False; dxDBButtonEdit1.Visible := False;
    label5.Visible := False; dxDBEdit2.Visible := False;
    label7.Visible := False; dxDBEdit3.Visible := False;
    label8.Visible := False; dxDBEdit4.Visible := False;
    Label6.Visible := False; dbgColumn26.Visible := False;
  end;
  dbg.Bands[0].Caption := 'Detail '+Caption;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  //quSN.Active := TRUE;
  ts01.TabVisible := FALSE;
  if GroupUser<>'admin' then
  begin
    dbgPrice.Visible := False;
  end;
end;

procedure TfmINTrAdjustment.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (stlap='PN') and (baru='Y') then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('insert intradjustmentdt (transid,itemid,fgstatus,qty,upddate,upduser,price,alasan,NoUnit) '
         +'select '''+quMainTransID.ASString+''',itemid2,''T'',qty,getdate(),'''+dmmain.userid+''',0,PRID,nounit from intrtransferitemdt '
         +'where transferid='''+quMainnosj.AsString+''' ');
      ExecSQL;
    end;

    with quAct,SQL do
    begin
      Close;Clear;
      Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,Price,ModuleID,TempField2,barang,SourceNo) '
         +'SELECT A.TransID,B.TransDate,B.WareHouseID,26,A.ItemID,A.Qty,0,''IN'',C.WarehouseName,  '
         +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID=B.WarehouseID),A.NumAll FROM INTrAdjustmentDt A '
         +'INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WarehouseID '
         +'WHERE A.FgStatus=''T'' AND B.FlagIN=''PN'' and A.transid='''+quMainTransID.ASString+''' ');
      ExecSQL;
    end;

    qudetil.Requery();
  end;

  quDetil.Append;
end;

procedure TfmINTrAdjustment.dxButton1Click(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  if quMain.IsEmpty then
  begin
    ShowMessage('Tidak ada data yang mau dicetak');
    Abort;
  end;
  with TfmINQRRptAdjustment.Create(Self) do
   try
     with qu001,SQL do
     Begin
       Close;Clear;
       add('SELECT A.TransID,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,'
          +'B.WarehouseName as Gudang FROM INTrAdjustmentHd A INNER JOIN INMsWarehouse B ON A.WarehouseID=B.WarehouseID '
          +'WHERE TransID='''+quMainTransID.AsString+''' ');
       Open;
     End;

     With qu002,SQL do
     Begin
       Close;Clear;
       add('SELECT B.Tipe,B.ItemName,A.Qty,B.UOMID,A.Alasan as Note,CASE WHEN A.FgStatus=''K'' THEN ''Kurang'' ELSE ''Tambah'' END as Status '
          +'FROM INTrAdjustmentDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID WHERE A.TransID='''+quMainTransID.AsString+''' '
          +'ORDER BY A.UpdDate');
       Open;
     End;

    MyReport.PreviewModal;

    finally
      free;
   end;
end;

procedure TfmINTrAdjustment.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekTambah;
 { with quAct,SQL do
  begin
    Close;Clear;
    ADd('SELECT * FROM INTrAdjustmentDt  WHERE TransID='''+quMainTransID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount >= 16 then
  begin
    pesan('1 Transkasi cuma bisa input 16 barang');
    Abort;
  end;     }

end;

procedure TfmINTrAdjustment.quDetilItemIDChange(Sender: TField);
begin
  inherited;
 { with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN K.CurrID=''IDR'' THEN K.Qty*K.Price ELSE K.Qty*K.Price*K.Rate END)/SUM(K.Qty),0) as Modal FROM ('
       +'SELECT B.CurrID,ISNULL(B.Rate,0) as Rate,B.Transdate,A.ItemID,ISNULL(CASE WHEN D.UOMID=C.UOMID2 THEN A.Price ELSE A.Price/A.Qty END,0) as Price,ISNULL(A.Qty,0) as Qty,D.UOMID '
       +'FROM APTrKonsinyasiInvDt A INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
       +'INNER JOIN INMsItem C on A.ItemID=C.ItemID '
       +'INNER JOIN APTrPurchaseOrderDt D On B.POID=D.POID AND D.itemID=A.Itemid UNION ALL '
       +'SELECT ''IDR'',1,B.Transdate,A.ItemID,ISNULL(A.Price,0),ISNULL(A.Qty,0) as Qty,C.UOMID2 '
       +'FROM INTrAdjustmentDt A INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID '
       +'INNER JOIN INMsItem C on A.ItemID=C.Itemid WHERE A.FgStatus=''T'' AND ISNULL(A.Price,0)<>0) as K '
       +'WHERE K.ItemID='''+quDetilItemID.AsString+''' AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' ');
    Open;
  end;   }

  with quAct2,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(UserPrice,0) as Modal,ISNULL(DealerPrice,0) as Jual FROM INMsItem WHere ItemID='''+quDetilItemID.asstring+''' ');
    Open;
  end;
  quDetilModal.AsCurrency := quAct2.FieldByName('Modal').AsCurrency;
  quDetilJual.AsCurrency := quAct2.FieldByName('Jual').AsCurrency;
end;

procedure TfmINTrAdjustment.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quSNNumAll.AsString+''' and voucherno='''+quMainTransID.AsString+''' and snid='''+quSNSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;
  if quDetilFgStatus.asString = 'T' then
  begin
    with quAct,SQL do
    begin
     Close;Clear;
     Add('insert AllLootNumber (fgNum,voucherno,TransDate,FgTrans,SNID,qty,expdate,warehouseid,warehouseid,itemid) '
        +'select '''+quSNNumAll.AsString+''','''+quMainTransID.AsString+''','''+FormatDateTime('yyyy-mm-dd',quMainTransDate.AsDatetime)+''',2,'
        +''''+quSNSNID.AsString+''','''+quSNJumlah.AsString+''','''+FormatDateTime('yyyy-mm-dd',quSNExpDate.AsDatetime)+''','''+quMainWareHouseID.AsString+''','''+quDetilItemID.AsString+''' ');
     ExecSQL;
    End;
  end else
  begin
    with quAct,SQL do
    begin
     Close;Clear;
     Add('insert AllLootNumber (fgNum,voucherno,TransDate,FgTrans,SNID,qty,expdate,warehouseid,itemid) '
        +'select '''+quSNNumAll.AsString+''','''+quMainTransID.AsString+''','''+FormatDateTime('yyyy-mm-dd',quMainTransDate.AsDatetime)+''',52,'
        +''''+quSNSNID.AsString+''','''+quSNJumlah.AsString+''','''+FormatDateTime('yyyy-mm-dd',quSNExpDate.AsDatetime)+''','''+quMainWareHouseID.AsString+''','''+quDetilItemID.AsString+''' ');
     ExecSQL;
    End;
  end;
end;

procedure TfmINTrAdjustment.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quSNNumAll.AsString+''' and voucherno='''+quMainTransID.AsString+''' and snid='''+quSNSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmINTrAdjustment.dbgBatchSNIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Kode Produksi';
    SQLString := 'SELECT K.SNID,ISNULL(SUM(CASE WHEN K.FgTrans<50 THEN K.Jumlah ELSE K.Jumlah*-1 END),0) as Jumlah,ExpDate FROM ( '
                +'  select A.NumAll,A.TransID,C.transdate,CASE WHEN B.FgStatus=''T'' THEN 2 ELSE 52 END as FgTrans,A.SNID,A.Jumlah,A.ExpDate,C.WareHouseid ,A.Itemid '
                +'  from INTrAdjustmentSN A inner join INTrAdjustmentDt B on A.TransID=B.TransID '
                +'  Inner join INTrAdjustmentHd C on B.TransID=C.TransID union all '
                +'  select '''',A.TransferID,B.TransferDate,4,A.SNID,A.Qty,A.ExpDate,B.WareHouseDest,A.Itemid from INTrTransferItemSN A '
                +'  Inner join INTrTransferItemHd B on A.TransferID=B.TransferID union all '
                +'  select '''',A.TransferID,B.TransferDate,54,A.SNID,A.Qty,A.ExpDate,B.WareHouseSrc,A.Itemid from INTrTransferItemSN A '
                +'  Inner join INTrTransferItemHd B on A.TransferID=B.TransferID union all '
                +'  select A.NumAll,A.KonsinyasiID,B.TransDate,1,A.SNID,A.Jumlah,A.ExpDate,B.WareHouseID,A.Itemid from APTrKonsinyasiDtSN A '
                +'  inner join APTrKonsinyasiHd b on A.KonsinyasiID=B.KonsinyasiID union all '
                +'  select A.NumAll,A.ReturnKonID,C.TransDate,6,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from APTrReturnKonSN A '
                +'  inner join APTrReturnKondt B on A.ReturnKonID=B.ReturnKonID '
                +'  inner join APTrReturnKonHd C on C.ReturnKonID=B.ReturnKonID union all '
                +'  select A.NumAll,A.ReturnID,C.TransDate,6,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from APTrReturnSN A '
                +'  inner join APTrReturndt B on A.ReturnID=B.ReturnID '
                +'  inner join APTrReturnHd C on C.ReturnID=B.ReturnID union all '
                +'  select A.NumAll,A.ReturnID,C.TransDate,55,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from ARTrReturPenjualanDtSN A '
                +'  inner join ARTrReturPenjualanDt B on A.ReturnID=B.ReturnID '
                +'  inner join ARTrReturPenjualanHd C on C.ReturnID=B.ReturnID union all '
                +'  select A.NumAll,A.KonReturID,C.TransDate,56,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from ARTrKonReturDtSN A '
                +'  inner join ARTrKonReturDt B on A.KonReturID=B.KonReturID '
                +'  inner join ARTrKonReturHd C on C.KonReturID=B.KonReturID union all '
                +'  select A.urut,A.KonTransBrgID,B.transdate,51,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from ARTrKonTransBrgDtSN A '
                +'  inner join ARTrKonTransBrgHd B on A.KonTransBrgID=B.KonTransBrgID ) as K '
                +'  WHERE K.Jumlah<>0 AND K.ItemID = '''+quDetilItemID.AsString+''' AND K.WareHouseID = '''+quMainWareHouseID.AsString+''' '
                +'  GROUP BY K.SNID,K.ExpDate ';
    if ShowModal = MrOK then
    begin
       if quSN.State = dsBrowse then quSN.Edit;
       quSNSNID.AsString     := Res[0];
       quSNExpdate.AsDatetime  := StrtoDatetime(Res[2]);
    end;
  finally
    free;
  end;
end;

procedure TfmINTrAdjustment.dxButton2Click(Sender: TObject);
begin
  inherited;
  quSN.Append;
end;

procedure TfmINTrAdjustment.dxButton5Click(Sender: TObject);
begin
  inherited;
  if Self.quSN.State = dsInsert then
  begin
   Self.quSN.Edit;
   Self.quSN.Post;
   Self.quSN.Requery();
  end;
  if Self.quSN.State = dsEdit then
  begin
   quSN.Post;
  end;
end;

procedure TfmINTrAdjustment.dxButton4Click(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmINTrAdjustment.dxButton3Click(Sender: TObject);
begin
  inherited;
  if quSN.IsEmpty then Abort;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmINTrAdjustment.dbgColumn9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quDetil.State = dsBrowse then quDetil.Edit;
           quDetilRekeningID.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmINTrAdjustment.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select RekeningName FROM CFmsRekening Where RekeningID='''+quDetilRekeningID.AsString+''' ');
    Open;
  End;

  quDetilLRekeningName.AsString := quAct.FieldByName('RekeningName').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select TypeUnit,Merk FROM INMsItem Where ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  End;

  quDetilLTypeUnit.AsString := quAct.FieldByName('TypeUnit').AsString;
  quDetilLMerk.AsString := quAct.FieldByName('Merk').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select SalesName FROM ARMsSales Where SalesID='''+quDetilNoUnit.AsString+''' ');
    Open;
  End;

  quDetilLNama.AsString := quAct.FieldByName('SalesName').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select DivisiName FROM INMsDivisi Where DivisiID='''+quDetilNoUnit.AsString+''' ');
    Open;
  End;

  quDetilLDivisi.AsString := quAct.FieldByName('DivisiName').AsString;

  if STLap='TS' then
  quDetilSelisih.AsCurrency := quDetilJmlAwl.AsCurrency-quDetilQty.AsCurrency;

  {if StLap='TR' then
  begin

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select ISNULL(SUM(CASE WHEN FGTrans<50 THEN Qty ELSE Qty*-1 END),0) as Stock FROM AllItem '
       +'Where WarehouseID='''+quMainWareHouseID.AsString+''' '
       +'AND ItemID='''+quDetilItemID.ASString+''' '
       +'AND ISNULL(LayoutID,'''')='''+quDetilLayoutID.ASString+''' '
       +'AND ISNULL(barang,''-'')='''+quMainLsites.ASString+''' '
       +'AND CONVERT(VARCHAR(10),Transdate,112) <= '''+FormatDatetime('yyyymmdd',quMainTransdate.asdatetime)+''' ');
    Open;
  End;
  quDetilLStock.AsCurrency := quAct.FieldByName('Stock').AsCurrency; 

  end;}
end;

procedure TfmINTrAdjustment.dbgColumn11ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if StLap='SD' then
  begin
    with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Kode Departemen';
        SQLString := 'SELECT DivisiID as Kode_Departemen, DivisiName as Nama_Departemen FROM INMsDivisi ORDER BY DivisiName';
        if ShowModal = MrOK then
        begin
           if qudetil.State = dsBrowse then qudetil.Edit;
           quDetilNoUnit.ASString := Res[0];
        end;
     finally
        free;
     end;
   end else
   if StLap='PI' then
   begin
     with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Kode Karyawan';
        SQLString := 'SELECT SalesID as Kode_Karyawan, SalesName as Nama_Karyawan,NIK,Jabatan FROM ARMsSales Where FgActive<>0 ORDER BY SalesName';
        if ShowModal = MrOK then
        begin
           if qudetil.State = dsBrowse then qudetil.Edit;
           quDetilNoUnit.ASString := Res[0];
        end;
     finally
        free;
     end;
   end else
   begin
     with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Kode Unit';
        SQLString := 'SELECT NoUnit as Nomor_Unit, Description as Keterangan FROM InMsNoUnit WHere FgActive=''Y'' ORDER BY NoUnit';
        if ShowModal = MrOK then
        begin
           if qudetil.State = dsBrowse then qudetil.Edit;
           quDetilNoUnit.ASString := Res[0];
        end;
     finally
        free;
     end;
   end;
end;

procedure TfmINTrAdjustment.dxButton6Click(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  if quMain.IsEmpty then
  begin
    ShowMessage('Tidak ada data yang mau dicetak');
    Abort;
  end;
  with TfmRptTerimaSolar.Create(Self) do
   try
     qrlPeriode.Caption := 'Nomor : '+quMainTransID.ASString;
     QRLabel19.Caption := 'Pada hari ini tanggal '+FormatDatetime('d MMMM yyyy',quMainTransDate.AsDateTime)
                         +'telah diterima BBM-industri dari :';
     qrlabel12.Caption := ': '+quMainexpedisi.ASString;
     qrlabel1.Caption := ': '+quMainnosj.ASString;
     qrlabel5.Caption := ': '+quMainnosegel.ASString;
     qrlabel7.Caption := ': '+quMainDriver.ASString;
     QrLabel21.CAption := 'Demikian Berita Acara ini Kami Buat untuk dipergunakan semestinya.';
     QrLabel27.Caption := quMainDriver.ASString;
     QrLabel23.Caption := 'Driver '+quMainexpedisi.ASString;

     with qu001,SQL do
     Begin
       Close;Clear;
       add('SELECT A.TransID,(select logo from inmswarehouse where warehouseid=''RJS'') as logo,'
          +'(SELECT Y.SalesName FROM SYSMSUSER X INNER JOIN ARMSSAles Y on X.Nama=Y.SalesID WHERE X.UserID='''+dmmain.UserId+''') as UserA, '
          +'(SELECT Y.jabatan FROM SYSMSUSER X INNER JOIN ARMSSAles Y on X.Nama=Y.SalesID WHERE X.UserID='''+dmmain.UserId+''') as jabatan '
          +'FROM INTrAdjustmentHd A '
          +'WHERE A.TransID='''+quMainTransID.AsString+''' ');
       Open;
     End;

     With qu002,SQL do
     Begin
       Close;Clear;
       add('SELECT B.Typeunit,B.ItemName,A.NoUnit,A.jmlAwl,A.Qty,A.jmlAwl-A.Qty as Selisih,B.UOMID,A.Alasan as Note,A.Kmawal,A.KmAkhir '
          +'FROM INTrAdjustmentDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID WHERE A.TransID='''+quMainTransID.AsString+''' ');
       Open;
     End;

    MyReport.PreviewModal;

    finally
      free;
   end;
end;

procedure TfmINTrAdjustment.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
     Begin
       Close;Clear;
       add('SELECT A.TransID,(select logo from inmswarehouse where warehouseid=''RJS'') as logo,'
          +'(SELECT Y.SalesName FROM SYSMSUSER X INNER JOIN ARMSSAles Y on X.Nama=Y.SalesID WHERE X.UserID='''+dmmain.UserId+''') as UserA, '
          +'(SELECT Y.jabatan FROM SYSMSUSER X INNER JOIN ARMSSAles Y on X.Nama=Y.SalesID WHERE X.UserID='''+dmmain.UserId+''') as jabatan '
          +'FROM INTrAdjustmentHd A '
          +'WHERE A.TransID='''+quMainTransID.AsString+''' ');
       Open;
     End;

    with quAct,SQL do
     Begin
       Close;Clear;
       add('SELECT City FROM INMSWarehouse Where WarehouseID='''+quMainWareHouseID.AsString+''' ');
       Open;
     End;

    quMainLsites.AsString := quAct.FieldByname('City').AsString;
end;

procedure TfmINTrAdjustment.dbgColumn21ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'MR';
    SQLString := 'SELECT convert(varchar(10),K.TransDate,103) as Tgl,K.Nota,K.NumAll as IDTXN,K.SalesID as ReqBy,K.SalesName as Nama FROM ( '
                +'SELECT B.Transdate,C.ItemName,B.SiteID,A.PRID as Nota,ISNULL(A.Jumlah,0) as Qty,A.NumAll,A.UOMID,B.SalesID,D.SalesName, '
                //+'ISNULL((SELECT SUM(X.Jumlah) as Total FROM APTrPurchaseRequestDt X INNER JOIN APTrPurchaseRequestHd Y ON X.PRID=Y.PRID AND Y.FgForm=''PR'' '
                //+'WHERE X.ItemID=A.ItemID AND X.MRID=A.PRID AND A.NumAll=X.FgNum),0)-'
                +'ISNULL((SELECT SUM(X.Qty) as Total FROM INTrAdjustmentDt X '
                +'WHERE X.ItemID=A.ItemID AND X.MRID=A.PRID AND A.NumAll=X.FgNum),0) as Jumlah, '
                +'A.ItemID,A.Note,A.TypeUnit,A.Nounit FROM APTrPurchaseRequestDt A '
                +'INNER JOIN APTrPurchaseRequestHd B ON A.PRID=B.PRID AND B.FgForm=''MR'' '
                +'INNER JOIN ARMsSales D on B.SalesID=D.SalesID '
                +'INNER JOIN INMsItem C ON A.ItemID=C.ItemID ) as K WHERE ISNULL(K.Qty-K.Jumlah,0) > 0 '
                +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime)+''' '
                +'AND K.ItemID = '''+quDetilItemID.ASString+''' '
                +'ORDER BY K.Transdate,K.Nota ' ;
    if ShowModal = MrOK then
    begin
       if quDetil.State = dsBrowse then quDetil.Edit;
         quDetilMRID.AsString := Res[1];
         quDetilfgNum.AsString := Res[2];
    end;
  finally
    free;
  end;
end;

procedure TfmINTrAdjustment.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  cekupload;
  CekEdit;
end;

procedure TfmINTrAdjustment.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  cekupload;
  CekEdit;
end;

procedure TfmINTrAdjustment.quMainAfterInsert(DataSet: TDataSet);
begin
  inherited;
  baru := 'Y';
end;

procedure TfmINTrAdjustment.dbgColumn28ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Master Rak';
    SQLString := 'SELECT LayoutID as Kode_Rak,LayoutName as Nama_Rak FROM INMsLayout Where FgActive=''Y'' ';
    if ShowModal = MrOK then
    begin
       if quDetil.State = dsBrowse then quDetil.Edit;
       quDetilLayoutID.Value := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmINTrAdjustment.quDetilJumlahChange(Sender: TField);
var Stock : currency;
begin
  inherited;
  if StLap='TR' then
  begin

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select ISNULL(SUM(CASE WHEN FGTrans<50 THEN Qty ELSE Qty*-1 END),0) as Stock FROM AllItem '
       +'Where WarehouseID='''+quMainWareHouseID.AsString+''' '
       +'AND ItemID='''+quDetilItemID.ASString+''' '
       +'AND ISNULL(LayoutID,'''')='''+quDetilLayoutID.ASString+''' '
       +'AND ISNULL(Barang,''-'')='''+quMainLsites.ASString+''' '
       +'AND CONVERT(VARCHAR(10),Transdate,112) <= '''+FormatDatetime('yyyymmdd',quMainTransdate.asdatetime)+''' '
       +'AND VoucherNo<>'''+quMainTransID.AsString+''' ');
    Open;
  End;
  Stock := quAct.FieldByName('Stock').AsCurrency;
  if quDetilJumlah.AsCurrency > Stock then
  begin
    quDetilFgStatus.ASString := 'T';
    quDetilQty.AsCurrency := quDetilJumlah.AsCurrency-Stock;
  end else
  begin
    quDetilFgStatus.ASString := 'K';
    quDetilQty.AsCurrency := Stock-quDetilJumlah.AsCurrency;
  end;

  end;
end;

end.
