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
    DBText3: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText5: TDBText;
    Label1: TLabel;
    Label23: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label5: TLabel;
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
    DBText7: TDBText;
    DBText6: TDBText;
    Label25: TLabel;
    dbgHarga: TdxDBGridColumn;
    dbgTotal: TdxDBGridColumn;
    quDetilATotal: TCurrencyField;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
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
    dbgUOMID: TdxDBGridButtonColumn;
    quDetilItemName: TStringField;
    quDetilQty: TBCDField;
    Shape3: TShape;
    Label10: TLabel;
    DBText11: TDBText;
    quTotalPPN: TBCDField;
    Label28: TLabel;
    quMainPOCust: TStringField;
    dbgFgTax: TdxDBGridImageColumn;
    quDetilFgtax: TStringField;
    quDetilNote: TStringField;
    dbgNote: TdxDBGridColumn;
    dxDBEdit4: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBPajak: TdxDBImageEdit;
    dxButton1: TdxButton;
    DBText12: TDBText;
    quMainStatus: TStringField;
    quMainLStatus: TStringField;
    dxButton2: TdxButton;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    quMainInvoiceID: TStringField;
    quMainIDInvoice: TStringField;
    quMainOngkir: TBCDField;
    quMainRepacking: TBCDField;
    Shape7: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Label31: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    DBText22: TDBText;
    quTotalTotalan: TBCDField;
    dxDBEdit8: TdxDBEdit;
    quDetilJumlah: TBCDField;
    quDetilDiscItem: TBCDField;
    dbgColumn10: TdxDBGridColumn;
    dbgColumn11: TdxDBGridColumn;
    Label6: TLabel;
    ActPrint: TAction;
    quDetilNoUnit: TStringField;
    quDetilLTypeUnit: TStringField;
    dbgColumn12: TdxDBGridColumn;
    dbgColumn13: TdxDBGridButtonColumn;
    DBText23: TDBText;
    Label7: TLabel;
    dxDBButtonEdit5: TdxDBButtonEdit;
    DBText24: TDBText;
    Label9: TLabel;
    dxDBButtonEdit6: TdxDBButtonEdit;
    quMainDivisiID: TStringField;
    quMainLDivisi: TStringField;
    quMainWarehouse2: TStringField;
    quMainSite2: TStringField;
    DBText25: TDBText;
    Label11: TLabel;
    DBText26: TDBText;
    Label13: TLabel;
    dxDBButtonEdit7: TdxDBButtonEdit;
    dxDBButtonEdit8: TdxDBButtonEdit;
    DBText27: TDBText;
    DBText28: TDBText;
    quMainLwarehouse2: TStringField;
    quMainLsites2: TStringField;
    quDetilLMerk: TStringField;
    dbgColumn14: TdxDBGridColumn;
    quMainKdCab: TStringField;
    quCustomerSiteID: TStringField;
    quCustomerSiteName: TStringField;
    quCustomerUpdDate: TDateTimeField;
    quCustomerUpdUser: TStringField;
    quCustomerFgGroup: TStringField;
    quMainLJabatB: TStringField;
    Label3: TLabel;
    quCetak: TADOQuery;
    dxButton6: TdxButton;
    quMainLSubmit: TStringField;
    quDetilLayoutID: TStringField;
    dbgColumn15: TdxDBGridButtonColumn;
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
    procedure dxDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure dxButton1Click(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure quDetilJumlahChange(Sender: TField);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgColumn13ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton6Click(Sender: TObject);
    procedure dbgColumn15ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure CeKStatus;
    Procedure UpdateTTLSO;
    Procedure cekoto;
    Procedure CekEdit;
    Procedure CekDelete;
    Procedure CekTambah;
  public
    { Public declarations }
    KodeBarang,KdSbm,JenisSbm : string;
    Jumlah,JumSbm : Currency;
    NumAll : Integer;
  end;

var
  fmARTRSales: TfmARTRSales;

implementation

uses ConMain, Search, UnitGeneral, MyUnit, PerformaInv, StrUtils,
  Allitem, ARSN,RptMultiCetak, ARQRRptSuratJalan, StdLv1,
  RptLv0;

{$R *.dfm}

Procedure TfmARTrSales.cekoto;
Begin
  if GroupUser<>'admin' then
  begin
    if (qumainfgcetak.asstring<>'T') and (qumainfgcetak.asstring<>'W') then
    begin
      ShowMessage('data sudah pernah otorisasi');
      abort;
    end;
  end;
End;

Procedure TfmARTrSales.CekEdit;
Begin
  if FgEdit<>'Y' then
  begin
    if (quMainUpdUser.ASString<>dmmain.userid) then
    begin
      ShowMessage('Tidak Bisa Ubah Inputan User Lain');
      abort;
    end;
  end;
End;

Procedure TfmARTrSales.CekDelete;
Begin
  if FgDelete<>'Y' then
  begin
    if (quMainUpdUser.ASString<>dmmain.userid) then
    begin
      ShowMessage('Tidak Bisa Hapus Inputan User Lain');
      abort;
    end;
  end;
End;

Procedure TfmARTrSales.CekTambah;
Begin
  if FgTambah<>'Y' then
  begin
    if (quMainUpdUser.ASString<>dmmain.userid) then
    begin
      ShowMessage('Tidak Bisa Tambah Inputan User Lain');
      abort;
    end;
  end;
End;

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

  if GroupUser = 'Marketing' then
  begin
    dxDBEdit8.Visible := false;
    label6.Visible := false;
    dxButton3.Visible := false;
    dxButton2.top := 537;
  end;
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
    Add('SELECT SalesName,Jabatan FROm ARMsSales WHERE SalesID='''+quMainSalesID.AsString+''' ');
    Open;
  end;
  quMainLSalesName.AsString := quAct1.FieldByName('SalesName').AsString;
  quMainLJabatB.AsString := quAct1.FieldByName('Jabatan').AsString;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT DivisiName FROm INMsDivisi WHERE DivisiID='''+quMainDivisiID.AsString+''' ');
    Open;
  end;
  quMainLDivisi.AsString := quAct1.FieldByName('DivisiName').AsString;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT FgCetak FROm ARTrPurchaseOrderHd WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
  end;
  if quAct1.FieldByName('FgCetak').AsString = 'Y' then
  begin
    DBText12.Font.Color := clGreen;
    quMainLStatus.AsString := 'APPROVED'
  end else
  if quAct1.FieldByName('FgCetak').AsString = 'T' then
  begin
    DBText12.Font.Color := clYellow;
    quMainLStatus.AsString := 'WAITING';
  end else
  if quAct1.FieldByName('FgCetak').AsString = 'X' then
  begin
    DBText12.Font.Color := clRed;
    quMainLStatus.AsString := 'REJECTED';
  end else
  begin
    DBText12.Font.Color := clAqua;
    quMainLStatus.AsString := 'BELUM SUBMIT'
  end;

end;

procedure TfmARTRSales.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainKdCab.AsString := KdCab;
  quMainTransDate.AsDateTime:= Date;
  quMainTglKirim.AsDateTime:= Date;
  //quMainWareHouseID.Value:= '01GU';
  quMainCurrID.AsString := 'IDR';
  quMainJenis.AsString := 'S';
  quMainDiscount.AsCurrency := 0;
  quMainOngkir.AsCurrency := 0;
  quMainAdministrasi.AsCurrency := 0;
  quMainRepacking.AsCurrency := 0;
  quMainFgTax.Value := 'T';
  quMainPOCust.AsString := '-';
  quMainFgCetak.AsString := 'W';
  quMainTransdate.FocusControl;
end;

procedure TfmARTRSales.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit3,TRUE);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
  if GroupUser<>'admin' then
  SetReadOnly(dxDBButtonEdit4,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit5,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit6,quMain.State<>dsInsert);
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

 { If Trim(quMainWareHouseID.Value)='' then
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
  End;     }

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

  If Trim(quMainSalesID.Value)='' then
  Begin
    MsgInfo('Sales tidak boleh kosong');
    quMainSalesID.FocusControl;
    Abort;
  End;

  If Trim(quMainLSalesName.Value)='' then
  Begin
    MsgInfo('Kode Sales tidak ada dalam Master');
    quMainSalesID.FocusControl;
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
    //ST := 'LOG-'+kdcab+'/'+quMainWareHouseID.AsString+'-'+quMainCustID.ASString+'-'+quMainDivisiID.AsString+FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    ST :=  'LOG-'+KdCab+'/'+FormatDatetime('YYYY',quMainTransdate.AsDateTime)+'/';
    quMainPOID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPurchaseOrderHd', 'POID', ST, '0') + 1);

    //if TRIM(quMainCurrID.AsString) = 'IDR' then
    //  ST := FormatDateTime('ddMMyy',Date)
    //else
    //  ST := FormatDateTime('ddMMyy',Date);
    //quMainIDInvoice.AsString  := ST + FormatFloat('00', RunNumberGL(quAct, 'ARTrPurchaseOrderHD', 'IDInvoice', ST, '0') + 1);
    //quMainInvoiceID.AsString  := quMainIDInvoice.AsString;
  End;

  //if quMain.State=dsEdit then
  //quMainIDInvoice.AsString := quMainInvoiceID.AsString;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;

end;

procedure TfmARTRSales.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Divisi';
        SQLString := 'SELECT DivisiID, DivisiName as Nama_Divisi FROM INMsDivisi ORDER BY DivisiID';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainDivisiID.Value := Res[0];
        end;
     finally
        free;
     end;  quMainLuCustomer.FocusControl;
  {quMainCustID.FocusControl;
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
  quMainSalesID.FocusControl;  }
end;

procedure TfmARTRSales.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
//  quMainLSalesName.FocusControl;
// quMainSalesID.FocusControl;
  with TfmSearch.Create(Self) do
     try
        Title := 'Karyawan';
        SQLString := 'SELECT SalesName as Nama_Karyawan,SalesID as Kode_Karyawan,Jabatan FROM ARMsSales ORDER BY SalesID';
        KeyValue := dxDBButtonEdit4.Text;
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSalesID.asString := Res[1];
        end;
     finally
        free;
     end;
  //quMainNote.FocusControl;
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
var nopoid : string;
begin
  inherited;
  CeKStatus;
  cekoto;
  CekDelete;

  if quMainFgCetak.ASString='Y' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainPOID.AsString+''' AND FGTrans=88 ');
    ExecSQL;
  end;
  end;

  with quCetak,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainPOID.ASString+''',''Delete'',''Hapus BA Peminjaman'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
  nopoid := quMainPOID.ASString;
  quMain.Locate('POID',nopoid,[]);
end;

procedure TfmARTRSales.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if quMain.State <> dsInsert then
  JenisSbm := quMainJenis.AsString;
  CeKStatus;
  cekoto;
  CekEdit;
 { with quAct,SQL do
  begin
    Close;Clear;
    ADd('SELECT * FROM ARTrPurchaseOrderDt WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount >= 10 then
  begin
    pesan('1 Transkasi cuma bisa input 10 barang');
    Abort;
  end;  }

end;

procedure TfmARTRSales.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  //quDetilItemName.FocusControl;
  //quDetilItemID.FocusControl;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT A.ItemName as Nama_Barang,A.ItemID as Part_Number,A.TypeUnit,A.Merk,A.UOMID '
                   +'FROM INMsItem A '
                   +'WHERE A.FgActive=''Y'' AND A.Ctk=''Y'' ORDER BY A.ItemName';
       //KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.AsString   := Res[1];
       end;
    finally
       free;
    end;
  quDetilQty.FocusControl;
end;

procedure TfmARTRSales.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
 { with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrPurchaseOrderDt SET ItemID='''+KodeBarang+''',Qty='''+CurrToStr(Jumlah)+''' '
       +'WHERE POID='''+quMainPOID.AsString+''' AND ItemID='''+KdSbm+''' AND NUmAll='+FormatCurr('0',NumAll)+' ');
    ExecSQL;
  end;
        }

  if quMainFgCetak.ASString='Y' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainPOID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans=88 '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;
  with quAct,SQL do
  begin
     Close;Clear;
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,barang,ItemID,Qty,TempField,TempField2,SourceNo,ModuleID,LayoutID) '
        +'VALUES ('''+quDetilPOID.AsString+''',:TransDate,'''+quMainWareHouseID.AsString+''',88,'
        +'(SELECT X.City FROM INMsWarehouse X Where X.WarehouseID='''+quMainWareHouseID.AsString+'''), '
        +''''+quDetilItemID.ASString+''','+quDetilQty.AsString+','''+quMainLuLocation.AsString+''','''+quMainLuLocation.AsString+''', '
        +''''+quDetilNumAll.AsString+''',''AR'','''+quDetilLayoutID.AsString+''')');
     with Parameters do
     begin
       ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
     end;
     ExecSQL;
  end;
  end;


  quTotal.Requery();
  UpdateTTLSO;
end;

procedure TfmARTRSales.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  cekoto;
  CekDelete;

  if quMainFgCetak.AsString='Y' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainPOID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans=88 '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;
  end;
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
  cekoto;
  CekEdit;

  //JumSbm := quDetilQty.AsCurrency;
  //KdSbm := quDetilItemID.AsString;
  //NumAll := qudetilNumAll.AsInteger;


end;

procedure TfmARTRSales.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Part Number tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilItemName.Value)='' then
  begin
     MsgInfo('Barang tidak terdaftar di Master Item');
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
    { if Fields[0].AsInteger > 0 then
      begin
        MsgInfo('Kode Barang sudah ada dalam List');
        quDetilItemID.FocusControl;
        Abort;
      end;  }
      quDetilUpdUser.AsString := dmMain.UserId;
      quDetilUpdDate.AsDateTime := GetServerDateTime;
    end;

  {  with quAct1,SQL do
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
    end;   }
  end;

  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT NoUnit FROM INMsNOUnit Where NoUnit='''+qudetilNoUnit.ASString+''' AND FgActive=''Y'' ');
    Open;
    if IsEmpty then
    begin
      MsgInfo('No Unit Tidak Ada');
      quDetilNoUnit.FocusControl;
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

  if TRIM(quDetilLayoutID.AsString)='' then
  begin
     MsgInfo('Kode Rak tidak boleh kosong !');
     quDetilLayoutID.FocusControl;
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
  quDetilQty.Value:=1;
  quDetilJumlah.Value:=1;
  quDetilDiscItem.Value:=0;
  quDetilItemID.FocusControl;
  quDetilFgTax.AsString := 'T' ;
end;

procedure TfmARTRSales.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,qudetil.state<>dsInsert);
  SetReadOnly(dbgUOMID,TRUE);
  //SetReadOnly(dbgQty,qudetil.state<>dsInsert);
  SetReadOnly(dbgColumn11,qudetil.state<>dsInsert);
  SetReadOnly(dbgColumn11,TRUE);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgColumn14,TRUE);
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
var compname,rek,rek1,cabrek,cabrek1,nmrek,nmrek1 : string;
begin
  inherited;
  UpdateTTLSO;

  if quMainFgCetak.ASString<>'Y' then
  begin
    ShowMessage('Peminjaman Belum Disetujui. Hubungi PIC HO untuk Otorisasi');
    Abort;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add(' Select companyname,Rekening,Namarek,CabangRek,Rekening1,Namarek1,CabangRek1 From SaMsCompany ');
    Open;
  end;
  compname := quAct.FieldByName('CompanyName').AsString;
  rek := quAct.FieldByName('rekening').AsString;
  nmrek := quAct.FieldByName('namarek').AsString;
  cabrek := quAct.FieldByName('cabangrek').AsString;
  rek1 := quAct.FieldByName('rekening1').AsString;
  nmrek1 := quAct.FieldByName('namarek1').AsString;
  cabrek1 := quAct.FieldByName('cabangrek1').AsString;

  if (quMain.IsEmpty) and (quDetil.IsEmpty) then Abort;

  with TfmPerformaInv.Create(Self) do
  try
    //tampilan rekening
  {  qlbNamaRekening.Caption := compname;
    qlbBank.Caption := nmrek; qlbRekening.Caption := rek; if cabrek <> '' then qlbrekening.Caption := qlbrekening.Caption + ' (' + cabrek + ')' ;
    qlbBank1.Caption := nmrek1; qlbRekening1.Caption := rek1; if cabrek1 <> '' then qlbrekening1.Caption := qlbrekening1.Caption + ' (' + cabrek + ')' ;

    //tampilan header
    qrlTitle.Caption := '** PROFORMA INVOICE **'; QRLabel3.Caption := quMainPOID.AsString; QRLabel4.Caption := quMainLSalesName.AsString;
    qrlabel1.Caption := 'Serpong, '+FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime); qrlabel6.Caption := quMainPOCust.AsString;


    //tampilan footer
    LaDiskon.Caption := CurrToStr(quTotalDiscount.AsCurrency);
    laPPN.Caption := CurrToStr(quTotalPPN.AsCurrency);
    latotalan.Caption := CurrToStr(quTotalTotalan.AsCurrency);
    laongkir.Caption := CurrToStr(quMainOngkir.AsCurrency);
    larepak.Caption := CurrToStr(quMainRepacking.AsCurrency);
    laadmin.Caption := CurrToStr(quMainAdministrasi.AsCurrency);
    laSubTotal.Caption := CurrToStr(quTotalTotal.AsCurrency);

    //terbilang
    if UpperCase(quMainCurrId.Value) ='IDR' then
      qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, quTotalTotal.AsCurrency))+'Rupiah #'
    else
      qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, quTotalTotal.AsCurrency))+quMainCurrId.asString+' #';   }

      qrlPeriode.Caption := quMainPOID.AsString;
      QRLabel38.Caption := quMainLuCustomer.AsString+'-'+quMainLDivisi.AsString;
      qrLabel3.Caption := FormatDateTime('d/M/yyyy',quMainTransdate.AsDateTime);
      qrLabel45.Caption := quMainLSalesName.AsString;
      qrLabel76.Caption := quMainLSalesName.AsString;
      qrLabel48.Caption := quMainLJabatB.AsString;
      qrLabel77.Caption := quMainLJabatB.AsString;
      qrlabel68.Caption := quMainLuLocation.ASString;
      qrlabel78.Caption := quMainLwarehouse2.ASString;
      qrLabel53.Caption := 'Pada hari ini tanggal '+FormatDateTime('d/M/yyyy',quMainTransdate.AsDateTime)+', '+quMainLuCustomer.AsString+' mengajukan pengambilan barang milik '+
                           quMainLulocation.ASString+' site '+quMainLsites2.AsString+', dengan spesifikasi sebagai berikut: ';
      with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT A.POID,'//A.CustId,C.CustName,C.Address, '
            +'A.WareHouseID,A.SalesID,D.WarehouseName, '
            +'(SELECT Y.SalesName FROM SysMsUser X inner join ARMsSales Y on X.Nama=Y.SalesID WHERE X.UserID='''+quMainUpdUser.ASString+''') as UserA, '
            +'(SELECT Y.Jabatan FROM SysMsUser X inner join ARMsSales Y on X.Nama=Y.SalesID WHERE X.UserID='''+quMainUpdUser.ASString+''') as JabatA '
            +'FROM ARTrPurchaseOrderHd A '
            //+'INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +'INNER JOIN INMsWareHouse D on A.Warehouse2=D.WarehouseID '
            +'WHERE A.POID='''+quMainPOID.AsString+''' ');
            //showmessage(sql.text);
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add(' SELECT  A.ItemId,A.ItemName,A.UOMID,ISNULL(Jumlah,0) as Qty,A.Price,ISNULL(A.DiscItem,0) as DiscItem,B.TypeUnit,A.NoUnit,A.Note,B.Merk '
            +' FROM ARTrPurchaseOrderDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid WHERE A.POId='''+quMainPOID.AsString+'''  '
            +' ORDER BY A.ItemName,A.NoUnit,A.UpdDate');
         Open;
       End;

    if sCetak = '0' then
      MyReport.PreviewModal
    else
      MyReport.Print;

    finally
      free;
    end;
end;

procedure TfmARTRSales.quDetilCalcFields(DataSet: TDataSet);
var ATotal : currency;
begin
  inherited;
  with Quact,Sql do
  begin
    Close;Clear;
    Add('Select Merk From inmsitem where itemid='''+quDetilItemID.AsString+''' ');
    Open;
  End;
  quDetilLMerk.AsString := quAct.FieldByName('Merk').AsString;

  ATotal := quDetilPrice.AsCurrency*(quDetilJumlah.AsCurrency-quDetilDiscItem.AsCurrency);

  qudetilATotal.AsCurrency := ATotal;
end;

procedure TfmARTRSales.quDetilItemIDChange(Sender: TField);
begin
  inherited;
    with quAct2,sql do
    begin
     close;clear;
     add(' SELECT ItemName,isnull(UserPrice,0) as UserPrice,UOMID2 as satuan '
        +' FROM INMsItem WHERE ItemId='''+quDetilItemID.AsString+'''');
     open;
    end;
    qudetilItemName.AsString := quAct2.FieldbyName('ItemName').asString;

    quDetilPrice.AsCurrency := quAct2.Fieldbyname('UserPrice').AsCurrency;
    qudetilUOMID.AsString := quAct2.FieldbyName('satuan').asString;
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
 { with quAct,sql do
  begin
    Close;Clear;
    Add('select uomid,konversi,UserPrice from inmsitem where itemid='''+qudetilItemid.AsString+''' ');
    Open;
  end;
  if qudetiluomid.asString = quact.fieldbyname('uomid').asString then
  qudetilPrice.AsCurrency := quact.fieldbyname('userprice').AsCurrency*quact.fieldbyname('konversi').AsCurrency
  else
  qudetilPrice.AsCurrency := quact.fieldbyname('userprice').AsCurrency; }

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

procedure TfmARTRSales.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if quMain.State <> dsBrowse then
  begin
    pesan('Silahkan tekan tombol Simpan (F3)');
    Abort;
  end;
  CekTambah;
  CeKStatus;
  cekoto;
{  with quAct,SQL do
  begin
    Close;Clear;
    ADd('SELECT * FROM ARTrPurchaseOrderDt WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount >= 10 then
  begin
    pesan('1 Transkasi cuma bisa input 10 barang');
    Abort;
  end; }

end;

procedure TfmARTRSales.dxDBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTRSales.dxButton1Click(Sender: TObject);
var lastid : string;
begin
  inherited;
  if quMainFgCetak.AsString = 'T' then
  begin
   { with quAct1,SQL do
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
      ShowMessage('Tidak Bisa Input Sales Order.'+#13
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
    end;        }

    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrPurchaseOrderHd SET FgCetak=''Y'' WHERE POID='''+quMainPOID.AsString+''' ');
      ExecSQL;;
    end;
    lastid := quMainPOID.AsString ;
    quMain.Requery();
    quMain.Locate('POID',lastid,[]);
  end;
end;

procedure TfmARTRSales.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Sales Order';
       SQLString := 'SELECT POID as No_Peminjaman,CONVERT(VARCHAR(10),Transdate,103) as Tanggal,SiteName as Site, '
                   +'SalesName as Request_By FROM ARTrPurchaseOrderHd A '
                   +'LEFT JOIN INMsSites B ON A.CustID=B.SiteID INNER JOIN ARMsSales C ON A.SalesID=C.SalesID '
                   +'WHERE '+FSQLWhere;
       if KdCab<>'HO' then
       SQLString := SQLString + ' AND KdCab='''+KdCab+''' ';
       SQLString := SQLString + ' ORDER BY TransDate';
       if ShowModal = MrOK then
       begin
         quMain.Locate('POID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTRSales.dxButton2Click(Sender: TObject);
//var  FgTax : string;
  //   stotal,Disc,Tax : currency;
  //   iPrint : integer;
begin
  inherited;
  {UpdateTTLSO;
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
       //qrlabel14.Enabled := false; qrlabel17.Enabled := false;
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       qrlDate.Caption := FormatDateTime('dd MMMM yyyy',quMainTransdate.AsDateTime);
       qrlDate.Enabled := TRUE;
       LaDiskon.Caption := FormatCurr('#,0.00', Disc);
       QRLabel33.Caption := FormatCurr('#,0.00', Tax); QRLabel34.Enabled := False;
       LaGT.Caption := FormatCurr('#,0.00', stotal); QRLabel23.Caption := 'PO Cust';
       QRLabel30.Caption := '( '+dmMain.UserId+' )';
       QRLabel37.Caption := quMainNote.AsString;
       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT POID,Convert(varchar(10),Transdate,103) as Tgl,POCust,'''' as kontransbrgid, '
            +'CONVERT(VARCHAR(8),Getdate(),108) as Jam,A.CustId,C.CustName,C.Address,C.CPerson,'
            +'A.SalesID+'' - ''+D.SalesName as Sales,A.POCUst as Gudang, '
            +'CASE WHEN C.KodePOS='''' THEN C.City ELSE C.City+'' - ''+C.KodePOS END as City '
            +'FROM ARTrPurchaseOrderHd A INNER JOIN INMsWarehouse B ON A.WarehouseID=B.WarehouseID '
            +'INNER JOIN ARMsCustomer C ON A.CustId=C.CustId INNER JOIN ARMsSales D ON A.SalesID=D.SalesID '
            +'WHERE A.POID='''+quMainPOID.AsString+''' ');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add(' SELECT  A.ItemId,A.ItemName,CASE WHEN A.FgTax=''Y'' Then 1.1 Else 1 END As Tax,ISNULL(A.DiscItem,0) as Bonus, '
            +' A.UOMID,ISNULL(Jumlah,0) as Qty,ISNULL(CEILING(Jumlah),0) as CekBulat,A.Price,B.Tipe,B.Lokasi,A.Note,''Y'' as FgLoot '
            +' FROM ARTrPurchaseOrderDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid WHERE A.POId='''+quMainPOID.AsString+'''  '
            +' ORDER BY A.UpdDate');
         Open;
       End;
     //  qlbKet.Caption := 'Note : '+quMainNote.AsString; qlbKet.Left := 300;

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
  end; }
end;

procedure TfmARTRSales.quDetilJumlahChange(Sender: TField);
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

procedure TfmARTRSales.dxDBButtonEdit5ButtonClick(Sender: TObject;
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

procedure TfmARTRSales.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Site';
        SQLString := 'SELECT SiteName as Nama_Site,SiteID as Kode_Site FROM INMsSites ORDER BY SiteName';
        KeyValue := dxDBButtonEdit1.Text;
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSite2.Value := Res[1];
        end;
     finally
        free;
     end;
end;

procedure TfmARTRSales.dbgColumn13ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Nomor Unit';
        SQLString := 'SELECT A.NoUnit,B.NmMaster,A.Description FROM INMsNoUnit A  '
                     +'INNER JOIN ALLMASTER B ON A.GroupID=B.kdmaster '
                     +'WHERE FgActive=''Y'' AND B.FgMaster=''U'' '
                     +'ORDER BY A.NoUnit  ';
        if ShowModal = MrOK then
        begin
           if qudetil.State = dsBrowse then qudetil.Edit;
           quDetilNoUnit.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmARTRSales.dxDBButtonEdit7ButtonClick(Sender: TObject;
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
           quMainWarehouse2.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmARTRSales.dxDBButtonEdit8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Peminjam';
        SQLString := 'SELECT SiteName as Nama_Site,SiteID as Kode_Site FROM INMsSites ORDER BY SiteName';
        KeyValue := dxDBButtonEdit1.Text;
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainCustID.Value := Res[1];
        end;
     finally
        free;
     end;
end;

procedure TfmARTRSales.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTRSales.dxButton6Click(Sender: TObject);
var Nota : string;
begin
  inherited;
  if (quMain.State = dsInsert) or (quMain.State = dsEdit) then
  begin
    ShowMessage('Data Belum Disimpan. Simpan Terlebih dahulu');
    Abort;
  end;
  if (qudetil.State = dsInsert) or (qudetil.State = dsEdit) then
  begin
    ShowMessage('Data Belum Disimpan. Simpan Terlebih dahulu');
    Abort;
  end;

  Nota := quMainPOID.AsString;

  if quMainFgCetak.ASString='W' then
  begin

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Update ARTrPurchaseOrderHd Set FgCetak=''T'' Where POID='''+Nota+''' ');
    ExecSQL;
  end;
  ShowMessage('Data Sudah di-submit');
  quMain.Requery();
  quMain.Locate('POID',Nota,[]);

  end else
  if quMainFgCetak.ASString='Y' then
  begin
    ShowMessage('Data Sudah di-Approved');
    Abort;
  end else
  if quMainFgCetak.ASString='X' then
  begin
    ShowMessage('Data Sudah di-Otorisasi (Rejected)');
    Abort;
  end else
  begin
    ShowMessage('Data Sudah di-Submit. Tunggu Otorisasi');
    Abort;
  end;

end;

procedure TfmARTRSales.dbgColumn15ButtonClick(Sender: TObject;
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

end.
