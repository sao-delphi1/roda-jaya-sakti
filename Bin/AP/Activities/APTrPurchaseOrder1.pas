unit APTrPurchaseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxPageControl,
  dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer,
  dxDBELib, dxEditor, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, DBCtrls;

type
  TfmAPTrPurchaseOrder = class(TfmStdLv31)
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Shape6: TShape;
    Label3: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    Shape3: TShape;
    Label9: TLabel;
    DBText6: TDBText;
    Shape4: TShape;
    Label12: TLabel;
    DBText7: TDBText;
    Label14: TLabel;
    dbg: TdxDBGrid;
    dbgPOID: TdxDBGridMaskColumn;
    dbgItemID: TdxDBGridButtonColumn;
    dbgLuItemName: TdxDBGridColumn;
    dbgPRID: TdxDBGridButtonColumn;
    dbgQty: TdxDBGridColumn;
    dbgUOMID: TdxDBGridButtonColumn;
    dbgDisc: TdxDBGridColumn;
    dbgPrice: TdxDBGridColumn;
    dbgUpdDate: TdxDBGridDateColumn;
    dbgUpdUser: TdxDBGridMaskColumn;
    dbgCTotal: TdxDBGridColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    bbCetak: TdxButton;
    dxDBEdit1: TdxDBEdit;
    quMainPOID: TStringField;
    quMainPRID: TStringField;
    quMainSuppID: TStringField;
    quMainTransdate: TDateTimeField;
    quMainNote: TStringField;
    quMainTTLPO: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainLokasi: TStringField;
    quMainCityID: TStringField;
    quMainFgTax: TStringField;
    quMainTglKirim: TDateTimeField;
    quDetilPOID: TStringField;
    quDetilItemID: TStringField;
    quDetilPRID: TStringField;
    quDetilQty: TIntegerField;
    quDetilPrice: TBCDField;
    quDetilDisc: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilJumlah: TIntegerField;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quSupplier: TADOQuery;
    quItem: TADOQuery;
    quCalc: TADOQuery;
    quMainLuSuppName: TStringField;
    quDetilCTotal: TCurrencyField;
    Shape5: TShape;
    Label6: TLabel;
    Shape7: TShape;
    Label7: TLabel;
    DBText5: TDBText;
    quMainDisc: TBCDField;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBPajak: TdxDBImageEdit;
    quTotalTotal: TBCDField;
    quTotalSubTotal: TBCDField;
    quTotalPajak: TBCDField;
    quTotalGrandTotal: TBCDField;
    ceBerat: TdxCheckEdit;
    CePOLokal: TdxCheckEdit;
    DBText8: TDBText;
    DBText9: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    CePOPrice: TdxCheckEdit;
    quDetilDisc2: TBCDField;
    quDetilDisc3: TBCDField;
    dbgDisc2: TdxDBGridColumn;
    dbgDisc3: TdxDBGridColumn;
    Label23: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    quMainFgCetak: TStringField;
    quMainCurrID: TStringField;
    quMainLCurrName: TStringField;
    dxDBEdit3: TdxDBEdit;
    quMainKurs: TBCDField;
    Label22: TLabel;
    quDetilDiscItem: TBCDField;
    quTotalGrandTotalPO: TBCDField;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    quItemItemID: TStringField;
    quItemItemName: TStringField;
    quItemProductID: TStringField;
    quItemGroupID: TStringField;
    quItemProductDesc: TStringField;
    quItemGroupDesc: TStringField;
    quItemUOMID: TStringField;
    quItemUOMID2: TStringField;
    quDetilUOMID: TStringField;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    dbTerm: TDBRadioGroup;
    quMainFgTerm: TStringField;
    quMainTerm: TIntegerField;
    quMainDP: TBCDField;
    Label24: TLabel;
    dxDBEdit5: TdxDBEdit;
    Label25: TLabel;
    dxDBEdit6: TdxDBEdit;
    quMainFgEdit: TStringField;
    quDetilLuItemName: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
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
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure dbgUOMIDButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilUOMIDChange(Sender: TField);
    procedure bbCetakClick(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dbgPRIDButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure quDetilItemIDChange(Sender: TField);
    procedure dbTermChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure UpDateTTLPO;
    Procedure CekStatusHeader;
    Procedure CekStatusDetil;
  public
    { Public declarations }
  end;

var
  fmAPTrPurchaseOrder: TfmAPTrPurchaseOrder;

implementation

uses ConMain, MyUnit, Search, UnitGeneral, StdLv1, StdLv3,
  ARQRRptPurchaseOrder, RptLv0;

{$R *.dfm}
procedure TfmAPTrPurchaseOrder.CeKStatusHeader;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 POID,PurchaseID FROM APTrPurchaseHD WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Nota Pembelian ['+quAct.FieldByName('PurchaseID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;

   with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT ISNULL(FgEdit,''Y'') as FgEdit FROM APTrPurchaseOrderHD WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
    if quAct.FieldByName('FgEdit').AsString = 'T' then
    begin
       MsgInfo('Perlu Otorisasi! ['+quAct.FieldByName('PurchaseID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPTrPurchaseOrder.CeKStatusDetil;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 B.POID,A.PurchaseID FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID '
        +'WHERE B.POID='''+quMainPOID.AsString+''' AND A.ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Nota Pembelian ['+quAct.FieldByName('PurchaseID').AsString+'], tidak bisa edit/Delete lagi');
       //qudetil.Cancel;
       Abort;
    end;
  end;

   with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT ISNULL(FgEdit,''Y'') as FgEdit FROM APTrPurchaseOrderHD WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
    if quAct.FieldByName('FgEdit').AsString = 'T' then
    begin
       MsgInfo('Perlu Otorisasi! ['+quAct.FieldByName('PurchaseID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPTrPurchaseOrder.UpDateTTLPO;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Update APTrPurchaseOrderHD SET TTLPO='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''' '
       +' WHERE POID='''+quMainPOID.AsString+'''');
    ExecSQL;
  End;
End;
procedure TfmAPTrPurchaseOrder.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), POID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
  dbTerm.Top := 404;
  dbTerm.Left := 10;
end;

procedure TfmAPTrPurchaseOrder.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State <> dsInsert);
  SetReadOnly(dxDBDateEdit2,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit3,quMain.State <> dsInsert);
end;

procedure TfmAPTrPurchaseOrder.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Supplier';
    SQLString := 'SELECT SuppName as Supplier, SuppID as Kode_Supplier'
                +' FROM APMsSupplier ORDER BY SuppID';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainSuppID.AsString := Res[1];
    end;
  finally
    free;
  end;
end;

procedure TfmAPTrPurchaseOrder.dxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPTrPurchaseOrder.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainCurrID.AsString) = 'IDR' then quMainKurs.AsCurrency := 1;
  If Trim(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal PO tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If Trim(quMainSuppID.AsString)='' then
  Begin
    MsgInfo('Supplier tidak boleh kosong');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If Trim(quMainLuSuppName.AsString)='' then
  Begin
    MsgInfo('Supplier tidak ada dalam Master');
    quMainSuppID.FocusControl;
    Abort;
  End;

  if TRIM(quMainPRID.AsString)='' then quMainPRID.AsString := '-';
  if quMainPRID.AsString <> '-' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      add('SELECT PRID FROM APTrPurchaseRequestHD WHERE PRID='''+quMainPRID.AsString+''' ');
      Open;
      if IsEmpty then
      begin
        ShowMessage('Data PR tidak terdaftar di Transaksi Supplier Purchase Request');
        quMainPRID.FocusControl;
        Abort;
      end;
    end;
  end;
  if quMain.State=dsInsert then
  Begin
    ST := 'PO/'+PT+FormatDateTime('/YYMM/',quMainTransDate.AsDateTime);
    quMainPOID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPurchaseOrderHD', 'POID', ST, '0') + 1);
  End;
  if Trim(quMainPOID.AsString) = '' then
  begin
    MsgInfo('Nota PO tidak boleh kosong');
    quMainPOID.AsString;
    Abort;
  end;
  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPTrPurchaseOrder.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmAPTrPurchaseOrder.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Date;
  quMainTglKirim.AsDateTime:=Date;
  quMainTransdate.FocusControl;
  quMainFgTax.AsString := 'T';
  quMainKurs.AsCurrency := 1;
  quMainCurrID.AsString := 'IDR';
  quMainDisc.AsCurrency := 0;
  quMainPRID.AsString := '-';
  quMainFgTerm.AsString := '1';
  quMainDP.AsCurrency := 0;
  quMainTerm.AsInteger := 0;
  quMainFgEdit.asString := 'Y';
end;

procedure TfmAPTrPurchaseOrder.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var sQuery : string;
begin
  inherited;
  if quMainPRID.AsString <> '-' then
    sQuery := 'SELECT B.ItemName2 as Nama_Barang,A.Jumlah as JumPO,A.UOMID as Satuan,A.Price,A.Qty as Jumlah,A.ItemID as Kode_Barang  '
             +'FROM APTrPurchaseRequestDT A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
             +'WHERE A.PRID='''+quMainPRID.AsString+''' AND A.ItemID NOT IN '
             +'(SELECT ItemID FROM APTrPurchaseOrderDt WHERE PRID='''+quMainPRID.AsString+''' ) '
             +'ORDER BY A.ItemID'
  else
    sQuery := 'SELECT DISTINCT K.ItemName2 as Nama_Barang,K.Group_Barang,K.Product,K.Nota,ISNULL(SUM(K.Qty-K.Jumlah),0) as Qty,K.UOMID,K.ItemID FROM ('
             +'SELECT B.Transdate,C.ItemName2,E.GroupDesc as Group_Barang,D.ProductDesc as Product,A.PRID as Nota,A.Qty,A.UOMID,'
             +'ISNULL((SELECT SUM(X.Jumlah) as Total FROM APTrPurchaseOrderDt X INNER JOIN APTrPurchaseOrderHd Y ON X.POID=Y.POID '
             +'WHERE X.ItemID=A.ItemID AND X.PRID=A.PRID),0) as Jumlah,A.ItemID FROM APTrPurchaseRequestDt A '
             +'INNER JOIN APTrPurchaseRequestHd B ON A.PRID=B.PRID AND B.FgForm=''PR'' '
             +'INNER JOIN INMsItem C ON A.ItemID=C.ItemID INNER JOIN INMsProduct D ON C.ProductID=D.ProductID '
             +'INNER JOIN INMsGroup E ON C.GroupID=E.GroupID) as K WHERE ISNULL(K.Qty-K.Jumlah,0) > 0 '
             +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime)+''' '
             +'GROUP BY K.ItemName2,K.Group_Barang,K.Product,K.Nota,K.UOMID,K.ItemID ORDER BY K.ItemID';

  with TfmSearch.Create(Self) do
  try
    Title := 'Data Permintaan Barang';
    SQLString := sQuery;
    if ShowModal = MrOK then
    begin
       if quDetil.State = dsBrowse then quDetil.Edit;
       if quMainPRID.AsString = '-' then
       begin
         quDetilItemID.AsString := Res[6];
         quDetilJumlah.AsCurrency   := StrToCurr(Res[4]);
         quDetilPRID.AsString := Res[3];
         quDetilUOMID.AsString  := Res[5];
       end else
         quDetilItemID.AsString := Res[1];
    end;
  finally
    free;
  end;
end;

procedure TfmAPTrPurchaseOrder.quDetilBeforePost(DataSet: TDataSet);
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

  if TRIM(quDetilDisc.AsString) = '' then quDetilDisc.AsInteger := 0;

  if TRIM(quDetilUOMID.AsString) = '' then
  begin
    ShowMessage('Kolom satuan tidak boleh kosong');
    quDetilUOMID.FocusControl;
    Abort;
  end;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT ItemID FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' '
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

  if Trim(quMainPRID.AsString) <> '-' then
  begin
    with quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT PRID FROM APTrPurchaseRequestDT WHERE PRID='''+quMainPRID.AsString+''' '
         +'AND ItemID='''+quDetilItemID.AsString+''' ');
      Open;
      If IsEmpty then
      Begin
        MsgInfo('Data tidak terdapat pada Purchase Request');
        quDetilPRID.FocusControl;
        Abort;
      End;
    End;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(*) FROM  APTrPurchaseOrderDT WHERE POID=:POID AND ItemId=:ItemId AND PRID=:PRID');
        with Parameters do
        begin
           ParamByName('POID').Value := quMainPOID.AsString;
           ParamByName('ItemId').Value  := quDetilItemID.AsString;
           ParamByName('PRID').Value := quDetilPRID.AsString;
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

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPTrPurchaseOrder.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsInteger:=1;
  quDetilJumlah.AsInteger := 1;
  quDetilPrice.AsCurrency := 0;
  quDetilDisc.AsInteger := 0;
  quDetilDisc2.AsInteger := 0;
  quDetilDisc3.AsInteger := 0;
  quDetilDiscItem.AsInteger := 0;
  quDetilItemID.FocusControl;
  quDetilPRID.AsString := '-';
end;

procedure TfmAPTrPurchaseOrder.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  //SetReadOnly(dbgDisc,quDetil.State<>dsInsert);
//  SetReadOnly(dbgQty,quDetil.State<>dsInsert);
  SetReadOnly(dbgPRID,True);
  SetReadOnly(dbgUOMID,True);
  SetReadOnly(dbgLuItemName,TRUE);
  SetReadOnly(dbgCTotal,TRUE);
end;

procedure TfmAPTrPurchaseOrder.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Supplier Purchase Order';
     SQLString := 'SELECT POID as No_PO,Convert(Varchar(10),Transdate,103) as Tanggal ,A.SuppID as Kode_Supplier, '
                 +'B.SuppName as Supplier,CASE WHEN A.FgTax=''Y'' THEN ''Pajak'' ELSE ''Non Pajak'' END as Status,'
                 +'ISNULL(A.TTLPO,0) as Total_PO,A.Note as Keterangan FROM APTrPurchaseOrderHD A '
                 +'INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID WHERE '+FSQLWhere
                 +'ORDER BY A.POID';
     if ShowModal = MrOK then
     begin
       quMain.Locate('POID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmAPTrPurchaseOrder.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmAPTrPurchaseOrder.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPTrPurchaseOrder.KrgBrgClick(Sender: TObject);
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

procedure TfmAPTrPurchaseOrder.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmAPTrPurchaseOrder.quDetilCalcFields(DataSet: TDataSet);
var CTotal,Disc1,Disc2,Disc3,Rate : currency;
begin
  inherited;
  Rate := quMainKurs.AsCurrency ;
  CTotal := quDetilJumlah.AsCurrency*round(quDetilPrice.AsCurrency);
//  CTotal := quDetilJumlah.AsCurrency*round(quDetilPrice.AsCurrency*Rate);
  Disc1 := CTotal*qudetildisc.AsCurrency/100;
  Disc2 := (CTotal-Disc1)*qudetildisc2.AsCurrency/100;
  Disc3 := (CTotal-Disc1-Disc2)*qudetildisc3.AsCurrency/100;

  quDetilCTotal.Value := CTotal-Disc1-Disc2-Disc3;

  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT ItemName2 FROM INMsItem '
       +'WHERE ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  qudetilLuItemName.asString := quCalc.fieldbyName('ItemName2').asString;
end;

procedure TfmAPTrPurchaseOrder.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpDateTTLPO;
  quDetil.Append;
end;

procedure TfmAPTrPurchaseOrder.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpDateTTLPO;
end;

procedure TfmAPTrPurchaseOrder.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Supplier Purchase Request';
    SQLString := 'SELECT PRID as No_PR, CONVERT(VARCHAR(10),Transdate,103) as Tgl_PR '
                +'FROM APTrPurchaseRequestHD WHERE SuppID='''+quMainSuppID.AsString+''' '
                +'AND CONVERT(VARCHAR(8),Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime)+''' ';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainPRID.AsString := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmAPTrPurchaseOrder.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (quMain.IsEmpty) or  (quMain.State <> dsBrowse ) then Abort;
  CekStatusHeader;
end;

procedure TfmAPTrPurchaseOrder.dbgUOMIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Satuan';
       SQLString := 'SELECT K.UOMID2 as Satuan FROM '//(SELECT ItemID,UOMID FROM INMsItem UNION ALL '
                   +'(SELECT ItemID,UOMID2 FROM INMsItem) as K '
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

procedure TfmAPTrPurchaseOrder.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatusHeader;
end;

procedure TfmAPTrPurchaseOrder.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatusDetil;
end;

procedure TfmAPTrPurchaseOrder.quDetilUOMIDChange(Sender: TField);
var Jum : Currency;
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT UOMID2,Konversi FROM INMsItem '
       +'WHERE ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  if quDetilUOMID.AsString = quCalc.FieldByName('UOMID2').AsString then
    Jum := quDetilJumlah.AsCurrency
  else
    Jum := quDetilJumlah.AsCurrency * quCalc.FieldByName('Konversi').AsCurrency;
  quDetilQty.AsCurrency := Jum;
end;

procedure TfmAPTrPurchaseOrder.bbCetakClick(Sender: TObject);
var otorisasi,company,add1,phone,email,fax,Term,note,Fgterm : string;
disc,stotal,tax : currency;
begin
  inherited;
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select CompanyName,CompanyAdd1,isnull(Email,''-'') as email,isnull(Fax,''-'') as fax,isnull(Phone,''0000-000-000'') as phone From SaMsCompany ');
    Open;
  End;
  company := quAct.FieldbyName('CompanyName').AsString;
  add1 := quAct.FieldbyName('CompanyAdd1').AsString;
  phone := quAct.FieldbyName('Phone').AsString;
  email := quAct.FieldbyName('Email').AsString;
  fax := quAct.FieldbyName('Fax').AsString;

  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select isnull(Note,''-'') as note,Disc,TTLPO,CASE WHEN FGTax=''Y'' THEN (TTLPO-DISC)*0.1 ELSE 0 END as Tax, '
       +' CASE WHEN FgTerm=1 THEN ''CASH ON DELIVERY'' WHEN FgTerm=2 THEN ''CASH BEFORE DELIVERY'' WHEN FgTerm=3 Then ''DP'' ELSE ''TEMPO'' END as termin,Term,FgTerm '
       +' From APTRPurchaseOrderHD Where POID='''+quMainPOID.AsString+''' ');
    Open;
  End;
  Disc := quAct.FieldbyName('Disc').AsCurrency;
  sTotal := quAct.FieldbyName('TTLPO').AsCurrency;
  tax := quAct.FieldbyName('Tax').AsCurrency;
  note := quAct.FieldbyName('Note').AsString;
  {
  if quAct.FieldByName('Termin').asString <> 'Term' then
  begin
    if quAct.FieldByName('FgTerm').asString = '3' then
    term := 'Pengiriman Setelah DP '+ quAct.FieldByName('Term').asString + '%'
    else
    term := 'Pembayaran ' + quAct.FieldByName('Term').asString + ' setelah tukar faktur ';
  end else
    begin
        term :=  quAct.FieldByName('Termin').asString
    end;
              }
  term :=  quAct.FieldByName('Termin').asString;

  otorisasi := dmMain.UserId;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  if (quMain.IsEmpty) or (quDetil.IsEmpty) then Abort;
  Begin
     with TfmARQRRptPurchaseOrder.Create(Self) do
     try
     qrlCompName.Caption := company;
     Qrlabel5.Caption := CurrtoStr(Disc);
     qrlabel8.caption := CurrtoStr(Tax);
     qrlabel11.caption := CurrtoStr(sTotal);

     qlb1.Caption := company; qlb2.Caption := add1; qlb3.Caption := phone;
     qlb3.Caption := email; qlb5.Caption := fax; qlb6.Caption := term;
     qlbnote.caption := note;

     if UpperCase(quMainCurrId.Value) ='IDR' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #';
       end;
       if UpperCase(quMainCurrId.Value) ='USD' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
       end;

       with qu001,SQL do
       Begin
         Close;Clear;
         add('select A.POID,CONVERT(varchar(10),A.TglKirim,103) as TglKirim,CONVERT(varchar(10),A.Transdate,103) as Tanggal,B.SuppName as CustName,B.ContactPerson as UP, '
            +'B.Address as Address,B.Phone,B.Fax from aptrpurchaseorderhd A '
            +'inner join ApmsSupplier B on A.Suppid=B.Suppid where POID='''+quMainPOID.AsString+''' ');
         Open;
       End;

       with qu002,SQL do
       Begin
         Close;Clear;
         add('select A.ItemId,B.ItemName2 as ItemName,A.Qty as Jumlah,A.Price,A.UOMID,A.Price*A.Qty as total from aptrpurchaseorderdt A '
            +'inner join inmsitem B on A.ItemId=B.itemid where A.POID=:POID ');
            Parameters.ParamByName('POID').DataType := ftString;
         Open;
       End;

       MyReport.PreviewModal;

     finally
        free;
     end;
  End;
end;

procedure TfmAPTrPurchaseOrder.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Currency';
       SQLString := 'SELECT CurrId as Currency, CurrName as Description '
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

procedure TfmAPTrPurchaseOrder.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  if quMainFgTerm.AsString = '1' then
  begin
    Label24.Visible := False;
    dxDBEdit5.Visible := False;
    Label25.Visible := False;
    dxDBEdit6.Visible := False;
  end else
  if quMainFgTerm.AsString = '2' then
  begin
    Label24.Visible := False;
    dxDBEdit5.Visible := False;
    Label25.Visible := False;
    dxDBEdit6.Visible := False;
  end else
  if quMainFgTerm.AsString = '3' then
  begin
    Label24.Visible := True;
    dxDBEdit5.Visible := True;
    Label25.Visible := False;
    dxDBEdit6.Visible := False;
  end else
  begin
    Label24.Visible := False;
    dxDBEdit5.Visible := False;
    Label25.Visible := True;
    dxDBEdit6.Visible := True;
  end;
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select CurrName From SaMsValuta WHERE CurrId='''+quMainCurrID.AsString+''' ');
    Open;
  End;
  quMainLCurrName.asString := quAct.FieldByName('CurrName').AsString ;
end;

procedure TfmAPTrPurchaseOrder.dbgPRIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Permintaan Barang';
    SQLString := 'SELECT DISTINCT PRID,ISNULL(Jumlah,0) as Jumlah,UOMID as Unit,UpdUser as Request_By FROM APTrPurchaseRequestDT '
                +'WHERE ItemID='''+quDetilItemID.AsString+''' AND PRID NOT IN (SELECT PRID FROM APTrPurchaseOrderDt) ORDER BY PRID';
    if ShowModal = MrOK then
    begin
       if quDetil.State = dsBrowse then quDetil.Edit;
         quDetilPRID.AsString := Res[0];
         quDetilJumlah.AsCurrency   := StrToCurr(Res[1]);
         quDetilUOMID.AsString := Res[2];
    end;
  finally
    free;
  end;
end;

procedure TfmAPTrPurchaseOrder.quDetilItemIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT UOMID2 FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quDetilUOMID.AsString := quAct.FieldByName('UOMID2').AsString;
end;

procedure TfmAPTrPurchaseOrder.dbTermChange(Sender: TObject);
begin
  inherited;
  if dbTerm.ItemIndex = 0 then
  begin
    Label24.Visible := False;
    dxDBEdit5.Visible := False;
    Label25.Visible := False;
    dxDBEdit6.Visible := False;
  end else
  if dbTerm.ItemIndex = 1 then
  begin
    Label24.Visible := False;
    dxDBEdit5.Visible := False;
    Label25.Visible := False;
    dxDBEdit6.Visible := False;
  end else
  if dbTerm.ItemIndex = 2 then
  begin
    Label24.Visible := True;
    dxDBEdit5.Visible := True;
    Label25.Visible := False;
    dxDBEdit6.Visible := False;
  end else
  begin
    Label24.Visible := False;
    dxDBEdit5.Visible := False;
    Label25.Visible := True;
    dxDBEdit6.Visible := True;
  end;
end;

procedure TfmAPTrPurchaseOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   with quAct, SQL do
  begin
    Close; Clear;
    Add('Update APTrPurchaseOrderHD Set FgEdit=''T'' WHERE POID='''+quMainPOID.AsString+''' ');
    ExecSQL;
  end;
end;

procedure TfmAPTrPurchaseOrder.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  //CekStatusHeader;
  CekStatusDetil;
end;

end.
