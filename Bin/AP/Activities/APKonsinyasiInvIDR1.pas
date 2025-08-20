unit APKonsinyasiInvIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, DateUtils,dxEditor, dxDBELib, DBCtrls;

type
  TfmAPKonsinyasiInvIDR = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    bbCancel: TdxButton;
    dbgListTransferID: TdxDBGridMaskColumn;
    dbgListTransferDate: TdxDBGridDateColumn;
    dbgListCustomerID: TdxDBGridMaskColumn;
    dbgListCustomerName: TdxDBGridLookupColumn;
    quItem: TADOQuery;
    quSupplier: TADOQuery;
    quMainTransDate: TDateTimeField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilKonsinyasiID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLuItemName: TStringField;
    quDetilCTotal: TCurrencyField;
    quKonsinyasi: TADOQuery;
    quKonsinyasiDt: TADOQuery;
    quMainCurrID: TStringField;
    quMainKonsinyasiInvID: TStringField;
    quDetilKonsinyasiInvID: TStringField;
    dsTotal: TDataSource;
    quTotal: TADOQuery;
    quTotalTotal: TBCDField;
    DBText4: TDBText;
    Label4: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    Shape3: TShape;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgPrice: TdxDBGridColumn;
    dbgTotal: TdxDBGridColumn;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    quMainTTLKS: TBCDField;
    quMainRate: TBCDField;
    quDetilDisc: TFloatField;
    dbgDisc: TdxDBGridColumn;
    quMainJatuhTempo: TIntegerField;
    Label6: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    DBText7: TDBText;
    quMainTglJthTempo: TDateTimeField;
    quMainSuppID: TStringField;
    quMainLSuppName: TStringField;
    quDetilSuppID: TStringField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    bbSave: TdxButton;
    quAct1: TADOQuery;
    Label12: TLabel;
    DBText9: TDBText;
    dbgNota: TdxDBGridColumn;
    quMainBPBID: TStringField;
    quMainLDOSupp: TStringField;
    Label9: TLabel;
    quDetilLHargaJual: TCurrencyField;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText2: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dxButton1: TdxButton;
    Shape4: TShape;
    Label13: TLabel;
    DBText3: TDBText;
    Shape5: TShape;
    Label19: TLabel;
    DBText6: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    quTotalSubTotal: TBCDField;
    quTotalPajak: TBCDField;
    ActPrint: TAction;
    quTotalQty: TBCDField;
    quMainFgTax: TStringField;
    quMainPOID: TStringField;
    quMainSubTotal: TBCDField;
    quMainTBobot: TBCDField;
    quMainPPN: TBCDField;
    quMainKonsinyasiID: TStringField;
    quMainDisc: TBCDField;
    quMainDP: TBCDField;
    quMainPayment: TBCDField;
    quMainPPH: TBCDField;
    quMainFgForm: TStringField;
    quMainTaxID: TStringField;
    quMainRekeningD: TStringField;
    quMainRekeningP: TStringField;
    quMainRekeningU: TStringField;
    quMainRekeningK: TStringField;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    quMainLRekPemb: TStringField;
    quMainLRekPPN: TStringField;
    quMainLRekHutDagang: TStringField;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    dxButton2: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
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
    procedure dbgNotaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBPBIDChange(Sender: TField);
    procedure quMainCurrIDChange(Sender: TField);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure CekStatus;
    procedure TTLKP;
  public
    { Public declarations }
    Status : string;
  end;

var
  fmAPKonsinyasiInvIDR: TfmAPKonsinyasiInvIDR;

implementation

uses StdLv2, StdLv1, StdLv0, ConMain, Search, UnitGeneral, MyUnit,StdLv3,
  APPembayaranHutangIDR, ARQRRptInvPenjualan;

{$R *.dfm}

Procedure TfmAPKonsinyasiInvIDR.CekStatus;
Begin //cek apakah sudah ada pembayaran kalo sudah ada tidak bisa di utak atik
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT K.PaymentID FROM (SELECT A.PurchaseID,B.SuppID,A.PaymentID FROM APTrPaymentDT A '
       +'INNER JOIN APTrPaymentHD B ON A.PaymentID=B.PaymentID UNION ALL '
       +'SELECT A.KonsinyasiInvID,B.SuppID,A.PaymentKonsID FROM APTrPaymentKonsDt A '
       +'INNER JOIN APTrPaymentKonsHd B ON A.PaymentKonsID=B.PaymentKonsID) as K '
       +'WHERE K.PurchaseID='''+quMainKonsinyasiInvID.AsString+''' And K.SuppID='''+ quMainSuppID.AsString +'''');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada pembayaran ['+quAct.Fieldbyname('PaymentID').AsString +'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPKonsinyasiInvIDR.TTLKP;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add('UPDATE APTrKonsinyasiInvHD SET TTLKS='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''' '
       +'WHERE KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' AND SuppID='''+quMainSuppID.AsString+'''');
    ExecSQL;
  End;
End;

procedure TfmAPKonsinyasiInvIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonsinyasiInvID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
  ts01.TabVisible := FALSE;
end;

procedure TfmAPKonsinyasiInvIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit3,quMain.State <>dsInsert);
  SetReadOnly(dxDBButtonEdit1,TRUE);
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Supplier';
    SQLString := 'SELECT DISTINCT B.SuppName as Supplier, A.SuppID as Kode_Supplier '
                +'FROM APTrKonsinyasiHD A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
                +'ORDER BY A.SuppID';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainSuppID.Value := Res[1];
    end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPKonsinyasiInvIDR.pcMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FActDS.State=dsBrowse;
end;

procedure TfmAPKonsinyasiInvIDR.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
{  If TRIM(quMainKonsinyasiInvID.AsString)='' then
  Begin
    MsgInfo('No Invoice tidak boleh kosong');
    quMainKonsinyasiInvID.FocusControl;
    Abort;
  End;}

  if TRIM(quMainBPBID.AsString) = '' then
  begin
    pesan('Nota BPB tidak boleh kosong');
    quMainBPBID.FocusControl;
    Abort;
  end;

  if TRIM(quMainLDOSupp.AsString) = '' then
  begin
    pesan('Data BPB tidak ada dalam transaksi Penerimaan Barang');
    quMainBPBID.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
    ST := 'BPB/R'+FormatDateTime('YY/MM-', quMainTransDate.AsDateTime);
    quMainKonsinyasiInvID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrKonsinyasiInvHd', 'KonsinyasiInvID', ST, '0') + 1);
{    With quAct,SQL do
    Begin
      Close;Clear;
      add('SELECT K.KonsinyasiInvID FROM ('
         +'SELECT KonsinyasiInvID FROM APTrKonsinyasiInvHd UNION ALL SELECT PurchaseID FROM APTrPurchaseHd UNION ALL '
         +'SELECT KonsinyasiID FROM APTrKonsinyasiHD) as K '
         +'WHERE K.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' ');
      Open;
      if Not IsEmpty then
      Begin
        MsgInfo('Nota sudah dipakai di Transaksi pembelian lain');
        quMainKonsinyasiInvID.FocusControl;
        Abort;
      End;
    end;}
    with quAct1,SQL do
    begin
      Close;Clear;
      Add('SELECT BPBID FROM APTrKonsinyasiInvHd WHERE BPBID='''+quMainBPBID.AsString+''' ');
      Open;
      if not IsEmpty then
      begin
        pesan('Data BPB sudah ada Invoicenya. Tidak bisa buat lagi');
        quMainBPBID.FocusControl;
        Abort;
      end;
    end;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT BPBID FROM APTrKonsinyasiHd WHERE BPBID='''+quMainBPBID.AsString+''' AND SuppID='''+quMainSuppID.AsString+''' ');
      Open;
      if IsEmpty then
      begin
        pesan('Supplier untuk data BPB ini tidak sama dengan data penerimaan barang');
        quMainSuppID.FocusControl;
        Abort;
      end;
    end;
  End;

  If TRIM(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal KOnsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If TRIM(quMainSuppID.AsString)='' then
  Begin
    MsgInfo('Supplier tidak boleh kosong');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If TRIM(quMainLSuppName.AsString)='' then
  Begin
    MsgInfo('Supplier tidak ada dalam Master');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If TRIM(quMainCurrID.AsString)='' then quMainCurrID.AsString := 'IDR';

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPKonsinyasiInvIDR.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmAPKonsinyasiInvIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:= Date;
  quMainBPBID.FocusControl;
  quMainCurrID.AsString := 'IDR';
  quMainJatuhTempo.AsInteger := 0;
  quMainRate.AsCurrency := 1;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM SAMsSet');
    Open;
  end;
  quMainRekeningU.AsString := quAct1.FieldByName('DRPb').AsString;
  quMainRekeningK.AsString := quAct1.FieldByName('DGRPb').AsString;
  quMainRekeningP.AsString := quAct1.FieldByName('DGRPLL').AsString;
end;

procedure TfmAPKonsinyasiInvIDR.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';            // Masi bisa di sederhanakan
       SQLString := 'SELECT K.KonsinyasiID as Nota_Konsinyasi,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl_Konsinyasi,'
                   +'K.ItemID as Kode_Barang, K.ItemName as Nama_Barang,ISNULL(K.Price,0) as Harga,ISNULL(K.Sisa,0) as Sisa,K.CurrID FROM ('
                   +'SELECT A.KonsinyasiID,B.Transdate,A.ItemID,C.ItemName,B.SuppID,A.Price,'
                   +'ISNULL(A.Qty,0)-(SELECT ISNULL(SUM(Qty),0) FROM APTrKonsinyasiInvDt D '
                   +'WHERE D.ItemID=A.ItemID AND D.KonsinyasiID=A.KonsinyasiID)-(SELECT ISNULL(SUM(Qty),0) FROM APTrReturnKonDt G '
                   +'WHERE G.ItemID=A.ItemID And G.KonsinyasiID=A.KonsinyasiID) as Sisa,A.CurrID FROM APTrKonsinyasIDt A '
                   +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID INNER JOIN INMsItem C ON A.ItemID=C.ItemID) as K '
                   +'WHERE K.SuppID = '''+quMainSuppID.AsString+''' AND K.Sisa <> 0 '
                   +'ORDER BY K.KonsinyasiID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[2];
          quDetilKonsinyasiID.Value := Res[0];
          quDetilPrice.AsString := Res[4];
          quDetilQty.AsString := Res[5];
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasiInvIDR.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.AsString)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLuItemName.AsString)='' then
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
        Add(' SELECT Count(*) FROM  APTrKonsinyasiInvDt  WHERE KonsinyasiInvID=:KonsinyasiInvID AND ItemId=:ItemId'
           +' AND KonsinyasiId=:KonsinyasiId AND Price=:Price');
        with Parameters do
        begin
           ParamByName('KonsinyasiInvID').Value := quMainKonsinyasiInvID.Value;
           ParamByName('KonsinyasiId').Value := quDetilKonsinyasiID.Value;
           ParamByName('ItemId').Value  := quDetilItemID.Value;
           ParamByName('Price').Value  := quDetilPrice.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
     end;
  end;

  if quDetilQty.Value <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

{  if quDetil.State = dsInsert then
  begin
    with quAct,SQL do
    Begin
      Close;Clear;
      add('SELECT SuppID,ItemID,A.KonsinyasiId,ISNULL(A.Qty,0)-(SELECT ISNULL(SUM(Qty),0) FROM APTrKonsinyasiInvDt D '
         +'INNER JOIN APTrKonsinyasiInvHd E  ON D.KonsinyasiInvId=E.KonsinyasiInvId AND D.SuppID=E.SuppID WHERE D.ItemID=A.ItemID '
         +'AND D.KonsinyasiId=A.KonsinyasiId AND E.SuppID=B.SuppID) + '
         +'ISNULL((SELECT ISNULL(Qty,0) as Qty FROM APTrKonsinyasiInvDt WHERE KonsinyasiInvId='''+quMainKonsinyasiInvID.AsString+''' AND '
         +'KonsinyasiId='''+quDetilKonsinyasiID.AsString+''' AND ItemId='''+quDetilItemID.AsString+''' '
         +'AND Price='''+quDetilPrice.AsString+'''),0) '
         +'-(SELECT ISNULL(SUM(Qty),0) FROM APTrReturnKonDt G INNER JOIN APTrReturnKonHd H '
         +'ON G.ReturnKonId=H.ReturnKonID WHERE G.ItemID=A.ItemID And G.KonsinyasiId=A.KonsinyasiId '
         +'AND H.SuppID=B.SuppID) as Sisa '
         +'FROM APTrKonsinyasiDt A INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiId=B.KonsinyasiID '
         +'WHERE B.SuppID='''+quMainSuppID.AsString+''' AND A.KonsinyasiId='''+quDetilKonsinyasiID.AsString+''' '
         +'AND A.ItemID='''+quDetilItemID.AsString+''' ');
      Open;
      If IsEmpty then
      Begin
        MsgInfo('Data tidak terdapat pada Konsinyasi');
        quDetilItemID.FocusControl;
        Abort;
      End;
     quDetilUpdDate.AsDateTime := GetServerDateTime;
    End;

    if quDetilQty.AsInteger > quAct.FieldByName('Sisa').AsInteger then
    begin
      MsgInfo('Jumlah Barang melebihi jumlah di Nota konsinyasi '+#13
             +' Sisa Konsinyasi adalah ['+ quAct.FieldByName('Sisa').AsString +']');
      quDetilQty.FocusControl;
      Abort;
    end;
  end; }

  quDetilUpdUser.AsString := dmMain.UserId;
end;

procedure TfmAPKonsinyasiInvIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsInteger:=1;
  quDetilPrice.AsCurrency:=0;
  quDetilItemID.FocusControl;
  quDetilDisc.AsInteger:=0;
  quDetilKonsinyasiID.AsString := quMainLDOSupp.AsString;
end;

procedure TfmAPKonsinyasiInvIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgNota,TRUE);
  SetReadOnly(dbgQty,quDetil.State<>dsinsert);
  SetReadOnly(dbgTotal,TRUE);
end;

procedure TfmAPKonsinyasiInvIDR.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Barang ';
       SQLString := 'SELECT A.KonsinyasiInvID as Invoice,Convert(Varchar(10),A.Transdate,103) as Tgl,'
                   +'B.SuppName as Supplier,A.CurrID as Valuta,A.Note as Keterangan,ISNULL(SUM(C.Qty),0) as Jumlah '
                   +'FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
                   +'INNER JOIN APTrKonsinyasiInvDt C ON A.KonsinyasiInvID=C.KonsinyasiInvID '
                   +'WHERE '+FSQLWhere
                   +' GROUP BY A.KonsinyasiInvID,A.Transdate,B.SuppName,A.CurrID,A.Note ORDER BY A.KonsinyasiInvID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonsinyasiInvID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasiInvIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllModal WHERE FgTrans=2 AND SourceNo='''+quMainKonsinyasiInvID.AsString+''' ');
    ExecSQL;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllModal WHERE FgTrans=2 AND SourceNo='''+quMainKonsinyasiInvID.AsString+''' '
       +'AND ItemID='''+quDetilItemID.AsString+''' ');
    ExecSQL;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  TTLKP;
  if quMainCurrID.AsString = 'IDR' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('DELETE FROM AllModal WHERE FgTrans=2 AND SourceNo='''+quMainKonsinyasiInvID.AsString+''' '
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
         ParamByName('SourceNo').Value := quMainKonsinyasiInvID.AsString;
         ParamByName('TransDate').Value := quMainTransDate.AsDateTime;
         ParamByName('FgTrans').Value := 2;
         ParamByName('ItemID').Value := quDetilItemID.AsString;
         ParamByName('Qty').Value := quDetilQty.AsInteger;
         ParamByName('CurrID').Value := quMainCurrID.AsString;
         ParamByName('Price').Value  := quDetilPrice.AsInteger - (quDetilPrice.AsInteger*quDetilDisc.AsInteger/100);
         ParamByName('Rate').Value := quMainRate.AsCurrency;
      end;
      ExecSQL;
    end;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dbgNotaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
        Title := 'Nota Konsinyasi';
       SQLString := 'SELECT DISTINCT A.KonsinyasiID as Nota_Konsinyasi '
                   +'FROM APTrKonsinyasiHd A INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiId=B.KonsinyasiId '
                   +'WHERE A.SuppID = ''' + quMainSuppID.AsString + ''' And ItemId='''+quDetilItemID.AsString+''' '
                   +'ORDER by A.KonsinyasiID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilKonsinyasiID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasiInvIDR.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  quDetilCTotal.AsCurrency := (quDetilPrice.AsCurrency * quDetilQty.AsInteger)-(quDetilPrice.AsCurrency * quDetilQty.AsInteger * quDetilDisc.AsCurrency / 100);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(UserPrice,0) as Price FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quDetilLHargaJual.AsCurrency := quAct.FieldByName('Price').AsCurrency;
end;

procedure TfmAPKonsinyasiInvIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  TTLKP;
end;

procedure TfmAPKonsinyasiInvIDR.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if quMain.IsEmpty then Abort;
  CekStatus;
  Status := 'Ubah';
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta FROM SAMsValuta ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasiInvIDR.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
 quMainTglJthTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT KonsinyasiID FROM APTrKonsinyasiHd WHERE BPBID='''+quMainBPBID.AsString+''' ');
    Open;
  end;
  quMainLDOSupp.AsString := quAct.FieldByName('KonsinyasiID').AsString;
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
end;

procedure TfmAPKonsinyasiInvIDR.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPKonsinyasiInvIDR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPKonsinyasiInvIDR.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsDetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmAPKonsinyasiInvIDR.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Penerimaan Barang';
    SQLString := 'SELECT BPBID as Nota_BPB,CONVERT(VARCHAR(10),Transdate,103) as Tgl,B.SuppName as Supplier '
                +'FROM APTrKonsinyasiHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
                +'WHERE BPBID NOT IN (SELECT BPBID FROM APTrKonsinyasiInvHd) '
                +'ORDER BY BPBID';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainBPBID.Value := Res[0];
    end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quMainBPBIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SuppID FROM APTrKonsinyasiHd '
       +'WHERE BPBID='''+quMainBPBID.AsString+''' ');
    Open;
  end;
  quMainSuppID.AsString := quAct.FieldByName('SuppID').AsString;
end;

procedure TfmAPKonsinyasiInvIDR.quMainCurrIDChange(Sender: TField);
begin
  inherited;
  CarirateNew(quAct,quMainTransDate.AsDateTime);
  if TRIM(quMainCurrID.AsString) = 'IDR' then
    quMainRate.AsCurrency := 1
  else
    quMainRate.AsCurrency := quAct.FieldByName('Rate').AsCurrency;
end;

procedure TfmAPKonsinyasiInvIDR.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Status <> 'Ubah' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('INSERT APTrKonsinyasiInvDt (KonsinyasiInvID,SuppID,KonsinyasiID,ItemID,Price,Qty,Disc) ');
      Add('SELECT '''+quMainKonsinyasiInvID.AsString+''','''+quMainSuppID.AsString+''',A.KonsinyasiID,ItemID,0,Qty,0 FROM APTrKonsinyasiDt A '
         +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID '
         +'WHERE B.BPBID='''+quMainBPBID.AsString+''' AND B.KonsinyasiID='''+quMainLDOSupp.AsString+''' '
         +'ORDER BY A.UpdDate');
      ExecSQL;
    end;
    quDetil.Requery();
  end;
  quTotal.Requery();
  TTLKP;
end;

procedure TfmAPKonsinyasiInvIDR.dxButton1Click(Sender: TObject);
var sTotal : Currency;
    FgTax : string;
begin
  inherited;
  if (quMain.IsEmpty) and (quDetil.IsEmpty) then Abort;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(round(TTLKs,0),0) as TTLKs,(SELECT FgTax FROM SAMsSet) as FgTax FROM APTrKonsinyasiInvHd Where KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+'''');
    Open;
  end;
  FgTax := quAct.FieldByName('FgTax').AsString;
  if quAct.FieldByName('TTLKs').AsCurrency = 0 then
    stotal := quTotalTotal.AsCurrency
  else
    stotal := quAct.FieldByName('TTLKs').AsCurrency;
     with TfmQRRptInvPenjualan.Create(Self) do
     try
       qlbjatuhTempo.Caption := 'Term Pembayaran : '+quMainJatuhTempo.AsString+' Hari';
       qlbTempo.Caption := FormatDateTime('dd/MM/yyyy', IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger));
       QRLabel1.Caption := 'Jakarta, '+FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);
       QRLabel5.Caption := '** PEMBELIAN **'; QRLabel31.Caption := 'No BPB';
         QRLabel31.Top := 72; QRLabel3.Top := 72; QRDBText18.Top := 72;
         QRLabel27.Enabled := False; QRLabel28.Enabled := False; QRDBText15.Enabled := False;
         QRLabel21.Enabled := False; QRLabel22.Enabled := False; qlbKet.Enabled := False;
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
         add('SELECT KonsinyasiInvID as SaleID,KonsinyasiInvID,CurrID,0 as Discount,0 as DP,ISNULL(TTLKs,0) as Total,'
            +'CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.SuppID as CustID,C.SuppName as CustName,C.Address,'''' as Sales,'
            +'A.BPBID as SOID,C.City,(SELECT FgTax FROM SAMsSet) as FgTax '
            +'FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier C ON A.SuppID=C.SuppID '
            +'WHERE A.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+'''');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add('SELECT A.ItemId,B.ItemName,B.UOMId,ISNULL(Qty,0) as Qty,A.Price,B.Tipe FROM APTrKonsinyasiInvDt A '
            +'INNER JOIN INMsItem B ON A.Itemid=B.Itemid WHERE A.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' '
            +'ORDER BY A.ItemID');
         Open;
       End;

       LaDiskon.Caption := '0';
       laGT.Caption := quTotalTotal.AsString;
       laSubTotal.Caption := CurrToStr(quTotalSubTotal.AsCurrency);
       laPPN.Caption := CurrToStr(quTotalPajak.AsCurrency);
       qlbNamaRekening.Enabled := True; QRLabel13.Caption := 'Dibuat Oleh :';
       qlbNamaRekening.Caption := 'Total Qty : '+FormatRptqtykurung(quTotalQty.AsString);
       if quMainNote.AsString <> '' then
          qlbKet.Caption := quMainNote.AsString
       else
          qlbKet.Caption := '';

       if FgTax = 'T' then
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
end;

end.
