unit APKonsinyasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl, StrUtils,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls;

type
  TfmAPKonsinyasi = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    quWareHouse: TADOQuery;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgListTransferID: TdxDBGridMaskColumn;
    dbgListTransferDate: TdxDBGridDateColumn;
    dbgListWareHouseSrc: TdxDBGridMaskColumn;
    dbgListWareHouseDest: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListLWareHouseDest: TdxDBGridLookupColumn;
    dbgListLwareHouseSrc: TdxDBGridLookupColumn;
    quMainKonsinyasiID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilKonsinyasiID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quSupplier: TADOQuery;
    quMainWareHouseID: TStringField;
    quMainLWareHouseName: TStringField;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    quMainJatuhTempo: TIntegerField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    quValuta: TADOQuery;
    quDetilPrice: TBCDField;
    dbgPrice: TdxDBGridColumn;
    quMainSuppID: TStringField;
    quMainLSuppName: TStringField;
    quMainRate: TBCDField;
    dbgCurrID: TdxDBGridButtonColumn;
    quDetilLuValuta: TStringField;
    quAct1: TADOQuery;
    quMainCurrID: TStringField;
    quMainFgPosting: TStringField;
    Label6: TLabel;
    quMainBPBID: TStringField;
    dxButton1: TdxButton;
    quDetilLuItemName: TStringField;
    dbgUOM: TdxDBGridColumn;
    quDetilLUOM: TStringField;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    ActPrint: TAction;
    Label13: TLabel;
    quMainPOID: TStringField;
    dbgBatch: TdxDBGrid;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNKonsinyasiID: TStringField;
    quSNItemID: TStringField;
    quSNSNID: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quSNFgJual: TStringField;
    quSNFgSN: TStringField;
    quSNJumlah: TBCDField;
    quSNExpDate: TDateTimeField;
    quSNPrice: TBCDField;
    dbgBatchKonsinyasiID: TdxDBGridMaskColumn;
    dbgBatchItemID: TdxDBGridMaskColumn;
    dbgBatchUpdDate: TdxDBGridDateColumn;
    dbgBatchUpdUser: TdxDBGridMaskColumn;
    dbgBatchFgJual: TdxDBGridMaskColumn;
    dbgBatchFgSN: TdxDBGridMaskColumn;
    dbgBatchPrice: TdxDBGridCurrencyColumn;
    dbgBatchJumlah: TdxDBGridColumn;
    dbgBatchExpDate: TdxDBGridDateColumn;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dbgBatchSNID: TdxDBGridColumn;
    dbgNote: TdxDBGridColumn;
    quDetilNote: TStringField;
    quMainNoBPB: TStringField;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxButton6: TdxButton;
    quMainRekPersediaan: TStringField;
    quMainPPN: TStringField;
    quMainRekHD: TStringField;
    quMainLRekPersediaan: TStringField;
    quMainLPPN: TStringField;
    quMainLRekHD: TStringField;
    quDetilNumAll: TIntegerField;
    quDetilFgNum: TIntegerField;
    quSNNumAll: TIntegerField;
    quDetilJumlah: TBCDField;
    quDetilUOMID: TStringField;
    Label7: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    DBText3: TDBText;
    quMainLSites: TStringField;
    quMainSiteID: TStringField;
    dbgColumn8: TdxDBGridColumn;
    dbgColumn9: TdxDBGridColumn;
    quDetiltypeunit: TStringField;
    quDetilnounit: TStringField;
    Label8: TLabel;
    DBText4: TDBText;
    dxDBButtonEdit5: TdxDBButtonEdit;
    quMainDivisiID: TStringField;
    quMainLDivisi: TStringField;
    DBText5: TDBText;
    quMainLsitespo: TStringField;
    quMainLsiteid: TStringField;
    quDetilLsites: TStringField;
    quDetilCurrID: TStringField;
    quDetilFgTerima: TStringField;
    quDetilLayoutID: TStringField;
    dbgColumn10: TdxDBGridButtonColumn;
    quDetilPOID: TStringField;
    dbgColumn11: TdxDBGridColumn;
    dbgColumn12: TdxDBGridColumn;
    quDetilLItemID: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
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
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dbgCurrIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNItemIDChange(Sender: TField);
    procedure dxButton6Click(Sender: TObject);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilJumlahChange(Sender: TField);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dbgColumn10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CeKStatus;
    procedure CeKStatusDetil;
    procedure CeKRetur;
    procedure CekEdit;
    procedure CekDelete;
    procedure CekTambah;
  public
    { Public declarations }
    KodeBarang : string;
    Jumlah : Currency;
    Jum,JumPOSBM : currency;
  end;

var
  fmAPKonsinyasi: TfmAPKonsinyasi;

implementation

uses ConMain, Search, UnitGeneral, MyUnit, ARMsPelanggan, APMsSupplier,
  APQRRptPenerimaanBarang, StdLv3, StdLv1, RptGLTrKMKK;

{$R *.dfm}

procedure TfmAPKonsinyasi.CeKStatus;
Begin

  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT top 1 KonsinyasiInvID FROM APTrKonsinyasiInvDt '
       +'WHERE KonsinyasiID='''+quMainKonsinyasiID.Value+'''');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Invoice ['+quAct.FieldByName('KonsinyasiInvID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPKonsinyasi.CekEdit;
Begin
  if FgEdit<>'Y' then
  begin
    if (quMainUpdUser.ASString<>dmmain.userid) then
    begin
      ShowMessage('Tidak Bisa Edit Inputan User Lain');
      abort;
    end;
  end;
End;

procedure TfmAPKonsinyasi.CekTambah;
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

procedure TfmAPKonsinyasi.CekDelete;
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

procedure TfmAPKonsinyasi.CeKStatusDetil;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 KonsinyasiInvID FROM APTrKonsinyasiInvDt '
       +'WHERE KonsinyasiID='''+quMainKonsinyasiID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Invoice Konsinyasi ['+quAct.FieldByName('KonsinyasiInvID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;

End;

procedure TfmAPKonsinyasi.CeKRetur;
Begin
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 ReturnKonID FROM APTrReturnKonDT '
       +'WHERE KonsinyasiID='''+quMainKonsinyasiID.AsString+'''');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada Retur ['+quAct.fieldbyname('ReturnKonID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPKonsinyasi.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonsinyasiID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  SettingDxGrid(dbgBatch);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  //quSN.Active := TRUE;
  ts01.TabVisible := FALSE;

  if FgHPP='Y' then
  begin

  end;
end;

procedure TfmAPKonsinyasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit3,TRUE);
  SetReadOnly(dxDBEdit1,quMain.State <>dsInsert);

  SetReadOnly(dxDBButtonEdit2,TRUE);

  if GroupUser<>'admin' then
  begin
    SetReadOnly(dxDBDateEdit1,quMain.State <>dsInsert);
    SetReadOnly(dxDBButtonEdit3,quMain.State <>dsInsert);
  end;

  SetReadOnly(dxDBButtonEdit4,quMain.State <>dsInsert);
  SetReadOnly(dxDBButtonEdit5,quMain.State <>dsInsert);
end;

procedure TfmAPKonsinyasi.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmAPKonsinyasi.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPKonsinyasi.pcMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FActDS.State=dsBrowse;
end;

procedure TfmAPKonsinyasi.quMainBeforePost(DataSet: TDataSet);
var ST,Romawi : string;
begin
  inherited;

  If TRIM(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If TRIM(quMainSuppID.AsString)='' then
  Begin
    MsgInfo('Dari tidak boleh kosong');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If TRIM(quMainLSuppName.Value)='' then
  Begin
    MsgInfo('Supplier tidak ada dalam Master');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If TRIM(quMainWareHouseID.Value)='' then
  Begin
    MsgInfo('Gudang Tujuan tidak ada dalam Master Gudang');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  If TRIM(quMainLWareHouseName.Value)='' then
  Begin
    MsgInfo('Gudang tidak ada dalam Master');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '01' Then Romawi := 'I';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '02' Then Romawi := 'II';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '03' Then Romawi := 'III';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '04' Then Romawi := 'IV';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '05' Then Romawi := 'V';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '06' Then Romawi := 'VI';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '07' Then Romawi := 'VII';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '08' Then Romawi := 'VIII';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '09' Then Romawi := 'IX';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '10' Then Romawi := 'X';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '11' Then Romawi := 'XI';
  if FormatDateTime('MM', quMainTransDate.AsDateTime) = '12' Then Romawi := 'XII';



  If ( quMain.State= dsInsert ) and ( quMainBPBID.AsString = '' ) then
  Begin
    ST := 'BPB'+FormatDateTime('YYMM', quMainTransDate.AsDateTime);
    quMainNoBPB.AsString := ST + FormatFloat('000', RunNumberGL(quAct, 'APTrKonsinyasiHd', 'NoBPB', ST, '0') + 1);
    quMainBPBID.AsString := ST + FormatFloat('000', RunNumberGL(quAct, 'APTrKonsinyasiHd', 'BPBID', ST, '0') + 1);
    quMainKonsinyasiID.AsString := 'GRN/20/'+FormatFloat('00000', RunNumberGL(quAct, 'APTrKonsinyasiHd', 'KonsinyasiID', 'GRN/20/', '0') + 1);
    CarirateNew(quAct,quMainTransDate.AsDateTime);
    quMainRate.Value := quAct.fieldbyname('Rate').AsCurrency;
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT K.KonsinyasiID FROM ( '
          +'SELECT KonsinyasiID FROM APTrKonsinyasiHD UNION ALL SELECT PurchaseID FROM APTrPurchaseHd UNION ALL '
          +'SELECT KonsinyasiInvID FROM APTrKonsinyasiInvHd) as K WHERE K.KonsinyasiID='''+quMainKonsinyasiID.AsString+''' ');
       Open;
       If Not IsEmpty then
       Begin
          MsgInfo('Nota sudah dipakai di transaksi lainnya');
          quMainKonsinyasiID.FocusControl;
          Abort;
       End;
    End;
  End;

  If TRIM(quMainBPBID.AsString)='' then
  Begin
    MsgInfo('Nomor Nota Tidak Boleh Kosong');
    quMainKonsinyasiID.FocusControl;
    Abort;
  End;

  //quMainNoBPB.AsString := RightStr(quMainBPBID.AsString,Length(quMainBPBID.asString)-8) + LeftStr(quMainBPBID.AsString,3);
  //quMainBPBID.AsString := RightStr(quMainNoBPB.AsString,3) + '/BPB/' + LeftStr(quMainNoBPB.AsString,Length(quMainNoBPB.AsString)-3);

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPKonsinyasi.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmAPKonsinyasi.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainJatuhTempo.AsInteger := 0;
  quMainTransDate.AsDateTime := date;
  quMainWareHouseID.AsString := sDGK;
  quMainFgPosting.AsString   := 'T';
  quMainRekPersediaan.AsString := sDGRBi;
  quMainPPN.AsString := sDGRPLL;
  quMainRekHD.AsString := sDRPb;
  quMainKonsinyasiID.FocusControl;
end;

procedure TfmAPKonsinyasi.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString :='SELECT K.ItemName as Nama_Barang,K.ItemID as Part_Number,K.TypeUnit,K.NoUnit,K.Nota as Nomor_PR,POID as Nomor_PO, '
                  +'ISNULL(SUM(K.Qty-K.Jumlah),0) as Jumlah,K.UOMID,K.SiteID,K.NumAll as IDTXN FROM ( '
                  +'SELECT B.POID,B.Transdate,C.ItemName,A.TypeUnit,A.NoUnit,A.PRID as Nota,A.Jumlah as Qty,A.UOMID,A.NumAll,ISNULL(A.FgOto,''W'') as Fgoto, '
                  +'ISNULL((SELECT SUM(X.Jumlah) as Total FROM APTrKonsinyasiDt X '
                  +'WHERE X.ItemID=A.ItemID2 AND X.POID=A.POID AND X.FgNum=A.NumAll),0) as Jumlah,A.ItemID2 as ItemID,B.SiteID '
                  +'FROM APTrPurchaseOrderDt A '
                  +'INNER JOIN APTrPurchaseOrderHd B ON A.POID=B.POID AND B.SuppID='''+quMainSuppID.ASString+''' '
                  +'INNER JOIN INMsItem C ON A.ItemID2=C.ItemID AND C.Ctk=''Y'' '
                  +') as K WHERE ISNULL(K.Qty-K.Jumlah,0) > 0 AND K.FgOto IN (''Y'',''W'',''T'') '
                  +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime)+''' '
                  +'GROUP BY K.ItemName,K.TypeUnit,K.NoUnit,K.Nota,K.UOMID,K.ItemID,K.NumAll,K.SiteID,K.POID ORDER BY K.Nota,K.ItemName ';
                   //ShowMessage(SQLString);
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value   := Res[1];
          quDetilJumlah.AsCurrency := StrToCurr(Res[6]);
          quDetilPOID.ASString := REs[5];
          quDetiltypeunit.AsString := Res[2];
          quDetilnounit.AsString := Res[3];
          quDetilNote.AsString := Res[4];
          quDetilUOMID.AsString := Res[7];
          quDetilCurrID.AsString := Res[8];
          quDetilFgNum.AsInteger := StrtoInt(Res[9]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasi.quDetilBeforePost(DataSet: TDataSet);
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
{  if quDetilPrice.AsCurrency <= 0 then
  begin
    ShowMessage('Harga harus lebih besar dari 0 (nol)');
    quDetilPrice.FocusControl;
    Abort;
  end;
  if TRIM(quDetilPrice.AsString)='' then
  begin
    ShowMessage('Harga tidak boleh kosong');
    quDetilPrice.FocusControl;
    Abort;
  end;
  if TRIM(quDetilCurrID.AsString)='' then
  begin
    ShowMessage('Valuta tidak boleh kosong');
    quDetilCurrID.FocusControl;
    Abort;
  end;
  if TRIM(quDetilLuValuta.AsString)='' then
  begin
    ShowMessage('Valuta tidak terdaftar');
    quDetilCurrID.FocusControl;
    Abort;
  end;}
  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(*) FROM  APTrKonsinyasiDt WHERE KonsinyasiId=:KonsinyasiId AND ItemId=:ItemId');
        with Parameters do
        begin
           ParamByName('KonsinyasiId').Value := quMainKonsinyasiID.Value;
           ParamByName('ItemId').Value  := quDetilItemID.Value;
        end;
        Open;
        {if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end; }
     end;
  end;

  if quDetilQty.AsCurrency <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;
  KodeBarang := quDetilItemID.AsString;
  Jumlah := quDetilQty.AsCurrency;


  if TRIM(quDetilLayoutID.AsString)='' then
  begin
     MsgInfo('Kode Rak tidak boleh kosong !');
     quDetilLayoutID.FocusControl;
     Abort;
  end;

  //Cek Sisa PO
   with quAct, SQL do
   begin
      Close; Clear;
      Add('select A.Jumlah-ISNULL((SELECT SUM(B.Jumlah) FROM APTrKonsinyasiDt B inner join APTrKonsinyasiHd X on B.KonsinyasiID=X.KonsinyasiID '
         +'WHERE B.Note=A.PRID AND A.ItemID=B.ItemID AND X.KonsinyasiID<>'''+quMainKonsinyasiID.AsString+'''),0) as Jum from APTrPurchaseOrderDt A '
         +'Where A.PRID='''+quDetilNote.ASString+''' AND A.ItemId='''+quDetilItemID.ASString+''' ');
      Open;
   end;

   JumPOSbm := quAct.FieldByName('Jum').AsCurrency;
   if quAct.FieldByName('Jum').AsString<>'' then
   if JumPOSbm-quDetilJumlah.AsCurrency<0 then
   begin
     ShowMessage('Barang yang diterima melebihi sisa PO, butuh otorisasi. Total PO: '+Currtostr(JumPOSbm)+'.');
     quDetilJumlah.FocusControl;
     quDetilFgTerima.ASString := 'T'
   end else
   begin
     quDetilFgTerima.ASString := 'Y'
   end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPKonsinyasi.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsCurrency:=0;
  quDetilPrice.AsCurrency := 0;
  quDetilFgTerima.AsString := 'Y';
  quDetilItemID.FocusControl;
end;

procedure TfmAPKonsinyasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgUOM,TRUE);
  SetReadOnly(dbgColumn8,TRUE);
  SetReadOnly(dbgColumn9,TRUE);
  SetReadOnly(dbgColumn12,TRUE);
  SetReadOnly(dbgNote,TRUE);
  SetReadOnly(dbgColumn10,quDetil.State<>dsInsert);
end;

procedure TfmAPKonsinyasi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Penerimaan Barang';
       SQLString := 'SELECT A.BPBID as Nota_BPB,A.KonsinyasiID as Nota,CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,'
                   +'B.SuppName as Supplier,A.Note as Keterangan,'
//                   +'CASE WHEN A.FgPosting=''T'' THEN ''Belum Posting'' ELSE ''Sudah Posting'' END as Status,'
                   +'ISNULL(SUM(C.Qty),0) as Jumlah FROM APTrKonsinyasiHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
                   +'INNER JOIN APTrKonsinyasiDt C ON A.KonsinyasiID=C.KonsinyasiID '
                   +'WHERE '+FSQLWhere
                   +' GROUP BY A.BPBID,A.KonsinyasiID,A.Transdate,B.SuppName,A.Note,A.FgPosting ORDER BY A.BPBID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonsinyasiID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasi.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKRetur;
  CekDelete;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonsinyasiID.AsString+''' AND FgTrans=7 ');
    ExecSQL;
  end;
end;

procedure TfmAPKonsinyasi.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKRetur;
  CekDelete;



  with quAct,SQL do
  begin
  Close;Clear;
  Add('Select Ctk FROM INMsItem Where ItemId='''+quDetilItemId.AsString+''' ');
  OPen;
  End;
  if quAct.FieldByName('Ctk').AsString = 'Y' then
  begin

  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonsinyasiID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans=7 AND SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;

  end;
end;

procedure TfmAPKonsinyasi.quDetilAfterPost(DataSet: TDataSet);
var FgTerima : String;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select Ctk FROM INMsItem Where ItemId='''+quDetilItemId.AsString+''' ');
    Open;
  End;

  if quAct.FieldByName('Ctk').AsString = 'Y' then
  begin

  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE VoucherNo='''+quMainKonsinyasiID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' AND FgTrans=7 '
       +'And SourceNo='''+quDetilNumAll.AsString+''' ');
    ExecSQL;
  end;

  if quDetilFgTerima.ASString ='Y' then
  begin
  with quAct1,SQL do
  begin
     Close;Clear;
     Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,barang,ItemID,Qty,TempField,TempField2,SourceNo,ModuleID,LayoutID) '
        +'VALUES ('''+quMainKonsinyasiID.AsString+''',:TransDate,'''+quMainWareHouseID.AsString+''',7,'''+quDetilCurrID.AsString+''', '
        +''''+KodeBarang+''','+CurrtoStr(jumlah)+','''+quMainSuppID.AsString+''','''+quMainLSuppName.AsString+''','''+quDetilNumAll.AsString+''',''AP'','
        +''''+quDetilLayoutID.AsString+''')');
     with Parameters do
     begin
       ParamByName('Transdate').Value := quMainTransDate.AsDateTime;
     end;
     //ShowMessage(Sql.text);
     ExecSQL;
  end;
  end else
  //ShowMessage('Jumlah terima lebih besar dari PO butuh Otorisasi');   
  end;

end;

procedure TfmAPKonsinyasi.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekEdit;
  
  if quMain.IsEmpty then Abort;
  if quMain.State <> dsBrowse then quMain.Post;
end;

procedure TfmAPKonsinyasi.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKRetur;
  CekEdit;

end;

procedure TfmAPKonsinyasi.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPKonsinyasi.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsDetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmAPKonsinyasi.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmAPKonsinyasi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPKonsinyasi.dbgCurrIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Valuta';
        SQLString := 'SELECT CurrID as Kode_Valuta, CurrName as Valuta'
                    +' FROM SAMsValuta ORDER BY CurrID';
        if ShowModal = MrOK then
        begin
           if quDetil.State = dsBrowse then quDetil.Edit;
           quDetilCurrID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmAPKonsinyasi.quDetilCalcFields(DataSet: TDataSet);
var ItemName,Satuan : string;
begin
  inherited;
  if (quDetilItemid.AsString<>'') and (quDetilPOID.ASString<>'') and (qudetilnote.AsString<>'') and (quDetilFgNum.AsString<>'') then
  begin

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ItemID FROM APTrPurchaseOrderDT WHERE ItemID2='''+quDetilItemID.AsString+''' '
       +'AND POID='''+quDetilPOID.AsString+''' '
       +'AND PRID='''+quDetilNote.AsString+''' '
       +'AND NumAll='+quDetilFgNum.AsString+' ');
    //showmessage(sql.text);
    Open;
  end;
  quDetilLItemID.ASString := quAct.FieldBYName('ItemID').ASString;

  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT B.ItemName,B.UOMID FROM INMsItem B WHERE B.ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  ItemName := quAct.FieldByName('ItemName').AsString;
  Satuan   := quAct.FieldByName('UOMID').AsString;
  quDetilLuItemName.AsString := ItemName;
  quDetilLUOM.AsString := Satuan;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SiteID FROM APTrPurchaseRequestHD WHERE PRID='''+quDetilNote.AsString+''' ');
    Open;
  end;
  quDetilLsites.ASString := quAct.FieldBYName('SiteID').AsString;
end;

procedure TfmAPKonsinyasi.dxButton1Click(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Header Belum disimpan');
    quMainNote.FocusControl;
    Abort;
  end;
  if (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Detil Belum disimpan');
    quDetilQty.FocusControl;
    Abort;
  end;

  with TfmQRRptPenerimaanBarang.Create(Self) do
   try
    qrlTitle.Caption := 'BUKTI PENERIMAAN BARANG';
    with qu001,SQL do
    Begin
      Close;Clear;
      add('SELECT A.KonsinyasiID, A.POID,B.Contactperson,B.SuppName, CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.BPBID,'
         +'A.SuppID,A.WareHouseID,C.WareHouseName,C.logo,C.Address as Alamat '
         +'FROM APTrKonsinyasiHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
         +'inner join Inmswarehouse C on A.warehouseID=C.WarehouseID '
         +'WHERE A.KonsinyasiID='''+quMainKonsinyasiID.AsString+''' AND A.SuppID='''+quMainSuppID.AsString+''' ');
      Open;
    End;

    With qu002,SQL do
    Begin
      Close;Clear;
      add('SELECT A.KonsinyasiID,A.ItemID,A.NumAll,B.ItemName,A.Qty,B.UOMID2 as UOMID,B.Tipe,ISNULL(A.Note,''-'') as PRID, '
         +'A.TypeUnit,A.NoUnit,A.POID '
         +'FROM APTrKonsinyasiDt A '
         +'INNER JOIN APTrKonsinyasiHd C ON A.KonsinyasiID=C.KonsinyasiID '
         +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
         +'WHERE A.KonsinyasiID='''+quMainKonsinyasiID.AsString+''' '
         +'AND C.SuppID='''+quMainSuppID.AsString+''' ORDER BY A.UpdDate');
      Open;
    End;

    With qu003,SQL do
    Begin
      Close;Clear;
      add('SELECT K.KonsinyasiID,K.ItemID,K.Expired FROM ( '
         +'SELECT distinct KonsinyasiID,NumAll,ItemID,isnull(STUFF(g.y,1,2,''''),'''') as Expired '
         +'FROM ApTrKonsinyasiDtSN H '
         +'CROSS APPLY ( '
         +'Select distinct '', Kode:'' + G.SNID + '' Jumlah:'' + CAST(CAST(G.JUMLAH AS MONEY) AS VARCHAR) + '' ExpDate:'' + CONVERT(VARCHAR(10),ExpDate,103) from APTrKonsinyasiDtSN G '
         +'Where G.KonsinyasiID=H.KonsinyasiID AND G.ItemID=H.ItemID AND G.NumAll=H.NumAll for xml path ('''') ) as g(y) '
         +') as K WHERE K.KonsinyasiID=:KonsinyasiID AND K.ItemID=:ItemID AND K.NumAll=:NumAll ');
         Parameters.ParamByName('KonsinyasiID').DataType := ftString;
         Parameters.ParamByName('ItemID').DataType := ftString;
         Parameters.ParamByName('NumAll').DataType := ftString;
      Open;
    End;

      qlbKeterangan.Caption:= quMainNote.AsString;

      MyReport.PreviewModal;

    finally
      free;
   end;
end;

procedure TfmAPKonsinyasi.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPKonsinyasi.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
   try
     Title := 'Supplier';
     SQLString := 'SELECT Suppname as Nama_Supplier,SuppID as Kode_Supplier '
                 +',Address as Alamat FROM APMsSupplier ORDER BY SuppName';
      if ShowModal = MrOK then
      begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainSuppID.Value := Res[1];
      end;
   finally
      free;
   end;
end;

procedure TfmAPKonsinyasi.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
   try
     Title := 'Data Purchase Order';
     SQLString := 'SELECT DISTINCT K.POID,L.SuppName as Supplier,K.SuppID as Kode,K.WareHouseID as Gudang,K.SiteID,K.DivisiID FROM ('
                 +'SELECT B.SuppID,B.POID,B.WareHouseID,B.SiteID,B.DivisiID,ISNULL(SUM(A.Qty),0) as Total,ISNULL((SELECT SUM(X.Qty) FROM APTrKonsinyasiDt X '
                 +'INNER JOIN APTrKonsinyasiHd Y ON X.KonsinyasiID=Y.KonsinyasiID WHERE Y.SuppID=B.SuppID AND Y.POID=B.POID),0) as Terima '
                 +'FROM APTrPurchaseOrderDt A INNER JOIN APTrPurchaseOrderHd B ON A.POID=B.POID '
                 +'GROUP BY B.POID,B.SuppID,B.WareHouseID,B.SiteID,B.DivisiID) as K INNER JOIN APMsSupplier L ON K.SuppID=L.SuppID '
                 +'WHERE K.Total-K.Terima > 0 '
                 +'ORDER BY K.POID';
      if ShowModal = MrOK then
      begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainPOID.Value := Res[0];
         quMainSuppID.Value := Res[2];
         quMainWareHouseID.Value := Res[3];
         quMainSiteID.Value := Res[4];
         quMainDivisiID.Value := Res[5];
      end;
   finally
      free;
   end;
end;

procedure TfmAPKonsinyasi.dxButton3Click(Sender: TObject);
begin
  inherited;
  if quSN.IsEmpty then Abort;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmAPKonsinyasi.dxButton2Click(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort else quSN.Append;
end;

procedure TfmAPKonsinyasi.dxButton4Click(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmAPKonsinyasi.dxButton5Click(Sender: TObject);
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

procedure TfmAPKonsinyasi.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
  quSNJumlah.AsCurrency := quDetilQty.AsCurrency;
  quSNExpDate.AsDateTime := Date;
end;

procedure TfmAPKonsinyasi.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quSNNumAll.AsString+''' and voucherno='''+quMainKonsinyasiID.AsString+''' and snid='''+quSNSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('insert AllLootNumber (fgNum,voucherno,TransDate,FgTrans,SNID,qty,expdate,warehouseid,Itemid) '
      +'select '''+quSNNumAll.AsString+''','''+quMainKonsinyasiID.AsString+''','''+FormatDatetime('yyyy-mm-dd',quMainTransDate.AsDatetime)+''',1,'
      +''''+quSNSNID.AsString+''','''+quSNJumlah.AsString+''','''+FormatDatetime('yyyy-mm-dd',quSNExpDate.AsDatetime)+''','''+quMainWareHouseID.AsString+''','''+quDetilItemID.AsString+''' ');
   ExecSQL;
  End;

  with quAct,SQL do
  begin
   Close;Clear;
   Add('SELECT ISNULL(SUM(Jumlah),0) as Jumlah FROM APTrKonsinyasiDtSN WHERE ItemID='''+quDetilItemID.AsString+''''
      +'AND KonsinyasiID='''+quMainKonsinyasiID.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('Jumlah').AsCurrency = quDetilQty.AsCurrency then
  begin
    quDetil.Last;
    qudetil.Append;
    Abort;
  End else
  begin
   quSN.Append;
  end;
  
end;

procedure TfmAPKonsinyasi.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKRetur;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quSNNumAll.AsString+''' and voucherno='''+quMainKonsinyasiID.AsString+''' and snid='''+quSNSNID.AsString+''' and warehouseid='''+quMainWareHouseID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmAPKonsinyasi.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  CekStatus;
  CekRetur;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('SELECT ISNULL(SUM(Jumlah),0) as Jumlah FROM APTrKonsinyasiDtSN WHERE ItemID='''+quDetilItemID.AsString+''''
      +'AND KonsinyasiID='''+quMainKonsinyasiID.AsString+''' AND NumAll='''+quDetilNumAll.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('Jumlah').AsCurrency >= quDetilQty.AsCurrency then Abort;
end;

procedure TfmAPKonsinyasi.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quSNSNID.AsString)='' then
  Begin
   MsgInfo('Kode Produksi tidak boleh kosong');
   quSNSNID.FocusControl;
   Abort;
  End;
  if TRIM(quSNExpDate.AsString)='' then
  Begin
   MsgInfo('Exp Date Produksi tidak boleh kosong');
   quSNExpDate.FocusControl;
   quSNExpDate.AsDateTime := Date;
   Abort;
  End;
  if TRIM(quSNJumlah.AsString) = '' then
  begin
    ShowMessage('Jumlah tidak boleh kosong');
    quSNJumlah.FocusControl;
    Abort;
  end;
  if quSNJumlah.AsCurrency <= 0 then
  begin
    ShowMessage('Jumlah harus lebih besar dari 0(nol)');
    quSNJumlah.FocusControl;
    Abort;
  end;
  if quSNJumlah.AsCurrency > quDetilQty.AsCurrency then
  begin
    ShowMessage('Jumlah data tidak boleh lebih besar dari jumlah barang yang dibeli');
    quSNJumlah.FocusControl;
    Abort;
  end;

  If quSN.State= dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add(' SELECT SNID FROM APTrKonsinyasiDtSN WHERE KonsinyasiID=:KonsinyasiID AND SNID=:SNID and ItemID=:ItemID AND NUmAll='''+quDetilNumAll.AsString+''' ');
          Parameters.ParamByName('KonsinyasiID').Value:= quMainKonsinyasiID.AsString;
          Parameters.ParamByName('SNID').Value:= quSNSNID.AsString;
          Parameters.ParamByName('ItemID').Value:= quDetilItemID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Kode Produksi sudah ada');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;
  with quAct,SQL do
  begin
    Close;Clear;
   Add('SELECT ISNULL(SUM(Jumlah),0) as Jumlah FROM APTrKonsinyasiDtSN WHERE ItemID='''+quDetilItemID.AsString+''' AND NUmAll='''+quDetilNumAll.AsString+''' '
      +'AND KonsinyasiID='''+quMainKonsinyasiID.AsString+''' ');
    Open;
  end;
  if quAct.FieldByName('Jumlah').AsCurrency + quSNJumlah.AsCurrency > quDetilQty.AsCurrency then
  begin
    ShowMessage('Jumlah melebihi Jumlah barang yang dipesan');
    quSNJumlah.FocusControl;
    Abort;
  end;
  if FormatDateTime('yyyyMMdd',quSNExpDate.AsDateTime) < FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime) then
  begin
    ShowMessage('Tanggal Expire harus lebih besar dari tanggal pembelian');
    quSNExpDate.FocusControl;
    Abort;
  end;
  if quSNExpDate.AsDateTime = quMainTransDate.AsDateTime then
  begin
    if MessageDlg('Tanggal Expired sama dengan Tanggal Pembelian. Anda yakin ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
    end else
    begin
      quSNExpDate.FocusControl;
      Abort;
    end;
  end;
  quSNNumAll.AsInteger := quDetilNumAll.AsInteger;
  quSNUpdUser.AsString := dmMain.UserId;
  quSNUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPKonsinyasi.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgBatchSNID,quSN.State<>dsInsert);
  SetReadOnly(dbgBatchJumlah,quSN.State<>dsInsert);
  SetReadOnly(dbgBatchExpDate,quSN.State<>dsInsert);
end;

procedure TfmAPKonsinyasi.quSNItemIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(Price,0) as Price FROM APTrPurchaseOrderDt '
       +'WHERE POID='''+quMainPOID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quSNPrice.AsCurrency := quAct.FieldByName('Price').AsCurrency;
end;

procedure TfmAPKonsinyasi.dxButton6Click(Sender: TObject);
begin
  inherited;
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbTitleV.Caption := 'JURNAL PENERIMAAN BARANG';
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      qlbTTerBayar.Enabled := False; QRLabel8.Enabled := False;
      qlbJourTransID.Caption := ': ' + quMainKonsinyasiID.AsString;
      QRLabel8.Enabled := False; qlbTitleV.Top := 18;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainLSuppName.AsString;
     if UpperCase(quMainCurrId.Value) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quMainJatuhTempo.AsInteger))+' Rupiah #';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Dibayar oleh';

      With qu001,SQL do
      Begin
        Close;Clear;
        add('SELECT K.RekPersediaan as RekeningID,L.RekeningName,K.Total as Amount,K.Note,K.Jenis FROM ('
           +'SELECT A.KonsinyasiID,A.RekPersediaan,SUM(B.Qty*D.Price) as Total,A.Note,''D'' as Jenis '
           +'FROM APTrKonsinyasiHd A INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID '
           +'INNER JOIN APTrPurchaseOrderHd C ON A.POID=C.POID '
           +'INNER JOIN APTrPurchaseOrderDt D ON C.POID=D.POID AND A.POID=D.POID AND B.ItemID=D.ItemID '
           +'GROUP BY A.KonsinyasiID,A.RekPersediaan,A.Note UNION ALL '
           +'SELECT A.KonsinyasiID,A.PPN,CASE WHEN C.FgTax=''T'' THEN 0 ELSE SUM(B.Qty*D.Price)*0.1 END as Total,A.Note,''D'' '
           +'FROM APTrKonsinyasiHd A INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID '
           +'INNER JOIN APTrPurchaseOrderHd C ON A.POID=C.POID '
           +'INNER JOIN APTrPurchaseOrderDt D ON C.POID=D.POID AND A.POID=D.POID AND B.ItemID=D.ItemID '
           +'GROUP BY A.KonsinyasiID,A.PPN,C.FgTax,A.Note UNION ALL '
           +'SELECT A.KonsinyasiID,A.RekHD,CASE WHEN C.FgTax=''T'' THEN SUM(B.Qty*D.Price) ELSE SUM(B.Qty*D.Price)+SUM(B.Qty*D.Price)*0.1 END as Total,A.Note,''K'' '
           +'FROM APTrKonsinyasiHd A INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID '
           +'INNER JOIN APTrPurchaseOrderHd C ON A.POID=C.POID INNER JOIN APTrPurchaseOrderDt D ON C.POID=D.POID AND A.POID=D.POID AND B.ItemID=D.ItemID '
           +'GROUP BY A.KonsinyasiID,A.RekHD,C.FgTax,A.Note) as K '
           +'INNER JOIN CFMsRekening L ON K.RekPersediaan=L.RekeningID WHERE K.KonsinyasiID='''+quMainKonsinyasiID.AsString+''' AND K.Total <> 0 '
           +'ORDER BY K.Jenis,K.RekPersediaan');
        Open;
      End;
        if sCetak = '0' then
          MyReport.Previewmodal
        else
          MyReport.Print;
    Finally
      Free;
    End;

end;

procedure TfmAPKonsinyasi.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
     with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Sites';
        SQLString := 'SELECT CustID as Kode_Sites, CustName as Nama_Sites'
                    +' FROM ARMsCustomer ORDER BY CustID';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSiteID.Value := Res[0];
        end;
     finally
        free;
     end;
     
{  quDetilLRekName.FocusControl;
  quDetilRekeningId.FocusControl;
   with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT DISTINCT RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                   +'A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening '
                   +'FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId '
                   +'WHERE A.FgActive=''Y'' '//AND A.RekeningID NOT IN (SELECT RekeningID FROM CFMsBank UNION ALL SELECT '''+sDRKas+''') '
                   +'ORDER BY A.RekeningID';
       KeyValue := quDetilRekeningId.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilRekeningId.Value := Res[1];
             quRek.Requery();
             quDetilLRekName.RefreshLookupList;
       end;
    finally
       free;
    end;}
end;

procedure TfmAPKonsinyasi.quDetilJumlahChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select UOMID2,Konversi FROM InMsItem Where Itemid='''+quDetilItemID.AsString+''' ');
    Open;
  End;
  if quDetilLUOM.AsString = quAct.FieldByName('UOMID2').AsString then
  quDetilQty.AsCurrency := quDetilJumlah.AsCurrency
  else
  qudetilQty.AsCurrency := quDetilJumlah.AsCurrency * quAct.FieldByName('Konversi').AsCurrency;
end;

procedure TfmAPKonsinyasi.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select CustName as SiteName From ArMsCustomer WHERE CustID='''+quMainSiteID.AsString+''' ');
    Open;
  End;
  quMainLsites.asString := quAct.FieldByName('SiteName').AsString ;
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select DivisiName From INMsDivisi WHERE DivisiID='''+quMainDivisiID.AsString+''' ');
    Open;
  End;
  quMainLDivisi.asString := quAct.FieldByName('DivisiName').AsString ;
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select A.SiteID,(SELECT X.SiteName FROM INMsSites X Where X.SiteID=A.SiteID) as Nama '
       +' From ApTrPurchaseOrderHD A WHERE A.POID='''+quMainPOID.AsString+''' ');
    Open;
  End;
  quMainLsitespo.asString := quAct.FieldByName('Nama').AsString ;
  quMainLsiteid.asString := quAct.FieldByName('SiteID').AsString ;
end;

procedure TfmAPKonsinyasi.dbgColumn10ButtonClick(Sender: TObject;
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
       quDetilLayoutID.AsString := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmAPKonsinyasi.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekTambah;
end;

end.
