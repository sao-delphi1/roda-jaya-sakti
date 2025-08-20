unit INMsItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBELib, dxEditor, DBCtrls, dxDBTLCl, dxGrClms;

type
  TfmINMSItem = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    quMainItemID: TStringField;
    quMainItemName: TStringField;
    quMainProductID: TStringField;
    quMainGroupID: TStringField;
    quMainUOMID: TStringField;
    quMainGarantee: TStringField;
    quMainUserPrice: TBCDField;
    quMainDealerPrice: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    quProduct: TADOQuery;
    quGroup: TADOQuery;
    quMainLProduct: TStringField;
    quMainLGroup: TStringField;
    dbgListItemID: TdxDBGridColumn;
    dbgListItemName: TdxDBGridColumn;
    dbgListProduct: TdxDBGridColumn;
    dbgListGroup: TdxDBGridColumn;
    dbgListGaransi: TdxDBGridColumn;
    dbgListValuta: TdxDBGridColumn;
    dbgListUserPrice: TdxDBGridColumn;
    dbgListDealerPrice: TdxDBGridColumn;
    quMainGaransi: TStringField;
    quMainCurrID: TStringField;
    quTemp: TADOQuery;
    Label14: TLabel;
    quUOM: TADOQuery;
    quMainLUOMID: TStringField;
    quMainJangkaGarantee: TBCDField;
    Label18: TLabel;
    quMainMinimumStok: TBCDField;
    DBText4: TDBText;
    quTypeUnit: TADOQuery;
    quMainKomisi: TBCDField;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quMainCtk: TStringField;
    quMainFgActive: TStringField;
    quMainStock: TIntegerField;
    dbgListStock: TdxDBGridColumn;
    Label15: TLabel;
    Label4: TLabel;
    quMainNote: TStringField;
    quMainJenis: TStringField;
    Label9: TLabel;
    quMainTipe: TStringField;
    Label16: TLabel;
    quMainLokasi: TStringField;
    dxDBEdit5: TdxDBEdit;
    dxDBImageEdit2: TdxDBImageEdit;
    dxDBEdit6: TdxDBEdit;
    Label23: TLabel;
    Label27: TLabel;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Label29: TLabel;
    edKodeBarang: TdxEdit;
    quMainCHPP: TCurrencyField;
    Label28: TLabel;
    dxDBSpinEdit1: TdxDBSpinEdit;
    Label30: TLabel;
    quMainUOMID2: TStringField;
    quMainKonversi: TBCDField;
    Label31: TLabel;
    DBText1: TDBText;
    Label33: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    Label34: TLabel;
    Label35: TLabel;
    dxDBEdit3: TdxDBEdit;
    quMainItemName2: TStringField;
    quMainLUOMID2: TStringField;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    dxDBEdit7: TdxDBEdit;
    quMainfguomid: TStringField;
    dxDBButtonEdit5: TdxDBButtonEdit;
    Label17: TLabel;
    Label19: TLabel;
    quMaintypeunit: TStringField;
    dxDBButtonEdit6: TdxDBButtonEdit;
    quMainLTypeUnit: TStringField;
    DBText2: TDBText;
    quMainmerk: TStringField;
    Label20: TLabel;
    dxDBEdit10: TdxDBEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    Label24: TLabel;
    dxDBEdit11: TdxDBEdit;
    Label25: TLabel;
    dxDBEdit12: TdxDBEdit;
    quMainLayout: TStringField;
    dxDBButtonEdit7: TdxDBButtonEdit;
    quMainLJenis: TStringField;
    Label26: TLabel;
    dxDBImageEdit3: TdxDBImageEdit;
    Label32: TLabel;
    dxDBEdit13: TdxDBEdit;
    GroupBox1: TGroupBox;
    Label36: TLabel;
    dxDBImageEdit4: TdxDBImageEdit;
    Label37: TLabel;
    dxDBEdit14: TdxDBEdit;
    quMainFgLama: TStringField;
    quMainLama: TIntegerField;
    DBText6: TDBText;
    Label38: TLabel;
    dxDBButtonEdit8: TdxDBButtonEdit;
    quMainCategoryID: TStringField;
    quMainLCategory: TStringField;
    dbg: TdxDBGrid;
    dbgTypeUnit: TdxDBGridButtonColumn;
    dbgNamaUnit: TdxDBGridColumn;
    dbgTypeClassUnit: TdxDBGridButtonColumn;
    quDetilNoUnit: TStringField;
    quDetilDescription: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilFgGroup: TStringField;
    quDetilgroupid: TStringField;
    quDetiljenis: TStringField;
    quDetilPayload: TBCDField;
    quDetilFgActive: TStringField;
    quDetilTypeClassUnit: TStringField;
    quDetilLokasi: TStringField;
    dbgGroup: TdxDBGridColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    quDetilItemID: TStringField;
    DBText7: TDBText;
    Label39: TLabel;
    dxDBButtonEdit9: TdxDBButtonEdit;
    quMainLCompartment: TStringField;
    quMainCompartmentID: TStringField;
    quMainFgPO: TStringField;
    quRef: TADOQuery;
    dsRef: TDataSource;
    quRefItemID: TStringField;
    quRefNumAll: TAutoIncField;
    quRefRefID: TStringField;
    quRefUpdDate: TDateTimeField;
    quRefUpdUser: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridButtonColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    quRefLItemName: TStringField;
    quRefLTypeUnit: TStringField;
    quAct2: TADOQuery;
    quAct3: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainUOMIDChange(Sender: TField);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgTypeUnitButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsRefStateChange(Sender: TObject);
    procedure dxDBGrid1Column2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quRefCalcFields(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure quRefBeforePost(DataSet: TDataSet);
    procedure quRefAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CekStatus;
  public
    { Public declarations }
  end;

var
  fmINMSItem: TfmINMSItem;

implementation

uses StdLv2, StdLv1, StdLv0, UnitGeneral, ConMain, Search, MyUnit, StdLv3;

{$R *.dfm}
procedure TfmINMSItem.CekStatus;
Begin
 With quAct,sql do
 Begin
  Close;Clear;
  Add(' SELECT top 1 1 as kode FROM APTrPurchaseDt WHERE ItemId=:kdbrg1'+
      ' union select top 1 2 as kode from ARTrPenjualanDt where ItemId=:kdbrg2'+
      ' union select top 1 3 as kode from INTrTransferItemDt where ItemId=:kdbrg3'+
      ' union select top 1 4 as kode from INTrAdjustmentDt where ItemID=:kdbrg4'+
      ' union select top 1 5 as kode from ARTrKonTransBrgDt where ItemId=:kdbrg5'+
      ' union select top 1 6 as kode from APTrKonsinyasiDt where ItemID=:kdbrg6 '+
      ' union select top 1 7 as kode from APTrPurchaseOrderDt where ItemID=:kdbrg7 '+
      ' union select top 1 8 as kode from APTrPurchaseRequestDt where ItemID=:kdbrg8 ');
      Parameters.ParamByName('kdbrg1').Value := quMainItemID.AsString;
      Parameters.ParamByName('kdbrg2').Value := quMainItemID.AsString;
      Parameters.ParamByName('kdbrg3').Value := quMainItemID.AsString;
      Parameters.ParamByName('kdbrg4').Value := quMainItemID.AsString;
      Parameters.ParamByName('kdbrg5').Value := quMainItemID.AsString;
      Parameters.ParamByName('kdbrg6').Value := quMainItemID.AsString;
      Parameters.ParamByName('kdbrg7').Value := quMainItemID.AsString;
      Parameters.ParamByName('kdbrg8').Value := quMainItemID.AsString;
      Open;
      if Not IsEmpty then
      begin
        case quAct.FieldByName('kode').AsInteger of
          1 : pesan('Kode Barang sedang digunakan di transaksi PEMBELIAN');
          2 : pesan('Kode Barang sedang digunakan di transaksi PENJUALAN');
          3 : pesan('Kode Barang sedang digunakan di transaksi TRANSFER Antar Cabang');
          4 : pesan('Kode Barang sedang digunakan di transaksi Adjusment');
          5 : pesan('Kode Barang sedang digunakan di transaksi TRANSFER Konsiyasi');
          6 : pesan('Kode Barang sedang digunakan di transaksi Terima Barang Konsiyasi');
          7 : pesan('Kode Barang sedang digunakan di transaksi PR');
          8 : pesan('Kode Barang sedang digunakan di transaksi PO');
        end;
        Abort;
     end;
  End;

     
End;


procedure TfmINMSItem.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
end;

procedure TfmINMSItem.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  quRef.Active := TRUE;
  ts01.TabVisible := FALSE;
  Label29.Left := 6; edKodeBarang.Left := 6;
  Label29.Top := 11; edKodeBarang.Top := 30;

  if (LowerCase(dmMain.UserID)<>'super') AND (LowerCase(dmMain.UserID)<>'shoen') AND (LowerCase(dmMain.UserID)<>'ronny')
  AND(LowerCase(dmMain.UserId)<>'super2') AND(LowerCase(dmMain.UserId)<>'andy') AND(GroupUser<>'HO-SPV-AP') AND (GroupUser<>'HO-HEAD-AP') then
  begin
    Edit1.Visible := False;
    Button1.Visible := False;
    Edit2.Visible := False;
    Button2.Visible := False;
  end;
end;

procedure TfmINMSItem.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,quMain.State <> dsInsert);
  //SetReadOnly(dxDBButtonEdit6,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit4,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit3,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State <> dsInsert);
  SetReadOnly(dxDBEdit8,quMain.State <> dsInsert);
  SetReadOnly(dxDBEdit6,TRUE);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmINMSItem.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key='%') or (Key='@') then
  begin
    MsgInfo('Nama Barang tidak boleh mengandung tanda % atau @ ');
    Abort;
  end;

  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmINMSItem.quMainBeforePost(DataSet: TDataSet);
begin
   inherited;
   If Trim(quMainItemName.Value)='' then
   begin
    MsgInfo('Nama Barang tidak boleh kosong');
    quMainItemName.FocusControl;
    Abort;
   end;

   if Trim(quMainItemID.AsString)='' then
   begin
     MsgInfo('Part Number tidak boleh kosong');
     quMainItemID.FocusControl;
     abort;
   end;

  { if Trim(quMainLProduct.AsString)='' then
   begin
     MsgInfo('Kode Product tidak ada dalam Master Product');
     quMainProductID.FocusControl;
     abort;
   end;

   if Trim(quMainGroupID.AsString)='' then
   begin
     MsgInfo('Kode Group tidak boleh kosong');
     quMainGroupID.FocusControl;
     abort;
   end;

   if Trim(quMainLGroup.AsString)='' then
   begin
     MsgInfo('Kode Group tidak ada dalam Master Group');
     quMainGroupID.FocusControl;
     abort;
   end;         }

   If Trim(quMaintypeunit.Value)='' then
   begin
    MsgInfo('Type Unit tidak boleh kosong');
    quMaintypeunit.FocusControl;
    Abort;
   end;

   if Trim(quMainLTypeUnit.AsString)='' then
   begin
     MsgInfo('Type unit tidak ada dalam Master Group');
     quMaintypeunit.FocusControl;
     abort;
   end;

   if Trim(quMainUOMID.AsString)='' then
   begin
     MsgInfo('satuan tidak boleh kosong');
     quMainUOMID.FocusControl;
     abort;
   end;

   if Trim(quMainLUOMID.AsString)='' then
   begin
     MsgInfo('Satuan tidak ada dalam Master');
     quMainUOMID.FocusControl;
     abort;
   end;

  { if Trim(quMainUOMID2.AsString)='' then
   begin
     MsgInfo('satuan tidak boleh kosong');
     quMainUOMID.FocusControl;
     abort;
   end;

   if Trim(quMainLUOMID2.AsString)='' then
   begin
     MsgInfo('Satuan tidak ada dalam Master');
     quMainUOMID.FocusControl;
     abort;
   end;

   if TRIM(quMainKonversi.AsString) = '' then
   begin
     pesan('Field Konversi tidak boleh kosong');
     quMainKonversi.FocusControl;
     Abort;
   end;      }

   quMainUOMID2.ASString := quMainUOMID.ASString ;
   quMainKonversi.AsCurrency := 1;

   if TRIM(quMainMinimumStok.AsString)='' then
   Begin
     MsgInfo('Minimum stok harus diisi');
     quMainMinimumStok.FocusControl;
     Abort;
   End;

   if quMainMinimumStok.Value < 0 then
   Begin
     MsgInfo('Minimum Stok Harus lebih besar sama dengan 0');
     quMainMinimumStok.FocusControl;
     Abort;
   End;

{   if TRIM(quMainTipe.AsString) = '' then
   begin
     pesan('Tipe barang tidak boleh kosong');
     quMainTipe.FocusControl;
     Abort;
   end;

   if TRIM(quMainGarantee.AsString)='' then
   Begin
      MsgInfo('Lama Jangka Garantee harus diisi');
      quMainGarantee.FocusControl;
      Abort;
   End;

   If quMainGarantee.AsString='1' then
   Begin
     if quMainJangkaGarantee.Value<= 0  then
     Begin
       MsgInfo('Lama jangka Garantee belum di isi');
       quMainJangkaGarantee.FocusControl;
       Abort;
     End;
   End;

   If quMainGarantee.AsString='0' then
   Begin
     if (quMainJangkaGarantee.Value > 0 ) OR (quMainJangkaGarantee.Value < 0 ) then
     Begin
       quMainJangkaGarantee.Value:=0;
     End;
   End;

   if UpperCase(quMainCurrID.Value)='IDR' then
   Begin
    quMainUserPrice.Value:= Round(quMainUserPrice.Value);
    quMainDealerPrice.Value := Round(quMainDealerPrice.Value);
   End;

   if TRIM(quMainKomisi.AsString)='' then
   Begin
     MsgInfo('Komisi tidak boleh kosong');
     quMainKomisi.FocusControl;
     Abort;
   End;}

  { if quMain.State=dsInsert then
   Begin
     ST := quMainProductID.AsString+'.'+quMainGroupID.AsString+'.';
     //quMainItemID.AsString  := ST + FormatFloat('0000000', RunNumberGL(quAct, 'INMsItem', 'ItemID', ST, '0') + 1);
   End;    }

   If quMain.State = dsInsert then
   begin
     With quAct,SQL do
     begin
       Close;Clear;
       add('SELECT ItemID FROM INMsItem WHERE ItemID='''+quMainItemID.AsString+'''');
       Open;
       If Not IsEmpty then
       begin
         MsgInfo('Part Number ini sudah ada');
         quMainItemName.FocusControl;
         Abort;
       end;
     End;
   end;

  { if (quMainFgUOMId.ASString<>qumainUOMID.AsString) AND (quMainFgUOMID.AsString<>quMainUomid2.AsString) then
   begin
     MsgInfo('Default Satuan Jual Merupakan Satuan Besar atau Kecil yang terdaftar ');
     quMainfguomid.FocusControl;
     Abort;
   end; }
   quMainFgUOMID.AsString := quMainUOMID.ASString;
   quMainItemName2.AsString := quMainItemName.AsString;
   quMainUpdDate.AsDateTime := GetServerDateTime;
   quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmINMSItem.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Barang';
         SQLString := ' SELECT ItemID as Kode_Barang,ItemName as Nama_Barang,A.TypeUnit,A.Merk, '
                     //+'(SELECT ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                     //+'   FROM ALLITEM F WHERE CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
                     //+'   AND F.ItemID=A.ItemID) as Stock,UserPRice Harga_Jual,B.ProductDesc as Product,C.GroupDesc as Group_Barang,'
                     +' CASE WHEN A.FgActive=''Y'' THEN ''Active'' ELSE ''Tidak Active'' END as Status From INMSItem A '
                     //+' INNER JOIN INMsProduct B ON A.ProductID=B.ProductID INNER JOIN INMsGroup C ON A.GroupID = C.GroupID '
                     +' order by A.ItemName, A.ItemID ';
         KeyValue := edKodeBarang.Text;
         if ShowModal = MrOk then
         begin
            quMain.Locate('ItemId',Res[0],[]);
            dxDBEdit1.SetFocus;
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmINMSItem.dxDBButtonEdit8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Category';
         SQLString := 'SELECT GroupDesc as Nama_Category,GroupID as Kode_Category'
                     +' FROM INMsGroup ORDER BY GroupID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainCategoryID.Value:= res[1];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmINMSItem.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Group';
         SQLString := 'SELECT GroupDesc as Description,GroupID as Kode_Group'
                     +' FROM INMsGroup ORDER BY GroupID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainGroupID.Value:= res[1];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmINMSItem.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainGarantee.AsString :='0';
  quMainMinimumStok.AsInteger := 0;
  quMainJangkaGarantee.AsInteger:=0;
  quMainCurrID.AsString :='IDR';
  quMainDealerPrice.AsInteger:=0;
  quMainUserPrice.AsInteger:=0;
  quMainKomisi.AsInteger :=0;
  quMainFgActive.AsString := 'Y';
  quMainLokasi.ASString := 'T';
  quMainTipe.AsString := 'N';
  quMainJenis.AsString := 'S';
  quMainFgLama.AsString := 'D';
  quMainLama.AsInteger := 0;
  quMainProductID.FocusControl;
  quMainFgPO.AsString := 'Y';
end;

procedure TfmINMSItem.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Product';
         SQLString := 'SELECT ProductDesc as Product,ProductID as Kode'
                     +' FROM INMsProduct ORDER BY ProductID';
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

procedure TfmINMSItem.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;

  with quAct,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainItemID.ASString+''',''Delete'',''Hapus Barang'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
end;

procedure TfmINMSItem.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Satuan';
         SQLString := 'SELECT UOMID as Kode_Satuan'
                     +' FROM INMsUOM'
                     +' ORDER BY UOMID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainUOMID.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmINMSItem.quMainCalcFields(DataSet: TDataSet);
var Modal : Currency;
begin
  inherited;
  with quact,SQL do
  begin
    Close;Clear;
    Add('select nmmaster from allmaster where kdmaster='''+quMainJenis.ASString+''' ');
    Open;
  end;
  quMainLJenis.ASString := quAct.FieldByName('NmMaster').ASString;

  with quact,SQL do
  begin
    Close;Clear;
    Add('select GroupID,GroupDesc from INMsGroup where GroupID='''+quMainCategoryID.ASString+''' ');
    Open;
  end;
  quMainLCategory.ASString := quAct.FieldByName('GroupDesc').ASString;

  with quact,SQL do
  begin
    Close;Clear;
    Add('select ProductDesc from INMsProduct where ProductID='''+quMainCompartmentID.ASString+''' ');
    Open;
  end;
  quMainLCompartment.ASString := quAct.FieldByName('ProductDesc').ASString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT A.ItemID,(SELECT ISNULL(SUM(CASE WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
       +'FROM ALLITEM F WHERE F.ItemID=A.ItemID) as Stock,(SELECT ISNULL(SUM(B.Qty*B.Price)/SUM(B.Qty),0) as HPP FROM APTrKonsinyasiInvDt B '
       +'WHERE B.ItemID=A.ItemID) as Modal FROM INMsItem A WHERE A.ItemID='''+quMainItemID.AsString+''' ');
    Open;
  end;
  Modal := quAct.FieldByName('Modal').AsCurrency;
  quMainStock.AsInteger := quAct.FieldByName('Stock').AsInteger;
  quMainCHPP.AsCurrency := Modal;
end;

procedure TfmINMSItem.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Satuan';
         SQLString := 'SELECT UOMID as Kode_Satuan'
                     +' FROM INMsUOM'
                     +' ORDER BY UOMID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainUOMID2.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmINMSItem.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgTypeClassUnit,TRUE);
  SetReadOnly(dbgNamaUnit,TRUE);
  SetReadOnly(dbgGroup,TRUE);
//  setreadonly(qumainitemid,
end;

procedure TfmINMSItem.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Satuan';
         SQLString := 'SELECT UOMID as Kode_Satuan'
                     +' FROM INMsUOM'
                     +' ORDER BY UOMID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainFgUOMID.Value:= res[0];
         end;
       finally
         free;
       end;
  end;;
end;

procedure TfmINMSItem.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  begin
   try
     Title := 'Type Unit';
     SQLString := 'SELECT TypeUnit,Description FROM INMsTypeUnit ORDER BY TypeUnit';
     if ShowModal = MrOk then
     begin
       if quMain.State = dsBrowse then quMain.edit;
          quMaintypeunit.Value:= res[0];
     end;
   finally
     free;
   end;
  end;
end;

procedure TfmINMSItem.quMainUOMIDChange(Sender: TField);
begin
  inherited;
  quMainfguomid.ASString := quMainUOMID2.AsString;
end;

procedure TfmINMSItem.Button1Click(Sender: TObject);
begin
  inherited;
  if (TRIM(Edit1.Text)='') then
  begin
    ShowMessage('Kode Baru Belum Diisi');
    Edit1.SetFocus;
    Abort;
  end;

  if (MessageDlg('Ganti Part number '''+quMainItemID.ASString+''' menjadi '''+Edit1.Text+''' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    With quAct,sql do
    Begin
      Close;Clear;
      Add(' update APtrKonsinyasiDt set ItemID='''+Edit1.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update InTrAdjustmentDt set ItemID='''+Edit1.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update INTrTransferItemDt set ItemID='''+Edit1.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update APTrPurchaseRequestDt set ItemID='''+Edit1.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update APTrPurchaseOrderDt set ItemID='''+Edit1.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update AllItem set ItemID='''+Edit1.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update INMsItem set ItemID='''+Edit1.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update INTrKanibalDt set ItemID='''+Edit1.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      //showmessage(sql.text);
      ExecSQL;
    End;
  end;
  ShowMessage('Data Part Number Sudah Diubah. Keluar Master Barang untuk refresh');
end;

procedure TfmINMSItem.Edit2Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Satuan';
         SQLString := 'SELECT UOMID as Kode_Satuan FROM INMsUOM ORDER BY UOMID';
         if ShowModal = MrOk then
         begin
           Edit2.Text := res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmINMSItem.Button2Click(Sender: TObject);
begin
  inherited;
  if (TRIM(Edit2.Text)='') then
  begin
    ShowMessage('Satuan Baru Belum Diisi');
    Edit1.SetFocus;
    Abort;
  end;

  if (MessageDlg('Satuan yang diubah adalah satuan dari part number '''+quMainItemID.ASString+''' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    With quAct,sql do
    Begin
      Close;Clear;
      Add(' update APtrKonsinyasiDt set UOMID='''+Edit2.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update APTrPurchaseRequestDt set UOMID='''+Edit2.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update APTrPurchaseOrderDt set UOMID='''+Edit2.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      Add(' update INMsItem set UOMID='''+Edit2.Text+''',UOMID2='''+Edit2.Text+''',FgUOMID='''+Edit2.Text+''' WHERE ItemId='''+quMainItemID.AsString+''' ');
      //showmessage(sql.text);
      ExecSQL;
    End;
  end;
  ShowMessage('Data Satuan Sudah Diubah. Keluar Master Barang untuk refresh');
end;

procedure TfmINMSItem.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  begin
   try
     Title := 'Jenis Barang';
     SQLString := 'SELECT NmMaster as Nama_Jenis,KdMaster as Kode_Jenis FROM AllMaster where fgmaster=''J'' ORDER BY Nama_Jenis';
     if ShowModal = MrOk then
     begin
       if quMain.State = dsBrowse then quMain.edit;
          quMainJenis.Value:= res[1];
     end;
   finally
     free;
   end;
  end;
end;

procedure TfmINMSItem.dbgTypeUnitButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'No Unit';
       SQLString := 'select TypeUnit,Description from INMsTypeUnit';
       if ShowModal = MrOK then
       begin
          if qudetil.State = dsBrowse then qudetil.Edit;
          quDetilNoUnit.Value := Res[0];
          quDetilDescription.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmINMSItem.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append
end;

procedure TfmINMSItem.KrgBrgClick(Sender: TObject);
begin
  inherited;
   if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Type Unit ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmINMSItem.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmINMSItem.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmINMSItem.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilUpdUser.AsString:= dmMain.UserID;
  quDetilUpdDate.AsDateTime:= Date;
end;

procedure TfmINMSItem.dxDBButtonEdit9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Compartement';
         SQLString := 'SELECT ProductDesc as Nama_Category,ProductID as Kode_Category'
                     +' FROM INMsProduct ORDER BY ProductID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainCompartmentID.Value:= res[1];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmINMSItem.dsRefStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column1,TRUE);
  SetReadOnly(dxDBGrid1Column2,quRef.State<>dsInsert);
  SetReadOnly(dxDBGrid1Column3,TRUE);
  SetReadOnly(dxDBGrid1Column4,TRUE);
  SetReadOnly(dxDBGrid1Column5,TRUE);
  SetReadOnly(dxDBGrid1Column6,TRUE);
end;

procedure TfmINMSItem.dxDBGrid1Column2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  begin
   try
     Title := 'Master Barang';
     SQLString := 'SELECT ItemID as Kode_Barang,ItemName as Nama_Barang,TypeUnit as Type_Unit FROM INMsItem Where FgActive=''Y'' AND '
                 +'ITEMID NOT IN (Select ISNULL(RefID,''---X---'') FROM INMsItemRef WHere ItemID='''+quMainItemID.ASString+''') AND '
                 +'ItemID<>'''+quMainItemID.ASString+''' ';
     if ShowModal = MrOk then
     begin
       if quRef.State = dsBrowse then quRef.edit;
          quRefRefID.AsString:= res[0];
     end;
   finally
     free;
   end;
  end;
end;

procedure TfmINMSItem.quRefCalcFields(DataSet: TDataSet);
var ItemName,TypeUnit : string;
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('SELECT ItemName,TypeUnit FROM INMsItem Where itemid='''+quRefRefID.AsString+''' ');
    Open;
  end;
  ItemName := quAct.FieldByName('ItemName').AsString;
  TypeUnit := quAct.FieldByName('TypeUnit').AsString;
  quRefLItemName.ASString := ItemName;
  quRefLTypeUnit.ASString := TypeUnit;

end;

procedure TfmINMSItem.dxButton1Click(Sender: TObject);
begin
  inherited;
  if (quMain.IsEmpty) then Abort else quRef.Append;
end;

procedure TfmINMSItem.dxButton2Click(Sender: TObject);
begin
  inherited;
   if (dsRef <> nil) and (dsRef.DataSet <> nil) and
     (MessageDlg('Hapus Reference ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsRef.DataSet.Delete;
end;

procedure TfmINMSItem.dxButton3Click(Sender: TObject);
begin
  inherited;
  if Self.quRef.State = dsInsert then
  begin
   Self.quRef.Edit;
   Self.quRef.Post;
   Self.quRef.Requery();
  end;
  if Self.quRef.State = dsEdit then
  begin
   quRef.Post;
  end;
end;

procedure TfmINMSItem.dxButton4Click(Sender: TObject);
begin
  inherited;
  quRef.Cancel;
end;

procedure TfmINMSItem.quRefBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quRefRefID.ASString)='' then
  begin
    ShowMessage('Part Reference tidak boleh kosong');
    quRefRefID.FocusControl;
    Abort;
  end;

  if TRIM(quRefLItemName.ASString)='' then
  begin
    ShowMessage('Part Reference tidak ada dalam master');
    quRefRefID.FocusControl;
    Abort;
  end;

  quRefUpdDate.AsDateTime := GetServerDateTime;
  quRefUpdUser.AsString := dmmain.userid;
end;

procedure TfmINMSItem.quRefAfterPost(DataSet: TDataSet);
var ItemID,QUERYSELECT : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add(' SELECT DISTINCT ItemId,PartID FROM ( '
       +' SELECT A.ItemId,A.ItemId as PartID FROM INMsItem A '
       +' UNION ALL '
       +' SELECT A.ItemId,A.RefID as PartID FROM INMsItemRef A '
       +' UNION ALL '
       +' SELECT A.ItemId,C.RefID as PartID FROM INMsItemRef A inner join INMsItemRef C on A.RefID=C.ItemId '
       +' ) as K where ItemId='''+quMainItemID.AsString+''' ');
    Open;
  end;

  while not quAct.Eof do {A B C D}
  begin
     ItemID := quAct.FieldByName('PartID').AsString;
     QUERYSELECT := '';

     with quAct2,SQL do
     begin
       Close;Clear;
       Add(' SELECT DISTINCT ItemId,PartID from ( '
          +' SELECT A.ItemId,A.ItemId as PartID from INMsItem A '
          +' UNION ALL '
          +' SELECT A.ItemId,A.RefID as PartID from INMsItemRef A '
          +' UNION ALL '
          +' select A.ItemId,C.RefID as PartID from INMsItemRef A inner join INMsItemRef C on A.RefID=C.ItemId '
          +' ) as K where ItemId='''+quMainItemID.AsString+''' ');
       Open;
     end;

     while not quAct2.Eof do  {A B C D}
     begin
       QUERYSELECT := QUERYSELECT + 'SELECT '''+ItemID+''' as A,'''+quAct2.FieldByName('PartID').ASString+''' as B ';

       if quAct2.RecNo <> quAct2.RecordCount then
       begin
          QUERYSELECT := QUERYSELECT + 'UNION ALL ';
       end;

       quAct2.Next;
     end;

     with quAct3,SQL do
     begin
       Close;Clear;
       Add('Insert INMsItemRef (ItemId,RefID,upddate,upduser) '
          +'SELECT A,B,getdate(),'''+dmmain.userid+''' from ( '
          +QUERYSELECT
          +') as K '
          +' where K.B not in (select ISNULL(X.RefID,'''') from INMsItemRef X Where X.ItemId='''+ItemID+''') '
          +' and K.B<>'''+ItemID+''' ');
       ExecSQL;
     end;

     quAct.Next;
  end;
end;

end.
