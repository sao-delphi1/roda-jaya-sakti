unit ARTrKonInvPelIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls, DateUtils;

type
  TfmARTrKonInvPelIDR = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    dbgListKonInvPelID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMemoColumn;
    dbgListJatuhTempo: TdxDBGridMaskColumn;
    dbgListValutaID: TdxDBGridMaskColumn;
    dbgListPelangganName: TdxDBGridLookupColumn;
    quMainKonInvPelID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainSalesID: TStringField;
    quMainJatuhTempo: TIntegerField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quCustomer: TADOQuery;
    quSales: TADOQuery;
    quMainCustName: TStringField;
    quMainSalesName: TStringField;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Label10: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBText8: TDBText;
    RbCetak: TRadioGroup;
    dxButton1: TdxButton;
    RbHarga: TRadioGroup;
    Label4: TLabel;
    DBText5: TDBText;
    quMainCJthTempo: TDateTimeField;
    quMainDiscount: TBCDField;
    quMainCurrID: TStringField;
    quMainDP: TBCDField;
    quDetilItemID: TStringField;
    quItem: TADOQuery;
    quLokasi: TADOQuery;
    quDetilLItemName: TStringField;
    quMainNote: TStringField;
    quDetilKonInvPelID: TStringField;
    quDetilPrice: TBCDField;
    quDetilQty: TIntegerField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilKonTransBrgId: TStringField;
    quDetilCTotal: TCurrencyField;
    quTotal: TADOQuery;
    quTotalSubTotal: TBCDField;
    quTotalDiscount: TBCDField;
    quTotalTotal: TBCDField;
    quTotalGT: TBCDField;
    dsTotal: TDataSource;
    Label23: TLabel;
    DBText2: TDBText;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ItemID: TdxDBGridButtonColumn;
    dxDBGrid1ItemName: TdxDBGridColumn;
    dxDBGrid1Konsinyasi: TdxDBGridButtonColumn;
    dxDBGrid1Qty: TdxDBGridColumn;
    dxDBGrid1UpdDate: TdxDBGridDateColumn;
    dxDBGrid1UpdUser: TdxDBGridMaskColumn;
    dxDBGrid1ValueTotal: TdxDBGridColumn;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    quMainTTLKJ: TBCDField;
    quMainSTKJ: TBCDField;
    Label22: TLabel;
    DBText9: TDBText;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quDetilKomisi: TBCDField;
    quDetilLKomisi: TCurrencyField;
    quMainRate: TBCDField;
    Label24: TLabel;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    KrgBrg: TdxButton;
    TmbBrg: TdxButton;
    quCalc: TADOQuery;
    quMainSOID: TStringField;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBText3: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label25: TLabel;
    quMainFgTax: TStringField;
    Shape5: TShape;
    Label26: TLabel;
    Label27: TLabel;
    DBText7: TDBText;
    quTotalPPN: TBCDField;
    DBText10: TDBText;
    ActPrint: TAction;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    quDetilLUserPrice: TCurrencyField;
    dxDBGrid1LUserPrice: TdxDBGridColumn;
    dxButton2: TdxButton;
    quMainFgCetak: TStringField;
    quMainRekeningD: TStringField;
    quMainRekeningP: TStringField;
    quMainRekeningU: TStringField;
    quMainRekeningK: TStringField;
    quMainFgInvoice: TStringField;
    quMainFgTerm: TBCDField;
    quMainBankID: TStringField;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    dxDBButtonEdit7: TdxDBButtonEdit;
    DBText12: TDBText;
    DBText11: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    quMainLRekPenjualan: TStringField;
    quMainLRekPPN: TStringField;
    quMainLRekDisc: TStringField;
    quMainLRekPiutangDagang: TStringField;
    dxButton3: TdxButton;
    Label35: TLabel;
    txtKonInvPelID: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    txtPelangganID: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBMaskEdit1: TdxDBMaskEdit;
    dxDBEdit2: TdxDBEdit;
    txtJatuhTempo: TdxDBMaskEdit;
    dxDBSpinEdit1: TdxDBSpinEdit;
    DBText15: TDBText;
    quMainLFgTerm: TStringField;
    dxDBSpinEdit2: TdxDBSpinEdit;
    quMainLuPajak: TStringField;
    quMainPOCust: TStringField;
    dxDBEdit1: TdxDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    quDetilFgTax: TStringField;
    dxDBGrid1FgTax: TdxDBGridImageColumn;
    quDetilUOMID: TStringField;
    quMainFgPerforma: TStringField;
    dxDBGrid1UserPrice: TdxDBGridColumn;
    dxDBGrid1UOMID: TdxDBGridButtonColumn;
    dxDBPajak: TdxDBImageEdit;
    Label38: TLabel;
    procedure FormShow(Sender: TObject);
    procedure txtPelangganIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure txtSalesIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtKonInvPelIDKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure txtDiskonChange(Sender: TObject);
    procedure dxDBGrid1ItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1KonsinyasiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure quMainCustIDChange(Sender: TField);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainSOIDChange(Sender: TField);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure quDetilFgTaxChange(Sender: TField);
    procedure quDetilPriceChange(Sender: TField);
    procedure dxDBGrid1UOMIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure TTLKJ;
    procedure CeKStatus;
    procedure CekCetak;
  public
    { Public declarations }
    status,StLap : string;
  end;

var
  fmARTrKonInvPelIDR: TfmARTrKonInvPelIDR;

implementation

uses Search, UnitGeneral, ConMain, MyUnit,
  ARQRRptSegel, ARQRRptInvPenjualan, ARQRRptSuratJalan, ARSN, RptMultiCetak,
  ARQrRptCetakAmplop, StdLv0;

{$R *.dfm}

procedure TfmARTrKonInvPelIDR.CekCetak;
Begin
  if GroupUser <> 'admin' then
  begin
    with quAct, SQL do
    begin
      Close;Clear;
      Add('SELECT FgCetak FROM ARTrKonInvPelHd WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('FgCetak').AsString = 'Y' then
    begin
      pesan('Data sudah pernah dicetak tidak bisa Hapus atau Ubah lagi');
      Abort;
    end;
  end;
End;

procedure TfmARTrKonInvPelIDR.CeKStatus;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 VoucherID PiutangID FROM CFTrKKBBDt WHERE Note='''+quMainKonInvPelID.AsString+'''');
    Open;
    if not IsEmpty then
    begin
      MsgInfo('Sudah ada Pembayaran ['+quAct.fieldbyname('PiutangID').AsString+'], tidak bisa edit/Delete lagi');
      Abort;
    end;
  end;
End;

procedure TfmARTrKonInvPelIDR.TTLKJ;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Update ARTrKonInvPelHd SET TTLKJ='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''','
       +' STKJ='''+Formatcurr('0.00',quTotalSubTotal.AsCurrency)+''''
       +' WHERE KonInvpelID='''+quMainKonInvPelID.AsString+'''');
    ExecSQL;
  End;
End;

procedure TfmARTrKonInvPelIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonInvPelID';
  FFieldTgl   := 'TransDate';
  FAfterWhere:=' AND FgPerforma='''+StLap+''' ';
  SettingDxGrid(dxDBGrid1);
  inherited;
  //FgPerforma R=Regular, P=Performa
  ts01.TabVisible := False;
  if StLap = 'R' then
  begin
    Caption := 'Invoice Penjualan'; Label38.Visible := False;
  end else
  begin
    Caption := 'Performa Invoice'; Label24.Visible := False; Label36.Visible := False;
    Label37.Visible := False; dxDBButtonEdit3.Visible := False;
    Label25.Visible := False; dxDBEdit1.Visible := False;
    label1.Top := 51; label2.Top := 81; label13.Top := 81; label7.Top := 51;
    txtKonInvPelID.Top := 45; dxDBDateEdit1.Top := 75; Label38.Left := 19;
    Label38.Top := 19; Label38.Visible := True;
  end;

  quMain.Active  := TRUE;
{  with quMain,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM ARTrKonInvPelHD WHERE FgPerforma='''+Stlap+''' ');
    Open;
  end;    }

  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
end;

procedure TfmARTrKonInvPelIDR.txtPelangganIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quMainCustName.FocusControl;
  quMainCustID.FocusControl;
  if StLap = 'R' then
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustName as Nama_Pelanggan,CustId as Kode_Pelanggan, Address '
                   +' FROM ARMsCustomer WHERE Custid IN (Select CustID FROM ARTrKonTransBrgHd)'
                   +' ORDER BY CustId';
        KeyValue := txtPelangganID.Text;
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
            quMainCustId.Value := Res[1];
       end;
    finally
       Free;
    end;
  end else
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustName as Nama_Pelanggan,CustId as Kode_Pelanggan, Address '
                   +' FROM ARMsCustomer ORDER BY CustId';
        KeyValue := txtPelangganID.Text;
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
            quMainCustId.Value := Res[1];
       end;
    finally
       Free;
    end;
  end;

  quMainSalesID.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.txtSalesIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesId as Kode_Sales, SalesName as Nama_Sales'
                   +',Address '
                   +' FROM ARMsSales'
                   +' ORDER BY SalesId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSalesID.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforePost(DataSet: TDataSet);
var ST: String; 
begin
  inherited;
  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainCustID.AsString)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainCustName.AsString)='' then
  begin
    MsgInfo('Kode Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMainSalesID.AsString = '' then
  Begin
    MsgInfo('Sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainSalesName.AsString) = '' then
  Begin
    MsgInfo('Sales tidak terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if Trim(quMainCurrID.AsString)='' then
  begin
    MsgInfo('Valuta tidak boleh kosong');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCurrName.AsString)='' then
  begin
    MsgInfo('Valuta tidak ada dalam Master');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainJatuhTempo.AsString)='' Then
  Begin
    MsgInfo('Lama Jatuh Tempo tidak boleh kosong');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  if quMainJatuhTempo.Value < 0  Then
  Begin
    MsgInfo('Lama Jatuh Tempo tidak boleh lebih kecil dari 0');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  if StLap='R' then
  begin
    if quMain.State=dsInsert then
    Begin
      if TRIM(quMainCurrID.AsString)= 'IDR' then
        ST := PT+'/R'+ FormatDateTime('YY/MM-', quMainTransDate.AsDateTime)
      else
        ST := PT+'/D'+ FormatDateTime('YY/MM-', quMainTransDate.AsDateTime);
      quMainKonInvPelID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrKonInvPelHd', 'KonInvPelID', ST, '0') + 1);
      if TRIM(quMainKonInvPelID.AsString) = '' then
      begin
        pesan('Hub Vendor Anda');
        quMainKonInvPelID.FocusControl;
        Abort;
      end;
      CarirateNew(quAct,quMainTransDate.AsDateTime);
      quMainRate.Value := quAct.fieldbyname('Rate').AsCurrency;
    end;
  end else
  begin
    if quMain.State=dsInsert then
    Begin
      if TRIM(quMainCurrID.AsString)= 'IDR' then
        ST := PT+'/PFM/R'+ FormatDateTime('YY/MM-', quMainTransDate.AsDateTime)
      else
        ST := PT+'/PFM/D'+ FormatDateTime('YY/MM-', quMainTransDate.AsDateTime);
      quMainKonInvPelID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrKonInvPelHd', 'KonInvPelID', ST, '0') + 1);
      if TRIM(quMainKonInvPelID.AsString) = '' then
      begin
        pesan('Hub Vendor Anda');
        quMainKonInvPelID.FocusControl;
        Abort;
      end;
      CarirateNew(quAct,quMainTransDate.AsDateTime);
      quMainRate.Value := quAct.fieldbyname('Rate').AsCurrency;
      end;
  end;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;

end;

procedure TfmARTrKonInvPelIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtKonInvPelID,TRUE);
  SetReadOnly(txtPelangganID,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit3,qumain.state<>dsinsert);
  SetReadOnly(dxDBButtonEdit2,TRUE);
  if StLap='R' then SetReadOnly(dxDBPajak,TRUE);
end;

procedure TfmARTrKonInvPelIDR.txtKonInvPelIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrKonInvPelIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1ItemID,quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1ItemName,TRUE);
  SetReadOnly(dxDBGrid1ItemID,quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1LUserPrice,TRUE);
  SetReadOnly(dxDBGrid1Qty,TRUE);
  SetReadOnly(dxDBGrid1ValueTotal,TRUE);
  SetReadOnly(dxDBGrid1UOMID,qudetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1Konsinyasi,qudetil.State<>dsinsert);
end;

procedure TfmARTrKonInvPelIDR.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  quDetilCTotal.Value := quDetilQty.Value*quDetilPrice.Value
{  if quDetilFgTax.AsString = 'T' Then
    quDetilCTotal.Value := quDetilQty.Value*quDetilPrice.Value
  else
    quDetilCTotal.Value := quDetilQty.Value*quDetilPrice.Value*1.1;}
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrKonInvPelIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := date;
  quMainCurrID.AsString      := 'IDR';
  quMainDiscount.AsCurrency  := 0;
  quMainDP.AsCurrency        := 0;
  quMainTransDate.FocusControl;
  quMainFgTax.AsString := 'T';
  quMainFgPerforma.AsString := StLap;
  quMainRekeningU.AsString := sDRPj;
  quMainRekeningK.AsString := sDGRPj;
  quMainRekeningD.AsString := sDGRBi;
  quMainRekeningP.AsString := sCustC;
  quMainRate.AsCurrency := 1;
  if TRIM(quMainFgTax.AsString) = 'Y' then
    quMainJatuhTempo.AsInteger := 90
  else
    quMainJatuhTempo.AsInteger := 45;
end;

procedure TfmARTrKonInvPelIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value:=1;
  quDetilPrice.Value:=0;
  quDetilItemID.FocusControl;
  quDetilfgtax.AsString := 'T';
end;

procedure TfmARTrKonInvPelIDR.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Penjualan';
       SQLString := 'SELECT A.KonInvPelID as Invoice,Convert(varchar(10),A.TransDate,103) as Tanggal,'
                   +'B.Custname as Nama_Pelanggan,A.CurrID as Valuta,A.Note as Keterangan,ISNULL(SUM(C.Qty),0) as Jumlah '
                   +'FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer B ON A.CustId=B.CustID '
                   +'LEFT JOIN ARTrKonInvPelDt C ON A.KonInvPelID=C.KonInvPelID '
                   +'WHERE '+FSQLWhere
                   +' GROUP BY A.KonInvPelID,A.Transdate,B.CustName,A.CurrID,A.Note ORDER BY A.KonInvPelID';

       if ShowModal = MrOK then
       begin
         quMain.Locate('KonInvPelID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.txtDiskonChange(Sender: TObject);
begin
  inherited;
  {
  if txtDiskon.Text <> '' then
  begin
    with quAct, SQL do
    begin
      Close; Clear;
      Add('SELECT SUM(Harga * Qty) - (Convert(Float, ' + txtDiskon.Text + ') / Convert(Float, 100) * SUM(Harga * Qty)) as Total FROM ARTrDPenjualan WHERE KonInvPelID=''' + quMainKonInvPelID.AsString + ''' GROUP BY KonInvPelID');
      Open;
    end;
    txtTotal.Caption := FormatCurr('Rp ,0.00;-Rp ,0.00', quAct.FieldByName('Total').AsFloat);
  end;
  }
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1ItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quDetilLItemName.FocusControl;
  quDetilItemID.FocusControl;
  if StLap='P' then
  begin
   with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'select A.ItemID as kode_Barang,A.ItemName as Nama_Barang from INMsItem A '
                   +'ORDER BY A.ItemID';
       KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[0];
          quDetilKonTransBrgID.Value := '-';
          //quDetilQty.AsString := Res[2];
       end;
    finally
       free;
    end;
  end else
  begin
    with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT K.ItemID as Kode_Barang,L.ItemName as Nama_Barang,ISNULL(K.Jumlah-K.Invoice-K.Retur,0) as Sisa,'
                   +'K.KonTransBrgID as Nota_DO,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal FROM ('
                   +'SELECT A.KonTransBrgID,A.Transdate,B.ItemID,ISNULL(B.Qty,0) as Jumlah,A.CustID,B.UpdDate,'
                   +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonInvPelDt X INNER JOIN ARTrKonInvPelHd Y ON X.KonInvPelID=Y.KonInvPelID '
                   +'WHERE X.ItemID=B.ItemID AND Y.CustID=A.CustID AND Y.SOID=A.KonTransBrgID),0) as Invoice,'
                   +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonReturDt X INNER JOIN ARTrKonReturHd Y ON X.KonReturID=Y.KonReturID '
                   +'WHERE X.ItemID=B.ItemID AND X.KonTransBrgID=A.KonTransBrgID AND Y.CustID=A.CustID),0) as Retur '
                   +'FROM ARTrKonTransBrgHd A INNER JOIN ARTrKonTransBrgDt B ON A.KonTransBrgID=B.KonTransBrgID) as K '
                   +'INNER JOIN INMsItem L ON K.ItemID=L.ItemID WHERE K.CustID='''+quMainCustID.AsString+''' '
                   +'AND K.KonTransBrgID='''+quMainSOID.AsString+''' AND ISNULL(K.Jumlah-K.Invoice-K.Retur,0) > 0 '
                   +'ORDER BY K.UpdDate';
       KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[0];
          quDetilKonTransBrgID.Value := Res[3];
          quDetilQty.AsString := Res[2];
       end;
    finally
       free;
    end;
  end;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforePost(DataSet: TDataSet);
//var BottomPrice,UpPrice : currency;
begin
  inherited;
 if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLItemName.Value)='' then
  begin
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
    with quAct, SQL do
    begin
      Close; Clear;
      Add('SELECT Top 1 ItemId FROM  ARTrKonInvPelDt  WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' '
         +'AND ItemId='''+quDetilItemID.AsString+''' AND KonTransBrgId='''+quDetilKonTransBrgId.AsString+''' '
         +'AND Price='''+quDetilPrice.AsString+'''');
      Open;
      if not IsEmpty then
      begin
        MsgInfo('Kode Item sudah ada dalam List');
        quDetilItemID.FocusControl;
        Abort;
      end;
    end;
    quDetilUpdDate.AsDateTime := GetServerDateTime;
  end;

  if TRIM(quDetilQty.AsString) ='' then
  begin
     MsgInfo('Jumlah Barang Tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetilQty.Value <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if Stlap='R' then
  begin
  with quAct,SQL do
  Begin
    Close;Clear;
    Add(' SELECT isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrKonInvPelDt D INNER JOIN ARTrKonInvPelHd E '+
        ' ON D.KonInvPelId=E.KonInvPelId WHERE D.ItemId=A.ItemId'+
        ' AND D.KonTransBrgId=B.KonTransBrgId AND E.CustId=B.CustId AND D.KonTransBrgID<>'''+quDetilKonTransBrgId.AsString+''')'+
        ' -(Select Isnull(Sum(qty),0) FROM ARTrKonReturDt G INNER JOIN ARTrKonReturHd H'+
        ' ON G.KonReturId=H.KonReturID WHERE G.ItemId=A.ItemId And G.KonTransBrgId=B.KonTransBrgId'+
        ' AND H.CustId=B.CustId)'+
        ' as Sisa'+
        ' FROM ARTrKonTransBrgDt A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID ' +
        ' INNER JOIN INMsItem C ON A.ItemId=C.ItemId'+
        ' WHERE B.CustId = ''' + quMainCustID.Value + ''' AND A.ItemId='''+quDetilItemID.Value+''''+
        ' AND B.KonTransBrgId='''+quDetilKonTransBrgId.Value+''''+
        ' ORDER by B.KonTransBrgId ');
    Open;
    If IsEmpty then
    Begin
      MsgInfo('Data tidak terdapat pada Delivery Order');
      quDetilItemID.FocusControl;
      Abort;
    End;
  End;


  if quDetilQty.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Jumlah Barang melebihi jumlah Di Nota DO '+#13
           +' Sisa Konsinyasi adalah ['+ quAct.FieldByName('Sisa').AsString +']');
    quDetilQty.FocusControl;
    Abort;
  end;
  end;
  {if quDetilPrice.AsCurrency < quDetilLUserPrice.AsCurrency  then
  begin
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('SELECT ISNULL(FixPrice*0.01,0) as FixPrice,ISNULL(HPrice*0.01,0) as HPrice FROM SAMsSet');
      Open;
    end;
    BottomPrice := quDetilLUserPrice.AsCurrency - (quCalc.FieldByName('FixPrice').AsCurrency * quDetilLUserPrice.AsCurrency);
    if quDetilPrice.AsCurrency < BottomPrice then
    begin
      pesan('Harga Jual tidak boleh dibawah harga Botom'+#13
           +'Batas harga bottom nya adalah sebesar Rp '+FormatCurr('0,00',BottomPrice));
      quDetilPrice.FocusControl;
      Abort;
    end;
  end;         }

 { if quDetilPrice.AsCurrency > quDetilLUserPrice.AsCurrency  then
  begin
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('SELECT ISNULL(FixPrice*0.01,0) as FixPrice,ISNULL(HPrice*0.01,0) as HPrice FROM SAMsSet');
      Open;
    end;
    UpPrice := quDetilLUserPrice.AsCurrency + (quCalc.FieldByName('HPrice').AsCurrency * quDetilLUserPrice.AsCurrency);
    if quDetilPrice.AsCurrency > UpPrice then
    begin
      pesan('Harga Jual tidak boleh diatas harga jual Max'+#13
           +'Batas harga Jual Max nya adalah sebesar Rp '+FormatCurr('0,00',UpPrice));
      quDetilPrice.FocusControl;
      Abort;
    end;
  end;
                       }
  quDetilKomisi.AsCurrency := quDetilLKomisi.AsCurrency ;
  quDetilUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARTrKonInvPelIDR.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainCJthTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningK.AsString+''' ');
    Open;
  end;
  quMainLRekPenjualan.AsString := quAct.FieldByName('RekeningName').AsString;
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
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningD.AsString+''' ');
    Open;
  end;
  quMainLRekDisc.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningU.AsString+''' ');
    Open;
  end;
  quMainLRekPiutangDagang.AsString := quAct.FieldByName('RekeningName').AsString;

  if qumaincustid.AsString <> '' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT FgTERM FROM ARMsCustomer WHERE CUSTID='''+quMainCustID.AsString+''' ');
      Open;
    end;
    quMainLFgTerm.AsString := quAct.FieldByName('FgTerm').AsString;
  end else
  begin
    qumainLFgTerm.asString := '';
  end;

  if quMainFgTax.AsString = 'Y' then
  quMainLuPajak.AsString := 'Yes'
  else
  quMainLuPajak.AsString := 'No';

  with quAct,sql do
  begin
    Close;Clear;
    Add('SELECT A.POCust FROM ARTrPurchaseOrderHD A inner join ARtrKonTransBrgHD B on A.POID=B.SOID WHERE B.KontransBrgID='''+qumainSOID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount <> 0 then
    quMainPOCust.AsString := quAct.FieldByName('POCust').AsString
  else
    quMainPOCust.AsString := '-';
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1KonsinyasiButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
        Title := 'Nota Konsinyasi';
       SQLString := ' SELECT Distinct A.KonTransBrgID as Nota_Konsinyasi_Penjualan' +
                    ' FROM ARTrKonTransBrgHd A INNER JOIN ARTrKonTransBrgDt B ON A.KonTransBrgId=B.KonTransBrgId' +
                    ' WHERE A.CustID = ''' + quMainCustID.Value + ''' And ItemId='''+quDetilItemID.Value+''' ' +
                    ' ORDER by A.KonTransBrgID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilKonTransBrgId.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  TTLKJ;
end;

procedure TfmARTrKonInvPelIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  TTLKJ;
end;

procedure TfmARTrKonInvPelIDR.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('INSERT ARTrKonInvPelDt (KonInvPelID,KonTransBrgID,ItemID,Price,Qty,UpdUser,UpdDate,UOMID) ');
    Add('SELECT '''+quMainKonInvPelID.AsString+''','''+quMainSOID.AsString+''',A.ItemID,C.Price,A.Qty,'''+dmMain.UserId+''',A.UpdDate,A.UOMID '
       +'FROM ARTrKonTransBrgDt A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID '
       +'inner join ArtrpurchaseOrderDt C on B.SOID=C.POID and A.ItemId=C.ItemId '
       +'WHERE B.KonTransBrgID='''+quMainSOID.AsString+''' AND A.ItemID NOT IN (SELECT ItemID FROM ARTrKonInvPelDt '
       +'WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' AND KonTransBrgID='''+quMainSOID.AsString+''')'
       +'ORDER BY A.UpdDate');
    ExecSQL;
  end;
  quDetil.Requery();
  quTotal.Requery();
  TTLKJ;
  quDetilPrice.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  CeKStatus;
  Status := 'Ubah';
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrKonInvPelIDR.dxButton1Click(Sender: TObject);
var sTotal : Currency;
rek,nmrek,cabrek,compname :string;
begin
  inherited;
  if (quMain.IsEmpty) and (quDetil.IsEmpty) then Abort;
  with quAct,SQL do
    begin
      Close;Clear;
      Add(' Select companyname,Rekening,Namarek,CabangRek From SaMsCompany ');
      Open;
    end;
  compname := quAct.FieldByName('CompanyName').AsString;
  rek := quAct.FieldByName('rekening').AsString;
  nmrek := quAct.FieldByName('namarek').AsString;
  cabrek := quAct.FieldByName('cabangrek').AsString;

  if RbCetak.ItemIndex = 0 then
  Begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add(' Select isnull(TTLKj,0) as TTLKj FROM ARTrKonInvPelHd Where KonInvPelID='''+quMainKonInvPelID.AsString+'''');
      Open;
    end;
  if quAct.FieldByName('TTLKj').AsCurrency = 0 then
    stotal := quTotalGT.AsCurrency
  else
    stotal := quAct.FieldByName('TTLKj').AsCurrency;
     with TfmQRRptInvPenjualan.Create(Self) do
     try
       qlbNamaRekening.Caption := compname;
       qlbRekening.Caption := rek;
       qlbBank.Caption := nmrek;
       qlbCabang.Caption := cabrek;


       qlbjatuhTempo.Caption := 'Term Pembayaran : '+quMainJatuhTempo.AsString+' Hari';
       qlbTempo.Caption := FormatDateTime('dd/MM/yyyy', IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger));
       QRLabel1.Caption := 'Jakarta, '+FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);
       qlbHalaman.Enabled := False;
       if quMainFgTax.AsString = 'Y' then
       begin
         qlbBank.Enabled := True;
         qlbCabang.Enabled := True; QRShape7.Enabled := True;
         qlbRekening.Enabled := True;
         qlbNamaRekening.Enabled := True;
         QRLabel31.Top := 72; QRLabel3.Top := 72; QRDBText18.Top := 72;
         QRLabel27.Enabled := False; QRLabel28.Enabled := False; QRDBText15.Enabled := False;
         QRLabel21.Enabled := False; QRLabel22.Enabled := False; qlbKet.Enabled := False;
       end else
       begin
         qlbBank.Enabled := False;
         qlbCabang.Enabled := False;
         qlbRekening.Enabled := False;
         qlbNamaRekening.Enabled := False;
         QrShape7.Enabled := False;
       end;
       if UpperCase(quMainCurrId.Value) ='IDR' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, sTotal))+'rupiah #';
          qlbCurr1.Caption := 'Rp ';
          qlbCurr2.Caption := 'Rp ';
          qlbCurr3.Caption := 'Rp ';
          qlbCurr4.Caption := 'Rp ';
          qlbCurr5.Caption := 'Rp ';
       end;
       if UpperCase(quMainCurrId.Value) ='USD' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
          qlbCurr1.Caption := 'US ';
          qlbCurr2.Caption := 'US ';
          qlbCurr3.Caption := 'US ';
          qlbCurr4.Caption := 'US ';
          qlbCurr5.Caption := 'US ';
       end;
       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT ''T'' as FgTax,KonInvPelID as SaleId,KonInvPelId, CurrId,A.Discount,A.DP,isnull(TTLKJ,0) as Total,'
            +'Convert(varchar(10),A.Transdate,103) as Tgl,A.CustId,C.CustName,C.Address,'
            +'A.SalesID+'' - ''+D.SalesName as Sales,A.SOID,'
            +'CASE WHEN C.KodePOS='''' THEN C.City ELSE C.City+'' - ''+C.KodePOS END as City '
            +' FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' INNER JOIN ARMsSales D ON A.SalesID=D.SalesID '
            +' WHERE A.KonInvPelID='''+quMainKonInvPelID.AsString+'''');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add('SELECT A.ItemId,B.ItemName,B.UOMId,ISNULL(Qty,0) as Qty,CASE WHEN A.FgTax=''Y'' THEN A.Price*1.1 ELSE A.Price END As Price,B.Tipe FROM ARTrKonInvPelDt A '
            +'INNER JOIN INMsItem B ON A.Itemid=B.Itemid WHERE A.KonInvPelID='''+quMainKonInvPelID.AsString+''' '
            +'ORDER BY A.UpdDate,A.ItemID');
         Open;
       End;

       LaDiskon.Caption := CurrToStr(quTotalDiscount.AsCurrency);
       laGT.Caption := quTotalGT.AsString;
       laSubTotal.Caption := CurrToStr(quTotalSubTotal.AsCurrency - quTotalDiscount.AsCurrency);
       laPPN.Caption := CurrToStr(quTotalPPN.AsCurrency);

       if quMainNote.AsString <> '' then
          qlbKet.Caption := quMainNote.AsString
       else
          qlbKet.Caption := '';

       if RbHarga.ItemIndex=1 then
       Begin
          QRLabel9.Enabled := False;
          QRLabel10.Enabled := False;
          QRExpr2.Enabled := False;
          QRDBText9.Enabled := False;
       End Else
       Begin
         QRLabel9.Enabled := TRUE;
         QRLabel10.Enabled := TRUE;
         QRExpr2.Enabled := TRUE;
         QRDBText9.Enabled := TRUE;
       End;
       if quMainFgTax.AsString = 'T' then
       begin
         QRLabel18.Enabled := False; QRLabel23.Enabled := False;
         qlbCurr3.Enabled := False; qlbCurr4.Enabled := False;
         laSubTotal.Enabled := False; laPPN.Enabled := False;
         QRLabel20.Top := 41; qlbCurr5.Top := 41; laGT.Top := 41;
         QRShape6.Top := 58; QRShape5.Enabled := False;
       end;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

     finally
        free;
     end;
  End;

  if RbCetak.ItemIndex = 1 then
  Begin
     with TfmQRRptSuratJalan.Create(Self) do
     try

     with qu001,SQL do
       Begin
         Close;Clear;
         add(' SELECT ''T'' as FgTax,KonInvPelID as SaleId,KonInvPelId, CurrId,A.Discount,A.DP,isnull(TTLKJ,0) as Total,'
            +' Convert(varchar(10),getdate(),103) as Tgl,A.CustId,C.CustName,C.Address '
            +' FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.KonInvPelID='''+quMainKonInvPelID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.ItemId,B.ItemName,B.UOMId,C.Productdesc, Sum(Qty) as Qty,A.Price, '''' as Note FROM ARTrKonInvPelDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.KonInvPelID=:KonInvPelID'
            +' GROUP BY A.ItemId,B.ItemName,B.UOMId,C.Productdesc,A.Price');
         Open;
       End;

       if quMainNote.AsString <> '' then
          qlbKet.Caption := '* ' + quMainNote.AsString
       else
          qlbKet.Caption := '';

      MyReport.PreviewModal;
      finally
        free;
     end;
  End;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrKonInvPelHd SET FgCetak=''Y'' WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' ');
    ExecSQL;;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Sales';
       SQLString := 'SELECT Salesname as Nama_Sales,SalesID as Kode_Sales'
                   +',Address, Phone, HP FROM ARMsSales WHERE FgActive <> 0'
                   +' ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainSalesID.Value := Res[1];
       end;
    finally
       free;
    end;
   quMainCurrID.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrKonInvPelIDR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrKonInvPelIDR.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrKonInvPelIDR.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrKonInvPelIDR.quMainCustIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesID FROM ARTrKonTransBrgHd WHERE KonTransBrgID='''+quMainSOID.AsString+''' ');
    Open;
  end;
  quMainSalesID.AsString := quAct.FieldByName('SalesID').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT term FROM ARMsCustomer WHERE CustID='''+quMainCUSTID.AsString+''' ');
    Open;
  end;
  quMainJatuhTempo.AsInteger := quAct.FieldByName('Term').AsInteger;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Data Delivery Order';
       SQLString := 'SELECT A.KonTransBrgID as Nota_DO,A.CustID as Kode_Pelanggan,B.CustName as Nama_Pelanggan, '
                   +'CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal '
                   +'FROM ARTrKonTransBrgHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
                   +'WHERE A.KonTransBrgID NOT IN (SELECT C.SOID FROM ARTrKonInvPelHd C) '
                   +'ORDER BY A.KonTransBrgID';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainSOID.Value := Res[0];
       end;
  finally
       free;
  end;
  quMainCustID.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.quMainSOIDChange(Sender: TField);
var Valuta,CustID,FgTax : string;
Disc : Currency;
begin
  inherited;
  if StLap = 'R' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add(' SELECT A.CustID,A.CurrID,A.SOID,B.FgTax,B.Discount FROM ARTrKonTransBrgHd A '
       +' inner join ArtrpurchaseOrderHd B on A.SOID=B.POID WHERE KonTransBrgID='''+quMainSOID.AsString+''' ');
    Open;
  end;
  Disc := quAct.FieldByName('Discount').AsCurrency;
  fgtax := quAct.FieldByName('FgTax').AsString;
  Valuta := quAct.FieldByName('CurrID').AsString;
  CustID := quAct.FieldByName('CustID').AsString;
  quMainCurrID.AsString := Valuta;
  quMainCustID.AsString := CustID;
  quMainFgTax.AsString := fgtax;
  quMainDiscount.AsCurrency := Disc;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxButton4Click(Sender: TObject);
var KeyField : string;
begin
  inherited;
  if quMain.IsEmpty then Abort;
  with TfmARSN.Create (Application) do
  try
    Voucher := Self.quMainKonInvPelID.AsString;
    Tanggal := FormatDateTime('yyyyMM',quMainTransDate.AsDateTime)+'01';
    sampai  := FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime);
    Flag := 'INV';
    if ShowModal = MrOk then
      KeyField := cbNomer.Text;
  finally
    Self.quMain.Requery();
    quMain.Locate('KonInvPelID',KeyField,[]);
    Free;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxButton5Click(Sender: TObject);
begin
  inherited;
  with TfmRptMultiCetak.Create (Application) do
    try
       FlagKKBB := 'INV';
       ShowModal;
  finally
    Free;
  end;

end;

procedure TfmARTrKonInvPelIDR.dxButton2Click(Sender: TObject);
begin
  inherited;
   with TfmARQrRptAmplop.Create(Self) do
   try
     with qu001,SQL do
     Begin
       Close;Clear;
       add('SELECT CustName,Address FROM ARMsCustomer WHERE CustID='''+quMainCustID.AsString+''' ');
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

procedure TfmARTrKonInvPelIDR.quDetilFgTaxChange(Sender: TField);
begin
  inherited;
{  if qudetilfgtax.asString = 'Y' then
  quDetilPrice.asCurrency := qudetilPrice.asCurrency / 1.1 ;        }
end;

procedure TfmARTrKonInvPelIDR.quDetilPriceChange(Sender: TField);
begin
  inherited;
//  qudetilfgtax.asString := 'T';
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1UOMIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Satuan';
       SQLString := 'SELECT K.UOMID FROM ('
                   +'SELECT ItemID,UOMID From InMsItem UNION ALL SELECT ItemId,UOMID2 FROM InMsItem ) as K '
                   +'WHERE K.ItemID='''+qudetilItemID.AsString+''' order by K.UOMID ';
       if ShowModal = MrOk then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             qudetilUOMID.Value := Res[0];
       end;
  finally
       free;
  end;
end;

end.
