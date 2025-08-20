unit ARTrReceiveInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBELib, dxEditor, DBCtrls, dxDBTLCl, dxGrClms;

type
  TfmARTrReceiveInv = class(TfmStdLv4)
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txtKonPiutangID: TdxDBEdit;
    quCustomer: TADOQuery;
    quMainRIID: TStringField;
    quMainTransdate: TDateTimeField;
    quMainCustID: TStringField;
    quMainNote: TStringField;
    quMainTTLRI: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainLuNmCustomer: TStringField;
    dbg: TdxDBGrid;
    GroupBox3: TGroupBox;
    DBText4: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quInvoice: TADOQuery;
    dbgRIID: TdxDBGridMaskColumn;
    dbgUpdDate: TdxDBGridDateColumn;
    dbgUpdUser: TdxDBGridMaskColumn;
    dbgInvoice: TdxDBGridColumn;
    dbgAmount: TdxDBGridColumn;
    quTotalTotal: TBCDField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxButton1: TdxButton;
    dbgDO: TdxDBGridColumn;
    txtTransDate: TdxDBDateEdit;
    txtCustID: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxButton2: TdxButton;
    quMainFlag: TStringField;
    quMainStatus: TStringField;
    DBText5: TDBText;
    dbgFPS: TdxDBGridColumn;
    dbgPOID: TdxDBGridColumn;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBText1: TDBText;
    Label11: TLabel;
    DBText2: TDBText;
    quDetilRIID: TStringField;
    quDetilKonInvPelID: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilAmount: TBCDField;
    quDetilTaxID: TStringField;
    quDetilInvoiceNo: TStringField;
    quDetilFPS: TStringField;
    quDetilNoPO: TStringField;
    quDetilNoDO: TStringField;
    dbgTgl: TdxDBGridColumn;
    dbgKonInvPelID: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtTransDateKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure txtCustIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dbgKonInvPelIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure dxButton2Click(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure UpdateTtlRI;
    Procedure CekStatus;
  public
    { Public declarations }
  end;

var
  fmARTrReceiveInv: TfmARTrReceiveInv;

implementation

uses Search, UnitGeneral, ConMain, MyUnit, StdLv3, ARQRRptBuktiBayar,
  RptLv0, StdLv0, StdLv1, APQRRptReceiveInv;

{$R *.dfm}

Procedure TfmARTrReceiveInv.CekStatus;
Begin
  With quAct,SQL do
  Begin
    Close;Clear;
    add('SELECT Flag FROM ARTrReceiveInvHd WHERE RIID='''+quMainRIID.AsString+''' ');
    Open;
  End;
  if quAct.FieldByName('Flag').AsString = 'Y' then
  begin
    ShowMessage('Tanda Terima sudah diterima oleh pihak pelanggan. Tidak bisa dihapus lagi');
    Abort;
  end;

  if (dmMain.UserId <> quMainUpdUser.AsString) then
  begin
    if (FgDelete <> 'Y') then
    begin
      pesan('Anda tidak ubah/delete/edit data user lain');
      Abort;
    end;

    if (FgEdit <> 'Y') then
    begin
      pesan('Anda tidak ubah/delete/edit data user lain');
      Abort;
    end;
  end;
End;

Procedure TfmARTrReceiveInv.UpdateTTlRI;
Begin
 With quAct,SQL do
 Begin
   Close;Clear;
   add('UPDATE ARTrReceiveInvHD SET TTLRI='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''' WHERE RIID='''+quMainRIID.AsString+'''');
   ExecSQL;
 End;
End;

procedure TfmARTrReceiveInv.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), RIID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.open;
end;

procedure TfmARTrReceiveInv.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;
  if Trim(quMainCustID.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainLuNmCustomer.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

 if qumain.State=dsinsert then
  Begin
    ST := 'RI-'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainRIID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrReceiveInvHD', 'RIID', ST, '0') + 1);
  End;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARTrReceiveInv.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtKonPiutangID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtCustID,quMain.State<>dsinsert);
end;

procedure TfmARTrReceiveInv.txtTransDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrReceiveInv.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgKonInvPelID,quDetil.State<>dsInsert);
  //SetReadOnly(dbgTgl,TRUE);
  //SetReadOnly(dbgPOID,TRUE);
  //SetReadOnly(dbgDO,TRUE);
  //SetReadOnly(dbgAmount,TRUE);
  //SetReadOnly(dbgFPS,TRUE);
  //SetReadOnly(dbgInvoice,TRUE);
  //SetReadOnly(dbgCDPP,TRUE);
  //SetReadOnly(dbgCPPN,TRUE);
  //SetReadOnly(dbgTaxID,TRUE);
  //SetReadOnly(dbgCPOID,TRUE);
end;

procedure TfmARTrReceiveInv.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrReceiveInv.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:= Date;
  quMainTransDate.FocusControl;
  quMainFlag.AsString := 'T';
end;

procedure TfmARTrReceiveInv.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Receive Invoice';
       SQLString := 'SELECT A.RIID as No_Bukti,CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal, B.SuppName as Pelanggan, '
                   +'A.Note as Keterangan,CASE WHEN A.Flag=''Y'' THEN ''Sudah Terima'' ELSE ''Belum Terima'' END as Status '
                   +'FROM ARTrReceiveInvHD A INNER JOIN APMsSupplier B ON A.CustID=B.SuppId '
                   +'WHERE '+FSQLWhere
                   +'ORDER BY A.RIID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('RIID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrReceiveInv.txtCustIDButtonClick(Sender: TObject;
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
       quMainCustID.Value := Res[1];
    end;
  finally
     free;
  end;
end;

procedure TfmARTrReceiveInv.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilKonInvPelID.Value)='' then
  begin
     MsgInfo('No Surat jalan tidak boleh kosong !');
     quDetilKonInvPelID.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT Count(KonInvPelID) FROM ARTrReceiveInvDT WHERE RIID=:RIID AND KonInvPelID=:KonInvPelID');
        with Parameters do
        begin
           ParamByName('RIID').Value := quMainRIID.AsString;
           ParamByName('KonInvPelID').Value  := quDetilKonInvPelID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Data sudah ada dalam List');
           quDetilKonInvPelID.FocusControl;
           abort;
        end;
     end;
  end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrReceiveInv.dbgKonInvPelIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Tanda Terima';

    {   SQLString := 'Select K.No_SJ,K.No_DO,K.Tgl,K.No_PO,SUM(Case When K.FgTax=''Y'' Then K.Amount*1.1 Else K.Amount End) as Amount FROM ( '
                   +'Select B.SuppID,A.KonsinyasiID as No_SJ,B.BPBID as No_DO,CONVERT(VARCHAR(10),B.Transdate,103) as Tgl,B.POID as No_PO, '
                   +'D.FgTax,A.Qty*C.Price as Amount '
                   +'from APTrKonsinyasiDt A '
                   +'inner join Aptrkonsinyasihd B on A.KonsinyasiID=B.KonsinyasiID '
                   +'inner join APTrPurchaseOrderDt C on A.ItemID=C.Itemid '
                   +'inner join APTrPurchaseOrderHd D on C.POID=D.POID ) as K '
                   +'Where K.Amount<>0 AND K.SuppID='''+quMainCustID.AsString+''' AND '
                   +'K.Tgl<='''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                   +'and K.No_SJ Not in (select KonInvPelId FROM ARTrReceiveInvDt) GROUP BY K.No_DO,K.No_PO,K.No_SJ,K.Tgl';   }

         SQLString :='SELECT K.InvoiceNo,K.Tgl,K.No_PO,K.Amount,K.FPS FROM ( '
                    +'select A.KonsinyasiInvID as InvoiceNo,A.SuppID,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.BPBID No_DO,A.POID as No_PO, '
                    +'ISNULL(A.FPS,''-'') as FPS,TTLKS as Amount '
                    +'from APTrKonsinyasiInvHd A ) as K '
                    +'Where K.Amount<>0 AND K.SuppID='''+quMainCustID.AsString+'''  '
                    +'AND K.InvoiceNo NOT IN (SELECT KonInvPelID FROM ARTrReceiveInvDT) ';

       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilKonInvPelID.Value := Res[0];
             quDetilNoPO.Value := Res[2];
             //quDetilNoDO.Value := Res[2];
             qudetiltaxId.Value := Res[1];
             quDetilAmount.Value := StrToCurr(Res[3]);
             //quDetilInvoiceNo.Value := Res[1];
             quDetilFPS.Value := Res[4];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrReceiveInv.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilKonInvPelID.FocusControl;
  quDetilAmount.AsCurrency := 0;
end;

procedure TfmARTrReceiveInv.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTtlRI;
  quDetil.Append;
end;

procedure TfmARTrReceiveInv.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrReceiveInv.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrReceiveInv.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrReceiveInv.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then
  begin
    ShowMessage('Tidak ada data yang bisa dihapus !');
    Abort;
  end;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrReceiveInv.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrReceiveInv.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTtlRI;
end;

procedure TfmARTrReceiveInv.dxButton1Click(Sender: TObject);
var sTotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Amount),0) as Total FROM ARTrReceiveInvDT WHERE RIID='''+quMainRIID.AsString+''' ');
    Open;
  end;
  sTotal := quAct.FieldByName('Total').AsCurrency;
  with TfmAPQRRptReceiveInv.Create(Self) do
    try
       qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #';
       qlbNote.Caption := 'Berikut terlampir Faktur Pajak untuk '+quMainLuNmCustomer.AsString+' sebagai berikut :';
       qrlTitle.Font.Size := 10;
       with qu001,SQL do
       Begin
         Close;Clear;
         Add('SELECT A.RIID,B.SuppName as CustName,CONVERT(VARCHAR(20),A.Transdate,105) as Tanggal '
            +'FROM ARTrReceiveInvHd A INNER JOIN APMsSupplier B ON A.CustID=B.SuppID '
            +'WHERE A.RIID='''+quMainRIID.AsString+''' ');
         Open;
         if IsEmpty then
         begin
            MsgInfo('No Data !');
            Abort;
         end;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         Add('SELECT A.KonInvPelID,A.NoPO as POID,A.TaxID as Tgl,'''' as TaxID,ROUND(A.Amount/1.1,0) as DPP, '
            +'ROUND(A.Amount/1.1*0.1,0) as Pajak,A.Amount as Total, '
            +'ISNULL(A.FPS,''-'') as FPS '
            +'FROM ARTrReceiveInvDt A  '
            +'where RIID=:RIID Order By A.KonInvPelId');
         Open;
         if IsEmpty then
         begin
            MsgInfo('No Data !');
            Abort;
         end;
       End;
       MyReport.PreviewModal
    finally
       free;
    end;
end;

procedure TfmARTrReceiveInv.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
{  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT COUNT(KonInvPelID) as Jumlah FROM ARTrReceiveInvDt '
       +'WHERE RIID='''+quMainRIID.AsString+''' ');
    Open;
  end;
  if TRIM(quMainCustID.AsString) = 'PBU' then
  begin
    if quAct.FieldByName('Jumlah').AsInteger >= 17 then
    begin
      ShowMessage('1(satu) Tanda Terima untuk Client PBU hanya bisa cetak 17 Invoice.');
      Abort;
    end;
  end;  }
end;

procedure TfmARTrReceiveInv.dxButton2Click(Sender: TObject);
var Nota : string;
begin
  inherited;
  Nota := quMainRIID.AsString;
  if TRIM(quMainFlag.AsString) = 'T' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrReceiveInvHD SET Flag=''Y'' WHERE RIID='''+Nota+''' ');
      ExecSQL;
    end;
  end;
  quMain.Requery();
  quMain.Locate('RIID',Nota,[]);
end;

procedure TfmARTrReceiveInv.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

procedure TfmARTrReceiveInv.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

end.
