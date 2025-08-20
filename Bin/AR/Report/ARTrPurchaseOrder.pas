unit ARTrPurchaseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxPageControl,
  dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer,
  dxDBELib, dxEditor, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms, DBCtrls,
  QuickRpt, QRCtrls;

type
  TfmARTrPurchaseOrder = class(TfmStdLv31)
    quMainCustID: TStringField;
    quMainTransdate: TDateTimeField;
    quMainNote: TStringField;
    quMainTTLPO: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilItemID: TStringField;
    quDetilPRID: TStringField;
    quDetilQty: TIntegerField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    dbg: TdxDBGrid;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    quCustomer: TADOQuery;
    quItem: TADOQuery;
    quMainLuCustName: TStringField;
    quDetilLuItemName: TStringField;
    quDetilCTotal: TCurrencyField;
    dbgPOID: TdxDBGridMaskColumn;
    dbgItemID: TdxDBGridButtonColumn;
    dbgPRID: TdxDBGridButtonColumn;
    dbgPrice: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgUpdDate: TdxDBGridDateColumn;
    dbgUpdUser: TdxDBGridMaskColumn;
    dbgLuItemName: TdxDBGridColumn;
    dbgCTotal: TdxDBGridColumn;
    Shape6: TShape;
    Label3: TLabel;
    DBText2: TDBText;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quTotalTotal: TBCDField;
    quDetilDisc: TBCDField;
    quMainPRID: TStringField;
    quMainLokasi: TStringField;
    quMainCityID: TStringField;
    dbgDisc: TdxDBGridColumn;
    Label6: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    quCity: TADOQuery;
    quMainLuCityDesc: TStringField;
    Label8: TLabel;
    quMainFgTax: TStringField;
    Shape3: TShape;
    Label9: TLabel;
    DBText6: TDBText;
    Shape4: TShape;
    Label12: TLabel;
    DBText7: TDBText;
    quTotalPajak: TBCDField;
    quTotalGrandTotal: TBCDField;
    quItemItemID: TStringField;
    quItemItemName: TStringField;
    quItemProductID: TStringField;
    quItemGroupID: TStringField;
    quItemProductDesc: TStringField;
    quItemGroupDesc: TStringField;
    quItemUOMID: TStringField;
    quItemUOMID2: TStringField;
    quDetilJumlah: TIntegerField;
    quDetilUOMID: TStringField;
    dbgUOMID: TdxDBGridButtonColumn;
    quCalc: TADOQuery;
    bbCetak: TdxButton;
    Label14: TLabel;
    quMainTglKirim: TDateTimeField;
    bbPOList: TdxButton;
    RbCetak: TRadioGroup;
    RbPO: TRadioGroup;
    RbTanggal: TRadioGroup;
    dtDate: TdxDateEdit;
    quMainStatus: TIntegerField;
    dxButton1: TdxButton;
    quMainPOID: TStringField;
    quDetilPOID: TStringField;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxButton2: TdxButton;
    quMainProductID: TStringField;
    DBText8: TDBText;
    Label15: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBPajak: TdxDBImageEdit;
    quMainLProduct: TStringField;
    quDetildisc2: TBCDField;
    quDetildisc3: TBCDField;
    quDetildisc4: TBCDField;
    quDetildisc5: TBCDField;
    dbgDisc2: TdxDBGridColumn;
    dbgDisc3: TdxDBGridColumn;
    quDetilHarga: TBCDField;
    quMainFgCetak: TStringField;
    dxDBEdit3: TdxDBEdit;
    quMainLuAdaDO: TStringField;
    dbgTotalItem: TdxDBGridColumn;
    quDetilLTotalItem: TStringField;
    Shape5: TShape;
    dxDBEdit4: TdxDBEdit;
    Label16: TLabel;
    quMainDisc: TBCDField;
    quDetilDiscItem: TBCDField;
    dbgDiscItem: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dbgEnter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dbgPRIDButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quDetilUOMIDChange(Sender: TField);
    procedure dbgUOMIDButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure bbCetakClick(Sender: TObject);
    procedure bbPOListClick(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton2Click(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quDetilDiscChange(Sender: TField);
  private
    { Private declarations }
    Procedure UpDateTTLPO;
    Procedure CekStatusHeader;
    Procedure CekStatusDetil;
  public
    { Public declarations }
  end;

var
  fmARTrPurchaseOrder: TfmARTrPurchaseOrder;

implementation

uses ConMain, UnitGeneral, MyUnit, Search, StdLv3, StdLv1,
  ARQRRptPurchaseOrder, ARQRRptListPO, RptLv0, ARQRRptListPerPO, StdLv0,
  ARQRRptEstimasi;

{$R *.dfm}

procedure TfmARTrPurchaseOrder.CeKStatusHeader;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 POID,KonTransBrgID FROM ARTrKonTransBrgHD WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Delivery Order ['+quAct.FieldByName('KonTransBrgID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmARTrPurchaseOrder.CeKStatusDetil;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 POID,KonTransBrgID FROM ARTrKonTransBrgDT '
        +'WHERE POID='''+quMainPOID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Delivery Order ['+quAct.FieldByName('KonTransBrgID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmARTrPurchaseOrder.UpDateTTLPO;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Update ARTrPurchaseOrderHD SET TTLPO='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''' '
       +' WHERE POID='''+quMainPOID.AsString+'''');
    ExecSQL;
  End;
End;

procedure TfmARTrPurchaseOrder.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), POID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
end;

procedure TfmARTrPurchaseOrder.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
  dtDate.Date := Date;
  SettingDxGrid(dbg)
end;

procedure TfmARTrPurchaseOrder.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit4,quMain.State <> dsInsert);
//  SetReadOnly(dxDBDateEdit1,quMain.State <> dsInsert);
//  SetReadOnly(dxDBButtonEdit1,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit3,quMain.State <> dsInsert);
end;

procedure TfmARTrPurchaseOrder.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Pelanggan';
    SQLString := 'SELECT CustID as Kode_Pelanggan, CustName as Nama_Pelanggan'
                +' FROM ARMsCustomer ORDER BY CustID';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainCustID.AsString := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmARTrPurchaseOrder.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrPurchaseOrder.quMainBeforePost(DataSet: TDataSet);
var ST: string;
begin
  inherited;
{  if Trim(quMainPOID.AsString) = '' then
  begin
    MsgInfo('Nota PO tidak boleh kosong');
    quMainPOID.AsString;
    Abort;
  end;

  if TRIM(quMainLokasi.AsString) = '' then
  begin
    MsgInfo('Lokasi tidak boleh kosong');
    quMainLokasi.FocusControl;
    Abort;
  end;

  if TRIM(quMainCityID.AsString) = '' then
  begin
    MsgInfo('Kota tidak boleh kosong');
    quMainCityID.AsString;
    Abort;
  end;

  if TRIM(quMainLuCityDesc.AsString) = '' then
  begin
    MsgInfo('Kota belum terdaftar di Master Kota');
    quMainCityID.FocusControl;
    Abort;
  end;}

  if TRIM(quMainProductID.AsString) = '' then
  begin
    pesan('Data Product tidak boleh kosong');
    quMainProductID.FocusControl;
    Abort;
  end;
  if TRIM(quMainLProduct.AsString) = '' then
  begin
    pesan('Data Product tidak terdaftar dalam Master Product');
    quMainProductID.FocusControl;
    Abort;
  end;

  If Trim(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If Trim(quMainCustID.AsString)='' then
  Begin
    MsgInfo('Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  If Trim(quMainLuCustName.AsString)='' then
  Begin
    MsgInfo('Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if TRIM(quMainPRID.AsString)='' then quMainPRID.AsString := '-';
  if quMainPRID.AsString <> '-' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      add('SELECT K.PRID,K.Status FROM (SELECT PRID,1 as Status FROM ARTrPurchaseRequestHD UNION ALL '
         +'SELECT BPOID,2 FROM ARTrBlankPOHD) as K WHERE K.PRID='''+quMainPRID.AsString+''' ');
      Open;
      if IsEmpty then
      begin
        ShowMessage('Nota PR/BPO tidak terdaftar di Transaksi Customer Purchase Request atau Transaksi Customer Blank PO');
        quMainPRID.FocusControl;
        Abort;
      end;
    end;
    quMainStatus.AsInteger := quAct.FieldByName('Status').AsInteger;
  end;

  if FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime) > FormatDateTime('yyyyMMdd',quMainTglKirim.AsDateTime) then
  begin
    ShowMessage('Tgl kirim tidak boleh lebih kecil dari tgl PO');
    quMainTglKirim.AsDateTime := quMainTransdate.AsDateTime;
    quMainTglKirim.FocusControl;
    Abort;
  end;

  if quMain.State=dsInsert then
  Begin
    ST := 'SO/'+quMainProductID.AsString+FormatDateTime('/YY/MM/',quMainTransDate.AsDateTime);
    quMainPOID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPurchaseOrderHd', 'POID', ST, '0') + 1);
{    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT K.POID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,K.Status FROM ('
         +'SELECT POID,Transdate,1 as Status FROM ARTrPurchaseOrderHD UNION ALL '
         +'SELECT DIID,Transdate,2 FROM ARTrDeliveryIHD) as K WHERE K.POID='''+quMainPOID.AsString+''' ');
      Open;
      if not IsEmpty then
      begin
        if quAct.FieldByName('Status').AsInteger = 1 then
          MsgInfo('Nota PO sudah di pakai di tanggal '''+quAct.FieldByName('Tanggal').AsString+''' ')
        else
          MsgInfo('Nota PO sudah di pakai Transaksi Delivery Instruction di tanggal '''+quAct.FieldByName('Tanggal').AsString+''' ');
        quMainPOID.FocusControl;
        Abort;
      end;
    end;  }
  End;
  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPurchaseOrder.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrPurchaseOrder.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Date;
  quMainTglKirim.AsDateTime:=Date;
  quMainTransdate.FocusControl;
  quMainFgTax.AsString := 'T';
  quMainStatus.AsInteger := 0;
  quMainDisc.AsCurrency := 0;
  quMainFgCetak.AsString := 'T';
end;

procedure TfmARTrPurchaseOrder.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
//var sQuery : string;
begin
  inherited;
{  if quMainPRID.AsString <> '-' then
    sQuery := 'SELECT B.ItemName as Nama_Barang,A.Jumlah,B.UOMID as Satuan,A.Price,A.ItemID as Kode_Barang,A.Qty '
             +'FROM ARTrPurchaseRequestDT A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
             +'WHERE A.PRID='''+quMainPRID.AsString+''' ORDER BY A.ItemID'
  else
    sQuery := 'SELECT A.ItemName as Nama_Barang,B.PriceB,B.PriceK,A.ItemID as Kode_Barang,A.UOMID as Satuan FROM INMsItem A '
             +'INNER JOIN ARMsCustomerPrice B ON A.ItemID=B.ItemID '
             +'WHERE A.FgActive=''Y'' AND B.CustID='''+quMainCustID.AsString+''' ORDER BY A.ItemName';}

  with TfmSearch.Create(Self) do
  try
    Title := 'Master Barang';
    SQLString := 'SELECT ItemName as Nama_Barang,ProductDesc as Produk,GroupDesc as Kategori,ISNULL(A.UserPrice,0) as Harga,A.UOMID as Unit,A.ItemID as Kode_Barang '
                +'FROM INMsItem A INNER JOIN INMsProduct B ON A.ProductID=B.ProductID INNER JOIN INMsGroup C ON A.GroupID=C.GroupID '
                +'WHERE FgActive=''Y'' AND A.ProductID='''+quMainProductID.AsString+''' ORDER BY ItemName';
    if ShowModal = MrOK then
    begin
       if quDetil.State = dsBrowse then quDetil.Edit;
       quDetilItemID.AsString := Res[5];
       quDetilPrice.AsCurrency:= StrToCurr(Res[3]);
    end;
  finally
    free;
  end;
{  if quMainPRID.AsString <> '-' then
    sQuery := 'SELECT DISTINCT L.ItemName,K.ItemID FROM (SELECT B.PRID,A.ItemID,B.CustID FROM ARTrPurchaseRequestDT A '
             +'INNER JOIN ARTrPurchaseRequestHD B ON A.PRID=B.PRID UNION ALL SELECT B.DIID,A.ItemID,B.CustID FROM ARTrDeliveryIDt A '
             +'INNER JOIN ARTrDeliveryIHd B ON A.DIID=B.DIID) as K INNER JOIN INMsItem L ON K.ItemID=L.ItemID '
             +'WHERE K.CustID='''+quMainCustID.AsString+''' ORDER BY K.ItemID'
    sQuery := 'SELECT L.ItemName,P.JumBPO,P.Satuan,P.Price,P.JumDI-P.JumPO as Sisa,L.UOMID2 as SatK,P.ItemID FROM ('
             +'SELECT K.PRID,ISNULL(K.Jumlah,0) as JumBPO,K.UOMID as Satuan,K.Price,'
             +'ISNULL(CASE WHEN K.Status = 0 THEN K.Qty ELSE (SELECT ISNULL(SUM(P.Qty),0) FROM ARTrDeliveryIDt P '
             +'WHERE P.ItemID=K.ItemID AND P.BPOID=K.PRID AND P.DIID IN (SELECT POID FROM ARTrKonTransBrgHd)) END,0) as JumDI,'
             +'ISNULL(CASE WHEN K.Status = 0 THEN K.Qty ELSE (SELECT ISNULL(SUM(P.Qty),0) FROM ARTrPurchaseOrderDT P '
             +'WHERE P.ItemID=K.ItemID AND P.PRID=K.PRID) END,0) as JumPO,K.ItemID FROM ('
             +'SELECT PRID,ItemID,Jumlah,Qty,UOMID,Price,0 as Status FROM ARTrPurchaseRequestDT UNION ALL '
             +'SELECT BPOID,ItemID,Jumlah,Qty,UOMID,Price,1 FROM ARTrBlankPODT) as K ) as P '
             +'INNER JOIN INMsItem L ON P.ItemID=L.ItemID '
             +'WHERE P.PRID='''+quMainPRID.AsString+''' AND P.JumDI-P.JumPO <> 0 ORDER BY P.ItemID'
  else
    sQuery := 'SELECT ItemName as Nama_Barang,ItemID as Kode_Barang FROM INMsItem '
             +'WHERE FgActive<>''T'' ORDER BY ItemID';

  with TfmSearch.Create(Self) do
  try
    Title := 'Data Permintaan Barang';
    SQLString := sQuery;
    if ShowModal = MrOK then
    begin
       if quDetil.State = dsBrowse then quDetil.Edit;
         quDetilItemID.AsString := Res[1];
    end;
  finally
    free;
  end;}
end;

procedure TfmARTrPurchaseOrder.quDetilBeforePost(DataSet: TDataSet);
//var ST : string;
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLuItemName.Value)='' then
  begin
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilQty.AsString)='' then
  Begin
     MsgInfo('Jumlah barang tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  End;

  if quDetilQty.Value <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if TRIM(quDetilPrice.AsString)='' then
  Begin
     MsgInfo('Harga barang tidak boleh kosong');
     quDetilPrice.FocusControl;
     Abort;
  End;

  if quDetilPrice.AsCurrency = 0 then
  Begin
     MsgInfo('Harga barang tidak boleh nol!!!');
     quDetilPrice.FocusControl;
     Abort;
  End;

  if TRIM(quDetilDisc.AsString) = '' then quDetilDisc.AsInteger := 0;

  if TRIM(quDetilUOMID.AsString) = '' then
  begin
    ShowMessage('Kolom satuan tidak boleh kosong');
    quDetilUOMID.FocusControl;
    Abort;
  end;
//validasi satuan
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT ItemID,Konversi,UOMID,UOMID2 FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' '
       +'AND (UOMID='''+quDetilUOMID.AsString+''' OR UOMID2='''+quDetilUOMID.AsString+''' )');
    Open;
    if IsEmpty then
    begin
      quItem.Locate('ItemID',quDetilItemID.AsString,[]);
      ShowMessage('Satuan tidak terdaftar'+#13
                 +'Hint : Satuan yang diperbolehkan hanya '+quItem.FieldByName('UOMID').AsString+' dan '+quItem.FieldByName('UOMID2').asString);
      quDetilUOMID.FocusControl;
      Abort;
    end;
  end;
//validasi konversi barang
  if quDetilUOMID.AsString = quCalc.FieldByName('UOMID').AsString then
  begin
    if quDetilJumlah.AsInteger * quCalc.FieldByName('Konversi').AsInteger <> quDetilQty.AsInteger then
    begin
      ShowMessage('Terjadi kesalahan dalam prosedure input jumlah barang.'+#13
                 +'Silahkan ulangin sekali lagi.');
      quDetilJumlah.Clear; quDetilUOMID.Clear;
      quDetilJumlah.FocusControl;
      Abort;
    end;
  end else
  begin
    if quDetilJumlah.AsInteger <> quDetilQty.AsInteger then
    begin
      ShowMessage('Terjadi kesalahan dalam prosedure input jumlah barang.'+#13
                 +'Silahkan ulangin sekali lagi.');
      quDetilJumlah.Clear; quDetilUOMID.Clear;
      quDetilJumlah.FocusControl;
      Abort;
    end;
  end;
//validasi barang yang diambil dari PR apa DI
  if Trim(quMainPRID.AsString) <> '-' then
  begin
    if quMainStatus.AsInteger = 2 then
    begin
      //Cari Sisa dari Jumlah DI dipotong Jumlah PO yang sudah dibuat
      with quCalc,SQL do
      begin
        Close;Clear;
        Add('SELECT ISNULL(SUM(Qty),0) as Total FROM ARTrDeliveryIDt '
           +'WHERE ItemID='''+quDetilItemID.AsString+''' AND BPOID IN(''Non-BPO'','''+quMainPRID.AsString+''')');
        Open;
      end;
      if quDetilQty.AsInteger > quCalc.FieldByName('Total').AsInteger then
      begin
        ShowMessage('Jumlah lebih besar dari Jumlah DI.'+#13
                   +'Sisa yang diterbitkan pada DI sebanyak ['+quCalc.FieldByName('Total').AsString+']');
        quDetilUOMID.Clear;
        quDetilJumlah.FocusControl;
        Abort;
      end;
    end;
  end;
//validasi barang sudah ada dalam list atau belum
  if quDetil.State = dsInsert then
  begin
//    ST := quMainProductID.AsString;
//    quDetilPRID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPurchaseOrderDt', 'PRID', ST, '0') + 1);
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(*) FROM  ARTrPurchaseOrderDT WHERE POID=:POID AND ItemId=:ItemId AND Jumlah=:Jumlah ');
        with Parameters do
        begin
           ParamByName('POID').Value := quMainPOID.AsString;
           ParamByName('ItemId').Value  := quDetilItemID.AsString;
           ParamByName('Jumlah').Value  := quDetilJumlah.AsInteger;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Kode Barang sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
     end;
  end;

  if quMainStatus.AsInteger <> 2 then
  begin
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('SELECT A.UOMID,A.UOMID2,ISNULL(B.PriceB,0) as HargaB,ISNULL(B.PriceK,0) as HargaK '
         +'FROM INMsItem A INNER JOIN ARMsCustomerPrice B ON A.ItemID=B.ItemID '
         +'WHERE A.ItemID='''+quDetilItemID.AsString+''' AND B.CustID='''+quMainCustID.AsString+''' ');
      Open;
    end;
  end else
  begin
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('SELECT B.UOMID,B.Konversi,ISNULL(CASE WHEN A.UOMID=B.UOMID THEN A.Price/B.Konversi ELSE A.Price END,0) as HargaK,'
         +'ISNULL(CASE WHEN A.UOMID=B.UOMID THEN A.Price ELSE A.Price*B.Konversi END,0) as HargaB '
         +'FROM ARTrBlankPODT A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
         +'WHERE A.BPOID='''+quMainPRID.AsString+''' AND A.ItemID='''+quDetilItemID.AsString+''' ');
      Open;
    end;
  end;

{  if GroupUser <> 'admin' then
  begin
    if quDetilUOMID.AsString = quCalc.FieldByName('UOMID').AsString then
    begin
      if quDetilPrice.AsCurrency < quCalc.FieldByName('HargaB').AsCurrency then
      begin
        ShowMessage('Harga PO dibawah Harga Kontrak, coba konfirmasi dengan atasan anda');
        quDetilPrice.FocusControl;
        Abort;
      end;
    end else
    begin
      if quDetilPrice.AsCurrency < quCalc.FieldByName('HargaK').AsCurrency then
      begin
        ShowMessage('Harga PO dibawah Harga Kontrak, coba konfirmasi dengan atasan anda');
        quDetilPrice.FocusControl;
        Abort;
      end;
    end;
  end;}

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPurchaseOrder.quDetilNewRecord(DataSet: TDataSet);
var Disc1,Disc2,Disc3 : Currency;
begin
  inherited;
  quDetilQty.AsInteger:=1;
  quDetilJumlah.AsInteger := 1;
  quDetilPrice.AsCurrency := 0;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(Disc1,0) as Disc1,ISNULL(Disc2,0) as Disc2,ISNULL(Disc3,0) as Disc3 FROM ARMsCustomer WHERE CustID='''+quMainCustID.AsString+''' ');
    Open;
  end;
  Disc1 := quAct.FieldByName('Disc1').AsCurrency;
  Disc2 := quAct.FieldByName('Disc2').AsCurrency;
  Disc3 := quAct.FieldByName('Disc3').AsCurrency;
  quDetilDisc.AsCurrency := Disc1;
  quDetildisc2.AsCurrency := Disc2;
  quDetildisc3.AsCurrency := Disc3;
  quDetildisc4.AsCurrency := 0;
  quDetildisc5.AsCurrency := 0;
  quDetildiscItem.AsInteger := 0;
  quDetilItemID.FocusControl;
end;

procedure TfmARTrPurchaseOrder.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
{  SetReadOnly(dbgDisc,quDetil.State<>dsInsert);
  SetReadOnly(dbgQty,quDetil.State<>dsInsert);}
  SetReadOnly(dbgPRID,TRUE);
  SetReadOnly(dbgTotalItem,TRUE);
  SetReadOnly(dbgLuItemName,TRUE);
  SetReadOnly(dbgCTotal,TRUE);
{  if TRIM(GroupUser) = 'admin' then
    SetReadOnly(dbgPrice,quDetil.State<>dsInsert)
  else
    SetReadOnly(dbgPrice,TRUE);}
end;

procedure TfmARTrPurchaseOrder.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Customer Purchase Order';
     SQLString := 'SELECT POID as No_PO,Convert(Varchar(10),Transdate,103) as Tanggal ,A.CustID as Kode_Pelanggan, '
                 +'B.CustName as Nama_Pelanggan,A.Lokasi,ISNULL(A.TTLPO,0) as Total_PO,A.Note as Keterangan FROM ARTrPurchaseOrderHD A '
                 +'INNER JOIN ARMsCustomer B ON A.CustId=B.CustId WHERE '+FSQLWhere
                 +'ORDER BY POID';
     if ShowModal = MrOK then
     begin
       qumain.Locate('POID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmARTrPurchaseOrder.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTrPurchaseOrder.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrPurchaseOrder.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then
  begin
    ShowMessage('Data sudah kosong');
    Abort;
  end;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrPurchaseOrder.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrPurchaseOrder.quDetilCalcFields(DataSet: TDataSet);
var Disc1,Disc2,Disc3 : currency;
    hasil1,hasil2,Item : integer;
    TotalItem : string;
begin
  inherited;
  Disc1 := round(quDetilPrice.AsCurrency) * round(quDetilDisc.AsCurrency * 0.01);
  Disc2 := (round(quDetilPrice.AsCurrency) - Disc1) * round(quDetildisc2.AsCurrency * 0.01);
  Disc3 := (round(quDetilPrice.AsCurrency) - Disc1 - Disc2) * round(quDetildisc3.AsCurrency * 0.01);
  quDetilCTotal.Value := ((quDetilJumlah.AsInteger-qudetilDiscItem.AsInteger)*(round(quDetilPrice.AsCurrency)-Disc1-Disc2-Disc3));

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT A.UOMID,A.Konversi,A.UOMId2 FROM INMsItem A Where A.Itemid='''+quDetilItemID.AsString+''' ');
    Open;
  end;

  Item := qudetiljumlah.asInteger-qudetildiscitem.asinteger;

  if qudetilUOMID.AsString = quAct.fieldbyname('UOMID').asString then
  begin
    quDetilLTotalItem.asString := InttoStr(Item) + ' ' + quAct.fieldbyname('UOMID').asString
    end else
    begin
    hasil1 := Item div quAct.fieldbyname('Konversi').asInteger ;
    hasil2 := Item mod quAct.fieldbyname('Konversi').asInteger ;
    if hasil1<>0 then
        TotalItem := inttostr(hasil1) + ' ' + quAct.fieldbyname('UOMID').asString + ' ' + inttostr(hasil2) + ' ' + quAct.fieldbyname('UOMID2').asString
        else
        TotalItem := InttoStr(Item) + ' ' + quAct.fieldbyname('UOMID2').asString ;
    quDetilLTotalItem.AsString := TotalItem 
    end;


    //quDetilLUOMID.Value := quAct.FieldByName('UOMID').AsString;
end;

procedure TfmARTrPurchaseOrder.dbgPRIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Nota Purchase Request';
     SQLString := 'SELECT DISTINCT A.PRID as Nota_PR,B.ItemName as Nama_Barang,A.Qty '
                 +'FROM ARTrPurchaseRequestDT A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                 +'INNER JOIN ARTrPurchaseRequestHD C ON A.PRID=C.PRID WHERE A.ItemID='''+quDetilItemID.AsString+''' '
                 +'AND C.CustID='''+quMainCustID.AsString+''' AND A.PRID NOT IN (SELECT PRID FROM ARTrPurchaseOrderDT '
                 +'WHERE ItemID='''+quDetilItemID.AsString+''' )';
     if ShowModal = MrOK then
     begin
       if quDetil.State = dsBrowse then quDetil.Edit;
       quDetilPRID.AsString    := Res[0];
       quDetilQty.AsInteger    := StrToInt(Res[2]);
     end;
  finally
     free;
  end;
end;

procedure TfmARTrPurchaseOrder.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrPurchaseOrder.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpDateTTLPO;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrPurchaseOrderDt SET Harga='''+FormatCurr('0.0000',quDetilCTotal.AsCurrency)+''' '
       +'WHERE POID='''+quMainPOID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND Jumlah='''+IntToStr(quDetilJumlah.AsInteger)+''' ');
    ExecSQL;
  end;
  quDetil.Append;
end;

procedure TfmARTrPurchaseOrder.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpDateTTLPO;
end;

procedure TfmARTrPurchaseOrder.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Kota';
    SQLString := 'SELECT CityID,CityDesc FROM ARMsCity ORDER BY CityID';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainCityID.AsString := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmARTrPurchaseOrder.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Purchase Request';
    SQLString := 'SELECT K.PRID as Nota,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal_Nota FROM ('
                +'SELECT PRID,Transdate,CustID,'''' as Lokasi FROM ARTrPurchaseRequestHD) as K '
                +'WHERE K.CustID='''+quMainCustID.AsString+''' '
                +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime)+''' '
                +'ORDER BY K.PRID';
{    SQLString := 'SELECT K.PRID as Nota,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal_Nota FROM ('
                +'SELECT PRID,Transdate,CustID,'''' as Lokasi FROM ARTrPurchaseRequestHD UNION ALL '
                +'SELECT BPOID,Transdate,CustID,Lokasi FROM ARTrBlankPOHD) as K '
                +'WHERE K.CustID='''+quMainCustID.AsString+''' '
                +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime)+''' '
                +'ORDER BY K.PRID';}
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainPRID.AsString := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmARTrPurchaseOrder.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (quMain.IsEmpty) or  (quMain.State <> dsBrowse ) then Abort;
  CekStatusHeader;
end;

procedure TfmARTrPurchaseOrder.quDetilUOMIDChange(Sender: TField);
var Jum : Integer;
   Harga : currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT A.UOMID2,A.Konversi,ISNULL(A.UserPrice,0) as Harga FROM INMsItem A '
       +'WHERE A.ItemID='''+quDetilItemID.AsString+''' ');
{    Add('SELECT UOMID2,Konversi FROM INMsItem '
       +'WHERE ItemID='''+quDetilItemID.AsString+''' ');}
    Open;
  end;
  Harga := quAct.FieldByName('Harga').AsCurrency;
  if quDetilUOMID.AsString = quAct.FieldByName('UOMID2').AsString then
  begin
    Jum := quDetilJumlah.AsInteger;
    quDetilPrice.AsCurrency := Harga;
  end else
  begin
    Jum := quDetilJumlah.AsInteger * quAct.FieldByName('Konversi').AsInteger;
    quDetilPrice.AsCurrency := Harga * quAct.FieldByName('Konversi').AsInteger;
  end;

{  if quMainStatus.AsInteger <> 2 then
  begin
    //ambil harga dari master barang
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('SELECT UOMID2,ISNULL(UserPrice,0) as HargaB,ISNULL(DealerPrice,0)as HargaK FROM INMsItem '
         +'WHERE ItemID='''+quDetilItemID.AsString+''' ');
      Open;
    end;
  end else
  begin
    //ambil harga dari BPO
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('SELECT B.UOMID2,B.Konversi,ISNULL(CASE WHEN A.UOMID=B.UOMID THEN A.Price/B.Konversi ELSE A.Price END,0) as HargaK,'
         +'ISNULL(CASE WHEN A.UOMID=B.UOMID THEN A.Price ELSE A.Price*B.Konversi END,0) as HargaB '
         +'FROM ARTrBlankPODT A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
         +'WHERE A.BPOID='''+quMainPRID.AsString+''' AND A.ItemID='''+quDetilItemID.AsString+''' ');
      Open;
    end;
  end;
  if quDetilUOMID.AsString = quCalc.FieldByName('UOMID2').AsString then
    Harga := quCalc.FieldByName('HargaK').AsCurrency
  else
    Harga := quCalc.FieldByName('HargaB').AsCurrency;}

  quDetilQty.AsInteger := Jum;
end;

procedure TfmARTrPurchaseOrder.dbgUOMIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Satuan';
       SQLString := 'SELECT DISTINCT K.UOMID as Satuan FROM (SELECT ItemID,UOMID FROM INMsItem UNION ALL '
                   +'SELECT ItemID,UOMID2 FROM INMsItem) as K '
                   +'WHERE K.ItemID='''+quDetilItemID.AsString+''' '
                   +'ORDER BY K.UOMID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilUOMID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPurchaseOrder.bbCetakClick(Sender: TObject);
var Sisa,Limit : Currency;
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  if (quMain.IsEmpty) or (quDetil.IsEmpty) then Abort;
  if quMainFgCetak.AsString = 'T' then
  begin
    if GroupUser <>'admin' then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('SELECT SUM(CASE WHEN CONVERT(VARCHAR(8),'
           +'DATEADD(DAY,B.Term,K.Transdate),112) >= '''+FormatDateTime('yyyyMMdd',dxDBDateEdit1.Date)+''' THEN 0 ELSE 1 END) as Flag '
           +'FROM ARTrKonInvPelHd K INNER JOIN ARMsCustomer B ON K.CustID=B.CustID '
           +'WHERE K.CustID = '''+quMainCustID.AsString+''' AND ISNULL(K.TTLKj,0)-ISNULL((SELECT ISNULL(SUM(ValuePayment),0) '
           +'FROM ARTrKonPiutangDt P INNER JOIN ARTrKonPiutangHd Q ON P.KonPiutangId=Q.KonPiutangId '
           +'WHERE P.KonInvPelID=K.KonInvPelID),0) <>0 AND ISNULL(K.TTLKj,0) <> 0');
        Open;
      end;
      if quAct.FieldByName('Flag').AsInteger <> 0 then
      begin
        ShowMessage('Tidak Bisa Cetak.'+#13
                   +'Pelanggan ini mempunyai Tagihan yang sudah jatuh tempo tapi belum lunas');
        quMainCustID.FocusControl;
        Abort;
      end;

      with quAct,SQL do
      begin
        Close;Clear;
        Add('SELECT SUM(K.Total-K.Bayar) as Sisa,ISNULL(L.LimitPiutang,0) as Limit FROM (SELECT A.CustID,ISNULL(A.TTLKj,0) as Total,'
           +'ISNULL((SELECT SUM(C.ValuePayment) FROM ARTrKonPiutangHd B INNER JOIN ARTrKonPiutangDt C ON B.KonPiutangID=C.KonPiutangID '
           +'WHERE B.CustID=A.CustID AND A.CurrID=A.CurrID AND C.KonInvPelID=A.KonInvPelID),0) as Bayar FROM ARTrKonInvPelHd A) as K '
           +'INNER JOIN ARMsCustomer L ON K.CustID=L.CustID WHERE K.CustID='''+quMainCustID.AsString+''' GROUP BY L.LimitPiutang');
        Open;
      end;
      Limit := quAct.FieldByName('Limit').AsCurrency;
      Sisa := quAct.FieldByName('Sisa').AsCurrency;
      if  Limit + quTotalGrandTotal.AsCurrency > Limit then
      begin
        ShowMessage('Tidak Bisa Cetak.'+#13
                   +'Pelanggan ini sudah melebihi Limit Piutang');
        quMainCustID.FocusControl;
        Abort;
      end;
    end;
  end;

  Begin
     with TfmARQRRptPurchaseOrder.Create(Self) do
     try
       BndDetail.Height := 0;
       qrlTitle.Caption := 'SALES ORDER';
       if quMainNote.AsString = '' then qlbNote.Caption := '' else
         qlbNote.Caption := 'Keterangan : '+quMainNote.AsString;
       QRLabel40.Enabled := False; QRLabel41.Enabled := False; QRLabel42.Enabled := False; QRLabel43.Enabled := False;
       QRLabel44.Enabled := False; QRLabel45.Enabled := False; QRLabel46.Enabled := False; QRLabel47.Enabled := False;
       QRLabel5.Enabled := False; QRLabel11.Enabled := False; QRDBText18.Enabled := False;
       QRDBText19.Enabled := False; QRDBText20.Enabled := False; QRDBText21.Enabled := False; QRDBText22.Enabled := False;
       QRLabel39.Enabled := False; qlbStock.Enabled := TRue; BndTitle.Height := 132; QRDBText15.Enabled := True;
       QRShape3.Top := 111; QRLabel34.Top := 112; QRLabel35.Top := 112; QRLabel36.Top := 112; QRLabel37.Top := 112;
       QRLabel38.Top := 112; QRLabel39.Top := 112; QRLabel37.Enabled := True; QRLabel39.Enabled := False;
       QRLabel38.Left := 450; QRDBText10.Left := 390; QRDBText11.Left := 473; qlbstock.Enabled := False;
       QRLabel3.Enabled := False; QRLabel8.Enabled := False; QRLabel4.Top := 76; QRLabel9.Top := 76;
       QRDBText4.Top := 76; QRDBText9.enabled := True; qlbTotal.enabled := False; QRDBText6.Left := 104;
       QRDBText6.Top := 92; QRLabel10.Top := 92; QRLabel10.Left := 16; QRLabel12.Left := 96; QRLabel12.top := 92;
       QRDBText23.Enabled := True; QRLabel14.Enabled := True; QRLabel28.Enabled := True; QRLabel24.Enabled := True;
       QRLabel25.Enabled := True; QRLabel27.Enabled := True; QRLabel26.Enabled := True; QRLabel49.Enabled := True;
       QrLabel31.enabled := True; QRDBText24.enabled := True ; QrLabel30.enabled := True;
       QRDBText24.Top := 20 ; QrLabel31.Top := 20; QRDBText16.Top := 37 ; QrLabel32.Top := 37;
       QRDBText17.Top := 54 ; QrLabel33.Top := 54; QrLabel50.enabled := True; QrLabel50.Top := 20;
       QRLabel51.enabled := True; QRLabel51.Left := 387; QRDBText10.enabled := False;
       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT K.POID,K.Tanggal,K.Lokasi,K.TglKirim,K.CustName,K.SubTotal,K.PPN,K.Disc, '
            +'CASE WHEN K.FgTax=''Y'' THEN K.SubTotal+K.PPN ELSE K.SubTotal END as GrandTotal FROM('
            +'SELECT A.POID,CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.Lokasi,'
            +'CONVERT(VARCHAR(10),A.TglKirim,103) as TglKirim,B.CustName,B.Address,B.Phone,B.Fax,''-'' as UP,'
            +'ISNULL(A.TTLPO,0) as SubTotal,A.FgTax,A.Disc, '
            +'ISNULL(CASE WHEN FgTax=''Y'' THEN A.TTLPO*0.1 ELSE 0 END,0) as PPN '
            +'FROM ARTrPurchaseOrderHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID) as K '
            +'WHERE K.POID='''+quMainPOID.AsString+''' ');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add('SELECT A.ItemId,A.DiscItem,B.ItemName,ISNULL(A.Qty-A.DiscItem,0) as Qty, '''' as Note,ISNULL(A.Price,0) as Price, '
            +'ISNULL(A.Disc,0) as D1,ISNULL(A.Disc2,0) as D2,ISNULL(A.Disc3,0) as D3,ISNULL(A.Disc4,0) as D4,'
            +'B.UOMID as SatB,B.UOMID2 as SatK,B.Konversi,A.UOMID,ISNULL(A.Jumlah,0) as Jumlah,ISNULL(A.Harga,0) as Harga ,A.Harga as Total '
            +'FROM ARtrPurchaseOrderDt A INNER JOIN INMsItem B ON A.Itemid=B.Itemid '
            +'WHERE A.POID=:POID ORDER BY A.NumAll');
         Parameters.ParamByName('POID').Value := ftString;
         Open;
       End;

       MyReport.PreviewModal;

     finally
        free;
     end;
  End;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrPurchaseOrderHd SET FgCetak=''Y'' WHERE POID='''+quMainPOID.AsString+''' ');
    ExecSQL;
  end;
end;

procedure TfmARTrPurchaseOrder.bbPOListClick(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  Begin
     if RbPO.ItemIndex = 2 then
     begin
       with TfmARQRRptListPO.Create(Self) do
       try
         qrlTitle.Caption := 'Daftar Permintaan Barang';
         qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dtDate.Date);
         TglSampai := dtDate.Date;
         with qu001,SQL do
         Begin
           Close;Clear;
           add('SELECT DISTINCT B.ItemID,C.ItemName,ISNULL(SUM(CASE WHEN B.UOMID=C.UOMID THEN B.Qty ELSE B.Jumlah END),0) as Jumlah,'
              +'C.UOMID2,C.Konversi,C.UOMID FROM ARTrPurchaseOrderHd A INNER JOIN ARTrPurchaseOrderDt B ON A.POID=B.POID '
              +'INNER JOIN INMsItem C ON B.ItemID=C.ItemID ');
           if RbTanggal.ItemIndex = 0 then
             add('WHERE CONVERT(VARCHAR(8),Transdate,112)= '''+FormatDateTime('yyyyMMdd',dtDate.Date)+''' ')
           else
             add('WHERE CONVERT(VARCHAR(8),TglKirim,112)= '''+FormatDateTime('yyyyMMdd',dtDate.Date)+''' ');
           Add('GROUP BY B.ItemID,C.ItemName,C.UOMID,C.UOMID2,C.Konversi ORDER BY B.ItemID');
           Open;
           if IsEmpty then
           begin
             ShowMessage('Tidak ada data');
             Abort;
           end;
         End;

         if RbCetak.ItemIndex = 0 then
           MyReport.PreviewModal
         else
           MyReport.Print;
       finally
          free;
       end;
     end else
     begin
       with TfmARQRRptListPerPO.Create(Self) do
       try
         qrlTitle.Caption := 'Daftar Permintaan Barang Per PO';
         qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dtDate.Date);
         TglSampai := dtDate.Date;
         with qu001,SQL do
         Begin
           Close;Clear;
           add('SELECT DISTINCT POID,CustID,Lokasi FROM ARTrPurchaseOrderHD ');
           if RbTanggal.ItemIndex = 0 then
             add('WHERE CONVERT(VARCHAR(8),Transdate,112)= '''+FormatDateTime('yyyyMMdd',dtDate.Date)+''' ')
           else
             add('WHERE CONVERT(VARCHAR(8),TglKirim,112)= '''+FormatDateTime('yyyyMMdd',dtDate.Date)+''' ');
           if RbPO.ItemIndex = 0 then
             add('AND POID='''+quMainPOID.AsString+''' ');
           Add('ORDER BY POID');
           Open;
           if IsEmpty then
           begin
             ShowMessage('Tidak ada data');
             Abort;
           end;
         End;

         with qu002,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT B.ItemID,C.ItemName,ISNULL(SUM(CASE WHEN B.UOMID=C.UOMID THEN B.Qty ELSE B.Jumlah END),0) as Jumlah,'
              +'C.UOMID2,C.Konversi,C.UOMID FROM ARTrPurchaseOrderHd A INNER JOIN ARTrPurchaseOrderDt B ON A.POID=B.POID '
              +'INNER JOIN INMsItem C ON B.ItemID=C.ItemID WHERE A.POID=:POID AND ');
           if RbTanggal.ItemIndex = 0 then
             add('CONVERT(VARCHAR(8),Transdate,112)= '''+FormatDateTime('yyyyMMdd',dtDate.Date)+''' ')
           else
             add('CONVERT(VARCHAR(8),TglKirim,112)= '''+FormatDateTime('yyyyMMdd',dtDate.Date)+''' ');
           Add('GROUP BY B.ItemID,C.ItemName,C.UOMID,C.UOMID2,C.Konversi ORDER BY B.ItemID');
           Parameters.ParamByName('POID').Value := ftString;
           Open;
         end;

         if RbCetak.ItemIndex = 0 then
           MyReport.PreviewModal
         else
           MyReport.Print;
       finally
          free;
       end;
     end;
  End;
end;

procedure TfmARTrPurchaseOrder.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatusHeader;
end;

procedure TfmARTrPurchaseOrder.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatusDetil;
end;

procedure TfmARTrPurchaseOrder.dxButton1Click(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  if (quMain.IsEmpty) or (quDetil.IsEmpty) then Abort;
  Begin
     with TfmARQRRptEstimasi.Create(Self) do
     try
       qrlTitle.Caption := 'Estimasi Belanja Barang';
       if quMainNote.AsString = '' then qlbNote.Caption := '' else
         qlbNote.Caption := 'Keterangan : '+quMainNote.AsString;
       QRLabel20.Enabled := False;
       Sampai := dxDBDateEdit2.Date;
       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT K.POID,K.Tanggal,K.Lokasi,K.TglKirim,K.CustName,K.SubTotal,K.PPN,'
            +'CASE WHEN K.FgTax=''Y'' THEN K.SubTotal+K.PPN ELSE K.SubTotal END as GrandTotal FROM('
            +'SELECT A.POID,CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.Lokasi,'
            +'CONVERT(VARCHAR(10),A.TglKirim,103) as TglKirim,B.CustName,'
            +'ISNULL(A.TTLPO,0) as SubTotal,A.FgTax,'
            +'ISNULL(CASE WHEN FgTax=''Y'' THEN A.TTLPO*0.1 ELSE 0 END,0) as PPN '
            +'FROM ARTrPurchaseOrderHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID) as K '
            +'WHERE K.POID='''+quMainPOID.AsString+''' ');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add('SELECT A.ItemID,B.ItemName,A.Jumlah,A.Price,A.UOMID,ISNULL(A.Jumlah*A.Price,0) as Total,B.Konversi,'
            +'B.UOMID as SatB,B.UOMID2 as SatK,A.Qty FROM ARTrPurchaseOrderDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
            +'WHERE A.POID=:POID ORDER BY A.ItemID');
         Parameters.ParamByName('POID').Value := ftString;
         Open;
       End;

       MyReport.PreviewModal;

     finally
        free;
     end;
  End;
end;

procedure TfmARTrPurchaseOrder.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Lokasi';
    SQLString := 'SELECT Lokasi FROM ARMsLokasi ORDER BY Lokasi';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainLokasi.AsString := Res[0];
    end;
  finally
    free;
  end;

end;

procedure TfmARTrPurchaseOrder.dxButton2Click(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Barang';
         SQLString := 'SELECT B.ItemName as Nama_Barang,A.Jumlah,A.UOMID as Satuan,A.Price as Harga,'
                     +'A.ItemID as Kode_Barang FROM ARTrPurchaseOrderDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                     +'WHERE A.POID='''+quMainPOID.AsString+''' ORDER BY B.ItemName ';
         if ShowModal = MrOk then
         begin
            quDetil.Locate('ItemID',Res[4],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmARTrPurchaseOrder.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatusHeader;
end;

procedure TfmARTrPurchaseOrder.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Produk';
         SQLString := 'SELECT ProductDesc as Nama_Produk,ProductID as Kode_Produk FROM INMsProduct ORDER BY PRoductID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainProductID.Value:= res[1];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmARTrPurchaseOrder.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ProductDesc FROM INMsProduct WHERE ProductID='''+quMainProductID.AsString+''' ');
    Open;
  end;
  quMainLProduct.AsString := quAct.FieldByName('ProductDesc').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT KonTransBrgID FROM ARTrKonTransBrgHD WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
  end;
  if quact.recordcount <> 0 then
  quMainLuAdaDO.AsString := quAct.FieldByName('KonTransBrgId').AsString
  else
  quMainLuAdaDO.AsString := 'Belum Ada DO'
end;

procedure TfmARTrPurchaseOrder.quDetilDiscChange(Sender: TField);
begin
  inherited;
  if quDetilDisc.AsCurrency = 100 then
  begin
    quDetildisc2.AsCurrency := 0;
    quDetildisc3.AsCurrency := 0;
    quDetildisc4.AsCurrency := 0;
    quDetildisc5.AsCurrency := 0;
  end;
end;

end.
