unit INTrProduks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, DB, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid,
  dxTL, StdCtrls, dxEdLib, dxDBELib, dxEditor, DBCtrls, ExtCtrls, ActnList,
  dxCntner, ADODB, dxPageControl, dxButton, dxCore, dxContainer, Buttons;

type
  TfmINTrProduksi = class(TfmStdLv41)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Panel2: TPanel;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    dxButton3: TdxButton;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgFgStatus: TdxDBGridImageColumn;
    dbgQty: TdxDBGridColumn;
    dbgLUOM: TdxDBGridColumn;
    dbgPrice: TdxDBGridColumn;
    dbgAlasan: TdxDBGridColumn;
    dbgBatch: TdxDBGrid;
    dbgBatchKonsinyasiID: TdxDBGridMaskColumn;
    dbgBatchItemID: TdxDBGridMaskColumn;
    dbgBatchSNID: TdxDBGridColumn;
    dbgBatchUpdDate: TdxDBGridDateColumn;
    dbgBatchUpdUser: TdxDBGridMaskColumn;
    dbgBatchFgJual: TdxDBGridMaskColumn;
    dbgBatchFgSN: TdxDBGridMaskColumn;
    dbgBatchJumlah: TdxDBGridColumn;
    dbgBatchPrice: TdxDBGridCurrencyColumn;
    dbgBatchExpDate: TdxDBGridDateColumn;
    dxDBGrid1: TdxDBGrid;
    dxDBGridButtonColumn1: TdxDBGridButtonColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridImageColumn1: TdxDBGridImageColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridDateColumn1: TdxDBGridDateColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dxDBGridMaskColumn5: TdxDBGridMaskColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridCurrencyColumn1: TdxDBGridCurrencyColumn;
    dxDBGridDateColumn2: TdxDBGridDateColumn;
    quMainTransID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainWareHouseID: TStringField;
    quMainNote: TStringField;
    quMainAcknowledgeBy: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainFlagIN: TStringField;
    quBahan: TADOQuery;
    dsBahan: TDataSource;
    quBahanTransID: TStringField;
    quBahanItemID: TStringField;
    quBahanFgStatus: TStringField;
    quBahanQty: TBCDField;
    quBahanAlasan: TStringField;
    quBahanUpdDate: TDateTimeField;
    quBahanUpdUser: TStringField;
    quBahanPrice: TBCDField;
    quBahanFgJadi: TStringField;
    quDetilTransID: TStringField;
    quDetilItemID: TStringField;
    quDetilFgStatus: TStringField;
    quDetilQty: TBCDField;
    quDetilAlasan: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilPrice: TBCDField;
    quDetilFgJadi: TStringField;
    quWareHouse: TADOQuery;
    quWareHouseWareHouseID: TStringField;
    quWareHouseWareHouseName: TStringField;
    quMainLWarehouseName: TStringField;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    dxButton10: TdxButton;
    dxButton11: TdxButton;
    quItem: TADOQuery;
    quDetilLItemName: TStringField;
    quBahanLItemName: TStringField;
    quDetilLUOM: TStringField;
    quBahanLUOM: TStringField;
    quDetilSN: TADOQuery;
    dsDetilSN: TDataSource;
    quDetilSNTransID: TStringField;
    quDetilSNItemId: TStringField;
    quDetilSNSNID: TStringField;
    quDetilSNUpdDate: TDateTimeField;
    quDetilSNUpdUser: TStringField;
    quDetilSNFgJual: TStringField;
    quDetilSNFgSN: TStringField;
    quDetilSNJumlah: TBCDField;
    quDetilSNExpDate: TDateTimeField;
    quDetilSNPrice: TBCDField;
    quDetilSNNumAll: TAutoIncField;
    quBahanSn: TADOQuery;
    dsbahanSn: TDataSource;
    dxButton12: TdxButton;
    dxButton13: TdxButton;
    quBahanSnTransID: TStringField;
    quBahanSnItemId: TStringField;
    quBahanSnSNID: TStringField;
    quBahanSnUpdDate: TDateTimeField;
    quBahanSnUpdUser: TStringField;
    quBahanSnFgJual: TStringField;
    quBahanSnFgSN: TStringField;
    quBahanSnJumlah: TBCDField;
    quBahanSnExpDate: TDateTimeField;
    quBahanSnPrice: TBCDField;
    quBahanSnNumAll: TAutoIncField;
    dxDBGridColumn6: TdxDBGridButtonColumn;
    dxButton14: TdxButton;
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quBahanBeforePost(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGridButtonColumn1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quBahanNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quBahanBeforeDelete(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quBahanAfterPost(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
    procedure dxButton11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quDetilItemIDChange(Sender: TField);
    procedure quBahanItemIDChange(Sender: TField);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dsBahanStateChange(Sender: TObject);
    procedure dxButton12Click(Sender: TObject);
    procedure dxButton13Click(Sender: TObject);
    procedure quBahanSnAfterPost(DataSet: TDataSet);
    procedure quBahanSnBeforeDelete(DataSet: TDataSet);
    procedure quDetilSNBeforeDelete(DataSet: TDataSet);
    procedure quDetilSNAfterPost(DataSet: TDataSet);
    procedure dxDBGridColumn6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton14Click(Sender: TObject);
  private
    { Private declarations }
  public
    StLap : string;
    { Public declarations }
  end;

var
  fmINTrProduksi: TfmINTrProduksi;

implementation

uses ConMain, StdLv0, UnitGeneral, StdLv2, StdLv1, StdLv3, Search, MyUnit,
  Allitem, INQRRptAdjusment, INQRRptAdjustment;
{$R *.dfm}

procedure TfmINTrProduksi.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  If Trim(quMainTransDate.AsString)='' Then
  Begin
     MsgInfo('tanggal tidak boleh kosong');
     quMainTransDate.FocusControl;
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
    ST := 'PRD/R'+ FormatDateTime('YY/MM-', quMainTransDate.AsDateTime);
    quMainTransID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'INTrAdjustmentHd', 'TransId', ST, '0') + 1);
  End;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmINTrProduksi.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
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
     end;
    quDetilUpdDate.AsDateTime := GetServerDateTime;
    quDetilUpdUser.AsString := dmMain.UserId;
  end;

  If TRIM(quDetilFgStatus.AsString)='' then
  Begin
    MsgInfo('Status tidak boleh kosong');
    quDetilFgStatus.FocusControl;
    Abort;
  End;

  if quDetilQty.Value <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

end;

procedure TfmINTrProduksi.quBahanBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quBahanItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if quBahan.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT Count(*) FROM  INTradjustmentDt  WHERE TransId=:TransId AND ItemId=:ItemId');
        with Parameters do
        begin
           ParamByName('TransId').Value := quMainTransID.Value;
           ParamByName('ItemId').Value  := quBahanItemID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quBahanItemID.FocusControl;
           Abort;
        end;
     end;
    quBahanUpdDate.AsDateTime := GetServerDateTime;
    quBahanUpdUser.AsString := dmMain.UserId;
  end;

  If TRIM(quBahanFgStatus.AsString)='' then
  Begin
    MsgInfo('Status tidak boleh kosong');
    quDetilFgStatus.FocusControl;
    Abort;
  End;

  if quBahanQty.Value <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  

end;

procedure TfmINTrProduksi.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmINTrProduksi.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quDetilItemID.FocusControl;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT A.ItemName as Nama_Barang,A.ItemID as Kode_Barang,A.Tipe,'
                   +'(SELECT ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                   +'   FROM ALLITEM F WHERE CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',quMainTransDate.AsDateTime)+''''
                   +'   AND F.WareHouseId='''+quMainWareHouseID.AsString+''' AND F.ItemID=A.ItemID) as Stock FROM INMsItem A '
                   +'WHERE A.FgActive=''Y'' ORDER BY A.ItemID';
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

procedure TfmINTrProduksi.dxDBGridButtonColumn1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quBahanItemID.FocusControl;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT A.ItemName as Nama_Barang,A.ItemID as Kode_Barang,A.Tipe,'
                   +'(SELECT ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                   +'   FROM ALLITEM F WHERE CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',quMainTransDate.AsDateTime)+''''
                   +'   AND F.WareHouseId='''+quMainWareHouseID.AsString+''' AND F.ItemID=A.ItemID) as Stock FROM INMsItem A '
                   +'WHERE A.FgActive=''Y'' ORDER BY A.ItemID';
       KeyValue := quBahanItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quBahan.State = dsBrowse then quBahan.Edit;
             quBahanItemID.Value := Res[1];
             quBahanFgStatus.FocusControl;
       end;
    finally
       free;
    end;
end;

procedure TfmINTrProduksi.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsCurrency:=1;
  quDetilFgStatus.AsString := 'T';
  quDetilItemID.FocusControl;
  quDetilPrice.AsCurrency := 0;
  quDetilFgJadi.AsString := 'J';
end;

procedure TfmINTrProduksi.quBahanNewRecord(DataSet: TDataSet);
begin
  inherited;
  quBahanQty.AsCurrency:=1;
  quBahanFgStatus.AsString := 'K';
  quBahanItemID.FocusControl;
  quBahanPrice.AsCurrency := 0;
  quBahanFgJadi.AsString := 'B';
end;

procedure TfmINTrProduksi.bbFindClick(Sender: TObject);
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
                   +' ORDER BY TransId ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('TransId',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmINTrProduksi.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainTransID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,53);
end;

procedure TfmINTrProduksi.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,53);
end;

procedure TfmINTrProduksi.quBahanBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainTransID.Value,quBahanItemID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,quBahanItemID.Value,53);
end;

procedure TfmINTrProduksi.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,53);

  if quDetilFgStatus.Value='T' then
     InsertToAllItem(quDetilTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quDetilItemID.Value,
                     3 ,abs(quDetilQty.Value),0,'IN',quMainLWareHouseName.Value);


  if quDetilFgStatus.Value='K' then
     InsertToAllItem(quDetilTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quDetilItemID.Value,
                     53,abs(quDetilQty.Value),0,'IN',quMainLWareHouseName.Value);
end;

procedure TfmINTrProduksi.quBahanAfterPost(DataSet: TDataSet);
var Total : currency;
begin
  inherited;
  DeleteFromAllItem(quMainTransID.Value,quBahanItemID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,quBahanItemID.Value,53);

  if quBahanFgStatus.Value='T' then
     InsertToAllItem(quBahanTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quBahanItemID.Value,
                     3 ,abs(quBahanQty.Value),0,'IN',quMainLWareHouseName.Value);


  if quBahanFgStatus.Value='K' then
     InsertToAllItem(quBahanTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quBahanItemID.Value,
                     53,abs(quBahanQty.Value),0,'IN',quMainLWareHouseName.Value);

  with quAct, SQL do
   begin
    Close; Clear;
    Add('SELECT ISNULL(SUM(Price*Qty),0) as Modal FROM  INTradjustmentDt '
       +'WHERE TransId='''+quMainTransID.AsString+''' AND FgStatus=''K'' ');
    Open;
   end;
   Total := quAct.FieldByName('Modal').AsCurrency/quDetilQty.AsCurrency;
   with quAct, SQL do
   begin
    Close; Clear;
    Add('update INTradjustmentDt set Price='''+CurrtoStr(Total)+''' '
       +'WHERE TransId='''+quMainTransID.AsString+''' AND FgStatus=''T'' ');
    ExecSQL;
   end;
   quDetil.Requery();
end;

procedure TfmINTrProduksi.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quBahan.IsEmpty then Abort else quBahanSn.Append;
end;

procedure TfmINTrProduksi.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quBahan.IsEmpty then Abort;
  if (dsBahansn <> nil) and (dsBahansn.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsbahanSn.DataSet.Delete;
end;

procedure TfmINTrProduksi.bbSimpanDetilClick(Sender: TObject);
begin
  inherited;
  if Self.quBahanSn.State = dsInsert then
  begin
   Self.quBahanSn.Edit;
   Self.quBahanSn.Post;
   Self.quBahanSn.Requery();
  end;
  if Self.quBahanSn.State = dsEdit then
  begin
   quBahanSn.Post;
  end;
end;

procedure TfmINTrProduksi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quBahanSn.Cancel;
end;

procedure TfmINTrProduksi.dxButton8Click(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quBahan.Append;
end;

procedure TfmINTrProduksi.dxButton9Click(Sender: TObject);
begin
  inherited;
  if quBahan.IsEmpty then Abort;
  if (dsBahan <> nil) and (dsBahan.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsBahan.DataSet.Delete;
end;

procedure TfmINTrProduksi.dxButton10Click(Sender: TObject);
begin
  inherited;
  if Self.quBahan.State = dsInsert then
  begin
   Self.quBahan.Edit;
   Self.quBahan.Post;
   Self.quBahan.Requery();
  end;
  if Self.quBahan.State = dsEdit then
  begin
   quBahan.Post;
  end;
end;

procedure TfmINTrProduksi.dxButton11Click(Sender: TObject);
begin
  inherited;
  quBahan.Cancel;
end;

procedure TfmINTrProduksi.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112),TransID';
  FFieldTgl   := 'TransDate';
  FAfterWhere :=' AND ISNULL(FlagIN,''TR'')='''+StLap+''' ';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quBahan.Active := TRUE;
  quDetilSN.Active := TRUE;
  quBahanSn.Active := TRUE;
  ts01.TabVisible := FALSE;
  if GroupUser<>'admin' then
  begin
    dbgPrice.Visible := False;
  end;
end;

procedure TfmINTrProduksi.quDetilItemIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN K.CurrID=''IDR'' THEN K.Qty*K.Price ELSE K.Qty*K.Price*K.Rate END)/SUM(K.Qty),0) as Modal FROM ('
       +'SELECT B.CurrID,ISNULL(B.Rate,0) as Rate,B.Transdate,A.ItemID,ISNULL(A.Price,0) as Price,ISNULL(A.Qty,0) as Qty '
       +'FROM APTrKonsinyasiInvDt A INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID UNION ALL '
       +'SELECT ''IDR'',1,B.Transdate,A.ItemID,ISNULL(A.Price,0),ISNULL(A.Qty,0) as Qty '
       +'FROM INTrAdjustmentDt A INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID WHERE A.FgStatus=''T'' AND ISNULL(A.Price,0)<>0) as K '
       +'WHERE K.ItemID='''+quDetilItemID.AsString+''' AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' ');
    Open;
  end;
  quDetilPrice.AsCurrency := quAct.FieldByName('Modal').AsCurrency;
end;

procedure TfmINTrProduksi.quBahanItemIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN K.CurrID=''IDR'' THEN K.Qty*K.Price ELSE K.Qty*K.Price*K.Rate END)/SUM(K.Qty),0) as Modal FROM ('
       +'SELECT B.CurrID,ISNULL(B.Rate,0) as Rate,B.Transdate,A.ItemID,ISNULL(CASE WHEN D.UOMID=C.UOMID2 THEN A.Price ELSE A.Price/C.Konversi END,0) as Price,ISNULL(A.Qty,0) as Qty,D.UOMID '
       +'FROM APTrKonsinyasiInvDt A INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
       +'INNER JOIN INMsItem C on A.ItemID=C.ItemID '
       +'INNER JOIN APTrPurchaseOrderDt D On B.POID=D.POID AND D.itemID=A.Itemid UNION ALL '
       +'SELECT ''IDR'',1,B.Transdate,A.ItemID,ISNULL(A.Price,0),ISNULL(A.Qty,0) as Qty,C.UOMID2 '
       +'FROM INTrAdjustmentDt A INNER JOIN INTrAdjustmentHd B ON A.TransID=B.TransID '
       +'INNER JOIN INMsItem C on A.ItemID=C.Itemid WHERE A.FgStatus=''T'' AND ISNULL(A.Price,0)<>0) as K '
       +'WHERE K.ItemID='''+quDetilItemID.AsString+''' AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' ');
    Open;
    ShowMessage(Sql.Text);
  end;
  quBahanPrice.AsCurrency := quAct.FieldByName('Modal').AsCurrency;
end;

procedure TfmINTrProduksi.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Date;
  quMainFlagIN.ASString := 'PR';
  quMainTransDate.FocusControl;

end;

procedure TfmINTrProduksi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,qumain.State<>dsinsert);
end;

procedure TfmINTrProduksi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,qudetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgLUOM,TRUE);
  SetReadOnly(dbgPrice,TRUE);
end;

procedure TfmINTrProduksi.dsBahanStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGridButtonColumn1,quBahan.State<>dsInsert);
  SetReadOnly(dxDBGridColumn1,TRUE);
  SetReadOnly(dxDBGridColumn3,TRUE);
end;

procedure TfmINTrProduksi.dxButton12Click(Sender: TObject);
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('select * from intradjustmentdt where transid='''+quMaintransId.AsString+''' And FgJadi=''J'' ');
    Open;
  End;
  if quAct.RecordCount = 0 then
  begin
    qudetil.Append
  end else
  begin
    ShowMessage('Barang Produksi Hanya Boleh 1. Buat Form Baru Untuk Tambah');
    Abort;
  end;
end;

procedure TfmINTrProduksi.dxButton13Click(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsDetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmINTrProduksi.quBahanSnAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quBahanSnNumAll.AsString+''' and voucherno='''+quMainTransID.AsString+''' and snid='''+quBahanSnSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;

  with quAct,SQL do
  begin
   Close;Clear;
   Add('insert AllLootNumber (fgNum,voucherno,TransDate,FgTrans,SNID,qty,expdate,warehouseid,warehouseid,itemid) '
      +'select '''+quBahanSnNumAll.AsString+''','''+quMainTransID.AsString+''','''+FormatDateTime('yyyy-mm-dd',quMainTransDate.AsDatetime)+''',53,'
      +''''+quBahanSNSNID.AsString+''','''+quBahanSNJumlah.AsString+''','''+FormatDateTime('yyyy-mm-dd',quBahanSnExpDate.AsDatetime)+''', '
      +''''+quMainWareHouseID.AsString+''','''+quDetilItemID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmINTrProduksi.quBahanSnBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quBahanSnNumAll.AsString+''' and voucherno='''+quMainTransID.AsString+''' and snid='''+quBahanSnSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmINTrProduksi.quDetilSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quDetilSNNumAll.AsString+''' and voucherno='''+quMainTransID.AsString+''' and snid='''+quDetilSNSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmINTrProduksi.quDetilSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quDetilSNNumAll.AsString+''' and voucherno='''+quMainTransID.AsString+''' and snid='''+quDetilSNSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;

  with quAct,SQL do
  begin
   Close;Clear;
   Add('insert AllLootNumber (fgNum,voucherno,TransDate,FgTrans,SNID,qty,expdate,warehouseid,itemid) '
      +'select '''+quDetilSNNumAll.AsString+''','''+quMainTransID.AsString+''','''+FormatDateTime('yyyy-mm-dd',quMainTransDate.AsDatetime)+''',53,'
      +''''+quDetilSNSNID.AsString+''','''+quDetilSNJumlah.AsString+''','''+FormatDateTime('yyyy-mm-dd',qudetilSNExpDate.AsDatetime)+''', '
      +''''+quMainWareHouseID.AsString+''','''+quDetilItemID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmINTrProduksi.dxDBGridColumn6ButtonClick(Sender: TObject;
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
                +'  select A.urut,A.KonTransBrgID,B.transdate,51,A.SNID,A.Qty,A.ExpandFileName,B.WareHouseID,A.Itemid from ARTrKonTransBrgDtSN A '
                +'  inner join ARTrKonTransBrgHd B on A.KonTransBrgID=B.KonTransBrgID ) as K '
                +'  WHERE K.Jumlah<>0 AND K.ItemID = '''+quDetilItemID.AsString+''' AND K.WareHouseID = '''+quMainWareHouseID.AsString+''' '
                +'  GROUP BY K.SNID,K.ExpDate ';
    if ShowModal = MrOK then
    begin
       if quBahanSN.State = dsBrowse then quBahanSN.Edit;
       quBahanSNSNID.AsString     := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmINTrProduksi.dxButton14Click(Sender: TObject);
begin
  inherited;
  if quDetilSN.IsEmpty then Abort;
  if (dsDetilSN <> nil) and (dsdetilSN.DataSet <> nil) and
     (MessageDlg('Hapus Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsdetilSN.DataSet.Delete;
end;

end.
