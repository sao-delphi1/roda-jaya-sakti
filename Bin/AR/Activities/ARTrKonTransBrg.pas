unit ARTrKonTransBrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls,Printers;

type
  TfmARTrKonTransBrg = class(TfmStdLv4)
    DBText1: TDBText;
    DBText2: TDBText;
    quGudang: TADOQuery;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgListTransferID: TdxDBGridMaskColumn;
    dbgListTransferDate: TdxDBGridDateColumn;
    dbgListWareHouseSrc: TdxDBGridMaskColumn;
    dbgListWareHouseDest: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListLWareHouseDest: TdxDBGridLookupColumn;
    dbgListLwareHouseSrc: TdxDBGridLookupColumn;
    quItem: TADOQuery;
    quMainKonTransBrgID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainWareHouseID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quCustomer: TADOQuery;
    quMainLuCustomer: TStringField;
    quMainLuLocation: TStringField;
    quDetilKonTransBrgID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgGroup: TdxDBGridColumn;
    quAct1: TADOQuery;
    quAct2: TADOQuery;
    quAct3: TADOQuery;
    quTemp: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField1: TDateTimeField;
    StringField10: TStringField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxButton1: TdxButton;
    dxButton3: TdxButton;
    Label23: TLabel;
    DBText5: TDBText;
    quMainCurrID: TStringField;
    quMainLuCurrName: TStringField;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Label11: TLabel;
    dxButton4: TdxButton;
    ActPrint: TAction;
    quMainJatuhTempo: TIntegerField;
    quMainFgCetak: TStringField;
    Label10: TLabel;
    quMainJenis: TStringField;
    DBText3: TDBText;
    Label12: TLabel;
    quMainLSalesName: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    quMainSalesID: TStringField;
    quMainStatus: TStringField;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBImageEdit2: TdxDBImageEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    ActDeleteDetail: TAction;
    ActTambahDetail: TAction;
    dxButton5: TdxButton;
    Label14: TLabel;
    dxDBButtonEdit5: TdxDBButtonEdit;
    quMainSOID: TStringField;
    quDetilItemName: TStringField;
    quDetilUOMID: TStringField;
    Label15: TLabel;
    dxDBButtonEdit6: TdxDBButtonEdit;
    quMainPOCust: TStringField;
    dbgBatch: TdxDBGrid;
    dbgBatchKonsinyasiID: TdxDBGridMaskColumn;
    dbgBatchItemID: TdxDBGridMaskColumn;
    dbgBatchUpdDate: TdxDBGridDateColumn;
    dbgBatchUpdUser: TdxDBGridMaskColumn;
    dbgBatchJumlah: TdxDBGridColumn;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNSNID: TStringField;
    quSNKonTransBrgID: TStringField;
    quSNItemID: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quSNModal: TBCDField;
    quSNPurchaseID: TStringField;
    quSNFgSN: TStringField;
    quSNQty: TBCDField;
    dbgBatchSNID: TdxDBGridButtonColumn;
    dxButton2: TdxButton;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    quDetilNote: TStringField;
    dbgNote: TdxDBGridColumn;
    quMainInvoiceID: TStringField;
    dxDBEdit4: TdxDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    quDetilUrut: TStringField;
    quSNUrut: TStringField;
    quMainDOID: TStringField;
    Label20: TLabel;
    quMainAlamatKirim: TStringField;
    dxDBButtonEdit7: TdxDBButtonEdit;
    quDetilNumAll: TIntegerField;
    dbgColumn6: TdxDBGridImageColumn;
    quDetilFgLoot: TStringField;
    quDetilJumlah: TBCDField;
    quSNExpdate: TDateTimeField;
    dbgBatchColumn7: TdxDBGridDateColumn;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
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
    procedure dxButton1Click(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quMainCustIDChange(Sender: TField);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActDeleteDetailExecute(Sender: TObject);
    procedure ActTambahDetailExecute(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilQtyChange(Sender: TField);
    procedure dbgBatchSNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure quSNBeforeEdit(DataSet: TDataSet);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilJumlahChange(Sender: TField);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNSNIDChange(Sender: TField);
  private
    { Private declarations }
    procedure CeKStatus;
    procedure CeKStatusDetil;
    procedure CeKretur;
//    procedure CekCetak;
  public
    { Public declarations }
    KodeBarang,KdSbm,JenisSbm : string;
    Jumlah,JumSbm : Currency;
  end;

var
  fmARTrKonTransBrg: TfmARTrKonTransBrg;

implementation

uses ConMain, Search, UnitGeneral, MyUnit, UnitDate, StrUtils,
  ARQRRptSuratJalan, Allitem, ARSN,RptMultiCetak, StdLv3;

{$R *.dfm}
procedure TfmARTrKonTransBrg.CeKStatus;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add(' SELECT TOP 1 KonInvPelID FROM ARTrKonInvPelHd  '
       +' WHERE SOID='''+quMainKonTransBrgID.AsString+'''');
    Open;
    if not IsEmpty then
    begin
      MsgInfo('Sudah ada Invoice ['+quAct.FieldByName('KonInvPelID').AsString+'], tidak bisa edit/Delete lagi');
      Abort;
    end;
  end;


End;

{procedure TfmARTrKonTransBrg.CekCetak;
Begin
  if GroupUser <> 'admin' then
  begin
    with quAct, SQL do
    begin
      Close;Clear;
      Add('SELECT FgCetak FROM ARTrKonTransBrgHd WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('FgCetak').AsString = 'Y' then
    begin
      pesan('Data sudah pernah dicetak tidak bisa Hapus atau Ubah lagi');
      Abort;
    end;
  end;
End;}

procedure TfmARTrKonTransBrg.CekStatusDetil;
Begin
   with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT TOP 1 KonInvPelID FROM ARTrKonInvPelDt '
           +' WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Invoice ['+quAct.FieldByName('KonInvPelID').AsString+'], tidak bisa edit/Delete lagi');
           if groupuser<>'admin' then Abort;
           //Abort;
        end;
     end;

End;

procedure TfmARTrKonTransBrg.CeKretur;
Begin
  with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT top 1 KonReturID FROM ARTrKonReturDt  '
           +' WHERE KonTransBrgID='''+quMainKonTransBrgID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ditarik dengan nota retur ['+quAct.FieldByName('KonReturID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;

procedure TfmARTrKonTransBrg.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),A.TransDate,112), KonTransBrgID';
  FFieldTgl   := 'A.TransDate';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quSN.Active := TRUE;
  ts01.TabVisible := FALSE;
end;

procedure TfmARTrKonTransBrg.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  //SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBEdit3,TRUE);
  SetReadOnly(dxDBEdit4,TRUE);
  SetReadOnly(dxDBButtonEdit3,TRUE);
  SetReadOnly(dxDBButtonEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit4,TRUE);
end;

procedure TfmARTrKonTransBrg.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quMainLuCustomer.FocusControl;
  quMainCustID.FocusControl;
  with TfmSearch.Create(Self) do
     try
        Title := 'Pelanggan';
        SQLString := 'SELECT CustName as Nama_Pelanggan,CustID as Kode_Pelanggan FROM ARMsCustomer ORDER BY CustID';
        KeyValue := dxDBButtonEdit1.Text;
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainCustID.Value := Res[1];
        end;
     finally
        free;
     end;
  quMainSalesID.FocusControl;
end;

procedure TfmARTrKonTransBrg.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrKonTransBrg.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrKonTransBrg.pcMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FActDS.State=dsBrowse;
end;

procedure TfmARTrKonTransBrg.quMainBeforePost(DataSet: TDataSet);
var ST: String;
begin
  inherited;


  If Trim(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If Trim(quMainWareHouseID.Value)='' then
  Begin
    MsgInfo('Dari tidak boleh kosong');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  If Trim(quMainLuLocation.Value)='' then
  Begin
    MsgInfo('Gudang Dari tidak ada dalam Master');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  If Trim(quMainCustID.Value)='' then
  Begin
    MsgInfo('Ke Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  If Trim(quMainLuCustomer.Value)='' then
  Begin
    MsgInfo('Ke Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if TRIM(quMainCurrID.AsString) = '' then quMainCurrID.AsString := 'IDR';
  if TRIM(quMainLuCurrName.AsString) = '' then
  begin
    pesan('Valuta tidak terdaftar');
    quMainCurrID.FocusControl;
    Abort;
  end;

 if quMain.State=dsInsert then
  Begin
    {if GroupUser <> 'admin' then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('SELECT FgPass FROM ARMsCustomer WHERE CustID='''+quMainCustID.AsString+''' ');
        Open;
      end;
      if quAct.FieldByName('FgPass').AsString = 'Y' then
      begin
        with quAct1,SQL do
        begin
          Close;Clear;
          Add('SELECT SUM(CASE WHEN CONVERT(VARCHAR(8),DATEADD(DAY,K.Term,K.Transdate),112) >= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
             +'THEN 0 ELSE 1 END) as Flag FROM (SELECT A.Transdate,ISNULL(B.LimitAsli,0) as Term,A.CustID,ISNULL(A.TTLKj,0) as Total,'
             +'ISNULL((SELECT ISNULL(SUM(X.Amount),0) FROM CFTrKKBBDt X INNER JOIN CFTrKKBBHd Y ON X.VoucherID=Y.VoucherID '
             +'WHERE X.Note=A.KonInvPelID AND Y.Actor=A.CustID AND X.RekeningID='''+sDRPj+''' '
             +'AND CONVERT(VARCHAR(8),Y.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+'''),0) as Bayar,'
             +'ISNULL((SELECT SUM(Y.Qty*Z.Price) FROM ARTrKonReturHd X '
             +'INNER JOIN ARTrKonReturDt Y ON X.KonReturID=Y.KonReturID LEFT JOIN ARTrKonInvPelDt Z ON Y.KonTransBrgID=Z.KonTransBrgID AND Y.ItemID=Z.ItemID '
             +'WHERE Z.KonInvPelID=A.KonInvPelID AND X.CustID=A.CustID),0) as Retur '
             +'FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID) as K '
             +'WHERE K.CustID='''+quMainCustID.AsString+''' AND ISNULL(K.Total-K.Bayar-K.Retur,0) <> 0');
          Open;
        end;
        if quAct1.FieldByName('Flag').AsInteger <> 0 then
        begin
          ShowMessage('Tidak Bisa Input Delivery Order.'+#13
                     +'Pelanggan ini mempunyai Tagihan yang sudah jatuh tempo tapi belum lunas');
          quMainCustID.FocusControl;
          Abort;
        end;

        with quAct2,SQL do
        begin
          Close;Clear;
          Add('SELECT ISNULL(H.LimitPiutang,0) as Limit,L.CustID,ISNULL(SUM(L.Piutang),0) as Piutang,(SELECT TOP 1 Rate '
             +'FROM SATrRate ORDER BY CONVERT(VARCHAR(8),Transdate,112) DESC) as Rate FROM ('
             +'SELECT K.CustID,CASE WHEN K.CurrID=''IDR'' THEN ISNULL(SUM(K.TTLKj-K.Retur-K.Bayar),0) ELSE '
             +'ISNULL(SUM(K.TTLKj-K.Retur-K.Bayar),0) * (SELECT TOP 1 Rate FROM SATrRate ORDER BY CONVERT(VARCHAR(8),Transdate,112) DESC) END as Piutang FROM ('
             +'SELECT A.KonInvPelID,A.CurrID,A.TTLKj,A.CustID,ISNULL((SELECT SUM(Y.Qty*Z.Price) FROM ARTrKonReturHd X '
             +'INNER JOIN ARTrKonReturDt Y ON X.KonReturID=Y.KonReturID LEFT JOIN ARTrKonInvPelDt Z ON Y.KonTransBrgID=Z.KonTransBrgID AND Y.ItemID=Z.ItemID '
             +'WHERE Z.KonInvPelID=A.KonInvPelID AND X.CustID=A.CustID),0) as Retur,'
             +'(SELECT ISNULL(SUM(E.Amount),0) FROM CFTrKKBBDt E INNER JOIN CFTrKKBBHd F ON E.VoucherID=F.VoucherID '
             +'WHERE F.Actor=A.CustID AND F.CurrID=A.CurrID AND E.Note=A.KonInvPelID) as Bayar FROM ARTrKonInvPelHd A) as K '
             +'GROUP BY K.CustID,K.CurrID) as L INNER JOIN ARMsCustomer H ON L.CustID=H.CustID '
             +'WHERE L.CustID='''+quMainCustID.AsString+''' GROUP BY L.CustID,H.LimitPiutang ');
          Open;
        end;
        if quAct2.FieldByName('Piutang').AsCurrency > quAct2.FieldByName('Limit').AsCurrency then
        begin
          pesan('Limit Piutang '+quMainLuCustomer.AsString+' sudah melebihi batas');
          quMainCustID.FocusControl;
          Abort;
        end;
      end;
    end;  }
    if quMainKonTransBrgID.AsString='' then
    begin
      quMainDOID.AsString  := FormatDateTime('YY',quMainTransDate.AsDateTime)+FormatFloat('0000', RunNumberGL(quAct, 'ARTrKonTransBrgHd', 'DOID', ST, '0') + 1);
      quMainKonTransBrgID.AsString  := RIGHTSTR(quMainDOID.AsString,4)+'/7M'+FormatDateTime('-YY',quMainTransDate.AsDateTime);
    end else
    begin
      quMainDOID.AsString  := RIGHTSTR(quMainKonTransBrgID.AsString,2)+LEFTSTR(quMainKonTransBrgID.AsString,4);
    end;
  End;

  if TRIM(quMainKonTransBrgID.AsString) = '' then
  begin
    pesan('Nomor Nota tidak Boleh Kosong');
    quMainKonTransBrgID.FocusControl;
    Abort;
  end;

  quMainDOID.AsString  := RIGHTSTR(quMainKonTransBrgID.AsString,2)+LEFTSTR(quMainKonTransBrgID.AsString,4);

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;
end;

procedure TfmARTrKonTransBrg.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrKonTransBrg.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:= Date;
  quMainWareHouseID.Value:=sDGK;
  quMainCurrID.AsString := 'IDR';
  quMainJenis.AsString := 'S';
  quMainCurrID.FocusControl;
  quMainInvoiceID.AsString := '-';
end;

procedure TfmARTrKonTransBrg.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quDetilItemName.FocusControl;
  quDetilItemID.FocusControl;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT K.ItemID,K.ItemName as Nama_Barang,ISNULL(K.Jumlah-K.Kirim,0) as Jum_SO,K.UOMID as Satuan,K.Harga,K.ItemID as Kode_Barang,K.NumAll as IDTXN FROM ( '
                +'SELECT B.CustID,A.POID,A.ItemName,A.ItemID,A.UOMID,A.Jumlah as Jumlah,ISNULL(A.Price,0) as Harga,A.NumAll, '
                +'isnull((SELECT isnull(SUM(Jumlah),0) FROM ARTrKonTransBrgDt F INNER JOIN ARTrKonTransBrgHd G ON F.KonTransBrgID=G.KonTransBrgID  '
                +'WHERE F.ItemID=A.ItemID AND A.NumAll=F.NumAll AND G.SOID=A.POID AND G.CustID=B.CustID),0) as Kirim '
                +'FROM ARTrPurchaseOrderDt A INNER JOIN ARTrPurchaseOrderHd B ON A.POID=B.POID '
                +') as K '
                +'WHERE K.POID='''+quMainSOID.AsString+''' AND K.CustID='''+quMainCustID.asString+''' AND ISNULL(K.Jumlah-K.Kirim,0) <> 0 ';
    if ShowModal = MrOK then
    begin
       if quDetil.State = dsBrowse then quDetil.Edit;
       quDetilItemID.AsString  := Res[0];
       quDetilItemName.asString := Res[1];
       quDetilUOMID.Value := Res[3];
       quDetilNumAll.AsInteger := StrtoInt(Res[6]);
       //quDetilPrice.Value := StrToCurr(Res[3]);
       end;
    finally
       free;
    end;
  quDetilQty.FocusControl;
end;

procedure TfmARTrKonTransBrg.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilItemName.Value)='' then
  begin
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;

  JumSbm := 0;

  if quDetil.State = dsInsert then
  begin
    with quAct, SQL do
    begin
      Close; Clear;
      Add('SELECT Count(*) FROM  ARTrKonTransBrgDt WHERE KonTransBrgId=:KonTransBrgId AND ItemId=:ItemId');
      with Parameters do
      begin
        ParamByName('KonTransBrgId').Value := quMainKonTransBrgID.Value;
        ParamByName('ItemId').Value  := quDetilItemID.Value;
      end;
      Open;
      {if Fields[0].AsInteger > 0 then
      begin
        MsgInfo('Kode Barang sudah ada dalam List');
        quDetilItemID.FocusControl;
        Abort;
      end;}
      quDetilUpdUser.AsString := dmMain.UserId;
      quDetilUpdDate.AsDateTime := GetServerDateTime;
    end;

    with quAct1,SQL do
    begin
      Close;Clear;
      Add('SELECT Jenis FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' ');
      Open;
    end;
    if quAct1.FieldByName('Jenis').AsString <> quMainJenis.AsString then
    begin
      pesan('Type barang tidak sama dengan Type Transaksi');
      quDetilItemID.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilQty.AsString)='' then
  Begin
     MsgInfo('Jumlah barang tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  End;

  if quDetilQty.AsCurrency <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

 { with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT C.QTY-(SELECT ISNULL(SUM(A.QTY),0) FROM ARTRKONTRANSBRGDT A INNER JOIN ARTRKONTRANSBRGHD B ON A.KONTRANSBRGID=B.KONTRANSBRGID '
       +'WHERE B.SOID=C.POID AND A.ITEMID=C.ITEMID) AS SISA FROM ARTRPURCHASEORDERDT C '
       +'WHERE C.POID='''+quMainSOID.asString+''' AND C.ITEMID='''+quDetilItemID.asString+''' ');
    Open;
  End;

  if quDetilQty.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Jumlah Barang melebihi jumlah Di Nota SO '+#13
           +' Sisa Konsinyasi adalah ['+ quAct.FieldByName('Sisa').AsString +']');
    quDetilQty.FocusControl;
    Abort;
  end;  }


{  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT A.ItemID,(SELECT ISNULL(SUM(CASE WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
       +'FROM ALLITEM F WHERE F.ItemID=A.ItemID AND F.WarehouseID='''+quMainWareHouseID.AsString+''') as Stock FROM INMsItem A WHERE A.ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  if quAct3.FieldByName('Stock').AsInteger + JumSbm - quDetilQty.AsInteger < 0 then
  begin
    ShowMessage('Jumlah Barang kurang dari stock.'+#13
               +'Sisa Stock saat ini tinggal ['+CurrToStr(quAct3.FieldByName('Stock').AsCurrency+JumSbm)+']');
    quDetilQty.FocusControl;
    Abort;
  end;  }

  KodeBarang := quDetilItemID.AsString;
  Jumlah := quDetilQty.AsCurrency;
end;

procedure TfmARTrKonTransBrg.quDetilNewRecord(DataSet: TDataSet);
Function GenerateNoUrut:Integer;
begin
  with quAct,SQL do
  begin
    Close; Clear;
    Add('SELECT Urut FROM ARtrkontransbrgdt WHERE kontransbrgid='''+quMainKonTransBrgID.AsString+''' ORDER BY Urut DESC');
    Open;
    if IsEmpty then
      Result := 1
    else
      Result := StrToInt(FormatFloat('0',StrToInt(RightStr(fields[0].AsString,3))+1));
  end;
end;
begin
  inherited;
  quDetilUrut.AsString := inttostr(GenerateNoUrut);
  quDetilQty.Value:=0;
  quDetilJumlah.Value:=0;
  qudetilFgLoot.AsString := 'Y';
  quDetilItemID.FocusControl;
end;

procedure TfmARTrKonTransBrg.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  //SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgGroup,TRUE);
end;

procedure TfmARTrKonTransBrg.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Delivery Order';
       SQLString := 'SELECT B.CustName as Pelanggan,A.KonTransBrgID as No_DO,Convert(Varchar(10),A.Transdate,103) Tanggal,'
                   +'A.SOID,A.InvoiceID,A.Note as Keterangan,'
                   +'ISNULL(SUM(D.Qty),0) as Jumlah,ISNULL((Select E.KonInvPelID FROM ARTrKonInvPelHD E where E.SOID=A.KOnTransBrgID),''-'') as Invoice '
                   +'FROM ARTrKonTransBrgHd A INNER JOIN ARMsCustomer B ON A.CustId=B.CustId '
                   +'INNER JOIN INMswareHouse C ON A.WareHouseId=C.WareHouseId '
                   +'LEFT JOIN ARTrKonTransBrgDt D ON A.KonTransBrgID=D.KonTransBrgID '
                   +'WHERE '+FSQLWhere
                   +' GROUP BY A.KonTransBrgID,A.Transdate,B.CustName,C.WarehouseName,A.Note,A.SOID,A.invoiceId ORDER BY A.KonTransBrgID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonTransBrgID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonTransBrg.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//  CekCetak;
  CeKStatus;
  CeKretur;
  
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonTransBrgID.AsString+''' AND FgTrans=59');
    ExecSQL;
  end;
end;

procedure TfmARTrKonTransBrg.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//  CekCetak;
  CeKStatus;
  CeKretur;


  with quAct,SQL do
  begin
  Close;Clear;
  Add('Select Ctk FROM INMsItem Where ItemId='''+quDetilItemId.AsString+''' ');
  OPen;
  End;
  if quAct.FieldByName('Ctk').AsString = 'Y' then
  begin

  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonTransBrgID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' '
       +'AND FgTrans=59 AND SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;

  end;
end;

procedure TfmARTrKonTransBrg.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
  Close;Clear;
  Add('Select Ctk FROM INMsItem Where ItemId='''+quDetilItemId.AsString+''' ');
  OPen;
  End;
  if quAct.FieldByName('Ctk').AsString = 'Y' then
  begin

 // quDetil.Locate('ItemID',KodeBarang,[]);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonTransBrgID.AsString+''' AND ItemID='''+KdSbm+''' AND FgTrans=59 AND SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,TempField,TempField2,SourceNo,ModuleID) '
       +'VALUES (:VoucherNo,:Transdate,:WarehouseID,:FgTrans,:ItemID,:Qty,:TempField,:TempField2,:NumAll,:ModuleID)');
    with Parameters do
    begin
      ParamByName('VoucherNo').Value := quMainKonTransBrgID.AsString;
      ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
      ParamByName('WarehouseID').Value := quMainWareHouseID.AsString;
      ParamByName('FgTrans').Value := 59;
      ParamByName('ItemID').Value := KodeBarang;
      ParamByName('Qty').Value := Jumlah;
      ParamByName('TempField').Value := quMainCustID.AsString;
      ParamByName('TempField2').Value := quMainLuCustomer.AsString;
      ParamByName('NumAll').Value := quDetilNumAll.AsString;
      ParamByName('ModuleId').Value := 'AR';
    end;
    ExecSQL;
  end;

 { with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrKonInvPelDt SET ItemID='''+KodeBarang+''',Qty='''+CurrToStr(Jumlah)+''' '
       +'WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''' AND ItemID='''+KdSbm+''' ');
    ExecSQL;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM ARTrKonTransBrgDt WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount >= 10 then
    Abort
  else
    quDetil.Append;       }

  if MessageDlg('Apakah anda mau mendata tanggal expired barang ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
     quSN.Last;
     quSN.Append;
     Abort;
  end else
  begin
      quDetil.Append;
  end;

  end;
end;

procedure TfmARTrKonTransBrg.dxButton1Click(Sender: TObject);
var  iPrint : Integer;
     FgTax : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT FgTax FROM SAMsSet');
    Open;
  end;
  FgTax := quAct.FieldByName('FgTax').AsString;
  if (quMain.IsEmpty) and (quDetil.IsEmpty) then Abort;
  iPrint := Printer.Printers.IndexOf(sDPB);
  with TfmQRRptSuratJalan.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       if FgTax = 'Y' then
       begin
         qrlDate.Caption := FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);
         QRLabel23.Caption := 'Date'; QRDBText9.Enabled := False; QRLabel25.Enabled := true;
         QRLabel24.Enabled := True; QRLabel24.Caption := 'Invoice'; QRDBText10.Enabled := True; QRLabel1.Enabled := False;
         QRLabel20.Enabled := False; QRLabel7.Enabled := False; QRLabel22.Enabled := False;
         QRDBText6.Enabled := False; qrlDate.Left := 96; qrlDate.Top := 84;
         QRLabel27.Enabled := False; QRLabel28.Enabled := False; QRDBText14.Enabled := False;
        // QRLabel10.Enabled := False; QRLabel16.Caption := 'Checker'; QRLabel17.Enabled := False;
      //   QRLabel14.Enabled := False; QRDBText1.enabled := false;
       end else
         qrlDate.Caption := FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);
       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT KonTransBrgID,KonTransBrgID as SaleId,Convert(varchar(10),Transdate,103) as Tgl,'
            +'CONVERT(VARCHAR(8),Getdate(),108) as Jam,A.CustId,C.CustName,'''+quMainAlamatKirim.AsString+''' as Address,C.CPerson,'
            +'A.SalesID+'' - ''+D.SalesName as Jualan,''( ''+D.SalesName+'' )'' as Salesa, '
            +'CASE WHEN C.KodePOS='''' THEN C.City ELSE C.City+'' - ''+C.KodePOS END as City,'
            +'ISNULL((Select ISNULL(F.POCust,''-'') From Artrpurchaseorderhd F where F.POID=A.SOID),''-'') as Sales,InvoiceId as Gudang '
            +'FROM ARTrKonTransBrgHd A INNER JOIN INMsWarehouse B ON A.WarehouseID=B.WarehouseID '
            +'INNER JOIN ARMsCustomer C ON A.CustId=C.CustId INNER JOIN ARMsSales D ON A.SalesID=D.SalesID '
            +'WHERE A.KonTransBrgID='''+quMainKonTransBrgID.AsString+'''');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add(' SELECT  A.ItemId,A.ItemName,A.UOMId,ISNULL(Jumlah,0) as Qty,ISNULL(CEILING(Qty),0) as CekBulat,B.Tipe,A.Note as Lokasi,ISNULL(FgLoot,''Y'') as FgLoot FROM ARTrKonTransBrgDt A'
             +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid WHERE A.KonTransBrgId=:KonTransBrgId '
             +' ORDER BY A.UpdDate');
             Parameters.ParamByName('KontransBrgId').DataType := ftString;
         Open;
       End;
     {  if quMainNote.AsString = '' then
         qlbKet.Caption := ''
       else
         qlbKet.Caption := '* KETERANGAN : '+quMainNote.AsString;    }

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

      finally
        free;
     end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrKonTransBrgHd SET FgCetak=''Y'' WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''' ');
    ExecSQL;;
  end;
end;

procedure TfmARTrKonTransBrg.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  CekCetak;
  if quMain.State <> dsInsert then
    JenisSbm := quMainJenis.AsString;
  CeKStatus;
  CeKretur;

  
 { with quAct,SQL do
  begin
    Close;Clear;
    ADd('SELECT * FROM ARTrKonTransBrgDt WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount >= 10 then
  begin
    pesan('1 Transkasi cuma bisa input 10 barang');
    Abort;
  end; }
end;

procedure TfmARTrKonTransBrg.bbSimpanDetilClick(Sender: TObject);
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
  end;end;

procedure TfmARTrKonTransBrg.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrKonTransBrg.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  CekCetak;
//  if GroupUser <> 'admin' then
//  begin
    //CeKStatusDetil;
    //CeKretur;

//  end;
  JumSbm := quDetilQty.AsCurrency;
  KdSbm := quDetilItemID.AsString;
end;

procedure TfmARTrKonTransBrg.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta'
               +' FROM SAMsValuta'
               +' ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
  finally
       free;
  end;
end;

procedure TfmARTrKonTransBrg.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT CurrName FROM SAMsValuta WHERE CurrID='''+quMainCurrID.AsString+''' ');
    Open;
  end;
  quMainLuCurrName.AsString := quAct.FieldByName('CurrName').AsString;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROm ARMsSales WHERE SalesID='''+quMainSalesID.AsString+''' ');
    Open;
  end;
  quMainLSalesName.AsString := quAct1.FieldByName('SalesName').AsString;
  with quAct2,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 KonInvPelID FROM ARTrKonInvPelHd WHERE SOID='''+quMainKonTransBrgID.AsString+''' ');
    Open;
  end;
  if quAct2.RecordCount <> 0 then
    quMainStatus.AsString := quAct2.FieldByName('KonInvPelID').AsString
  else
    quMainStatus.AsString := 'BELUM ADA INVOICE';
  with quAct3,sql do
  begin
    Close;Clear;
    Add('SELECT POCust FROM ARTrPurchaseOrderHD WHERE POID='''+qumainSOID.AsString+''' ');
    Open;
  end;
  if quAct3.RecordCount <> 0 then
    quMainPOCust.AsString := quAct3.FieldByName('POCust').AsString
  else
    quMainPOCust.AsString := '-';
end;

procedure TfmARTrKonTransBrg.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  if quMain.State <> dsInsert then
  begin
    if quMainJenis.AsString <> JenisSbm then
    begin
      with quAct1,SQL do
      begin
        Close;Clear;
        Add('DELETE FROM ARTrKonTransBrgDt WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''' ');
        Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonTransBrgID.AsString+''' ');
        ExecSQL;
      end;
    end;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE AllItem SET Transdate='''+FormatDateTime('yyyy-MM-dd',quMainTransDate.AsDateTime)+''','
       +'WarehouseID='''+quMainWareHouseID.AsString+''',TempField2='''+quMainLuCustomer.AsString+''' '
       +'WHERE VoucherNo='''+quMainKonTransBrgID.AsString+''' ');
    ExecSQL;
  end;
  quDetil.Requery();
  quDetil.Append;
end;

procedure TfmARTrKonTransBrg.quMainCustIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT Address FROM ARMsCustomer WHERE CustID='''+quMainCustID.AsString+''' ');
    Open;
  end;
  quMainAlamatKirim.AsString := quAct.FieldByName('Address').AsString;
end;

procedure TfmARTrKonTransBrg.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quMainLSalesName.FocusControl;
  quMainSalesID.FocusControl;
  with TfmSearch.Create(Self) do
     try
        Title := 'Sales';
        SQLString := 'SELECT SalesID as Kode_Sales,SalesName as Nama_Sales FROM ARMsSales ORDER BY SalesID';
        KeyValue := dxDBButtonEdit4.Text;
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSalesID.Value := Res[0];
        end;
     finally
        free;
     end;
  quMainNote.FocusControl;
end;

procedure TfmARTrKonTransBrg.ActDeleteDetailExecute(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrKonTransBrg.ActTambahDetailExecute(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTrKonTransBrg.dxButton5Click(Sender: TObject);
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

procedure TfmARTrKonTransBrg.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Sales Order';
    SQLString := 'SELECT K.CustName as Pelanggan,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl_SO,K.Note as Keterangan,K.POID as No_SO, '
                +'K.CurrID as Valuta,K.WareHouseID,K.SalesID,K.InvoiceID,K.CustID FROM ( '
                +'SELECT A.POID,A.CustID,A.Transdate,SUM(C.Qty) as JmlPO,A.FgCetak,A.Note,A.CurrID,A.WareHouseID,A.SalesID,A.InvoiceID,D.CustName, '
                +'ISNULL((SELECT SUM(B.Qty) FROM ARTrKonTransBrgDt B INNER JOIN ARTRKonTransBrgHd D on '
                +'D.kontransbrgid=B.kontransbrgid WHERE D.SOID=A.POID),0) as JmlDO '
                +'FROM ARTrPurchaseOrderHD A INNER JOIN ARTrPurchaseOrderDT C ON A.POID=C.POID '
                +'Inner Join ARMsCustomer D on A.CustID=D.CustID '
                +'GROUP BY A.POID,A.CustID,A.Transdate,A.FgCetak,A.Note,A.CurrID,A.WareHouseID,A.SalesID,A.InvoiceID,D.CustName) as K '
                +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                +'AND ISNULL((JmlPO-JmlDO),0) > 0 AND K.FgCetak=''Y'' ORDER BY K.POID';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainSOID.AsString              := Res[3];
       quMainWareHouseID.AsString       := Res[5];
       quMainCustID.AsString            := Res[8];
       quMainSalesID.AsString           := Res[6];
       quMainCurrID.AsString            := Res[4];
       quMainInvoiceID.AsString         := Res[7];
    end;
  finally
    free;
  end;
end;

procedure TfmARTrKonTransBrg.quDetilQtyChange(Sender: TField);
begin
  inherited;
  with quAct1,SQL do
    begin
      Close;Clear;
      Add('SELECT ISNULL(Qty,0) as Qty FROM ARTrPurchaseOrderDT WHERE POID='''+quMainSOID.AsString+''' And ItemID='''+quDetilItemID.AsString+''' and NumAll='''+quDetilNumAll.ASString+''' ');
      Open;
    end;
    if quDetilJumlah.Ascurrency > quAct1.FieldByName('Qty').AsCurrency then
    begin
      pesan('Jumlah Barang Lebih Besar Dari Jumlah SO');
      quDetilJumlah.ascurrency := quact1.fieldbyname('Qty').AsCurrency;
      quDetilJumlah.FocusControl;
      Abort;
  end;
end;

procedure TfmARTrKonTransBrg.dbgBatchSNIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Kode Produksi';
  {  SQLString := 'SELECT K.Kode_Produksi,K.No_BPB,K.Tgl_Exp,K.Sisa FROM ( '
                +'Select A.SNID as Kode_Produksi,A.ItemID,A.KonsinyasiID as No_BPB,CONVERT(VARCHAR(10),A.ExpDate,103) as Tgl_Exp, '
                +'A.Jumlah-ISNULL((Select SUM(B.Qty) From ARTrKonTransBrgDtSN B Where B.ItemID=A.ItemID and B.SNID=A.SNID),0) as Sisa '
                +'from AptrKonsinyasiDTSN A ) as K '
                +'WHERE K.ItemID = '''+quDetilItemID.AsString+''' AND K.Sisa <> 0 ORDER BY K.Kode_Produksi ';   }


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
                //ShowMessage(SQLString);
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

procedure TfmARTrKonTransBrg.quSNBeforePost(DataSet: TDataSet);
var Pesanan,Stok,Jumlah,JumlahSN : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('SELECT SUM(ISNULL(Qty,0)) as Jumlah FROM ARTrKontransBrgDT WHERE ItemID='''+quDetilItemID.AsString+''''
      +'AND KonTransBrgID='''+quMainKontransBrgId.AsString+''' ');
    Open;
  end;
  Pesanan := quAct.FieldByName('Jumlah').AsCurrency;

  with quAct,SQL do
  begin
   Close;Clear;
   Add('SELECT SUM(ISNULL(Qty,0)) as Jumlah FROM ARTrKontransBrgDTSN WHERE ItemID='''+quDetilItemID.AsString+''''
      +'AND KonTransBrgID='''+quMainKontransBrgId.AsString+''' ');
    Open;
  end;
  Jumlah := quAct.FieldByName('Jumlah').AsCurrency+quSNQty.AsCurrency;

  with quAct,SQL do
  begin
   Close;Clear;
   Add('SELECT ISNULL(SUM(Qty),0) as JumlahSN FROM ARTrKontransBrgDTSN WHERE ItemID='''+quDetilItemID.AsString+''' AND SNID='''+quSNSNID.AsString+''' '
      +'AND KonTransBrgID='''+quMainKontransBrgId.AsString+''' ');
    Open;
  end;
  JumlahSN := quAct.FieldByName('JumlahSN').AsCurrency;

  with quAct,SQL do
  begin
   Close;Clear;
   Add('SELECT A.Jumlah-ISNULL((Select SUM(B.Qty) From ARTrKonTransBrgDtSN B Where B.ItemID=A.ItemID and B.SNID=A.SNID),0) as Sisa FROM APTrKonsinyasiDtSN A '
      +'WHERE A.ItemID='''+quDetilItemID.AsString+''' AND A.SNID='''+quSNSNID.AsString+''' ');
    Open;
  end;
  Stok := quAct.FieldByName('Sisa').AsCurrency;
  {
  if Pesanan < Jumlah+quSNQty.AsCurrency then
  begin
    ShowMessage('Jumlah melebihi Jumlah barang yang dipesan');
    quSNQty.FocusControl;
    Abort;
  end;

  if Stok-JumlahSN < 0 then
  begin
    ShowMessage('Jumlah melebihi Jumlah barang yang tersedia');
    quSNQty.FocusControl;
    Abort;
  end;       }

  quSNUpdUser.AsString := dmMain.UserId;
  quSNUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrKonTransBrg.dxButton2Click(Sender: TObject);
begin
  inherited;
  quSN.Append;
end;

procedure TfmARTrKonTransBrg.dxButton6Click(Sender: TObject);
begin
  inherited;
    if quSN.IsEmpty then Abort;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmARTrKonTransBrg.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgBatchSNID,quSN.State<>dsInsert);
end;

procedure TfmARTrKonTransBrg.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKretur;
 { if quDetil.IsEmpty then Abort;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('SELECT ISNULL(SUM(Qty),0) as Jumlah FROM ARTrKonTransBrgDtSN WHERE ItemID='''+quDetilItemID.AsString+''''
      +'AND KonTransBrgID='''+quMainKonTransBrgID.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('Jumlah').AsCurrency >= quDetilQty.AsCurrency then Abort; }
end;

procedure TfmARTrKonTransBrg.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKretur;


  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quSNUrut.AsString+''' and voucherno='''+quMainKonTransBrgID.AsString+''' and snid='''+quSNSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmARTrKonTransBrg.quSNBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKretur;

  
end;

procedure TfmARTrKonTransBrg.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNUrut.AsInteger := quDetilUrut.AsInteger;
end;

procedure TfmARTrKonTransBrg.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Alamat';
        SQLString := 'SELECT DISTINCT K.AlamatKirim as Alamat FROM (SELECT CustID,AlamatKirim FROM ARTrkonTransBrgHD) as K '
                    +'WHERE K.CustId='''+quMainCustId.AsString+''' And ISNULL(K.AlamatKirim,'''')<>'''' ';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainAlamatKirim.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmARTrKonTransBrg.quDetilJumlahChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select UOMID2,Konversi FROM InMsItem Where Itemid='''+quDetilItemID.AsString+''' ');
    Open;
  End;
  if quDetilUOMID.AsString = quAct.FieldByName('UOMID2').AsString then
  quDetilQty.AsCurrency := quDetilJumlah.AsCurrency
  else
  qudetilQty.AsCurrency := quDetilJumlah.AsCurrency * quAct.FieldByName('Konversi').AsCurrency;
end;

procedure TfmARTrKonTransBrg.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quSNUrut.AsString+''' and voucherno='''+quMainKonTransBrgID.AsString+''' and snid='''+quSNSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('insert AllLootNumber (fgNum,voucherno,TransDate,FgTrans,SNID,qty,expdate,warehouseid,itemid) '
      +'select '''+quSNUrut.AsString+''','''+quMainKonTransBrgID.AsString+''','''+FormatDatetime('yyyy-mm-dd',quMainTransDate.AsDatetime)+''',51,'
      +''''+quSNSNID.AsString+''','''+quSNQty.AsString+''','''+FormatDatetime('yyyy-mm-dd',quSNExpdate.AsDatetime)+''','''+quMainWareHouseID.AsString+''','''+quDetilItemID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmARTrKonTransBrg.quSNSNIDChange(Sender: TField);
begin
  inherited;
  with quAct, SQl do
  begin
    Close;Clear;
    Add('Select Top 1 ExpDate From AllLootNumber Where SNID='''+quSNSNID.AsString+''' ');
    Open;
  End;
  quSNExpdate.AsDateTime := quAct.FieldByName('ExpDate').AsDateTime;
end;

end.
