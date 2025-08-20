unit ARTrPenjualanIDR;
                                                                                                               
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls, StrUtils, DateUtils,inifiles,Printers,
  dxExGrEd, dxExELib, dxDBEdtr;

type
  TfmARTrPenjualanIDR = class(TfmStdLv4)
    dbgListNota: TdxDBGridColumn;
    dbgListTanggal: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridColumn;
    dbgListSalesID: TdxDBGridColumn;
    dbgListDescription: TdxDBGridMemoColumn;
    dbgListJatuhTempo: TdxDBGridMaskColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText3: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    quPelanggan: TADOQuery;
    quSales: TADOQuery;
    quItem: TADOQuery;
    quLokasi: TADOQuery;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    DBText7: TDBText;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quDetilItemID: TStringField;
    quDetilQty: TIntegerField;
    quDetilWarehouseID: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainSaleID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainSalesID: TStringField;
    quMainJatuhTempo: TIntegerField;
    quMainDiscount: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainLuCustName: TStringField;
    quMainLuSalesName: TStringField;
    quDetilLuItemName: TStringField;
    quDetilLuWareHouseName: TStringField;
    quDetilATotal: TFloatField;
    quDetilPrice: TBCDField;
    quDetilSaleID: TStringField;
    quSNSNID: TStringField;
    quSNSaleID: TStringField;
    quSNItemID: TStringField;
    quMainNote: TStringField;
    Shape6: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label8: TLabel;
    Label9: TLabel;
    quTotalSubTotal: TBCDField;
    quTotalDiscount: TBCDField;
    quTotalTotal: TBCDField;
    quAct1: TADOQuery;
    quAct2: TADOQuery;
    quAct3: TADOQuery;
    quSNPrice: TBCDField;
    quSNWarehouseID: TStringField;
    Shape5: TShape;
    Label16: TLabel;
    Label17: TLabel;
    quMainDP: TBCDField;
    Shape7: TShape;
    Label19: TLabel;
    DBText1: TDBText;
    quTotalGT: TBCDField;
    Label20: TLabel;
    quMainTglJtTempo: TDateTimeField;
    DBText2: TDBText;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quMainFlagCounter: TStringField;
    dbgListColumn7: TdxDBGridColumn;
    dbgListColumn8: TdxDBGridColumn;
    quMainStPj: TBCDField;
    quMainRate: TBCDField;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    Label23: TLabel;
    DBText6: TDBText;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quMainCurrID: TStringField;
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
    quMainCPiutang: TCurrencyField;
    quPiutang: TADOQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    DateTimeField2: TDateTimeField;
    StringField20: TStringField;
    quDetilNote: TStringField;
    quMainCharge: TBCDField;
    quTotalCharge: TBCDField;
    Shape8: TShape;
    Label25: TLabel;
    Label26: TLabel;
    DBText12: TDBText;
    DBText13: TDBText;
    dxDBEdit1: TdxDBEdit;
    dbgPenjualan: TdxDBGrid;
    dbgPenjualanItemID: TdxDBGridButtonColumn;
    dbgPenjualanItemName: TdxDBGridColumn;
    dbgPenjualanWarehouseID: TdxDBGridButtonColumn;
    dbgPenjualanQty: TdxDBGridMaskColumn;
    dbgPenjualanTotal: TdxDBGridColumn;
    dbgSerialNumber: TdxDBGrid;
    dbgSerialNumberItemId: TdxDBGridMaskColumn;
    quDetilLKomisi: TCurrencyField;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxButton5: TdxButton;
    RbCetak: TRadioGroup;
    RbHarga: TRadioGroup;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxButton1: TdxButton;
    quMainTTLPj: TBCDField;
    quDetilKomisi: TBCDField;
    DBText14: TDBText;
    bbLunas: TdxButton;
    DBText15: TDBText;
    quMainFgLunas: TStringField;
    quMainFlagLunas: TStringField;
    dbgPenjualanHarga: TdxDBGridColumn;
    Label28: TLabel;
    Label29: TLabel;
    Shape9: TShape;
    Label30: TLabel;
    Label31: TLabel;
    quMainAdministrasi: TBCDField;
    quMainNama: TStringField;
    quTotalAdministrasi: TBCDField;
    ADOQuery1: TADOQuery;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    bbPembayaran: TdxButton;
    dbgPenjualanNote: TdxDBGridColumn;
    quMainAlamat: TStringField;
    quMainKasir: TStringField;
    quMainStatus: TStringField;
    quDetilFlagRetur: TStringField;
    quMainSOID: TStringField;
    quMainPOID: TStringField;
    Label32: TLabel;
    Label33: TLabel;
    quMainTaxID: TStringField;
    quMainFgTax: TStringField;
    Label34: TLabel;
    Label18: TLabel;
    quMainPajak: TIntegerField;
    quTotalPajak: TBCDField;
    quMainPPN: TBCDField;
    dbgSerialNumberSaleID: TdxDBGridButtonColumn;
    dbgSerialNumberSNID: TdxDBGridButtonColumn;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    dxButton2: TdxButton;
    dbgCost: TdxDBGrid;
    dbgCostPurchaseID: TdxDBGridButtonColumn;
    dbgCostSaleID: TdxDBGridMaskColumn;
    dbgCostItemID: TdxDBGridMaskColumn;
    dbgCostPrice: TdxDBGridCurrencyColumn;
    dbgCostWarehouseID: TdxDBGridMaskColumn;
    dbgCostUpdDate: TdxDBGridDateColumn;
    dbgCostQty: TdxDBGridColumn;
    dbgCostUpdUser: TdxDBGridMaskColumn;
    Label35: TLabel;
    quCostItem: TADOQuery;
    quCostItemPurchaseID: TStringField;
    quCostItemSaleID: TStringField;
    quCostItemItemID: TStringField;
    quCostItemPrice: TBCDField;
    quCostItemWarehouseID: TStringField;
    quCostItemQty: TIntegerField;
    quCostItemUpdDate: TDateTimeField;
    quCostItemUpdUser: TStringField;
    dsCostItem: TDataSource;
    quMainFgTrans: TStringField;
    quMainPPNFee: TBCDField;
    Label27: TLabel;
    Label36: TLabel;
    dxButton10: TdxButton;
    quCostItemModal: TBCDField;
    quSNModal: TBCDField;
    quSNPurchaseID: TStringField;
    quSNFgSN: TStringField;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBFgTrans: TdxDBImageEdit;
    txtPelanggan: TdxDBButtonEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBPajak: TdxDBImageEdit;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxDBEdit6: TdxDBEdit;
    dbgPenjualanColumn8: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgPenjualanEnter(Sender: TObject);
    procedure dbgPenjualanItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgPenjualanWarehouseIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure txtPelangganButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure dbgSerialNumberEnter(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quDetilItemIDChange(Sender: TField);
    procedure dxButton1Click(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure quSNBeforeEdit(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DBText11Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure bbLunasClick(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure bbPembayaranClick(Sender: TObject);
    procedure dbgSerialNumberSNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dbgCostEnter(Sender: TObject);
    procedure dsCostItemStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quCostItemNewRecord(DataSet: TDataSet);
    procedure dbgCostPurchaseIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quCostItemPurchaseIDChange(Sender: TField);
    procedure quCostItemBeforePost(DataSet: TDataSet);
    procedure quCostItemAfterPost(DataSet: TDataSet);
    procedure quCostItemBeforeInsert(DataSet: TDataSet);
    procedure quCostItemBeforeDelete(DataSet: TDataSet);
    procedure dxButton10Click(Sender: TObject);
    procedure quMainBeforeInsert(DataSet: TDataSet);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    bdInsert : boolean;
    Procedure CekStatus;
    Procedure UpdateTTlH;
    Procedure CekRetur;
    Procedure CekCounter;
    Procedure UpdateSNHeader;
    Procedure UpdateSNDetil;
    Procedure UpdateSerialNumber;
  public
    { Public declarations }
    sQuery : string;
    custSbl : String;
    Hargasblm,Dp : Currency;
    iStatus : integer;
  end;

var
  fmARTrPenjualanIDR: TfmARTrPenjualanIDR;

implementation

uses StdLv2, StdLv1, StdLv0, Search, UnitGeneral, ConMain, StdLv3, MyUnit,
    ARQRRptSegel, ARQRRptInvPenjualan, ARQRRptSuratJalan, ARMsPelanggan,
  Allitem, RptLv0, ARQRRptKartuPiutangDetil, ARQRRptStokAkhir,
  ARTrPiutangIDR, ARTrBayarBackOffice;

{$R *.dfm}
Procedure TfmARTrPenjualanIDR.UpdateSNHeader;
Begin //ubah FgJual serialnumber pada saat hapus header
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' )');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' )');
    ExecSQL;
  end;
End;

Procedure TfmARTrPenjualanIDR.UpdateSNDetil;
Begin //ubah FgJual serialnumber pada saat hapus detil
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' )');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' )');
    ExecSQL;
  end;
End;

Procedure TfmARTrPenjualanIDR.UpdateSerialNumber;
Begin //ubah FgJual serialnumber
  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT SNID FROM APTrPurchaseDtSN WHERE ItemID='''+quDetilItemID.AsString+''' '
      +' AND SNID='''+quSNSNID.AsString+'''');
   Open;
   if quAct.FieldByName('SNID').AsString <> '' then
   begin
     Close;Clear;
     add(' Update APTrPurchaseDtSN SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
      ExecSQL;
   end else
   begin
     Close;Clear;
     Add(' SELECT SNID FROM APTrKonsinyasiDtSn WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
     Open;
     if quAct.FieldByName('SNID').AsString <> '' then
     begin
       Add(' Update APTrKonsinyasiDtSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end else
     begin
       Close;Clear;
       Add(' Update APTrReturnRepSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end;
   end;
  end;
End;

Procedure TfmARTrPenjualanIDR.CekStatus;
Begin //cek apakah sudah ada pembayaran kalo sudah ada tidak bisa di utak atik
   with quAct, SQL do
   begin
      Close; Clear;
      Add(' SELECT A.VoucherID PiutangId FROM CFTrKKBBDt A '+
          ' WHERE A.Note='''+quMainSaleID.AsString+'''');
      Open;
      if not IsEmpty then
      begin
         MsgInfo('Sudah ada penerimaan ['+quAct.Fieldbyname('PiutangId').AsString +'], tidak bisa edit/Delete lagi');
         Abort;
      end;
   end;
End;

Procedure TfmARTrPenjualanIDR.CekCounter;
Begin
{   if quMainFlagCounter.Value='C' Then
   Begin
     ShowMessage('Data Counter tidak dapat diubah dikarena kan sudah ada pembayaran');
     Abort;
   End;
}
end;

Procedure TfmARTrPenjualanIDR.CekRetur;
Begin //cek apakah sudah ada Retur kalo sudah ada tidak bisa di utak atik
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT top 1 ReturnId FROM ARTrReturPenjualanDt A'
           +' WHERE SaleID='''+quMainSaleID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Retur ['+quAct.fieldbyname('ReturnId').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;

Procedure TfmARTrPenjualanIDR.UpdateTTlH;
Begin
 With quAct,sql do
 Begin
   Close;Clear;
   add(' Update ARTrPenjualanHd SET TTLPj='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''''
      +' ,StPj='''+Formatcurr('0.00',quTotalSubTotal.AsCurrency)+''', PPN='''+Formatcurr('0.00',quTotalPajak.AsCurrency)+''''
      +' WHERE saleID='''+quMainSaleID.AsString+'''');
   ExecSQL;
 End;
End;

procedure TfmARTrPenjualanIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), SaleID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbgPenjualan);
  SettingDxGrid(dbgSerialNumber);
  SettingDxGrid(dbgCost);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
  quSN.Active    := TRUE;
  quCostItem.Active := TRUE;
  quPelanggan.Open;
end;

procedure TfmARTrPenjualanIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,qumain.State<>dsinsert);
  SetReadOnly(dxDBButtonEdit2,qumain.State<>dsinsert);
  SetReadOnly(dxDBEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit3,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit5,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit3,quMain.State<>dsInsert);
  SetReadOnly(txtPelanggan,quMain.State<>dsInsert);
  SetReadOnly(dxDBPajak,quMain.State<>dsInsert);
  SetReadOnly(dxDBSpinEdit1,quMain.State<>dsInsert);
end;

procedure TfmARTrPenjualanIDR.dbgPenjualanEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrPenjualanIDR.dbgPenjualanItemIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT  A.Itemname as Nama_Barang, A.UserPrice, A.DealerPrice, '
                  +'(Select ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                  +'   FROM ALLITEM F Where CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
                  +'   AND F.ItemID=A.ItemID AND F.WareHouseId='''+sDGC+''') as STOK_AKHIR,A.ItemId as Kode_Barang  '
                    +' FROM INMsItem A WHERE A.FgActive=''Y'' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[4];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dbgPenjualanWarehouseIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Gudang';
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

procedure TfmARTrPenjualanIDR.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrPenjualanIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainTransDate.FocusControl;
  quMainCurrID.AsString := 'IDR';
  quMainJatuhTempo.AsFloat := 0;
  quMainDiscount.AsFloat := 0;
  quMainAdministrasi.AsFloat := 0;
  quMainDP.Value := 0;
  quMainFlagCounter.Value:='L';
  quMainCharge.Value :=0;
  quMainKasir.AsString := dmMain.UserId;
  quMainFgLunas.Value :='B';
  quMainFgTax.Value :='T';
  quMainPPNFee.AsCurrency := 0;
  quMainPPN.AsCurrency := 0;
  quMainPOID.AsString := ''; 
end;

procedure TfmARTrPenjualanIDR.txtPelangganButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var tPlg : string;//,tNmPlg : string;
begin
  inherited;
  if AbsoluteIndex= 0 then
  Begin
        with TfmSearch.Create(Self) do
        try
           Title := 'Cari Pelanggan';
           SQLString := 'SELECT Custname as Nama_Pelanggan,Address, City, Phone, Fax, CustType,CustID as Kode_Pelanggan '
                       +' FROM ARMsCustomer ORDER BY CustID';
           if ShowModal = MrOK then
           begin
              if quMain.State = dsBrowse then quMain.Edit;
              quMainCustID.Value := Res[6];
           end;
        finally
           free;
        end;
  End;
  if AbsoluteIndex= 1 then
  Begin
    with TfmARMsPelanggan.Create(self) do
    try
      CallAnotherForm := true;
      ShowModal;
      tPlg := TempPlg;
    finally
      free;
    end;
    if tPlg <> '' then
    begin
      quMainCustID.AsString := tPlg;
      quPelanggan.Requery([]);
      quMainLuCustName.RefreshLookupList;
    end;
  End;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesID as Kode_Sales, Salesname as Nama_Sales'
                   +',Address, Phone, HP FROM ARMsSales WHERE FgActive <> 0 '
                   +' ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSalesID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.quMainBeforePost(DataSet: TDataSet);
var ST : String; i : Integer;
begin
  inherited;
  if TRIM(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if quMainNama.Value = '' then quMainNama.AsString := '';
  if quMainAlamat.Value = '' then quMainAlamat.AsString := '';

  if quMainCustID.Value = '' then
  Begin
    MsgInfo('Pelanggan belum diisi');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMainLuCustName.Value = '' then
  Begin
    MsgInfo('Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMainSalesID.Value = '' then
  Begin
    MsgInfo('Sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLuSalesName.Value) = '' then
  Begin
    MsgInfo('Sales tidak terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainCurrID.Value) = '' then
  Begin
    MsgInfo('Valuta belum diisi');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLCurrName.Value) = '' then
  Begin
    MsgInfo('Valuta tidak terdaftar');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainJatuhTempo.AsString)= '' then
  Begin
    MsgInfo('Jatuh tempo tidak tidak boleh kosong');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  if quMainJatuhTempo.AsInteger < 0 then
  Begin
    MsgInfo('jatuh tempo tidak boleh lebih kecil dari 0');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  if TRIM(quMainDiscount.AsString)= '' then
  Begin
    MsgInfo('Diskon tidak boleh kosong, Kalau tidak ada kasih nilai nol(0)');
    quMainDiscount.FocusControl;
    Abort;
  End;

  if TRIM(quMainDP.AsString)= '' then
  Begin
    MsgInfo('DP tidak tidak boleh kosong, Kalau tidak ada kasih nilai nol(0)');
    quMainDP.FocusControl;
    Abort;
  End;
  if TRIM(quMainAdministrasi.AsString)= '' then
  Begin
    MsgInfo('Administrasi tidak tidak boleh kosong, Kalau tidak ada kasih nilai nol(0)');
    quMainAdministrasi.FocusControl;
    Abort;
  End;
  if TRIM(quMainSOID.AsString)= '' then
  Begin
    MsgInfo('No. Sales Order tidak boleh kosong');
    quMainSOID.FocusControl;
    Abort;
  End;
  if quMainCustID.AsString = 'TUNAI' then
  begin
     if TRIM(quMainNama.AsString) = '' then
     begin
        ShowMessage('Nama Pelanggan belum diisi');
        quMainNama.FocusControl;
        Abort;
     end;
  end;
  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT DISTINCT CustID FROM ARTrPenjualanHD WHERE CustID='''+quMainCustID.AsString+''' ');
    Open;
    if quAct3.RecordCount <> 0 then
      quMainFgTrans.AsString := '2'
    else
      quMainFgTrans.AsString := '1';
  end;
  i:= Length(dxDBEdit2.Text);
  if i < 5 then
  begin
    ShowMessage('No. Sales Order yang anda masukan kurang dari 5 char / digit');
    quMainSOID.FocusControl;
    Abort;
  end;

  if quMainJatuhTempo.AsInteger > 0 then
  begin
    if MessageDlg('Anda yakin transaksi ini ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin

    end else
    begin
       quMainJatuhTempo.FocusControl;
       Abort;
    end;
  end;

  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT '''+dxDBEdit7.Text+''' ');
    try
      Open;
    Except
      on E :Exception do
      begin
        ShowMessage('Field Nama Tidak boleh mengandung character petik tunggal');
        quMainNama.FocusControl;
        Abort;
      end;
    end;
  end;

  if quMainFgTax.AsString = 'Y' then
  begin
    DBText13.Caption := '10';
    ST := PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainTaxID.Value  := ST+ FormatFloat('0000', RunNumberGL(quAct, 'ARTrPenjualanHd', 'TaxId', ST, '0') + 1);
  end;

   If quMain.State = dsInsert then
   begin
      With quAct,SQL do
      begin
        Close;Clear;
        add('SELECT K.SOID FROM (SELECT SOID FROM ArTrPenjualanHD UNION ALL '
           +'SELECT SOID FROM ARTrKonInvPelHd) as K WHERE K.SOID='''+quMainSOID.AsString+'''');
        Open;
        If Not IsEmpty then
        begin
          MsgInfo('No Sales Order ini sudah dipakai');
          quMainSOID.FocusControl;
          Abort;
        end;
      End;
   end;

   with quAct3,SQL do
   begin
     Close;Clear;
     Add('SELECT K.GBUID FROM ('
        +'SELECT GBUID FROM ARTrPenawaranHD UNION ALL SELECT SCID FROM ARTrSCHD) as K '
        +'WHERE K.GBUID='''+quMainPOID.AsString+''' ');
     Open;
   end;
   if TRIM(quMainPOID.AsString) <> '' then
   begin
     if quAct3.RecordCount = 0 then
     begin
       ShowMessage('No Penawaran tidak ada dalam Transaksi Penawaran');
       quMainPOID.FocusControl;
       Abort;
     end;
   end;

  if quMain.State=dsInsert then
  Begin
    ST := PT+ FormatDateTime('.YY.MM.', quMainTransDate.AsDateTime);
    quMainSaleID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPenjualanHd', 'SaleId', ST, '0') + 1);
    CarirateNew(quAct,quMainTransDate.AsDateTime);
    quMainRate.AsCurrency := quAct.FieldByName('Rate').AsCurrency;
  End;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenjualanIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPenjualanItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgPenjualanItemName,TRUE);
  SetReadOnly(dbgPenjualanTotal,TRUE);
end;

procedure TfmARTrPenjualanIDR.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quDetilItemID.Value= '' then
  begin
     MsgInfo('Kode Barang tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;
  if TRIM(quDetilLuItemName.Value)='' then
  begin
     MsgInfo('Barang tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;
  if TRIM(quDetilWarehouseID.Value)= '' then
  begin
     MsgInfo('Gudang tidak boleh kosong');
     quDetilWarehouseID.FocusControl;
     Abort;
  end;
  if TRIM (quDetilLuWareHouseName.Value) = '' then
  begin
     MsgInfo('Gudang tidak terdaftar di Master Gudang');
     quDetilWarehouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilQty.AsString)= '' then
  begin
     MsgInfo('Jumlah tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetilQty.Value < 0 then
  begin
     MsgInfo('Jumlah tidak boleh lebih kecil dari 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Top 1 * FROM ARTrPenjualanDt WHERE SaleID='''+quMainSaleID.Value+''''
           +' AND ItemId='''+quDetilItemID.Value+''' AND WareHouseiD='''+quDetilWarehouseID.Value+''''
           +' AND Price='''+quDetilPrice.AsString+'''');
        Open;
        if  not IsEmpty then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
     end;
  end;

  with quAct,SQL do
  Begin
    Close;Clear;
    Add('Select LimitPiutang FROM ARMsCustomer WHERE CustId='''+quMainCustID.Value+'''');
    Open;
  End;

  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT L.CustID,ISNULL(SUM(L.Piutang),0) as Piutang,(SELECT TOP 1 Rate FROM SATrRate ORDER BY CONVERT(VARCHAR(8),Transdate,112) DESC) as Rate FROM ('
       +'SELECT K.CustID,CASE WHEN K.CurrID=''IDR'' THEN ISNULL(SUM(K.TTLPj-K.Retur-K.Piutang),0) ELSE '
       +'ISNULL(SUM(K.TTLPj-K.Retur-K.Piutang),0) * (SELECT TOP 1 Rate FROM SATrRate ORDER BY CONVERT(VARCHAR(8),Transdate,112) DESC) END as Piutang '
       +'FROM (SELECT A.SaleID,A.CurrID,A.TTLPj,A.CustID,'
       +'(SELECT ISNULL(SUM(B.Price*B.Qty),0) FROM ARTrReturPenjualanDt B INNER JOIN ARTrReturPenjualanHd C ON B.ReturnID=C.ReturnID '
       +'AND C.FlagRetur=''B'' INNER JOIN ARTrPenjualanHd D ON B.SaleID=D.SaleID WHERE A.CustID=C.CustID AND D.CurrID=A.CurrID) as Retur,'
       +'(SELECT ISNULL(SUM(E.ValuePayment),0) FROM ARTrPiutangDt E INNER JOIN ARTrPiutangHd F ON E.PiutangID=F.PiutangID '
       +'WHERE F.CustID=A.CustID AND F.CurrID=A.CurrID AND E.SaleID=A.SaleID) as Piutang '
       +'FROM ARTrPenjualanHd A  UNION ALL SELECT A.KonInvPelID,A.CurrID,A.TTLKj,A.CustID,0,'
       +'(SELECT ISNULL(SUM(E.ValuePayment),0) FROM ARTrPiutangDt E INNER JOIN ARTrPiutangHd F ON E.PiutangID=F.PiutangID '
       +'WHERE F.CustID=A.CustID AND F.CurrID=A.CurrID AND E.SaleID=A.KonInvPelID) as Piutang '
       +'FROM ARTrKonInvPelHd A) as K GROUP BY K.CustID,K.CurrID) as L WHERE L.CustID='''+quMainCustID.AsString+''' GROUP BY L.CustID');
    Open;
  end;
  if UpperCase(quMainCurrID.AsString)='IDR' then
  begin
    if quAct3.FieldByName('Piutang').AsCurrency + (quDetilQty.AsInteger * quDetilPrice.AsCurrency) >
      quAct.FieldByName('LimitPiutang').AsCurrency then
    begin
      MsgInfo('Limit Piutang '+quMainLuCustName.AsString+' sudah melebihi batas');
      quDetilPrice.FocusControl;
      Abort;
    end;
  end else
  begin
    if quAct3.FieldByName('Piutang').AsCurrency + (quDetilQty.AsInteger * quDetilPrice.AsCurrency * quAct3.FieldByName('Rate').AsCurrency) >
      quAct.FieldByName('LimitPiutang').AsCurrency then
    begin
      MsgInfo('Limit Piutang '+quMainLuCustName.AsString+' sudah melebihi batas');
      quDetilPrice.FocusControl;
      Abort;
    end;
  end;

  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 ISNULL(CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END,0) as Modal FROM ('
       +'SELECT A.ItemID,A.Price,B.CurrID,B.Rate,B.Transdate FROM APTrPurchaseDt A '
       +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
       +'SELECT A.ItemID,A.Price,B.CurrID,B.Rate,B.Transdate FROM APTrKonsinyasiInvDt A '
       +'INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID) as K '
       +'WHERE K.ItemID='''+quDetilItemID.AsString+''' ORDER BY CONVERT(VARCHAR(8),K.Transdate,112) DESC ');
    Open;
  end;
  if quDetilPrice.AsCurrency < quAct3.FieldByName('Modal').AsCurrency then
  begin
    if MessageDlg('Modal terakhir untuk barang ini ['+quAct3.FieldByName('Modal').AsString+']. '+#13
                 +'Anda yakin dengan harga yang sudah diinput ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
//       quDetil.Post;
    end else
    begin
       quDetilPrice.FocusControl;
       Abort;
    end;
  end;

  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT A.ItemID,(SELECT ISNULL(SUM(CASE WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
       +'FROM ALLITEM F WHERE F.ItemID=A.ItemID) as Stock FROM INMsItem A WHERE A.ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  if quAct3.FieldByName('Stock').AsInteger - quDetilQty.AsInteger < 0 then
  begin
    ShowMessage('Jumlah Barang kurang dari stock.'+#13
               +'Sisa Stock saat ini tinggal ['+quAct3.FieldByName('Stock').AsString+']');
    quDetilQty.FocusControl;
    Abort;
  end;
//  quDetilKomisi.AsCurrency := quDetilLKomisi.AsCurrency;
  bdInsert := quDetil.State = dsINsert;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenjualanIDR.quDetilCalcFields(DataSet: TDataSet);
var SubTotal : Currency;
begin
  inherited;
  SubTotal := ((quDetilPrice.AsCurrency+quDetilKomisi.AsCurrency) * quDetilQty.AsInteger);
  quDetilATotal.AsFloat :=  SubTotal;
end;

procedure TfmARTrPenjualanIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsFloat :=1;
  quDetilFlagRetur.AsString := 'T';
  quDetilWarehouseID.AsString := sDGPj;
  quDetilItemID.FocusControl;
end;

procedure TfmARTrPenjualanIDR.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;

  if Hargasblm <> quDetilPrice.Value then
     DeleteFromAllItem(quMainSaleID.Value,quMainCustID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                     Hargasblm,55,1,'')
  else
     DeleteFromAllItem(quMainSaleID.Value,quMainCustID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                     quDetilPrice.value,55,1,'');
//buat update ke table allitem
  InsertToAllItem(quMainSaleID.Value,quMainCustID.Value,quMainTransDate.value,quDetilWarehouseID.Value,
                   quDetilItemID.Value,55,abs(quDetilQty.Value),quDetilPrice.value,quMainCurrID.Value,quMainRate.value,'AR',quMainLuCustName.Value
                   ,quMainSalesID.Value,quDetilLKomisi.value);
//Buat cek udah masuk ke allitem apa belum
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM AllItem WHERE VoucherNo='''+quMainSaleID.AsString+''' '
       +'AND FgTrans=55 AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if quAct.RecordCount <> 1 then
    begin
      ShowMessage('Barang '+quDetilLuItemName.AsString+' belum terupdate di kartu stock');
      quDetil.Edit;
      quDetilQty.FocusControl;
      Abort;
    end;
  end;

//Buat input serial number
  if MessageDlg('Apakah anda akan menginput serial number ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
     quSN.Last;
     quSN.Append;
     Abort;
  end else
  begin
     quCostItem.Last;
     quCostItem.Append;
     Abort;
  end;
end;

procedure TfmARTrPenjualanIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;
end;

procedure TfmARTrPenjualanIDR.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;
  if quMainDP.AsCurrency <> Dp then
  begin
    DeleteFromAllMoney(quMainSaleID.AsString,'15');
    DeleteFromAllMoney(quMainSaleID.AsString,'18');
  end;
end;

procedure TfmARTrPenjualanIDR.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgSerialNumberSNID,quSN.State<>dsInsert);
end;

procedure TfmARTrPenjualanIDR.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
end;

procedure TfmARTrPenjualanIDR.dbgSerialNumberEnter(Sender: TObject);
begin
  inherited;
  if quDetil.State in dsEditModes then quDetil.Post;
  if quSN.IsEmpty then quSN.Append;
end;

procedure TfmARTrPenjualanIDR.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Penjualan';

       SQLString := 'SELECT A.SaleID as Nota_Penjualan,SOID as Sales_Order, POID as PO_Customer,'
                   +'Convert(varchar(10),TransDate,103) as Tanggal,CustName as Pelanggan,'
                   +'A.Nama as Atas_Nama, C.SalesName as Nama_Sales, A.Note as Keterangan,'
                   +'CASE WHEN A.FlagCounter=''C'' THEN ''MPS'' ELSE ''1Tech'' END as Transaksi '
                   +'FROM ARTrPenjualanHd A '
                   +'INNER JOIN ARMsCustomer B ON A.CustID = B.CustID '
                   +'INNER JOIN ARMsSales C ON A.SalesID = C.SalesID '
                   +'WHERE '+FSQLWhere
                   +'ORDER BY SaleID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('SaleID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  with quAct1,SQl do
  begin
    Close;Clear;
    Add('SELECT * FROM ARTrPenjualanCost WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if quAct1.RecordCount <> 0 then
    begin
      ShowMessage('Nota Pembelian sudah ada, tidak usah input Serial Number lagi');
      Abort;
    end;
  end;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select Count(SNId) as jumlah From ARTrPenjualanSN WHERE ItemId='''+quDetilItemID.Value+''''
      +' AND SaleId='''+quMainSaleID.Value+''' And WareHouseId='''+quDetilWarehouseID.Value+''''
      +' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmARTrPenjualanIDR.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNSNID.Value)='' then
  Begin
   MsgInfo('Kode Serial Number tidak boleh kosong');
   quSNSNID.FocusControl;
   Abort;
  End;

  If quSN.State= dsInsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add(' SELECT SNID from ARTrPenjualanSN WHERE SaleID=:SaleID and SNID=:SNID and ItemID=:ItemID'
          +' AND WareHouseId=:WareHouseId AND Price=:Price');
          Parameters.ParamByName('SaleID').Value:= quSNSaleID.AsString;
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
       add('SELECT K.FgJual,K.SNID FROM (SELECT SNID,FgJual,ItemID FROM APTrPurchaseDtSn '
          +'UNION ALL SELECT SNID,FgJual,ItemID FROM APTrKonsinyasiDtSn '
          +'UNION ALL SELECT SNID,FgJual,ItemID FROM APTrReturnRepSn) as K '
          +'WHERE K.SNID='''+quSNSNID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
       Open;
       If quAct.FieldByName('SNID').AsString = '' then
       Begin
          MsgInfo('Serial Number ini belum pernah masuk');
          quSNSNID.FocusControl;
          Abort;
       End;
       if quAct.FieldByName('FgJual').AsString = 'Y' then
       Begin
          MsgInfo('Serial Number sudah pernah dipakai');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  quSNUpdUser.AsString := dmMain.UserId;
  quSNUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenjualanIDR.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT SNID FROM APTrPurchaseDtSN WHERE ItemID='''+quDetilItemID.AsString+''' '
      +' AND SNID='''+quSNSNID.AsString+'''');
   open;
   if quAct.FieldByName('SNID').AsString <> '' then
   begin
     Close;Clear;
     add(' Update APTrPurchaseDtSN SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
     ExecSQL;
   end else
   begin
     Close;Clear;
     add(' SELECT SNID FROM APTrKonsinyasiDtSn WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
     open;
     if quAct.FieldByName('SNID').AsString <> '' then
     begin
       Close;Clear;
       add(' Update APTrKonsinyasiDtSn SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end else
     begin
       Close;Clear;
       Add(' Update APTrReturnRepSn SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end;
   end;
  end;

  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select isnull(Count(SNId),0) as jumlah From ARTrPenjualanSN WHERE ItemId='''+quDetilItemID.Value+''''
      +' AND SaleId='''+quMainSaleID.Value+''' And WareHouseId='''+quDetilWarehouseID.Value+''''
      +' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger = quDetilQty.Value then
  begin
   quDetil.Last;
   qudetil.Append;
   abort;
  End
  else
  begin
   quSN.Append;
  end;
end;

procedure TfmARTrPenjualanIDR.quDetilItemIDChange(Sender: TField);
begin
  inherited;
    with quAct,sql do
    begin
     close;clear;
     add(' SELECT isnull(DealerPrice,0) as DealerPrice,isnull(UserPrice,0) as UserPrice '
        +' FROM INMsItem WHERE ItemId='''+quDetilItemID.AsString+'''');
     open;
    end;

    with quAct1,sql do
    begin
     Close;Clear;
     add(' select CustType from ARMsCustomer where CustId='''+quMainCustID.AsString+'''');
     open;
    end;

    with quAct2,sql do
    begin
     Close;Clear;
     add(' select Currid from INMsItem where ItemId='''+quDetilItemID.Value+'''');
     open;
    end;

    with quAct3,sql do
    Begin
      Close;Clear;
      add('  Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate '
         +'  WHERE Convert(varchar(8),Transdate,112) <='''+ Formatdatetime('yyyyMMdd',quMainTransDate.AsDateTime)+''''
         +'  ORDER BY TransDate desc');
      Open;
   End;

   if quact1.fieldbyname('CustType').AsString='U' then
   Begin
         if UpperCase(quMainCurrID.Value)='IDR' then
         Begin
         if quact2.FieldByName('CurrID').AsString='USD' then
              quDetilPrice.Value :=  Pembulatan(currtostr(quAct.fieldbyname('UserPrice').AsCurrency*quAct3.fieldbyname('Rate').AsCurrency))
           else
              quDetilPrice.Value :=  Pembulatan(currtostr(quAct.fieldbyname('UserPrice').AsCurrency));
         End;

         if UpperCase(quMainCurrID.Value)='USD' then
         Begin
           if quact2.FieldByName('CurrID').AsString='IDR' then
              quDetilPrice.Value := Pembulatan(currtostr(quAct.fieldbyname('UserPrice').AsCurrency/quAct3.fieldbyname('Rate').AsCurrency))
           else
              quDetilPrice.Value :=  Pembulatan(currtostr(quAct.fieldbyname('UserPrice').AsCurrency));
         End;
   End;

   if quact1.fieldbyname('CustType').AsString='D' then
   Begin
         if UpperCase(quMainCurrID.Value)='IDR' then
         Begin
            if quact2.FieldByName('CurrID').AsString='USD' then
              quDetilPrice.Value := Pembulatan(currtostr(quAct.fieldbyname('DealerPrice').AsCurrency*quAct3.fieldbyname('Rate').AsCurrency))
           else
              quDetilPrice.Value := Pembulatan(currtostr(quAct.fieldbyname('DealerPrice').AsCurrency));
         End;

         if UpperCase(quMainCurrID.Value)='USD' then
         Begin
           if quact2.FieldByName('CurrID').AsString='IDR' then
              quDetilPrice.Value := Pembulatan(currtostr(quAct.fieldbyname('DealerPrice').AsCurrency/quAct3.fieldbyname('Rate').AsCurrency))
           else
              quDetilPrice.Value :=  Pembulatan(currtostr(quAct.fieldbyname('DealerPrice').AsCurrency));
         End;
   End;
end;

procedure TfmARTrPenjualanIDR.dxButton1Click(Sender: TObject);
var stotal : Currency;
    iPrint : Integer;
begin
  inherited;
  {If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) or
     (Self.quSN.State = dsEdit) or (Self.quSN.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;

  if quTotalTotal.AsCurrency < 0 then
  begin
    ShowMessage('Sisa Nota harus lebih besar dari 0 (NOL)');
    Abort;
  end;

{  if quMainFlagCounter.Value = 'C' then
  Begin
   MsgInfo(' Invoice Counter tidak dapat di cetak di Back Office'+#13
          +' Untuk mencetaknya masuk ke Transaksi Counter');
   Abort;
  End;}
 {
  if quMainDP.AsCurrency > 0 then
  begin
    with quAct1,SQL do
    begin
      Close;Clear;
      Add('SELECT VoucherNo FROM AllMoney WHERE VoucherNo='''+quMainSaleID.AsString+''' ');
      Open;
      if IsEmpty then
      begin
        ShowMessage('Uang Muka Penjualan belum dilakukan pembayaran');
        dxButton2.Focused;
        Abort;
      end;
    end;
  end;

  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(A.Qty),0) as Jumlah, (SELECT COUNT(X.SNID) FROM ARTrPenjualanSN X WHERE X.SaleID=A.SaleID) + '
       +'(SELECT ISNULL(SUM(K.Qty),0) FROM ARTrPenjualanCost K WHERE K.SaleID=A.SaleID) as Total '
       +'FROM ARTrPenjualanDT A WHERE A.SaleID='''+quMainSaleID.AsString+''' GROUP BY A.SaleID');
    Open;
  end;
  if quAct3.FieldByName('Jumlah').AsInteger <> quAct3.FieldByName('Total').AsInteger then
  begin
    ShowMessage('Terjadi kesalahan dalam prosedur input data. Coba cek SN atau Nota pembelian apakah sudah lengkap');
    Abort;
  end;

  with quAct,SQL do
  begin
     Close;Clear;
     Add(' Select isnull(TTLPj,0) as TTLPj FROM ArTrPenjualanHD Where SaleId='''+quMainSaleID.AsString+'''');
     Open;
  end;
  if quAct.FieldByName('TTLPj').AsCurrency = 0 then
    stotal := quTotalGT.AsCurrency
  else
    stotal := quAct.FieldByName('TTLPj').AsCurrency;
  iPrint := Printer.Printers.IndexOf(sDPB);
  if RbCetak.ItemIndex = 0 then
  Begin
     with TfmQRRptInvPenjualan.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       if UpperCase(quMainCurrId.Value) ='IDR' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #';
          qlbCurr1.Caption := 'Rp ';
          qlbCurr2.Caption := 'Rp ';
          qlbCurr4.Caption := 'Rp ';
       end;
       if UpperCase(quMainCurrId.Value) ='USD' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
          qlbCurr1.Caption := 'US ';
          qlbCurr2.Caption := 'US ';
          qlbCurr4.Caption := 'US ';
       end;
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select A.FgTax,B.SalesName+'' - ''+A.FlagCounter as Sales,CASE WHEN A.FlagCounter=''C'' THEN ''MPS''+RIGHT(A.SaleID,11) ELSE A.SaleId END as SaleID'
            +' ,A.TaxID,A.CurrId,A.Discount,isnull(DP,0) as DP,A.SaleID as Invoice'
            +' ,isnull((TtlPj-DP),0) as GT,isnull(TTLPj,0) as Total,Convert(varchar(12),Transdate,106) as Tgl,A.CustId,'
            +' CASE WHEN A.CustID=''TUNAI'' then A.Nama ELSE '
            +' C.CustName+'' (''+A.Nama+'')'' END as Custname,C.Address as Address,C.City,A.Alamat, A.POID '
            +' FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +' INNER JOIN ArMsSales B ON A.SalesID=B.SalesID '
            +' WHERE A.SaleId='''+quMainSaleID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.Urut,A.ItemId,B.ItemName,B.UOMId,C.Productdesc, Sum(Qty) as Qty,'
            +' ISNULL(A.Price+A.Komisi,0) as Price,A.Note FROM ARTrPenjualanDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.SaleId='''+quMainSaleID.AsString+''' '
            +' GROUP BY A.Urut,A.ItemId,B.ItemName,B.UOMId,C.Productdesc,A.Price,A.Note,A.Komisi');
         Open;
       End;

{       if quMainPOID.AsString = '' then
       begin
         QRLabel31.Enabled := False;
         QRLabel32.Enabled := False;
         QRDBText18.Enabled := False;
       end;
       if quMainFgTax.AsString = 'Y' then
       begin
         qrdbTaxID.Enabled := True;
         QRDBText4.Enabled := False;
       end;
       if quMainDP.AsCurrency = quTotalGT.AsCurrency then
       begin
         QRLabel22.Enabled := False; qlbCurr2.Enabled := False; QRDBText11.Enabled := False;
         QRLabel11.Enabled := False; qlbCurr3.Enabled := False; QRDBText14.Enabled := False;
         QRShape5.Enabled := False; QRShape6.Enabled := False;
       end;
       LaDiskon.Caption := quMainDiscount.AsString;
       laGT.Caption := quTotalGT.AsString;
       laSC.Caption := quMainPPN.AsString;
       qlbJatuhTempo.Caption := 'Pembayaran     : '+FormatFloat('##0', quMainJatuhTempo.AsInteger) + ' hari';
       qlbTempo.Caption :=  FormatDateTime('dd/MM/yyyy', IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger));

       if quMainAlamat.AsString <> '' then
          QRDBText3.Enabled := False;
       if quMainNote.AsString <> '' then
          qlbKet.Caption := '* '+quMainNote.AsString
       else
       begin
          qlbKet.Caption := '';
       end;

       if RbHarga.ItemIndex=1 then
       Begin
          QRLabel9.Enabled := False;
          QRLabel10.Enabled := False;
          QRExpr2.Enabled := False;
          QRDBText9.Enabled := False;
       End
       Else
       Begin
         QRLabel9.Enabled := TRUE;
         QRLabel10.Enabled := TRUE;
         QRExpr2.Enabled := TRUE;
         QRDBText9.Enabled := TRUE;
       End;
    If quMainFgLunas.AsString = 'S' then
    begin
      if GroupUser <> 'admin' then
      begin
        ShowMessage('Sudah Pernah dicetak, Hanya Group admin saja yang bisa cetak');
        abort;
      end;
    end;

     if sCetak = '0' then
       MyReport.PreviewModal
     else
       MyReport.Print;

     finally
        free;
     end;
    with quAct,SQL do
    begin
       close;clear;
       Add('Update ArTrPenjualanHD set FgLunas=''S'' where SaleID=:SaleID');
       with Parameters do
       begin
         ParamByName('SaleID').Value  := quMainSaleID.AsString;
       end;
       ExecSQL;
    end;
    Self.quMain.Requery();
  End;

  if RbCetak.ItemIndex = 1 then
  Begin
     with TfmQRRptSuratJalan.Create(Self) do
     try
       QRLabel9.Enabled:=False;
       QRDBText2.Enabled := False;
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select SaleId,CurrId,isnull(((TTLPj-DP)*Discount)/100,0) as Discount,isnull(DP,0) as DP, Alamat '
            +' ,isnull((TtlPj-DP),0) as GT,isnull(TTLPj,0) as Total,Convert(varchar(10),getdate(),103) as Tgl,'
            +' A.CustId, CASE WHEN A.CustID=''TUNAI'' THEN A.Nama ELSE C.CustName+'' (''+A.Nama+'')'' END as CustName,C.Address '
            +' FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.SaleId='''+quMainSaleID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.Urut,A.ItemId,B.ItemName,B.UOMId,C.Productdesc, Sum(Qty) as Qty,A.Price FROM ARTrPenjualanDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.saleId=:SaleId'
            +' GROUP BY A.Urut,A.ItemId,B.ItemName,B.UOMId,C.Productdesc,A.Price');
         Open;
       End;

       if quMainNote.AsString <> '' then
          qlbKet.Caption := '* ' + quMainNote.AsString
       else
          qlbKet.Caption := '';

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

      finally
        free;
     end;
  End;      }
end;

procedure TfmARTrPenjualanIDR.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  Dp := quMainDP.value;
  custSbl := quMainCustID.Value;
end;

procedure TfmARTrPenjualanIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if GroupUser <> 'admin' then
  begin
    if quMainFgLunas.AsString = 'S' then
    begin
      ShowMessage('Sudah pernah cetak tidak bisa dihapus');
      Abort;
    end;
  end;
  CekStatus;
  CekRetur;
  UpdateSNHeader;
  DeleteFromAllMoney(quMainSaleID.AsString,'15');
  DeleteFromAllMoney(quMainSaleID.AsString,'18');
  DeleteFromAllMoney1(quMainSaleID.AsString,quMainSaleID.AsString,'51');
  DeleteFromAllItem(quMainSaleID.Value,55,1,'');
end;

procedure TfmARTrPenjualanIDR.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  CekCounter;
  Hargasblm := quDetilPrice.Value;
end;

procedure TfmARTrPenjualanIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  CekCounter;
  UpdateSNDetil;
  DeleteFromAllItem(quMainSaleID.Value,quMainCustID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                    quDetilPrice.value,55,1,'');
//Buat masukin ke table AllDeleteData
  with quAct,SQL do
  begin
    Close;Clear;
    Add('INSERT INTO AllDeleteData (VoucherID,SalesID,SOID,ItemID,Price,Qty,CustID,Discount,CurrID,Transdate,DP,Nama,Administrasi,UpdDate,UpdUser,UpdDateDel,UpdUserDel,FgTrans) '
       +'VALUES(:VoucherID,:SalesID,:SOID,:ItemID,:Price,:Qty,:CustID,:Discount,:CurrID,:Transdate,:DP,:Nama,:Administrasi,:UpdDate,:UpdUser,:UpdDateDel,:UpdUserDel,:FgTrans)');
    with Parameters do
    begin
       ParamByName('VoucherID').Value := quMainSaleID.AsString;
       ParamByName('SalesID').Value := quMainSalesID.AsString;
       ParamByName('SOID').Value := quMainSOID.AsString;
       ParamByName('ItemID').Value := quDetilItemID.AsString;
       ParamByName('Price').Value := quDetilPrice.AsCurrency;
       ParamByName('Qty').Value := quDetilQty.AsFloat;
       ParamByName('CustID').Value := quMainCustID.AsString;
       ParamByName('Discount').Value := quMainDiscount.AsCurrency;
       ParamByName('CurrID').Value :=  quMainCurrID.AsString;
       ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
       ParamByName('DP').Value := quMainDP.AsCurrency;
       ParamByName('Nama').Value := quMainNama.AsString;
       ParamByName('Administrasi').Value := quMainAdministrasi.AsCurrency;
       ParamByName('UpdDate').Value := quDetilUpdDate.AsDateTime;
       ParamByName('UpdUser').Value := quDetilUpdUser.AsString;
       ParamByName('UpdDateDel').Value := GetServerDateTime;
       ParamByName('UpdUserDel').Value := dmMain.UserId;
       ParamByName('FgTrans').Value := 1;
    end;
    ExecSQL;
  end;

end;

procedure TfmARTrPenjualanIDR.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  CekCounter;
end;

procedure TfmARTrPenjualanIDR.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainTglJtTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);
end;

procedure TfmARTrPenjualanIDR.dxButton3Click(Sender: TObject);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := ' Serial Number ';
       SQLString :=   ' SELECT SNID as Serial_Number,C.SaleId as Nota_Penjualan, '
                     +' Convert(varchar(10),C.TransDate,103) as Tanggal_Nota, '
                     +' C.CustId as Kode_Pelanggan, '
                     +' D.CustName as Nama_Pelanggan,'
                     +' B.ItemId as Kode_Barang ,'
                     +' F.ItemName as Nama_Barang '
                     +' FROM ARTrPenjualanSN A '
                     +' INNER JOIN ARTrPenjualandt B ON A.SaleID=B.SaleID AND A.ItemID=B.ItemID '
                     +' AND A.WareHouseID=B.WareHouseID AND A.Price=B.Price '
                     +' INNER JOIN ARTrPenjualanHd C ON B.SaleId=C.SaleId '
                     +' INNER JOIN ARMsCustomer D ON C.CustID = D.CustID '
                     +' INNER JOIN ARMsSales E ON E.SalesID = C.SalesID '
                     +' INNER JOIN INMsItem F ON F.ItemId=B.ItemId '
                     +' ORDER BY SNID ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('SaleID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.quSNBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
end;

procedure TfmARTrPenjualanIDR.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  UpdateSerialNumber;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrPenjualanIDR.DBText11Click(Sender: TObject);
begin
  inherited;
{   with TfmARQRRptKartuPiutangDetil.Create(Self) do
  try
    tglDari:= date;
    qrlTitle.Caption := 'Laporan Rekap Piutang '+quMainCurrID.Value;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);
    bCheckced := False;

    if UpperCase(quMainCurrID.Value) ='IDR' then
    Begin
      QRLabel10.Caption := '';
      QRLabel13.Caption := '';
    End
    else
    Begin
      QRLabel11.Caption := '';
      QRLabel12.Caption := '';
    end;

    With qu001,sql do
    Begin
       Close;Clear;
       add(' Select Distinct A.CustId, A.CustName,(A.CustId+''-''+A.CustName) as Cust from ARMsCustomer A '
          +' INNER JOIN ARTrPenjualanHd B ON A.CustId=B.CustId '
          +' WHERE CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',date)+''''
          +' AND isnull(B.TTLPj,0)-isnull((Select isnull(Sum(Price*Qty),0) FROM ARTrReturPenjualanDt F INNER JOIN ARTrReturPenjualanHd G '
          +' ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=B.SaleId '
          +' ),0)');
          if bCheckced then
          Add(' -isnull((Select Sum(ValuePayment) FROM ARTrPiutangDt'
             +'  WHERE SaleId=B.SaleID),0)');
          Add(' <> 0 AND FlagCounter<>''C'' AND A.CustId='''+quMainCustID.Value+'''');
        // Add(' ORDER BY A.CustId');
       Add('ORDER BY A.CustId');
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
    End;

    With qu002,sql do
    Begin
       Close;Clear;
       add(' Select Distinct B.CustId,A.CurrID, A.CurrName,(A.CurrId+''-''+A.CurrName) as Valuta from SAMsValuta A '
          +' INNER JOIN ARTrPenjualanHd B ON A.CurrId=B.CurrId'
          +' WHERE B.CustId=:CustId'
          +' AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',date)+''''
          +' AND isnull(B.TTLPj,0)-isnull((Select isnull(Sum(Price*Qty),0) FROM ARTrReturPenjualanDt F INNER JOIN ARTrReturPenjualanHd G '
          +' ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=B.SaleId '
          +' ),0)');
          if bCheckced then
          Add(' -isnull((Select Sum(ValuePayment) FROM ARTrPiutangDt'
             +'  WHERE SaleId=B.SaleID),0)');
          Add(' <> 0 AND FlagCounter<>''C'' AND A.CurrId='''+quMainCurrID.Value+''' ORDER BY A.CurrId');
        //  Add(' ORDER BY A.CurrId');
       Parameters.ParamByName('CustId').DataType := ftString;
       Open;
    End;

    qu003.Open;
    qu004.Open;

       MyReport.PreviewModal

    finally
     free;
  end;}
end;

procedure TfmARTrPenjualanIDR.dxButton4Click(Sender: TObject);

begin
  inherited;
  sQuery :='  SELECT Itemname as Nama_Barang,'
          +'  Case When upper(Currid)=''USD'' Then '
          +'  UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)'
          +'  - (Convert(numeric,Substring('
          +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )+( case when( ( Convert(numeric, Substring('
          +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )>= 0 ) AND ( ( Convert(numeric, Substring('
          +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )< 250 )then 0 when ( (Convert(numeric,Substring('
          +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )= 250)then 250 when ((Convert(numeric,Substring('
          +' Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )> 250 ) AND((  Convert(numeric, Substring('
          +'  Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )<= 500 ) then 500 when ((Convert(numeric,Substring('
          +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )> 500 ) AND (( Convert(numeric,Substring('
          +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )<= 750 )then 750 when(( Convert(numeric, Substring('
          +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )> 500 ) AND((Convert(numeric,Substring('
          +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'   WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
          +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
          +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
          +'  )> 750 )'
          +'   then 1000 end ) Else UserPrice End as HARGA_JUAL,';
  if GroupUser <> 'admin' then
  begin
    with TfmSearch.Create(Self) do
      try
         Title := 'Barang';
         SQLString :=sQuery+ 'CurrID as Valuta, UserPrice as Harga_Asli,'
                    +'(SELECT ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                    +'   FROM ALLITEM F Where CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
                    +'   AND F.ItemID=A.ItemID AND F.WareHouseId='''+sDGC+''') as STOK_AKHIR,ItemId as Kode_Barang'
                    +'  FROM INMsItem A WHERE A.FgActive=''Y'' ORDER BY A.ItemID';
         if ShowModal = MrOK then
         begin

         end;
      finally
         free;
      end;
  end else
  begin
    with TfmSearch.Create(Self) do
      try
         Title := 'Barang';
         SQLString :=sQuery+ '  (Select ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                    +'   FROM ALLITEM F Where CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
                    +'   AND F.ItemID=A.ItemID AND F.WareHouseId='''+sDGC+''') as STOK_AKHIR,ItemId as Kode_Barang'
                    +'  FROM INMsItem A WHERE A.FgActive=''Y'' ORDER BY A.ItemID';
         if ShowModal = MrOK then
         begin

         end;
      finally
         free;
      end;
  end;
end;

procedure TfmARTrPenjualanIDR.bbLunasClick(Sender: TObject);
//var keyfield : string;
begin
  inherited;
{  if quMainFlagCounter.Value <> 'C' then
  begin
    ShowMessage('Status Faktur Rangkap 3 tidak bisa diubah, Kalau mau cetak gunakan login admin');
    Abort;
  end;}

  if quMainFgLunas.AsString = 'T' then
  begin
    ShowMessage('Lakukan Pelunasan dari Form Transaksi Counter');
    Abort;
  end;

  If Self.quMain.State = dsBrowse then
  begin
    Self.quMain.Edit;
    quMainFgLunas.AsString := 'T';
    Self.quMain.Post;
    Self.quMain.Requery();
  end;

end;

procedure TfmARTrPenjualanIDR.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTrPenjualanIDR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrPenjualanIDR.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrPenjualanIDR.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrPenjualanIDR.bbPembayaranClick(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
   with TfmARTrPiutangIDR.Create (Application) do
    try
      ShowModal;
    finally
     Free;
    end;
end;

procedure TfmARTrPenjualanIDR.dbgSerialNumberSNIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number ';
       SQLString :=   ' SELECT K.SNID as Serial_Number,K.PurchaseId as Nota_Pembelian, '
                     +' Convert(varchar(10),K.TransDate,103) as Tanggal_Nota, '
                     +' K.SuppId as Kode_Supplier, K.SuppName as Nama_Supplier, '
                     +' K.ItemId as Kode_Barang , K.ItemName as Nama_Barang,'
                     +' CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END as Modal,K.FgSN  FROM '
                     +' (SELECT A.SNID, C.PurchaseId, C.TransDate, C.SuppId, D.SuppName, '
                     +' B.ItemId, F.ItemName, A.FgJual, B.Price,C.CurrID,C.Rate,A.FgSN FROM APTrPurchaseDtSN A '
                     +' INNER JOIN APTrPurchasedt B ON A.PurchaseID=B.PurchaseID AND A.ItemID=B.ItemID '
                     +' AND A.WareHouseID=B.WareHouseID AND A.Price=B.Price AND A.SuppId=B.SuppId '
                     +' INNER JOIN APTrPurchaseHd C ON B.PurchaseId=C.PurchaseId and B.SuppId=C.SuppId'
                     +' INNER JOIN APMsSupplier D ON C.SuppID = D.SuppID '
                     +' INNER JOIN INMsItem F ON F.ItemId=B.ItemId '
                     +' UNION ALL SELECT A.SNID, C.KonsinyasiID, C.Transdate, C.SuppID, D.SuppName, '
                     +' B.ItemID, F.ItemName, A.FgJual,B.Price,B.CurrID,C.Rate,A.FgSN FROM APTrKonsinyasiDtSn A '
                     +' INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID '
                     +' INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID '
                     +' INNER JOIN APMsSupplier D ON C.SuppID=D.SuppID '
                     +' INNER JOIN INMsItem F ON F.ItemID=B.ItemID '
                     +' UNION ALL SELECT A.SNID,A.ReturnRepID,B.Transdate,B.SuppID,C.SuppName, '
                     +' A.ItemID,D.ItemName, A.FgJual,0,''IDR'',0,''T''  FROM APTrReturnRepSn A '
                     +' INNER JOIN APTrReturnRepHd B ON A.ReturnRepID=B.ReturnRepID '
                     +' INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
                     +' INNER JOIN INMsItem D ON A.ItemID=D.ItemID) as K '
                     +' WHERE K.ItemID='''+quDetilItemID.AsString+''' AND K.FgJual=''T'' '
                     +' ORDER BY K.SNID ';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
             quSNSNID.Value :=Res[0];
             quSNPurchaseID.Value := Res[1];
             quSNModal.Value := StrToCurr(Res[7]);
             quSNFgSN.Value := Res[8];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dxButton6Click(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort else quSN.Append;
end;

procedure TfmARTrPenjualanIDR.dxButton7Click(Sender: TObject);
begin
  inherited;
  if quSN.IsEmpty then Abort;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus SN ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmARTrPenjualanIDR.dxButton8Click(Sender: TObject);
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

procedure TfmARTrPenjualanIDR.dxButton9Click(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmARTrPenjualanIDR.dxButton2Click(Sender: TObject);
begin
  inherited;
{  if quMainFlagCounter.AsString = 'C' then
  begin
   ShowMessage(' Invoice Counter tidak dapat di proses di Back Office'+#13
              +' Untuk proses masuk ke Transaksi Counter');
   Abort;
  end;

  if quMainDP.AsCurrency = 0 then
  begin
    ShowMessage('Uang muka penjualan masih 0(NOL), tidak ada yang bisa dibayar');
    quMainDP.FocusControl;
    Abort;
  end;}

  if quMain.IsEmpty then
  Begin
   ShowMessage('tidak ada data');
   Abort;
  End;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) or
     (Self.quSN.State = dsEdit) or (Self.quSN.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  with TfmArTrBayarBackOffice.Create(Self) do
  try
    lbTotal.Caption := FormatCurr(sDisFormat1,self.quTotalGT.AsCurrency);
    lbKembali.Caption := FormatCurr(sDisFormat1,0-self.quTotalGT.AsCurrency);
    Kembali :=0-self.quMainDP.AsCurrency;
    if Kembali < 0 then
      lbKembali.Font.Color :=clred
    else
      lbKembali.Font.Color :=clBlack;
    Total := Self.quMainDP.AsCurrency;
    TotalC := Self.quMainDP.AsCurrency;
    TglNota := Self.quMainTransDate.AsDateTime;
    Actor := Self.quMainCustID.AsString;
    NoNotaC := Self.quMainSaleID.AsString;
    Valuta := Self.quMainCurrID.AsString;
    if ShowModal = MrOK then
    begin
      quTotal.Requery();
      Self.quMain.Requery();
      quMain.Locate('SaleID',NoNotaC,[]);
      UpdateTTlH;
    end;
  finally
    free;
  end;
end;

procedure TfmARTrPenjualanIDR.dbgCostEnter(Sender: TObject);
begin
  inherited;
  if quDetil.State in dsEditModes then quDetil.Post;
  if quCostItem.IsEmpty then quCostItem.Append;
end;

procedure TfmARTrPenjualanIDR.dsCostItemStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgCostPurchaseID,quCostItem.State<>dsInsert);
  SetReadOnly(dbgCostQty,TRUE);
end;

procedure TfmARTrPenjualanIDR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If (Self.quSN.State = dsEdit) or (Self.quSN.State = dsInsert) or
     (Self.quCostItem.State = dsEdit) or (Self.quCostItem.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
end;

procedure TfmARTrPenjualanIDR.quCostItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  quCostItemPurchaseID.FocusControl;
  quCostItemQty.AsInteger := 0;
end;

procedure TfmARTrPenjualanIDR.dbgCostPurchaseIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Nota Barang Masuk';
       SQLString :='SELECT K.PurchaseID,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl_Beli,K.SuppName,K.Qty -  '
                  +'(SELECT ISNULL(SUM(X.Qty),0)FROM ARTrPenjualanCost X INNER JOIN ARTrPenjualanDT Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID '
                  +'WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID AND Y.FlagRetur=''T'') - (SELECT ISNULL(SUM(X.Qty),0) FROM ARTrKonInvPelCost X '
                  +'INNER JOIN ARTrKonInvPelDT Y ON X.KonInvPelID=Y.KonInvPelID AND X.ItemID=Y.ItemID WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID) -'
                  +'(SELECT COUNT(*) FROM ARTrPenjualanSN P WHERE P.ItemID=K.ItemID AND P.PurchaseID=K.PurchaseID)'
                  +'-(SELECT COUNT(*) FROM ARTrKonInvPelDtSN P WHERE P.ItemID=K.ItemID AND P.PurchaseID=K.PurchaseID) as Sisa,CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END as Modal '
                  +'FROM (SELECT A.ItemID,A.PurchaseID,B.SuppName,A.Price,C.CurrID,C.Rate,A.Qty - (SELECT ISNULL(SUM(X.Qty),0) '
                  +'FROM APTrReturnDT X INNER JOIN APTrReturnHD Y ON X.ReturnID=Y.ReturnID '
                  +'WHERE Y.FlagRetur=''B'' AND X.PurchaseID=A.PurchaseID AND X.ItemID=A.ITemID) as Qty, C.Transdate FROM APTrPurchaseDT A '
                  +'INNER JOIN APTrPurchaseHD C ON A.PurchaseID=C.PurchaseID INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID UNION ALL '
                  +'SELECT A.ItemID,A.KonsinyasiID,C.SuppName,A.Price,A.CurrID,B.Rate,  A.Qty - (SELECT ISNULL(SUM(X.Qty),0) FROM APTrReturnKonDT X '
                  +'WHERE X.KonsinyasiID=A.KonsinyasiID AND X.ItemID=A.ItemID),B.Transdate FROM APTrKonsinyasiDt A '
                  +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID) as K '
                  +'WHERE K.ItemID='''+quDetilItemID.AsString+''' AND K.Qty - (SELECT ISNULL(SUM(X.Qty),0) as Jumlah FROM ARTrPenjualanCost X '
                  +'INNER JOIN ARTrPenjualanDT Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID AND Y.FlagRetur=''T'') - '
                  +'(SELECT ISNULL(SUM(X.Qty),0) FROM ARTrKonInvPelCost X INNER JOIN ARTrKonInvPelDT Y ON X.KonInvPelID=Y.KonInvPelID AND X.ItemID=Y.ItemID '
                  +'WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID)-(SELECT COUNT(*) FROM ARTrPenjualanSN P WHERE P.ItemID=K.ItemID AND P.PurchaseID=K.PurchaseID) - '
                  +'(SELECT COUNT(*) FROM ARTrKonInvPelDtSN P WHERE P.ItemID=K.ItemID AND P.PurchaseID=K.PurchaseID) > 0 '
                  +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                  +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.PurchaseID';
       if ShowModal = MrOK then
       begin
          if quCostItem.State = dsBrowse then quCostItem.Edit;
             quCostItemPurchaseID.Value :=Res[0];
             quCostItemModal.Value := StrToCurr(Res[4]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.quCostItemPurchaseIDChange(Sender: TField);
var Sisa,Jumlah : Integer;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT K.Qty - (SELECT ISNULL(SUM(X.Qty),0) FROM ARTrKonInvPelCost X WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID) - '
       +'(SELECT ISNULL(SUM(X.Qty),0) FROM ARTrPenjualanCost X INNER JOIN ARTrPenjualanDT Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID '
       +'WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID AND Y.FlagRetur=''T'') as Sisa FROM( '
       +'SELECT A.ItemID,A.PurchaseID,B.SuppName,A.Qty FROM APTrPurchaseDT A '
       +'INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID UNION ALL '
       +'SELECT A.ItemID,A.KonsinyasiID,C.SuppName,A.Qty FROM APTrKonsinyasiDt A '
       +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID '
       +'INNER JOIN APMsSupplier C ON B.SuppID=C.SUppID) as K '
       +'WHERE K.ItemID='''+quDetilItemID.AsString+''' AND K.PurchaseID='''+quCostItemPurchaseID.AsString+''' ');
    Open;
  end;
  Jumlah := quAct.FieldByName('Sisa').AsInteger;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT A.Qty - (SELECT ISNULL(SUM(X.Qty),0) FROM ARTrPenjualanCost X WHERE X.ItemID=A.ItemID AND X.SaleID=A.SaleID) as Sisa '
       +'FROM ARTrPenjualanDT A WHERE A.SaleID='''+quMainSaleID.AsString+''' AND A.ItemID='''+quDetilItemID.AsString+'''');
    Open;
  end;
  Sisa := quAct1.FieldByName('Sisa').AsInteger;
  if Jumlah > Sisa then
     quCostItemQty.AsInteger := Sisa
  else
     quCostItemQty.AsInteger := Jumlah;
end;

procedure TfmARTrPenjualanIDR.quCostItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quCostItem.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
       add(' SELECT PurchaseID FROM ARTrPenjualanCost WHERE SaleID=:SaleID and PurchaseID=:PurchaseID and ItemID=:ItemID'
          +' AND WareHouseId=:WareHouseId AND Price=:Price');
          Parameters.ParamByName('SaleID').Value:= quMainSaleID.AsString;
          Parameters.ParamByName('PurchaseID').Value:= quCostItemPurchaseID.AsString;
          Parameters.ParamByName('ItemID').Value:= quDetilItemID.AsString;
          Parameters.ParamByName('WareHouseID').Value:= quDetilWarehouseID.AsString;
          Parameters.ParamByName('Price').Value:= quDetilPrice.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Nota Pembelian sudah ada dalam daftar');
          quCostItemPurchaseID.FocusControl;
          Abort;
       End;
    end;
    with quAct1,SQL do
    begin
      Close;Clear;
      Add('SELECT K.PurchaseID FROM (SELECT PurchaseID FROM APTrPurchaseHD UNION ALL SELECT KonsinyasiID FROM APTrKonsinyasiHD) as K '
         +'WHERE K.PurchaseID = '''+quCostItemPurchaseID.AsString+''' ');
      Open;
      if IsEmpty then
      begin
        ShowMessage('Nota Pembelian tidak terdaftar');
        quCostItemPurchaseID.FocusControl;
        Abort;
      end;
    end;
  end;
  quCostItemUpdDate.AsDateTime := GetServerDateTime;
  quCostItemUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARTrPenjualanIDR.quCostItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Qty),0) as Jumlah FROM ARTrPenjualanCost WHERE '
       +'SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  if quAct.FieldByName('Jumlah').AsInteger = quDetilQty.AsInteger then
  begin
   quDetil.Last;
   qudetil.Append;
   Abort;
  End
  else
  begin
   quCostItem.Append;
  end;
end;

procedure TfmARTrPenjualanIDR.quCostItemBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  with quAct1,SQl do
  begin
    Close;Clear;
    Add('SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if quAct1.RecordCount <> 0 then
    begin
      ShowMessage('Serial Number sudah ada, tidak usah input Nota Pembelian lagi');
      Abort;
    end;
  end;
  with quAct,SQL do
  begin
   Close;Clear;
    Add('SELECT ISNULL(SUM(Qty),0) as Jumlah FROM ARTrPenjualanCost WHERE '
       +'SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('Jumlah').AsInteger >= quDetilQty.AsInteger then Abort;
end;

procedure TfmARTrPenjualanIDR.quCostItemBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekRetur;
  CekStatus;
end;

procedure TfmARTrPenjualanIDR.dxButton10Click(Sender: TObject);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := ' Serial Number ';
       SQLString :='SELECT K.SNID as Serial_Number, K.ItemID+'' - ''+L.ItemName as Nama_Barang,K.PurchaseID as Surat_Jalan, '
                  +'K.SuppID+'' - ''+K.SuppName as Supplier FROM (SELECT A.SNID,A.ItemID,A.PurchaseID,A.SuppID,B.SuppName,A.FgJual '
                  +'FROM APTrPurchaseDTSN A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID UNION ALL '
                  +'SELECT A.SNID,A.ItemID,A.KonsinyasiID,B.SuppID,C.SuppName,A.FgJual '
                  +'FROM APTrKonsinyasiDtSN A INNER JOIN APTrKonsinyasiHD B ON A.KonsinyasiID=B.KonsinyasiID '
                  +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID UNION ALL SELECT A.SNID,A.ItemID,A.ReturnRepID,B.SuppID,C.SuppName,A.FgJual '
                  +'FROM APTrReturnRepSN A INNER JOIN APTrReturnRepHd B ON A.ReturnRepID=B.ReturnRepID '
                  +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID) as K '
                  +'INNER JOIN INMsItem L ON K.ItemID=L.ItemID WHERE K.FgJual=''T'' AND L.FgActive=''Y'' ORDER BY K.ItemID ';
       if ShowModal = MrOK then
       begin

       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.quMainBeforeInsert(DataSet: TDataSet);
var Jumlah : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(TTLPj),0) as Total FROM ARTrPenjualanHd '
       +'WHERE CONVERT(VARCHAR(8),Transdate,112) = CONVERT(VARCHAR(8),getdate(),112) '
       +'AND ISNULL(JatuhTempo,0) = 0');
    Open;
  end;
  Jumlah := quAct.FieldByName('Total').AsCurrency;
  if Jumlah <> 0 then
  begin
    ShowMessage('Ada Transaksi Tunai yang belum dilakukan pelunasan.'+#13
               +'Coba Cek transaksi Tunai hari ini yang belum dilakukan pelunasan');
    Abort;
  end;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Penawaran';
       SQLString := 'SELECT K.GBUID as No,CASE WHEN K.Status=1 THEN ''Call Point'' ELSE ''Quoation Point'' END as Status,'
                   +'CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Customer,K.UP,K.Phone,K.Fax,K.Email,K.Note FROM ('
                   +'SELECT GBUID,Transdate,Customer,UP,Phone,Fax,Email,Note,SalesID,2 as Status FROM ARTrPenawaranHD UNION ALL '
                   +'SELECT SCID,Transdate,Customer,UP,Phone,Fax,Email,Note,SalesID,1 FROM ARTrSCHD) as K '
                   +'WHERE K.GBUID NOT IN (SELECT POID FROM ARTrPenjualanHD) AND K.SalesID='''+quMainSalesID.AsString+''' '
                   +'ORDER BY K.Status,K.GBUID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainPOID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

end.
