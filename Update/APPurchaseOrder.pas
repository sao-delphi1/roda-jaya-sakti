unit APPurchaseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls, dxDBTLCl, dxGrClms, DateUtils;

type
  TfmAPPurchaseOrder = class(TfmStdLv4)
    quSup: TADOQuery;
    quItem: TADOQuery;
    dbgListPOID: TdxDBGridMaskColumn;
    dbgListPODate: TdxDBGridDateColumn;
    dbgListSuppId: TdxDBGridMaskColumn;
    dbgListLSuppname: TdxDBGridLookupColumn;
    quItemItemID: TStringField;
    quItemItemName: TStringField;
    quItemUpdDate: TDateTimeField;
    quItemUpdUser: TStringField;
    quWarehouse: TADOQuery;
    quWarehouseWarehouseID: TStringField;
    quWarehouseWarehouseName: TStringField;
    quSupSuppID: TStringField;
    quSupSuppName: TStringField;
    quSupAddress: TStringField;
    quSupCity: TStringField;
    quSupContactPerson: TStringField;
    quSupPhone: TStringField;
    quSupFax: TStringField;
    quSupEmail: TStringField;
    quSupNote: TStringField;
    quSupUpdDate: TDateTimeField;
    quSupUpdUser: TStringField;
    quMainPurchaseID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSuppID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainCurrID: TStringField;
    quMainLuSupplier: TStringField;
    quDetilPurchaseID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilWarehouseID: TStringField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLuItemName: TStringField;
    quDetilCTotal: TFloatField;
    quAct1: TADOQuery;
    quDetilLWareHouse: TStringField;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    Label12: TLabel;
    quDetilSuppId: TStringField;
    quMainTTLPb: TBCDField;
    quMainRate: TBCDField;
    Label14: TLabel;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNPurchaseID: TStringField;
    quSNItemID: TStringField;
    quSNSuppId: TStringField;
    quSNWarehouseID: TStringField;
    quSNPrice: TBCDField;
    quSNSNID: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    Label7: TLabel;
    DBText5: TDBText;
    Shape3: TShape;
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    bbCancel: TdxButton;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    DBText1: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    dbg: TdxDBGrid;
    dbgKdItem: TdxDBGridButtonColumn;
    dbgNmItem: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgLokasi: TdxDBGridButtonColumn;
    dbgHarga: TdxDBGridColumn;
    dbgTotal: TdxDBGridColumn;
    dbgSerialNumber: TdxDBGrid;
    dbgSerialNumberSNID: TdxDBGridColumn;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    DBText6: TDBText;
    dxButton3: TdxButton;
    Label6: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    DBText7: TDBText;
    quMainJatuhTempo: TIntegerField;
    quMainTglJthTempo: TStringField;
    quSNFgJual: TStringField;
    quDetilDisc: TFloatField;
    dbgDisc: TdxDBGridColumn;
    DBText8: TDBText;
    Label9: TLabel;
    Shape4: TShape;
    Label15: TLabel;
    Shape5: TShape;
    Label16: TLabel;
    DBText10: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    quMainFgTax: TStringField;
    quMainPPN: TBCDField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    bbPembayaran: TdxButton;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    txtSupplier: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBPajak: TdxDBImageEdit;
    bbSave: TdxButton;
    quSNFgSN: TStringField;
    dxDBEdit5: TdxDBEdit;
    Label21: TLabel;
    Shape6: TShape;
    Label22: TLabel;
    Label23: TLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    quMainDisc: TBCDField;
    quMainDiscCash: TBCDField;
    quMainStPb: TBCDField;
    quMainDiscAmount: TBCDField;
    quMainDiscCashType: TWordField;
    quMainDiscCashAmount: TBCDField;
    quMainFgPajak: TStringField;
    quMainPOID: TStringField;
    quMainFPBID: TStringField;
    quMainSalesID: TStringField;
    quMainFgLocal: TStringField;
    quMainBAID: TStringField;
    quMainRekeningD: TStringField;
    quMainRekeningP: TStringField;
    quMainRekeningU: TStringField;
    quMainRekeningK: TStringField;
    quMainTanggal: TDateTimeField;
    quMainRekeningJ: TStringField;
    quMainPPH: TBCDField;
    quDetilFgPPH42: TStringField;
    dbgColumn8: TdxDBGridImageColumn;
    quMainDiscType: TStringField;
    quTotalPurchaseID: TStringField;
    quTotalSubTotal: TBCDField;
    quTotalPajak: TBCDField;
    quTotalTotal: TBCDField;
    quTotalGT: TBCDField;
    quTotalPPH42: TBCDField;
    quTotalPPH21: TBCDField;
    quTotalPPH23: TBCDField;
    DBText9: TDBText;
    DBText11: TDBText;
    Shape7: TShape;
    Label25: TLabel;
    DBText12: TDBText;
    Label29: TLabel;
    Shape8: TShape;
    Label30: TLabel;
    DBText13: TDBText;
    Label31: TLabel;
    Shape9: TShape;
    Label32: TLabel;
    DBText14: TDBText;
    Label33: TLabel;
    Shape10: TShape;
    Label34: TLabel;
    DBText15: TDBText;
    Label35: TLabel;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    quTotalSubTotalU: TBCDField;
    Label36: TLabel;
    dxDBEdit6: TdxDBEdit;
    quMainLstatus: TStringField;
    quMainSubTotalU: TBCDField;
    quMainFgOto: TStringField;
    quMainOtoby: TStringField;
    Label37: TLabel;
    quMainFGpph21: TStringField;
    quMainFGpph23: TStringField;
    dxDBImageEdit2: TdxDBImageEdit;
    dxDBImageEdit3: TdxDBImageEdit;
    quDetilFgPPH21: TStringField;
    quDetilFgPPH23: TStringField;
    dbgColumn10: TdxDBGridImageColumn;
    dbgColumn9: TdxDBGridImageColumn;
    dxDBImageEdit4: TdxDBImageEdit;
    Label39: TLabel;
    quTotalDisc: TBCDField;
    quMainpph21: TBCDField;
    quMainpph23: TBCDField;
    quMainpph42: TBCDField;
    Shape11: TShape;
    Label40: TLabel;
    Label41: TLabel;
    dxDBEdit7: TdxDBEdit;
    quDetilFgPPN: TStringField;
    dbgColumn11: TdxDBGridImageColumn;
    quMaintglFPS: TDateTimeField;
    quMainFgPPh15: TStringField;
    quMainpph15: TBCDField;
    Shape12: TShape;
    Label42: TLabel;
    DBText16: TDBText;
    Label43: TLabel;
    dxDBImageEdit5: TdxDBImageEdit;
    quTotalPPH15: TBCDField;
    quMainSiteID: TStringField;
    Label44: TLabel;
    DBText17: TDBText;
    quMainLSites: TStringField;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Panel1: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label24: TLabel;
    Label38: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    dxDBButtonEdit12: TdxDBButtonEdit;
    dxDBButtonEdit13: TdxDBButtonEdit;
    quCetak: TADOQuery;
    DBText18: TDBText;
    quTotalPPH26: TBCDField;
    Shape13: TShape;
    Label45: TLabel;
    DBText19: TDBText;
    Label46: TLabel;
    dxDBImageEdit6: TdxDBImageEdit;
    quMainFgPPH26: TStringField;
    quMainPPH26: TBCDField;
    Label47: TLabel;
    DBText27: TDBText;
    dxDBButtonEdit11: TdxDBButtonEdit;
    Label48: TLabel;
    DBText40: TDBText;
    dxDBButtonEdit17: TdxDBButtonEdit;
    Label49: TLabel;
    DBText41: TDBText;
    dxDBButtonEdit18: TdxDBButtonEdit;
    Label50: TLabel;
    DBText42: TDBText;
    dxDBButtonEdit19: TdxDBButtonEdit;
    quMainLRekPemb: TStringField;
    quMainLRekPPN: TStringField;
    quMainLRekHutDagang: TStringField;
    quMainLAPDisc: TStringField;

    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dbgKdItemButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dbgLokasiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure bbPembayaranClick(Sender: TObject);
    procedure txtSupplierButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    Procedure CekStatus;
    Procedure UpdateTTlH;
    Procedure CekRetur;
    Procedure CekSNHeader;
    Procedure CekSNDetil;
    Procedure CekSN;
    Procedure CekNota;
  public
    { Public declarations }
    StatusCurr,StForm : String;
    tglsbled : TDateTime ;
    HargaSblm : Currency;
  end;

var
  fmAPPurchaseOrder: TfmAPPurchaseOrder;

implementation

uses StdLv2, StdLv1, StdLv3, StdLv0, Search, UnitGeneral, ConMain, MyUnit, Allitem, RptGLTrKMKK,
  APMsSupplier, APRptFPP;

{$R *.dfm}

Procedure TfmAPPurchaseOrder.CekSNHeader;
Begin //Cek ada data atau tidak, kalau ada hapus manual dulu
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN FgJual=''Y'' THEN 1 ELSE 0 END),0) as JmlPakai '
       +'FROM APTrPurchaseDtSN WHERE PurchaseID='''+quMainPurchaseID.AsString+''' ');
    Open;
    if quAct.FieldByName('JmlPakai').AsInteger <> 0 then
    begin
       ShowMessage('Ada data SN yang sedang dipakai di transaksi lain. Tidak bisa hapus data');
       Abort;
    end;
  end;
End;

Procedure TfmAPPurchaseOrder.CekSNDetil;
Begin //Cek ada data atau tidak, kalau ada hapus manual dulu
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN FgJual=''Y'' THEN 1 ELSE 0 END),0) as JmlPakai '
       +'FROM APTrPurchaseDtSN WHERE PurchaseID='''+quMainPurchaseID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if quAct.FieldByName('JmlPakai').AsInteger <> 0 then
    begin
       ShowMessage('Ada data SN yang sedang dipakai di transaksi lain. Tidak bisa hapus data');
       Abort;
    end;
  end;
End;

Procedure TfmAPPurchaseOrder.CekSN;
Begin //cek apakah sudah dipakai di Penjualan kalo sudah ada tidak bisa di utak atik
  with quAct, SQL do
  begin
     Close;Clear;
     Add('SELECT SNID,SaleID FROM ArTrPenjualanSN WHERE ItemID='''+quDetilItemID.AsString+''' AND SNID='''+quSNSNID.AsString+''' ');
     Open;
     if not IsEmpty then
     begin
        ShowMessage('Data SN Sudah di pakai di Transaksi Penjualan dengan No Nota ['+quAct.Fieldbyname('SaleID').AsString +'], tidak bisa Delete lagi');
        Abort;
     end;
  end;
End;

Procedure TfmAPPurchaseOrder.CekNota;
Begin //cek apakah sudah dipakai di Penjualan kalo sudah ada tidak bisa di utak atik
  with quAct, SQL do
  begin
     Close;Clear;
     Add('SELECT SaleID,PurchaseID FROM ARTrPenjualanCost WHERE ItemID='''+quDetilItemID.AsString+''' AND PurchaseID='''+quMainPurchaseID.AsString+''' ');
     Open;
     if not IsEmpty then
     begin
        ShowMessage('Data Sudah di pakai di Transaksi Penjualan dengan No Nota ['+quAct.Fieldbyname('SaleID').AsString +'], tidak bisa Delete lagi');
        Abort;
     end;
  end;
End;

Procedure TfmAPPurchaseOrder.CekStatus;
Begin //cek apakah sudah ada pembayaran kalo sudah ada tidak bisa di utak atik
   with quAct, SQL do
   begin
      Close; Clear;
      Add(' SELECT A.PaymentId FROM APTrPaymentDt A INNER JOIN APTrPaymentHd B ON A.PaymentId=B.PaymentId'+
          ' WHERE A.PurchaseID='''+quMainPurchaseID.AsString+''' And B.SuppId='''+ quMainSuppID.AsString +'''');
      Open;
      if not IsEmpty then
      begin
         MsgInfo('Sudah ada pembayaran ['+quAct.Fieldbyname('PaymentId').AsString +'], tidak bisa edit/Delete lagi');
         Abort;
      end;
   end;
End;

Procedure TfmAPPurchaseOrder.CekRetur;
Begin //cek apakah sudah ada Retur kalo sudah ada tidak bisa di utak atik
   with quAct, SQL do
   begin
      Close; Clear;
      Add(' SELECT top 1 A.ReturnId FROM APTrReturnDt A INNER JOIN APTrReturnHd B ON A.ReturnId=B.ReturnId'
         +' WHERE PurchaseID='''+quMainPurchaseID.Value+''' And B.SuppId='''+quMainSuppID.Value+'''');
      Open;
      if not IsEmpty then
      begin
         MsgInfo('Sudah ada Retur ['+quAct.fieldbyname('ReturnId').AsString+'], tidak bisa edit/Delete lagi');
         Abort;
      end;
   end;
End;

Procedure TfmAPPurchaseOrder.UpdateTTlH;
Begin
 With quAct,sql do
 Begin
   Close;Clear;
   add(' Update APTrPurchaseHd SET TTLPb='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''',Stpb='''+Formatcurr('0.00',quTotalSubTotal.AsCurrency)+''','
      +' PPN='''+Formatcurr('0.00',quTotalPajak.AsCurrency)+''',PPH42='''+Formatcurr('0.00',quTotalPPH42.AsCurrency)+''','
      +' DiscAmount='''+Formatcurr('0.00',quTotalDisc.AsCurrency)+''',SubTotalU='''+Formatcurr('0.00',quTotalSubTotalU.AsCurrency)+''', '
      +' PPH21='''+Formatcurr('0.00',quTotalPPH21.AsCurrency)+''',PPH23='''+Formatcurr('0.00',quTotalPPH23.AsCurrency)+''', '
      +' PPH15='''+Formatcurr('0.00',quTotalPPH15.AsCurrency)+''',PPH26='''+Formatcurr('0.00',quTotalPPH26.AsCurrency)+''' '
      +' WHERE PurchaseID='''+quMainPurchaseID.AsString+''' AND Suppid='''+quMainSuppID.AsString+'''');
   ExecSQL;
 End;
  //ShowMessage(quTotalPerValutaTotal.AsString);
End;
procedure TfmAPPurchaseOrder.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), PurchaseID';
  FFieldTgl   := 'TransDate';
  FAfterWhere := ' AND ISNULL(BAID,''RJS'')='''+StForm+''' ';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  qutotal.Active := TRUE;
  DBText18.Top := 30;
  DBText18.Left := 30;
  ts01.TabVisible := false;
End;

procedure TfmAPPurchaseOrder.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit5,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(txtSupplier,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBImageEdit1,TRUE);
end;

procedure TfmAPPurchaseOrder.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmAPPurchaseOrder.quDetilCalcFields(DataSet: TDataSet);
var SubTotal : Currency;
begin
  inherited;
  SubTotal := (quDetilPrice.AsCurrency * quDetilQty.AsCurrency)-(quDetilPrice.AsCurrency*quDetilQty.AsCurrency*quDetilDisc.AsCurrency/100);
  quDetilCTotal.AsCurrency :=  SubTotal;
end;

procedure TfmAPPurchaseOrder.dbgKdItemButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := ' SELECT  A.Itemname as Nama_Barang,A.ItemId as Kode_Barang, A.TypeUnit , A.UOMID as Satuan,CASE WHEN A.Ctk=''Y'' THEN ''T'' ELSE ''Y'' END as Jasa '
                   +' FROM INMsItem A '
                   +' WHERE A.FgActive=''Y'' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.AsString := Res[1];
          quDetilFgPPH21.AsString := Res[4];
          if Res[4]='T' then
          qudetilFgpph23.AsString := '00';
       end;
    finally
       free;
    end;
end;

procedure TfmAPPurchaseOrder.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmAPPurchaseOrder.quDetilBeforePost(DataSet: TDataSet);
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
  {
  if TRIM(quDetilWarehouseID.Value)='' then
  Begin
     MsgInfo('Kode Gudang tidak boleh kosong');
     quDetilWarehouseID.FocusControl;
     Abort;
  End;

  if TRIM(quDetilLWareHouse.Value)='' then
  Begin
     MsgInfo('Gudang tidak terdapat dalam Master');
     quDetilWarehouseID.FocusControl;
     Abort;
  End;    }
  {
  if quDetilDisc.AsString='' then
  begin
     ShowMessage('Kolom disc tidak boleh kosong');
     quDetilDisc.FocusControl;
     Abort;
  end;
          }
  if quDetil.State = dsInsert then
  begin
    with quAct, SQL do
    begin
        Close; Clear;
        Add(' SELECT ItemId FROM APTrPurchaseDt WHERE PurchaseID='''+quMainPurchaseID.Value+''''
           +' AND ItemId='''+quDetilItemID.Value+''' AND SuppId='''+quMainSuppID.Value+''' ');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Kode Item  sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
    end;

    quDetilUpdUser.Value := dmMain.UserId;
    quDetilUpdDate.Value := GetServerDateTime;
  End;


end;

procedure TfmAPPurchaseOrder.dsDetilStateChange(Sender: TObject);
begin
  inherited;

  SetReadOnly(dbgKdItem,quDetil.State<>dsInsert);
  SetReadOnly(dbgNmItem,TRUE);
  SetReadOnly(dbgTotal,TRUE);
  SetReadOnly(dbgLokasi,TRUE);
//  SetReadOnly(dbgHarga,qudetil.State<>dsinsert);
end;

procedure TfmAPPurchaseOrder.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;

  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;
  if Trim(quMainSuppId.Value)='' then
  begin
    MsgInfo('Kode Supplier tidak boleh kosong');
    quMainSuppId.FocusControl;
    Abort;
  End;
  if Trim(quMainLuSupplier.Value)='' then
  begin
    MsgInfo('Kode Supplier tidak ada dalam Master Supplier');
    quMainSuppid.FocusControl;
    Abort;
  End;

  If TRIM(quMainsiteid.AsString)='' then
  Begin
    MsgInfo('Site tidak boleh kosong');
    quMainsiteid.FocusControl;
    Abort;
  End;

  If TRIM(quMainLSites.AsString)='' then
  Begin
    MsgInfo('Site tidak ada dalam Master');
    quMainsiteid.FocusControl;
    Abort;
  End;

  quMainCurrID.ASString :='IDR';

  if qumain.State = dsinsert then
  Begin
    ST := 'FPP/HO/'+FormatDateTime('YYYY/',quMainTransDate.AsDateTime);
    quMainPurchaseID.AsString := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPurchaseHD', 'PurchaseID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;

end;

procedure TfmAPPurchaseOrder.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(FGNPWP,''Y'') as FgNPWP,CASE WHEN FGCOMPANY=''O'' THEN ''21'' ELSE ''23'' END as FgCompany  FROM APMsSupplier Where SUppid='''+quMainSuppID.ASString+''' ');
    Open;
  end;

  quDetilQty.AsInteger:=1;
  quDetilFgPPN.AsString := 'Y';
  quDetilPrice.AsCurrency:=0;
  quDetilWarehouseID.AsString := sDGPb;
  quDetilDisc.AsInteger := 0;
  qudetilFgpph21.AsString := 'T';
  quDetilFgPPH23.ASString := quAct.FieldByName('FgCompany').asString;
  quDetilFgPPH42.ASString := quAct.FieldByName('FgNPWP').asString;
  quDetilItemID.FocusControl;
end;

procedure TfmAPPurchaseOrder.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainPurchaseID.FocusControl;
end;

procedure TfmAPPurchaseOrder.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Date;
  quMainCurrID.AsString := 'IDR';
  quMainJatuhTempo.AsFloat := 0;
  quMainFgTax.AsString := 'T';
  quMainDiscType.AsString := 'P';
  quMainDisc.AsCurrency := 0;
  quMainDiscCashAmount.AsCurrency := 0;
  quMainFgOto.AsString := 'T';
  quMainPPN.AsCurrency := 0;
  quMainpph21.AsCurrency := 0;
  quMainpph23.AsCurrency := 0;
  quMainpph26.AsCurrency := 0;
  quMainpph42.AsCurrency := 0;
  quMainFgPPh15.AsCurrency := 0;
  quMainFgPPh15.AsString := 'Y';
  quMainFgPPH21.AsString := 'Y';
  quMainFgPPH23.AsString := 'Y';
  quMainFgPPH26.AsString := 'Y';
  quMainFgPajak.AsString := 'Y';
  quMainBAID.AsString := StForm;
  quMainRekeningU.AsString := sDRPb;
  quMainRekeningK.AsString := sDGRPb;
  quMainRekeningP.AsString := sDGRPLL;
  quMainRekeningD.AsString := APDisc;
  quMainRekeningJ.AsString := sDRPbJ;
end;

procedure TfmAPPurchaseOrder.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'FPP ';

       SQLString := ' SELECT PurchaseID as No_FPP,FPBID as Nota_Beli,'
                   +' Convert(varchar(10),TransDate,103) as Tanggal_Nota,'
                   +' A.SuppId as Kode_Supplier, B.SuppName as Nama_Supplier ,'
                   +' A.Note as Keterangan '
                   +' FROM APTrPurchaseHd A'
                   +' INNER JOIN APMsSupplier B  ON A.SuppID = B.SuppID'
                   +' WHERE '+FSQLWhere
                   +' AND ISNULL(A.BAID,''RJS'')='''+StForm+''' '
                   +' ORDER BY PurchaseID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('PurchaseID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPPurchaseOrder.dbgLokasiButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilWarehouseID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPurchaseOrder.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;

 { if HargaSblm <> quDetilPrice.AsCurrency then
     DeleteFromAllItem(quMainPurchaseID.Value,quMainSuppID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                     HargaSblm,5,1,'')
  Else
     DeleteFromAllItem(quMainPurchaseID.Value,quMainSuppID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                     quDetilPrice.value,5,1,'');


  InsertToAllItem(quMainPurchaseID.Value,quMainSuppID.Value,quMainTransDate.value,quDetilWarehouseID.Value,
                   quDetilItemID.Value,5,abs(quDetilQty.Value),quDetilPrice.value,quMainCurrID.Value,quMainRate.value,'AP',quMainLuSupplier.Value,'-');
//Buat cek table allitem
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM AllItem WHERE VoucherNo='''+quMainPurchaseID.AsString+''' '
       +'AND FgTrans=5 AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if quAct.RecordCount <> 1 then
    begin
      ShowMessage('Stock untuk barang '+quDetilLuItemName.AsString+' tidak terupdate');
      quDetil.Edit;
      quDetilQty.FocusControl;
      Abort;
    end;
  end;
//Buat Masukin ke table AllModal
  if quMainCurrID.AsString = 'IDR' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('DELETE FROM AllModal WHERE FgTrans=1 AND SourceNo='''+quMainPurchaseID.AsString+''' '
         +'AND ItemID='''+quDetilItemID.AsString+''' ');
      ExecSQL;
    end;

    with quAct,SQL do
    begin
      Close;Clear;
      Add('INSERT AllModal (SourceNo,Transdate,FgTrans,ItemID,Qty,CurrID,Price,Rate)'
         +'VALUES (:SourceNo,:Transdate,:FgTrans,:ItemID,:Qty,:CurrID,:Price,:Rate)');
      with Parameters do
      begin
         ParamByName('SourceNo').Value := quMainPurchaseID.AsString;
         ParamByName('TransDate').Value := quMainTransDate.AsDateTime;
         ParamByName('FgTrans').Value := 1;
         ParamByName('ItemID').Value := quDetilItemID.AsString;
         ParamByName('Qty').Value := quDetilQty.AsInteger;
         ParamByName('CurrID').Value := quMainCurrID.AsString;
         ParamByName('Price').Value  := quDetilPrice.AsInteger - (quDetilDisc.AsInteger* quDetilPrice.AsInteger/100);
         ParamByName('Rate').Value := quMainRate.AsCurrency;
      end;
      ExecSQL;
    end;
  end;

  if MessageDlg('Apakah anda akan menginput serial number ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
     quSN.Last;
     quSN.Append;
     Abort;
  end else
  begin
    with quAct1,SQL do
    begin
      Close;Clear;
      Add('SELECT Count(*) as Jumlah FROM APTrPurchaseDtSN WHERE PurchaseID='''+quMainPurchaseID.AsString+''' '
         +'AND ItemID='''+quDetilItemID.AsString+''' AND SuppID='''+quMainSuppID.AsString+''' ');
      Open;
    end;
    if quAct1.FieldByName('Jumlah').AsInteger <> quDetilQty.AsInteger then
    begin
      for i := 1 to  quDetilQty.AsInteger - quAct1.FieldByName('Jumlah').AsInteger do
      begin
        ST := 'P'+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+quDetilItemID.AsString;
        SN := ST + FormatFloat('000', RunNumberGL(quAct, 'APTrPurchaseDtSN', 'SNID', ST, '0') + 1);
        with quAct,SQL do
        begin
          Close;Clear;
          Add('INSERT APTrPurchaseDtSN (PurchaseID,ItemID,SuppID,WarehouseID,Price,SNID,UpdDate,UpdUser,FgJual,FgSN) '
             +'SELECT PurchaseID,ItemID,SuppID,WarehouseID,Price,'''+SN+''',getdate(),'''+dmMain.UserId+''',''T'',''T'' '
             +'FROM APTrPurchaseDT WHERE PurchaseID='''+quMainPurchaseID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' '
             +'AND SuppID='''+quDetilSuppId.AsString+''' ');
          ExecSQL;
        end;
      end;
    end;
    quDetil.Append;
  end;
     }
end;

procedure TfmAPPurchaseOrder.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
   quTotal.Requery();
   UpdateTTlH;
end;

procedure TfmAPPurchaseOrder.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  CekSNHeader;
  CekNota;
  DeleteFromAllItem1(quMainPurchaseID.Value,quMainSuppID.Value,5);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllModal WHERE FgTrans=1 AND SourceNo='''+quMainPurchaseID.AsString+''' ');
    ExecSQL;
  end;

  with quCetak,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainPurchaseID.ASString+''',''Delete'',''Hapus FPP-X-PO'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
end;

procedure TfmAPPurchaseOrder.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  CekSNDetil;
  CekNota;
 { DeleteFromAllItem(quMainPurchaseID.Value,quMainSuppID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                    quDetilPrice.value,5,1,'');
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllModal WHERE FgTrans=1 AND SourceNo='''+quMainPurchaseID.AsString+''' '
       +'AND ItemID='''+quDetilItemID.AsString+''' ');
    ExecSQL;
  end;    }
end;

procedure TfmAPPurchaseOrder.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  HargaSblm := quDetilPrice.Value;
end;

procedure TfmAPPurchaseOrder.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus; /// cek apakah sudah ada pembayaran kalo sudah ada tidak bisa di utak atik
  CekRetur;
  tglsbled := quMainTransDate.AsDateTime;
end;

procedure TfmAPPurchaseOrder.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
end;

procedure TfmAPPurchaseOrder.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
  quSNFgJual.AsString := 'T';
  quSNFgSN.AsString := 'Y';
end;

procedure TfmAPPurchaseOrder.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select isnull(Count(SNId),0) as jumlah From APTrPurchaseDtSN WHERE ItemId='''+quDetilItemID.Value+''''
      +' AND PurchaseId='''+quMainPurchaseID.Value+''' AND SuppId='''+quMainSuppID.Value+''''
      +' And WareHouseId='''+quDetilWarehouseID.Value+''' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quact.FieldByName('jumlah').AsInteger = quDetilQty.Value then
  begin
   quDetil.Last;
   qudetil.Append;
   abort;
  End
  else
  begin
   quSN.Append;
   //quSNSNID.FocusControl;
  end;
end;

procedure TfmAPPurchaseOrder.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select ISNULL(COUNT(SNID),0) as jumlah From APTrPurchaseDtSN WHERE ItemId='''+quDetilItemID.Value+''''
      +' AND PurchaseId='''+quMainPurchaseID.Value+''' AND SuppId='''+quMainSuppID.Value+''''
      +' And WareHouseId='''+quDetilWarehouseID.Value+''' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmAPPurchaseOrder.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNSNID.Value)='' then
  Begin
   MsgInfo('Kode Serial Number tidak boleh kosong');
   quSNSNID.FocusControl;
   Abort;
  End;

  If quSN.State= dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add(' SELECT SNID from APTrPurchaseDtSN WHERE PurchaseID=:PurchaseID AND SuppId=:SuppId and SNID=:SNID and ItemID=:ItemID'
          +' AND WareHouseId=:WareHouseId AND Price=:Price');
          Parameters.ParamByName('PurchaseID').Value:= quSNPurchaseID.AsString;
          Parameters.ParamByName('SuppId').Value:= quSNSuppId.AsString;
          Parameters.ParamByName('SNID').Value:= quSNSNID.AsString;
          Parameters.ParamByName('ItemID').Value:= quSNItemID.AsString;
          Parameters.ParamByName('WareHouseID').Value:= quSNWarehouseID.AsString;
          Parameters.ParamByName('Price').Value:= quSNPrice.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Serial Number sudah ada');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  If quSN.State= dsInsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT K.SNID FROM (SELECT SNID,ItemID FROM APTrReturnRepSN '
          +'UNION ALL SELECT SNID,ItemID from APTrPurchaseDtSN '
          +'UNION ALL SELECT SNID,ItemID FROM APTrKonsinyasiDtSN) as K '
          +'WHERE K.SNID='''+quSNSNID.AsString+''' AND K.ItemID='''+quDetilItemID.AsString+''' ');
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Serial Number ini sudah pernah masuk');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  quSNUpdUser.AsString := dmMain.UserId;
  quSNUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPPurchaseOrder.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgSerialNumberSNID,quSN.State<>dsInsert);
end;

procedure TfmAPPurchaseOrder.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmAPPurchaseOrder.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  CekSN;
end;

procedure TfmAPPurchaseOrder.dxButton3Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := ' Serial Number ';
       SQLString :=   ' SELECT SNID as Serial_Number,C.purchaseId as Nota_Pembelian, '
                     +' Convert(varchar(10),C.TransDate,103) as Tanggal_Nota, '
                     +' C.SuppId as Kode_Supplier, '
                     +' D.SuppName as Nama_Supplier,'
                     +' B.ItemId as Kode_Barang ,'
                     +' F.ItemName as Nama_Barang '
                     +' FROM APTrPurchaseDtSN A '
                     +' INNER JOIN APTrPurchasedt B ON A.PurchaseID=B.PurchaseID AND A.ItemID=B.ItemID '
                     +' AND A.WareHouseID=B.WareHouseID AND A.Price=B.Price AND A.SuppId=B.SuppId '
                     +' INNER JOIN APTrPurchaseHd C ON B.PurchaseId=C.PurchaseId and B.SuppId=C.SuppId'
                     +' INNER JOIN APMsSupplier D ON C.SuppID = D.SuppID '
                     +' INNER JOIN INMsItem F ON F.ItemId=B.ItemId '
                     +' ORDER BY SNID ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('PurchaseID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPPurchaseOrder.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainTglJthTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);

  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select SiteName From INMsSites WHERE SiteID='''+quMainSiteID.AsString+''' ');
    Open;
  End;
  quMainLsites.asString := quAct.FieldByName('SiteName').AsString ;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningK.AsString+''' ');
    Open;
  end;
  quMainLRekPemb.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningP.AsString+''' ');
    Open;
  end;
  quMainLRekPPN.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningU.AsString+''' ');
    Open;
  end;
  quMainLRekHutDagang.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningJ.AsString+''' ');
    Open;
  end;
  quMainLAPDisc.AsString := quAct.FieldByName('RekeningName').AsString;

  if quMainFgOto.ASString ='Y' then
  begin
    Label37.Font.Color := clGreen;
    Label37.Caption := 'APPROVED';
  end else
  if quMainFgOto.ASString ='T' then
  begin
    Label37.Font.Color := clYellow;
    Label37.Caption := 'WAITING';
  end else
  begin
    Label37.Font.Color := clRed;
    Label37.Caption := 'REJECTED';
  end;
end;

procedure TfmAPPurchaseOrder.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;
end;

procedure TfmAPPurchaseOrder.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPPurchaseOrder.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmAPPurchaseOrder.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPPurchaseOrder.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if (dsDetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmAPPurchaseOrder.dxButton1Click(Sender: TObject);
begin
  inherited;
  quSN.Append;
end;

procedure TfmAPPurchaseOrder.dxButton4Click(Sender: TObject);
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

procedure TfmAPPurchaseOrder.dxButton2Click(Sender: TObject);
begin
  inherited;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmAPPurchaseOrder.dxButton5Click(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmAPPurchaseOrder.bbPembayaranClick(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  {ith TfmAPPembayaranHutangIDR.Create (Application) do
  try
     ShowModal;
  finally
     Free;
  end;    }
end;

procedure TfmAPPurchaseOrder.txtSupplierButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var tSupp : string;
begin
  inherited;
  if AbsoluteIndex= 0 then
  Begin
     with TfmSearch.Create(Self) do
     try
       Title := 'Pelanggan';
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
  End;
  if AbsoluteIndex= 1 then
  Begin
    with TfmAPMsSupplier.Create(self) do
    try
      CallAnotherForm := True;
      ShowModal;
      tSupp := TempSupp;
    finally
      free;
    end;
    if tSupp <> '' then
    begin
      quMainSuppID.AsString := tSupp;
      quSup.Requery([]);
      quMainLuSupplier.RefreshLookupList;
    end;
  End;
end;

procedure TfmAPPurchaseOrder.dxButton7Click(Sender: TObject);
begin
  inherited;
  if quMainFgPajak.ASString='T' then
  begin
    ShowMessage('Transaksi Pengajuan tidak ada jurnal');
    Abort;
  end;

  With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      qlbTitleV.Top := 18;
      qlbTitleV.Caption := 'JURNAL PEMBELIAN';
      qlbTTerBayar.Caption := 'Supplier';
      QRLabel9.Caption := 'Jumlah';
      qlbJourTransID.Caption := ': ' + quMainPurchaseID.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainLuSupplier.AsString;

      qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quTotalTotal.AsCurrency))+'Rupiah #';
      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Dibayar oleh';
      qlbTotal.Caption := FormatFloat(sDisFormat, quTotalTotal.AsCurrency);

      With qu001,SQL do
      Begin
        Close;Clear;
        Add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
           +'SELECT PurchaseID,RekeningU as RekeningID,ISNULL(TTlPb,0) as Amount,''K'' as Jenis,6 as Urut,Note FROM ApTrpurchasehd UNION ALL '
           +'SELECT PurchaseID,RekeningD,ISNULL(DiscAmount,0),''K'',8,''Discount Pembelian'' FROM ApTrpurchasehd UNION ALL '
           +'SELECT PurchaseID,RekeningP,ISNULL(PPN,0),''D'',3,''PPN Masukan - ''+'''+quMainLuSupplier.AsString+''' FROM ApTrpurchasehd UNION ALL '
           +'SELECT PurchaseID,RekeningJ,ISNULL(SubtotalU,0),''D'',2,''PPN Masukan - ''+'''+quMainLuSupplier.AsString+''' FROM ApTrpurchasehd UNION ALL '
           +'SELECT PurchaseID,RekeningK,ISNULL(Stpb-SubTotalU,0),''D'',1,Note FROM ApTrpurchasehd '
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE K.PurchaseID='''+quMainPurchaseID.AsString+''' AND K.Amount <> 0 ORDER BY K.Urut,K.RekeningID');
        Open;
      End;

      MyReport.Previewmodal
    Finally
      Free;
    End;
end;

procedure TfmAPPurchaseOrder.dxButton8Click(Sender: TObject);
begin
  inherited;
  UpdateTTlH;

  with TfmAPRptFPP.Create(Self) do
  try
    qrlPeriode.Caption := FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);

    if StForm='TIM' then
    begin
      QRImage8.Enabled := True;
      QRImage1.Enabled := False;
      QRLabel27.Enabled := False;
      QRLabel73.Enabled := False;
      QRLabel80.Enabled := False;
      qrlabel70.Left := 600;
      qrlabel71.Left := 600;
      qrlabel78.Left := 600;
      qrlabel63.Left := 300;
      qrlabel64.Left := 300;
      qrlabel65.Left := 300;
    end else
    begin
      QRImage8.Enabled := False;
      QRImage1.Enabled := True;
    end;
    
    qr1.Caption := CurrToStr(quTotalSubTotal.AsCurrency);
    qr2.Caption := CurrToStr(quTotalDisc.AsCurrency);
    qr3.Caption := CurrToStr(quTotalPajak.AsCurrency);
    qr4.Caption := CurrToStr(quTotalTotal.AsCurrency);
    qr5.Caption := CurrToStr(quTotalPPh21.AsCurrency);
    qr6.Caption := CurrToStr(quTotalPPh23.AsCurrency);
    qr7.Caption := CurrToStr(quTotalPPH42.AsCurrency);
    qr8.Caption := CurrToStr(quTotalGT.AsCurrency);
    qr9.Caption := CurrToStr(quMainDiscCashAmount.AsCurrency);
    qr10.Caption := CurrToStr(quTotalPPH26.AsCurrency);
    QRLabel18.Caption := CurrToStr(quTotalGT.AsCurrency);
    QRLabel61.Caption := CurrToStr(quTotalPPH15.AsCurrency);
    QRLabel46.Caption := CurrToStr(0);
    QRLabel47.Caption := CurrToStr(0);

    //terbilang
    qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, quTotalGT.AsCurrency))+' Rupiah #';

    with qu001,SQL do
    Begin
      Close;Clear;
      add('select A.PurchaseID as KonsinyasiInvID,CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,ISNULL(A.SiteID+''-'','''')+A.Note as Note,'''' as Lokasi, '
         +'B.SuppName,B.norek,B.bankname,A.POID as TaxID '
         +'from ApTrPurchaseHD A inner join APMsSupplier B on A.SuppID=B.SuppID '
         +'WHERE A.PurchaseID='''+quMainPurchaseID.AsString+''' ');
      Open;
    End;

    With qu002,SQL do
    Begin
      Close;Clear;
      add('select PurchaseID as KonsinyasiInvid,''-'' as POID,B.itemname as Keterangan,ISNULL(A.Qty*A.Price,0) as Jumlah from ApTrPurchaseDt A '
         +'inner join inmsitem b on A.itemid=b.itemid '
         +'WHERE PurchaseID='''+quMainPurchaseID.AsString+''' ');
      Open;
    End;

    MyReport.PreviewModal;

    finally
      free;
    end;
end;

procedure TfmAPPurchaseOrder.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Site';
     SQLString := 'select SiteID,SiteName from INMsSites Order by SiteName ';
     if ShowModal = MrOK then
     begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainsiteid.AsString := Res[0];
     end;
  finally
     Free;
  end;
end;

end.
