unit ARTRSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, DBCtrls, dxEditor, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms,Printers;

type
  TfmARTRSales = class(TfmStdLv31)
    dxDBEdit1: TdxDBEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    DBText3: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText5: TDBText;
    Label1: TLabel;
    Label23: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    quMainPOID: TStringField;
    quMainPRID: TStringField;
    quMainCustID: TStringField;
    quMainTransdate: TDateTimeField;
    quMainNote: TStringField;
    quMainTTLSO: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainFgTax: TStringField;
    quMainTglKirim: TDateTimeField;
    quMainFgCetak: TStringField;
    quMainProductID: TStringField;
    quMainTaxAmount: TBCDField;
    quMainDiscType: TWordField;
    quMainDiscAmount: TBCDField;
    quMainDiscount: TBCDField;
    quMainDP: TBCDField;
    quMainSalesID: TStringField;
    quMainAdministrasi: TBCDField;
    quMainWareHouseID: TStringField;
    quMainJenis: TStringField;
    quMainCurrID: TStringField;
    quDetilPOID: TStringField;
    quDetilItemID: TStringField;
    quDetilPRID: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilUOMID: TStringField;
    quGudang: TADOQuery;
    quItem: TADOQuery;
    quCustomer: TADOQuery;
    quMainLuCurrName: TStringField;
    quMainLSalesName: TStringField;
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
    quMainLuLocation: TStringField;
    quMainLuCustomer: TStringField;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgTipe: TdxDBGridColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxButton3: TdxButton;
    dxButton5: TdxButton;
    dxButton4: TdxButton;
    Shape8: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText4: TDBText;
    Label17: TLabel;
    DBText7: TDBText;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    DBText6: TDBText;
    Label25: TLabel;
    Label36: TLabel;
    dbgHarga: TdxDBGridColumn;
    dbgTotal: TdxDBGridColumn;
    quDetilATotal: TCurrencyField;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    dxDBEdit7: TdxDBEdit;
    DBText8: TDBText;
    quTotalSubTotal: TBCDField;
    quTotalDiscount: TBCDField;
    quTotalGT: TBCDField;
    quTotalTotal: TBCDField;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText9: TDBText;
    Label20: TLabel;
    DBText10: TDBText;
    Label24: TLabel;
    Label26: TLabel;
    dxDBDateEdit2: TdxDBDateEdit;
    dbgUOMID: TdxDBGridButtonColumn;
    quDetilItemName: TStringField;
    quDetilQty: TBCDField;
    Shape3: TShape;
    Label10: TLabel;
    Label27: TLabel;
    dxDBPajak: TdxDBImageEdit;
    DBText11: TDBText;
    quTotalPPN: TBCDField;
    dxDBEdit4: TdxDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    quMainPOCust: TStringField;
    dbgFgTax: TdxDBGridImageColumn;
    quDetilFgtax: TStringField;
    procedure FormShow(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilItemIDChange(Sender: TField);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainAfterDelete(DataSet: TDataSet);
    procedure dbgUOMIDButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure quDetilUOMIDChange(Sender: TField);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CeKStatus;
    Procedure UpdateTTLSO;
  public
    { Public declarations }
  KodeBarang,KdSbm,JenisSbm : string;
    Jumlah,JumSbm : Currency;
  end;

var
  fmARTRSales: TfmARTRSales;

implementation

uses ConMain, Search, UnitGeneral, MyUnit,
  QRRptSalesO, Allitem, ARSN,RptMultiCetak, ARQRRptSuratJalan, StdLv1;

{$R *.dfm}

Procedure TfmARTrSales.UpdateTTLSO;
Begin
 With quAct,sql do
 Begin
   Close;Clear;
   add(' Update ARTrPurchaseOrderHd SET TTLSO='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''',TaxAmount='''+Formatcurr('0.00',quTotalPPN.AsCurrency)+''' '
      +' ,DiscAmount='''+Formatcurr('0.00',quTotalDiscount.AsCurrency)+''' '
      +' WHERE POID='''+quMainPOID.AsString+'''');
   ExecSQL;
 End;
End;

procedure TfmARTrSales.CeKStatus;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add(' SELECT TOP 1 KonTransBrgID FROM ARTrKonTransBrgHD  '
       +' WHERE SOID='''+quMainPOID.AsString+'''');
    Open;
    if not IsEmpty then
    begin
      MsgInfo('Sudah ada DO ['+quAct.FieldByName('KonTransBrgID').AsString+'], tidak bisa edit/Delete lagi');
      Abort;
    end;
  end;
End;

procedure TfmARTRSales.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),A.TransDate,112), POID';
  FFieldTgl   := 'A.TransDate';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
end;

procedure TfmARTRSales.quMainCalcFields(DataSet: TDataSet);
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

end;

procedure TfmARTRSales.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:= Date;
  quMainTglKirim.AsDateTime:= Date;
  quMainWareHouseID.Value:= sDGK;
  quMainCurrID.AsString := 'IDR';
  quMainJenis.AsString := 'S';
  quMainDiscount.AsCurrency := 0;
  quMainFgTax.Value := 'T';
  quMainPOCust.AsString := '-';
  quMainCurrID.FocusControl;
end;

procedure TfmARTRSales.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit3,TRUE);
end;

procedure TfmARTRSales.quMainBeforePost(DataSet: TDataSet);
var ST: String;
begin
  inherited;
  CeKStatus;
  
  If Trim(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If Trim(quMainWareHouseID.Value)='' then
  Begin
    MsgInfo('Gudang tidak boleh kosong');
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
    MsgInfo('Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  If Trim(quMainLuCustomer.Value)='' then
  Begin
    MsgInfo('Pelanggan tidak ada dalam Master');
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
    if GroupUser <> 'admin' then
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
    end;

    if TRIM(quMainCurrID.AsString) = 'IDR' then
      ST := 'SOJ/R'+ FormatDateTime('YY/MM-', quMainTransDate.AsDateTime)
    else
      ST := 'SOJ/D'+ FormatDateTime('YY/MM-', quMainTransDate.AsDateTime);
    quMainPOID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPurchaseOrderHd', 'POID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;

end;

procedure TfmARTRSales.dxDBButtonEdit1ButtonClick(Sender: TObject;
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

procedure TfmARTRSales.dxDBButtonEdit4ButtonClick(Sender: TObject;
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

procedure TfmARTRSales.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;

  
  if quMain.State <> dsInsert then
  begin
    if quMainJenis.AsString <> JenisSbm then
    begin
      with quAct1,SQL do
      begin
        Close;Clear;
        Add('DELETE FROM ARTRPurchaseOrderDt WHERE POID='''+quMainPOID.AsString+''' ');
        Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainPOID.AsString+''' ');
        ExecSQL;
      end;
    end;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE AllItem SET Transdate='''+FormatDateTime('yyyy-MM-dd',quMainTransDate.AsDateTime)+''','
       +'WarehouseID='''+quMainWareHouseID.AsString+''',TempField2='''+quMainLuCustomer.AsString+''' '
       +'WHERE VoucherNo='''+quMainPOID.AsString+''' ');
    ExecSQL;
  end;
  quDetil.Requery();
  quDetil.Append;

    quTotal.Requery();
  UpdateTTLSO;

end;

procedure TfmARTRSales.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainPOID.AsString+''' AND FGTrans=59 ');
    ExecSQL;
  end;
end;

procedure TfmARTRSales.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if quMain.State <> dsInsert then
    JenisSbm := quMainJenis.AsString;
  CeKStatus;

  with quAct,SQL do
  begin
    Close;Clear;
    ADd('SELECT * FROM ARTrPurchaseOrderDt WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount >= 10 then
  begin
    pesan('1 Transkasi cuma bisa input 10 barang');
    Abort;
  end;
end;

procedure TfmARTRSales.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quDetilItemName.FocusControl;
  quDetilItemID.FocusControl;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT A.ItemName as Nama_Barang,A.ItemID as Kode_Barang, '
                   +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans < 50 THEN X.Qty ELSE X.Qty*-1 END) FROM AllItem X '
                   +'WHERE X.ItemID=A.ItemID AND X.WarehouseID='''+quMainWareHouseID.AsString+'''),0) as Stock,'
                   +'B.GroupDesc as Group_Barang FROM INMsItem A INNER JOIN INMsGroup B ON A.GroupID=B.GroupID '
                   +'WHERE A.FgActive=''Y'' AND A.Jenis='''+quMainJenis.AsString+''' ORDER BY A.ItemID';
       KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value   := Res[1];
       end;
    finally
       free;
    end;
  quDetilQty.FocusControl;
end;

procedure TfmARTRSales.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrPurchaseOrderDt SET ItemID='''+KodeBarang+''',Qty='''+CurrToStr(Jumlah)+''' '
       +'WHERE POID='''+quMainPOID.AsString+''' AND ItemID='''+KdSbm+''' ');
    ExecSQL;
  end;

  quTotal.Requery();
  UpdateTTLSO;
end;

procedure TfmARTRSales.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  {
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainPOID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans=59');
    ExecSQL;
  end; }
  quTotal.Requery();
end;

procedure TfmARTRSales.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  cekStatus;
  JumSbm := quDetilQty.AsCurrency;
  KdSbm := quDetilItemID.AsString;
end;

procedure TfmARTRSales.quDetilBeforePost(DataSet: TDataSet);
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
      Add('SELECT Count(*) FROM  ARTrPurchaseOrderDT WHERE POId=:POId AND ItemId=:ItemId');
      with Parameters do
      begin
        ParamByName('POId').Value := quMainPOID.Value;
        ParamByName('ItemId').Value  := quDetilItemID.Value;
      end;
      Open;
      if Fields[0].AsInteger > 0 then
      begin
        MsgInfo('Kode Barang sudah ada dalam List');
        quDetilItemID.FocusControl;
        Abort;
      end;
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
  {
  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT A.ItemID,(SELECT ISNULL(SUM(CASE WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
       +'FROM ALLITEM F WHERE F.ItemID=A.ItemID AND F.WarehouseID='''+quMainWareHouseID.AsString+''') as Stock FROM INMsItem A WHERE A.ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  if quAct3.FieldByName('Stock').AsInteger + JumSbm - quDetilQty.AsCurrency < 0 then
  begin
    ShowMessage('Jumlah Barang kurang dari stock.'+#13
               +'Sisa Stock saat ini tinggal ['+CurrToStr(quAct3.FieldByName('Stock').AsCurrency+JumSbm)+']');
    quDetilQty.FocusControl;
    Abort;
  end;             }

  KodeBarang := quDetilItemID.AsString;
  Jumlah := quDetilQty.AsCurrency;
end;

procedure TfmARTRSales.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value:=0;
  quDetilItemID.FocusControl;
  quDetilFgTax.AsString := 'T' ;
end;

procedure TfmARTRSales.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemName,qudetil.state<>dsInsert);
  SetReadOnly(dbgUOMID,qudetil.state<>dsInsert);
  SetReadOnly(dbgTotal,TRUE);
end;

procedure TfmARTRSales.TmbBrgClick(Sender: TObject);
begin
  inherited;
if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTRSales.KrgBrgClick(Sender: TObject);
begin
  inherited;
if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTRSales.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTRSales.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTRSales.dxButton3Click(Sender: TObject);
var  iPrint : Integer;
     FgTax : string;
     stotal,Disc,Tax : currency;
begin
  inherited;
  UpdateTTLSO;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT FgTax FROM SAMsSet');
    Open;
  end;
  FgTax := quAct.FieldByName('FgTax').AsString;
  with quAct,SQL do
  begin
     Close;Clear;
     Add(' Select isnull(TTLSO,0) as TTLSO,DiscAmount,TaxAmount FROM ArTrPurchaseOrderHD Where POId='''+quMainPOID.AsString+'''');
     Open;
  end;
  stotal := quAct.FieldByName('TTLSO').AsCurrency;
  Tax := quAct.FieldByName('TaxAmount').AsCurrency;
  Disc := quAct.FieldByName('DiscAmount').AsCurrency;
  if (quMain.IsEmpty) and (quDetil.IsEmpty) then Abort;
  iPrint := Printer.Printers.IndexOf(sDPB);
  with TfmQRRptSalesO.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       qrlDate.Caption := FormatDateTime('dd MMMM yyyy',Date);
       LaDiskon.Caption := FormatCurr('#,0.00', Disc);
       QRLabel33.Caption := FormatCurr('#,0.00', Tax);
       LaGT.Caption := FormatCurr('#,0.00', stotal);
       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT POID,Convert(varchar(10),Transdate,103) as Tgl,'
            +'CONVERT(VARCHAR(8),Getdate(),108) as Jam,A.CustId,C.CustName,C.Address,'
            +'A.SalesID+'' - ''+D.SalesName as Sales,'
            +'CASE WHEN C.KodePOS='''' THEN C.City ELSE C.City+'' - ''+C.KodePOS END as City,'
            +'A.WarehouseID+'' - ''+B.WarehouseName as Gudang '
            +'FROM ARTrPurchaseOrderHd A INNER JOIN INMsWarehouse B ON A.WarehouseID=B.WarehouseID '
            +'INNER JOIN ARMsCustomer C ON A.CustId=C.CustId INNER JOIN ARMsSales D ON A.SalesID=D.SalesID '
            +'WHERE A.POID='''+quMainPOID.AsString+''' ');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add(' SELECT  A.ItemId,B.ItemName,CASE WHEN A.FgTax=''Y'' Then 1.1 Else 1 END As Tax,B.UOMId,ISNULL(Qty,0) as Qty,A.Price,B.Tipe,B.Lokasi FROM ARTrPurchaseOrderDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid WHERE A.POId='''+quMainPOID.AsString+'''  '
            +' ORDER BY A.UpdDate');
         Open;
       End;
       qlbKet.Caption := 'Tanggal Kirim '+qumaintglKirim.AsString;

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
    Add('UPDATE ARTrPurchaseOrderHd SET FgCetak=''Y'' WHERE POID='''+quMainPOID.AsString+''' ');
    ExecSQL;;
  end;
end;

procedure TfmARTRSales.quDetilCalcFields(DataSet: TDataSet);
var ATotal : currency;
begin
  inherited;
  if quDetilFgtax.AsString = 'Y' then
  ATotal := quDetilPrice.AsCurrency*quDetilQty.AsCurrency*1.1
  else
  ATotal := quDetilPrice.AsCurrency*quDetilQty.AsCurrency;

  qudetilATotal.AsCurrency := ATotal;
end;

procedure TfmARTRSales.quDetilItemIDChange(Sender: TField);
begin
  inherited;
  with quAct,sql do
    begin
     close;clear;
     add(' SELECT ItemName,isnull(UserPrice,0) as UserPrice,uomid2 as satuan '
        +' FROM INMsItem WHERE ItemId='''+quDetilItemID.AsString+'''');
     open;
    end;
    qudetilItemName.AsString := quAct.FieldbyName('ItemName').asString;
    qudetilUOMID.AsString := quAct.FieldbyName('satuan').asString;
    quDetilPrice.AsCurrency := quAct.Fieldbyname('UserPrice').AsCurrency;
end;

procedure TfmARTRSales.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qutotal.Requery();
  UpdateTTLSO;
end;

procedure TfmARTRSales.quMainAfterDelete(DataSet: TDataSet);
begin
  inherited;
  UpdateTTLSO
end;

procedure TfmARTRSales.dbgUOMIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Satuan';
       SQLString := 'SELECT K.UOMID2 as Satuan FROM '
                   +'(SELECT ItemID,UOMID2 FROM INMsItem UNION ALL SELECT ItemID,UOMID FROM INMsItem) as K '
                   +'WHERE K.ItemID='''+quDetilItemID.AsString+''' '
                   +'ORDER BY K.UOMID2';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilUOMID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTRSales.quDetilUOMIDChange(Sender: TField);
begin
  inherited;
  with quAct,sql do
  begin
    Close;Clear;
    Add('select uomid,konversi,UserPrice from inmsitem where itemid='''+qudetilItemid.AsString+''' ');
    Open;
  end;
  if qudetiluomid.asString = quact.fieldbyname('uomid').asString then
  qudetilPrice.AsCurrency := quact.fieldbyname('userprice').AsCurrency*quact.fieldbyname('konversi').AsCurrency
  else
  qudetilPrice.AsCurrency := quact.fieldbyname('userprice').AsCurrency;
end;

procedure TfmARTRSales.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if quMain.State <> dsBrowse then
  begin
    pesan('Silahkan tekan tombol simpan (F3) terlebih dahulu');
    Abort;
  end;
  CeKStatus;

  with quAct,SQL do
  begin
    Close;Clear;
    ADd('SELECT * FROM ARTrPurchaseOrderDt WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount >= 10 then
  begin
    pesan('1 Transkasi cuma bisa input 10 barang');
    Abort;
  end;
end;

end.
