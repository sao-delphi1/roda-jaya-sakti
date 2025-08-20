unit ARTrSalesKontrak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, DBCtrls, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxTL;

type
  TfmARTrSalesKontrak = class(TfmStdLv31)
    quMainSaleID: TStringField;
    quMainCustID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainTTLSO: TBCDField;
    quMainFgTax: TStringField;
    quMainFgPPH: TStringField;
    quMainPPN: TBCDField;
    quMainPPH: TBCDField;
    quMainSTSO: TBCDField;
    quMainModal: TBCDField;
    quMainWarehouseID: TStringField;
    quMainSiteID: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    Label23: TLabel;
    Label35: TLabel;
    Label29: TLabel;
    DBText11: TDBText;
    dxDBDateEdit1: TdxDBDateEdit;
    txtPelangganID: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBMaskEdit1: TdxDBMaskEdit;
    txtJatuhTempo: TdxDBMaskEdit;
    dxDBButtonEdit15: TdxDBButtonEdit;
    quMainRate: TBCDField;
    quMainJatuhTempo: TIntegerField;
    quMainCustName: TStringField;
    quMainLSites: TStringField;
    quMainBankID: TStringField;
    dxDBEdit5: TdxDBEdit;
    quMainNote: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column13: TdxDBGridButtonColumn;
    dxDBGrid1Column14: TdxDBGridColumn;
    dxDBGrid1ItemID: TdxDBGridButtonColumn;
    dxDBGrid1ItemName: TdxDBGridColumn;
    dxDBGrid1Qty: TdxDBGridColumn;
    dxDBGrid1UOMID: TdxDBGridImageColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    dxDBGrid1UserPrice: TdxDBGridColumn;
    dxDBGrid1UpdDate: TdxDBGridDateColumn;
    dxDBGrid1UpdUser: TdxDBGridMaskColumn;
    dxDBGrid1FgTax: TdxDBGridImageColumn;
    dxDBGrid1ValueTotal: TdxDBGridColumn;
    dxDBGrid1Column15: TdxDBGridColumn;
    dxDBGrid1Column16: TdxDBGridImageColumn;
    dxDBGrid1Column17: TdxDBGridImageColumn;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    KrgBrg: TdxButton;
    TmbBrg: TdxButton;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBText3: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    Shape12: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label10: TLabel;
    DBText1: TDBText;
    DBText8: TDBText;
    Label26: TLabel;
    DBText7: TDBText;
    Label45: TLabel;
    DBText16: TDBText;
    DBText18: TDBText;
    DBText22: TDBText;
    Shape13: TShape;
    Shape14: TShape;
    DBText30: TDBText;
    Label18: TLabel;
    DBText31: TDBText;
    Label19: TLabel;
    DBText32: TDBText;
    DBText33: TDBText;
    dxDBPajak: TdxDBImageEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    dxDBMaskEdit2: TdxDBMaskEdit;
    quMainLCurr: TStringField;
    quTotal: TADOQuery;
    quTotalSubTotal: TBCDField;
    quTotalPPN: TBCDField;
    quTotalTotal: TBCDField;
    quTotalPPH23: TBCDField;
    quTotalNilai: TBCDField;
    quTotalModal: TIntegerField;
    dsTotal: TDataSource;
    quMainNilaiPPH: TBCDField;
    quMainFgPPH23: TStringField;
    quDetilSaleID: TStringField;
    quDetilItemID: TStringField;
    quDetilPrice: TBCDField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilKomisi: TBCDField;
    quDetilFgTax: TStringField;
    quDetilUOMID: TStringField;
    quDetilItemName: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilDiscItem: TBCDField;
    quDetilJumlah: TBCDField;
    quDetilModal: TBCDField;
    quDetilNoUnit: TStringField;
    quDetilFgPPH23: TStringField;
    quDetilFgJasa: TStringField;
    quMainCurrID: TStringField;
    Label4: TLabel;
    DBText5: TDBText;
    quMainCJthTempo: TDateTimeField;
    quDetilATotal: TCurrencyField;
    quDetilCTotal: TCurrencyField;
    quDetilLtypeunit: TStringField;
    quMainNilaiTax: TBCDField;
    dxDBEdit9: TdxDBEdit;
    Label37: TLabel;
    dxDBEdit1: TdxDBEdit;
    procedure FormShow(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure txtPelangganIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit15ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1Column13ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
    Procedure CekStatus;
    Procedure UpdateTTLH;
    Procedure CekUserEdit;
    Procedure CekUserDelete;
    Procedure CekUserTambah;
  public
    { Public declarations }
    STForm : String;
    AutoInc: String;
  end;

var
  fmARTrSalesKontrak: TfmARTrSalesKontrak;

implementation

{$R *.dfm}

uses MyUnit,Search,ConMain, StdLv2,UnitGeneral, StdLv0, StdLv1, StdLv3,StrUtils,QRCtrls,DateUtils;

procedure TfmARTrSalesKontrak.CekUserEdit;
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

procedure TfmARTrSalesKontrak.CekUserDelete;
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

procedure TfmARTrSalesKontrak.CekUserTambah;
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

procedure TfmARTrSalesKontrak.UpdateTTLH;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Update ARTrSalesKontrakHd SET TTLSO='+CurrToStr(quTotalTotal.AsCurrency)+',PPN='+CurrToStr(quTotalPPN.AsCurrency)+','
       +' STSO='+CurrToStr(quTotalSubTotal.AsCurrency)+',Modal='+CurrToStr(quTotalModal.AsCurrency)+','
       +' PPH='+CurrToStr(quTotalPPH23.AsCurrency)+' '
       +' WHERE SaleID='''+quMainSaleID.AsString+'''');
    ExecSQL;
  End;
End;

procedure TfmARTrSalesKontrak.CeKStatus;
Begin
  with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT TOP 1 KonInvPelID FROM ARTrKonInvPelHd  '
           +' WHERE SaleID='''+quMainSaleID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Invoice ['+quAct.FieldByName('KonInvPelID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
     end;
  end;
End;

procedure TfmARTrSalesKontrak.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), SaleID';
  FFieldTgl   := 'TransDate';
  FAfterWhere:=' AND ISNULL(BankID,''RJS'')='''+StForm+''' ';
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
  quTotal.Requery();
end;

procedure TfmARTrSalesKontrak.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := date;
  quMainCurrID.AsString      := 'IDR';
  quMainTransDate.FocusControl;
  quMainFgTax.AsString := 'Y';
  quMainRate.Value := 1;
  quMainBankID.AsString := StForm;
  quMainNilaiPPH.AsCurrency := 2;
  quMainFgPPH23.AsString := 'Y';
  if TRIM(quMainFgTax.AsString) = 'Y' then
    quMainJatuhTempo.AsInteger := 90
  else
    quMainJatuhTempo.AsInteger := 45;
  quMainNilaiTax.AsCurrency := 11;
end;

procedure TfmARTrSalesKontrak.quMainBeforePost(DataSet: TDataSet);
var ST: String;
begin
  inherited;
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
  
  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainCustID.AsString)='' then
  begin
    MsgInfo('Customer tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  If TRIM(quMainCustName.AsString)='' then
  Begin
    MsgInfo('Customer tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMain.State=dsInsert then
  begin
   if (MessageDlg('Transaksi ini adalah transaksi PPN ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      quMainFgTax.ASString := 'Y';
      //tengah := StForm+'/'+quMainCustID.ASString;
    end else
    begin
      quMainFgTax.ASString := 'T';
      //tengah := quMainCustID.AsString;
    end;
  end;

  if (quMain.State=dsInsert) AND (quMainSaleID.AsString='') then
  begin
  ST := 'SK/'+ STForm +'/'+ FormatDateTime('YYYY/',quMainTransDate.AsDateTime);
  quMainSaleID.AsString := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrSalesKontrakHd', 'SaleID', ST, '0') + 1);
  end;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := DmMain.UserID;
end;

procedure TfmARTrSalesKontrak.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainLCurr.AsString := 'Rp';
  quMainCJthTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);
  
  with quAct,SQL do
  begin
    close;clear;
    add('Select CustID,CustName from ARMsCustomer where custid='''+quMainCustID.AsString+''' ');
    open;
  end;
  quMainCustName.AsString := quAct.FieldByName('CustName').AsString;

  with quAct,SQL do
  begin
    close;clear;
    add('Select SiteID,SiteName from INMsSites where SiteID='''+quMainSiteID.AsString+''' ');
    open;
  end;
  quMainLSites.AsString := quAct.FieldByName('SiteID').AsString;

 { if quMain.State=dsInsert then
  begin
    ST :='SK/'+ STForm+'/'+ FormatDateTime('YYYY', quMainTransDate.AsDateTime);
    quMainSaleID.AsString :=  ST + FormatFloat('00000', RunNumberGL(quAct, 'ARTrSalesKontrakHd', 'SaleID', ST, '0') + 1);
  end;                                              }
end;

procedure TfmARTrSalesKontrak.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrSalesKontrak.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrSalesKontrak.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrSalesKontrak.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrSalesKontrak.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  CekStatus;
  CekUserEdit;
end;

procedure TfmARTrSalesKontrak.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekUserDelete;
end;

procedure TfmARTrSalesKontrak.txtPelangganIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Pelanggan';
     SQLString := 'SELECT CustName as Nama_Pelanggan,CustId as Kode_Pelanggan, Address '
                 +' FROM ARMsCustomer '
                 +' ORDER BY CustName';
     if ShowModal = MrOK then
     begin
         if quMain.State = dsBrowse then quMain.Edit;
          quMainCustId.AsString := Res[1];
     end;
  finally
     Free;
  end;  
end;

procedure TfmARTrSalesKontrak.dxDBButtonEdit2ButtonClick(Sender: TObject;
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
  quMainNote.FocusControl;
end;

procedure TfmARTrSalesKontrak.dxDBButtonEdit15ButtonClick(Sender: TObject;
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

procedure TfmARTrSalesKontrak.quDetilNewRecord(DataSet: TDataSet);
Function GenerateNoUrut:Integer;
begin
  with quAct,SQL do
  begin
    Close; Clear;
    Add('SELECT ItemId FROM ARTrSalesKontrakDt WHERE SaleID='''+quDetilSaleID.AsString+''' ORDER BY ItemID DESC');
    Open;
    if IsEmpty then
      Result := 1
    else
      Result := StrToInt(FormatFloat('0',StrToInt(RightStr(fields[0].AsString,3))+1));
  end;
end;
begin
  inherited;
  quDetilItemID.AsString:= INttoStr(GenerateNoUrut);
  quDetilQty.AsCurrency:=1;
  quDetilJumlah.AsCurrency := quDetilQty.AsCurrency;
  quDetilPrice.AsCurrency:=0;
  quDetilFgPPH23.AsString := 'Y';
  quDetilFgJasa.AsString := 'Y';
  quDetilUOMID.ASString := 'HM';
  quDetilNoUnit.FocusControl;
  quDetilfgtax.AsString := 'T';
end;

procedure TfmARTrSalesKontrak.dxDBGrid1Column13ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Pilih Nomor Unit';
    SQLString := 'SELECT NoUnit, Description FROM INMsNoUnit WHERE ISNULL(FgActive,''Y'')=''Y'' ORDER BY NoUnit';
    if ShowModal = MrOK then
    begin
       if qudetil.State = dsBrowse then qudetil.Edit;
       quDetilNoUnit.Value := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmARTrSalesKontrak.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('Select Description FROM INMsNoUnit Where NOUnit='''+quDetilNoUnit.AsString+''' ');
    Open;
  End;
  quDetilLtypeunit.ASString := quAct.FieldByName('Description').AsString;

  quDetilCTotal.AsCurrency := ROUND((quDetilQty.AsCurrency-quDetilDiscItem.AsCurrency)*quDetilPrice.AsCurrency);

  quDetilATotal.AsCurrency := ROUND((quDetilQty.AsCurrency-quDetilDiscItem.AsCurrency)*quDetilPrice.AsCurrency*quMainRate.AsCurrency);
end;

procedure TfmARTrSalesKontrak.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
{  if TRIM (quDetilNoUnit.AsString) = '' then
  begin
    ShowMessage('No Unit tidak boleh kosong');
    quDetilNoUnit.FocusControl;
    abort;
  end;  }

  if TRIM (quDetilQty.AsString) = '' then
  begin
    ShowMessage('Jumlah tidak boleh kosong');
    quDetilQty.FocusControl;
    abort;
  end;

  if quDetilQty.Value < 0 then
  begin
    ShowMessage('Jumlah tidak boleh kurang dari 0');
    quDetilQty.FocusControl;
    abort;
  end;

  if TRIM (quDetilUOMID.AsString) = '' then
  begin
    ShowMessage('Satuan tidak boleh kosong');
    quDetilUOMID.FocusControl;
    abort;
  end;

  if TRIM (quDetilPrice.AsString) = '' then
  begin
    ShowMessage('Harga tidak boleh kosong');
    quDetilPrice.FocusControl;
    abort;
  end;

  if quDetilPrice.value < 0 then
  begin
    ShowMessage('Harga tidak boleh Dibawah 0');
    quDetilPrice.FocusControl;
    abort;
  end;

  quDetilUpdDate.AsDateTime := GetServerDateTime;
  quDetilUpdUser.asstring := DmMain.UserId;

end;

procedure TfmARTrSalesKontrak.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  //CekStatus;
  CekUserDelete;
  qutotal.Requery();
  UpdateTTLH;
end;

procedure TfmARTrSalesKontrak.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  //CekStatus;
  quTotal.Requery();
  CekUserEdit;
end;

procedure TfmARTrSalesKontrak.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  //CekStatus;
  CekUserTambah;
end;

procedure TfmARTrSalesKontrak.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTLH;
end;

procedure TfmARTrSalesKontrak.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTLH;
end;

procedure TfmARTrSalesKontrak.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Penjualan';
       SQLString := 'SELECT A.SaleID as No_Kontrak,B.CustName as Nama_Customer,C.SiteName as Nama_Site,A.TTLSO as Total_SO,CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal '
                   +'FROM ARTRSALESKONTRAKHD A  '
                   +'INNER JOIN ARMsCustomer B ON A.CustID=B.CustID  '
                   +'INNER JOIN INMsSites C ON A.SiteID=C.SiteID  '
                   +'WHERE '+FSQLWhere
                   +' ORDER BY A.Transdate';

       if ShowModal = MrOK then
       begin
         quMain.Locate('SaleID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrSalesKontrak.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

end.
