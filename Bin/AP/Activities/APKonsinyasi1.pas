unit APKonsinyasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls;

type
  TfmAPKonsinyasi = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    quWareHouse: TADOQuery;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgListTransferID: TdxDBGridMaskColumn;
    dbgListTransferDate: TdxDBGridDateColumn;
    dbgListWareHouseSrc: TdxDBGridMaskColumn;
    dbgListWareHouseDest: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListLWareHouseDest: TdxDBGridLookupColumn;
    dbgListLwareHouseSrc: TdxDBGridLookupColumn;
    quMainKonsinyasiID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilKonsinyasiID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quSupplier: TADOQuery;
    quMainWareHouseID: TStringField;
    quMainLWareHouseName: TStringField;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    quMainJatuhTempo: TIntegerField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    quValuta: TADOQuery;
    quDetilPrice: TBCDField;
    dbgPrice: TdxDBGridColumn;
    quMainSuppID: TStringField;
    quMainLSuppName: TStringField;
    quMainRate: TBCDField;
    quDetilCurrID: TStringField;
    dbgCurrID: TdxDBGridButtonColumn;
    quDetilLuValuta: TStringField;
    quAct1: TADOQuery;
    quMainCurrID: TStringField;
    quMainFgPosting: TStringField;
    Label6: TLabel;
    quMainBPBID: TStringField;
    dxButton1: TdxButton;
    quDetilLuItemName: TStringField;
    dbgUOM: TdxDBGridColumn;
    quDetilLUOM: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    ActPrint: TAction;
    Label13: TLabel;
    Label14: TLabel;
    quMainPOID: TStringField;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure pcMainChanging(Sender: TObject; NewPage: TdxTabSheet;
      var AllowChange: Boolean);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dbgEnter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dbgCurrIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure CeKStatus;
    procedure CeKStatusDetil;
    procedure CeKRetur;
  public
    { Public declarations }
    KodeBarang : string;
    Jumlah : Currency;
  end;

var
  fmAPKonsinyasi: TfmAPKonsinyasi;

implementation

uses ConMain, Search, UnitGeneral, MyUnit, ARMsPelanggan, APMsSupplier,
  APQRRptPenerimaanBarang, StdLv3, StdLv1;

{$R *.dfm}

procedure TfmAPKonsinyasi.CeKStatus;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT top 1 KonsinyasiInvID FROM APTrKonsinyasiInvDt '
       +'WHERE KonsinyasiID='''+quMainKonsinyasiID.Value+'''');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Invoice ['+quAct.FieldByName('KonsinyasiInvID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPKonsinyasi.CeKStatusDetil;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 KonsinyasiInvID FROM APTrKonsinyasiInvDt '
       +'WHERE KonsinyasiID='''+quMainKonsinyasiID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Invoice Konsinyasi ['+quAct.FieldByName('KonsinyasiInvID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPKonsinyasi.CeKRetur;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 ReturnKonID FROM APTrReturnKonDT '
       +'WHERE KonsinyasiID='''+quMainKonsinyasiID.AsString+'''');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Retur ['+quAct.fieldbyname('ReturnKonID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPKonsinyasi.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonsinyasiID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  ts01.TabVisible := FALSE;
end;

procedure TfmAPKonsinyasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit3,TRUE);
//  SetReadOnly(dxDBEdit1,quMain.State <>dsInsert);
//  SetReadOnly(dxDBDateEdit1,quMain.State <>dsInsert);
//  SetReadOnly(dxDBButtonEdit2,quMain.State <>dsInsert);
end;

procedure TfmAPKonsinyasi.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmAPKonsinyasi.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPKonsinyasi.pcMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FActDS.State=dsBrowse;
end;

procedure TfmAPKonsinyasi.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  If TRIM(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If TRIM(quMainSuppID.AsString)='' then
  Begin
    MsgInfo('Dari tidak boleh kosong');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If TRIM(quMainLSuppName.Value)='' then
  Begin
    MsgInfo('Supplier tidak ada dalam Master');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If TRIM(quMainWareHouseID.Value)='' then
  Begin
    MsgInfo('Gudang Tujuan tidak ada dalam Master Gudang');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  If TRIM(quMainLWareHouseName.Value)='' then
  Begin
    MsgInfo('Gudang tidak ada dalam Master');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  If quMain.State= dsInsert then
  Begin
    ST := 'PBL/R'+FormatDateTime('YY/MM-', quMainTransDate.AsDateTime);
    quMainBPBID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrKonsinyasiHd', 'BPBID', ST, '0') + 1);
    CarirateNew(quAct,quMainTransDate.AsDateTime);
    quMainRate.Value := quAct.fieldbyname('Rate').AsCurrency;
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT K.KonsinyasiID FROM ( '
          +'SELECT KonsinyasiID FROM APTrKonsinyasiHD UNION ALL SELECT PurchaseID FROM APTrPurchaseHd UNION ALL '
          +'SELECT KonsinyasiInvID FROM APTrKonsinyasiInvHd) as K WHERE K.KonsinyasiID='''+quMainKonsinyasiID.AsString+''' ');
       Open;
       If Not IsEmpty then
       Begin
          MsgInfo('Nota sudah dipakai di transaksi lainnya');
          quMainKonsinyasiID.FocusControl;
          Abort;
       End;
    End;
  End;
  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPKonsinyasi.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmAPKonsinyasi.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainJatuhTempo.AsInteger := 0;
  quMainTransDate.AsDateTime := date;
  quMainWareHouseID.AsString := sDGK;
  quMainFgPosting.AsString   := 'T';
  quMainKonsinyasiID.FocusControl;
end;

procedure TfmAPKonsinyasi.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT B.ItemName as Nama_Barang,A.Qty,A.ItemID FROM APTrPurchaseOrderDt A '
                   +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                   +'WHERE A.POID='''+quMainPOID.AsString+''' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value   := Res[2];
          quDetilQty.AsCurrency := StrToCurr(Res[1]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasi.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.AsString)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLuItemName.AsString)='' then
  begin
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;
{  if quDetilPrice.AsCurrency <= 0 then
  begin
    ShowMessage('Harga harus lebih besar dari 0 (nol)');
    quDetilPrice.FocusControl;
    Abort;
  end;
  if TRIM(quDetilPrice.AsString)='' then
  begin
    ShowMessage('Harga tidak boleh kosong');
    quDetilPrice.FocusControl;
    Abort;
  end;
  if TRIM(quDetilCurrID.AsString)='' then
  begin
    ShowMessage('Valuta tidak boleh kosong');
    quDetilCurrID.FocusControl;
    Abort;
  end;
  if TRIM(quDetilLuValuta.AsString)='' then
  begin
    ShowMessage('Valuta tidak terdaftar');
    quDetilCurrID.FocusControl;
    Abort;
  end;}
  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(*) FROM  APTrKonsinyasiDt WHERE KonsinyasiId=:KonsinyasiId AND ItemId=:ItemId');
        with Parameters do
        begin
           ParamByName('KonsinyasiId').Value := quMainKonsinyasiID.Value;
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
  end;

  if quDetilQty.AsCurrency <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;
  KodeBarang := quDetilItemID.AsString;
  Jumlah := quDetilQty.AsCurrency;
  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPKonsinyasi.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsInteger:=0;
  quDetilPrice.AsCurrency := 0;
  quDetilItemID.FocusControl;
end;

procedure TfmAPKonsinyasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgUOM,TRUE);
end;

procedure TfmAPKonsinyasi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Penerimaan Barang';
       SQLString := 'SELECT A.BPBID as Nota_BPB,A.KonsinyasiID as Nota,CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,'
                   +'B.SuppName as Supplier,A.Note as Keterangan,'
//                   +'CASE WHEN A.FgPosting=''T'' THEN ''Belum Posting'' ELSE ''Sudah Posting'' END as Status,'
                   +'ISNULL(SUM(C.Qty),0) as Jumlah FROM APTrKonsinyasiHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
                   +'INNER JOIN APTrKonsinyasiDt C ON A.KonsinyasiID=C.KonsinyasiID '
                   +'WHERE '+FSQLWhere
                   +' GROUP BY A.BPBID,A.KonsinyasiID,A.Transdate,B.SuppName,A.Note,A.FgPosting ORDER BY A.BPBID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonsinyasiID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasi.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKRetur;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonsinyasiID.AsString+''' AND FgTrans=7 ');
    ExecSQL;
  end;
end;

procedure TfmAPKonsinyasi.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKRetur;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonsinyasiID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans=7');
    ExecSQL;
  end;
end;

procedure TfmAPKonsinyasi.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Locate('ItemID',KodeBarang,[]);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonsinyasiID.AsString+''' AND ItemID='''+KodeBarang+''' AND FgTrans=7 ');
    ExecSQL;
  end;
  with quAct1,SQL do
  begin
     Close;Clear;
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,TempField,TempField2) '
        +'VALUES (:VoucherNo,:Transdate,:WarehouseID,:FgTrans,:ItemID,:Qty,:TempField,:TempField2)');
     with Parameters do
     begin
       ParamByName('VoucherNo').Value := quMainKonsinyasiID.AsString;
       ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
       ParamByName('WarehouseID').Value := quMainWareHouseID.AsString;
       ParamByName('FgTrans').Value := 7;
       ParamByName('ItemID').Value := KodeBarang;
       ParamByName('Qty').Value := Jumlah;
       ParamByName('TempField').Value := quMainSuppID.AsString;
       ParamByName('TempField2').Value := quMainLSuppName.AsString;
     end;
     ExecSQL;
  end;
  quDetil.Append;
end;

procedure TfmAPKonsinyasi.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if quMain.IsEmpty then Abort;
  if quMain.State <> dsBrowse then quMain.Post;
  CeKStatusDetil;
  CeKRetur;
end;

procedure TfmAPKonsinyasi.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKRetur;
end;

procedure TfmAPKonsinyasi.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPKonsinyasi.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsDetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmAPKonsinyasi.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmAPKonsinyasi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPKonsinyasi.dbgCurrIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Valuta';
        SQLString := 'SELECT CurrID as Kode_Valuta, CurrName as Valuta'
                    +' FROM SAMsValuta ORDER BY CurrID';
        if ShowModal = MrOK then
        begin
           if quDetil.State = dsBrowse then quDetil.Edit;
           quDetilCurrID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmAPKonsinyasi.quDetilCalcFields(DataSet: TDataSet);
var ItemName,Satuan : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT B.ItemName,A.UOMID FROM APTrPurchaseOrderDt A '
       +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
       +'WHERE A.POID='''+quMainPOID.AsString+''' AND A.ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  ItemName := quAct.FieldByName('ItemName').AsString;
  Satuan   := quAct.FieldByName('UOMID').AsString;
  quDetilLuItemName.AsString := ItemName;
  quDetilLUOM.AsString := Satuan;
end;

procedure TfmAPKonsinyasi.dxButton1Click(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Header Belum disimpan');
    quMainNote.FocusControl;
    Abort;
  end;
  if (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Detil Belum disimpan');
    quDetilQty.FocusControl;
    Abort;
  end;
  with TfmQRRptPenerimaanBarang.Create(Self) do
   try
    qrlTitle.Caption := 'FORM PENERIMAAN BARANG';
    with qu001,SQL do
    Begin
      Close;Clear;
      add('SELECT A.KonsinyasiID, B.SuppName, CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.BPBID,'
         +'A.SuppID FROM APTrKonsinyasiHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
         +'WHERE A.KonsinyasiID='''+quMainKonsinyasiID.AsString+''' AND A.SuppID='''+quMainSuppID.AsString+''' ');
      Open;
    End;

    With qu002,SQL do
    Begin
      Close;Clear;
      add('SELECT A.ItemID,B.ItemName,A.Qty,B.UOMID,B.Tipe FROM APTrKonsinyasiDt A '
         +'INNER JOIN APTrKonsinyasiHd C ON A.KonsinyasiID=C.KonsinyasiID '
         +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
         +'WHERE A.KonsinyasiID='''+quMainKonsinyasiID.AsString+''' '
         +'AND C.SuppID='''+quMainSuppID.AsString+''' ORDER BY A.UpdDate');
      Open;
    End;
    qlbKeterangan.Caption:= quMainNote.AsString;
    MyReport.PreviewModal;
    finally
      free;
   end;
end;

procedure TfmAPKonsinyasi.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPKonsinyasi.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
   try
     Title := 'Supplier';
     SQLString := 'SELECT Suppname as Nama_Supplier,SuppID as Kode_Supplier '
                 +',Address as Alamat FROM APMsSupplier ORDER BY SuppID';
      if ShowModal = MrOK then
      begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainSuppID.Value := Res[1];
      end;
   finally
      free;
   end;
end;

procedure TfmAPKonsinyasi.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
   try
     Title := 'Data Purchase Order';
     SQLString := 'SELECT DISTINCT K.POID,L.SuppName as Supplier,K.SuppID as Kode FROM ('
                 +'SELECT B.SuppID,B.POID,ISNULL(SUM(A.Qty),0) as Total,ISNULL((SELECT SUM(X.Qty) FROM APTrKonsinyasiDt X '
                 +'INNER JOIN APTrKonsinyasiHd Y ON X.KonsinyasiID=Y.KonsinyasiID WHERE Y.SuppID=B.SuppID AND Y.POID=B.POID),0) as Terima '
                 +'FROM APTrPurchaseOrderDt A INNER JOIN APTrPurchaseOrderHd B ON A.POID=B.POID '
                 +'GROUP BY B.POID,B.SuppID) as K INNER JOIN APMsSupplier L ON K.SuppID=L.SuppID '
                 +'WHERE K.Total-K.Terima > 0 '
                 +'ORDER BY K.POID';
      if ShowModal = MrOK then
      begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainPOID.Value := Res[0];
         quMainSuppID.Value := Res[2];
      end;
   finally
      free;
   end;
end;

end.
