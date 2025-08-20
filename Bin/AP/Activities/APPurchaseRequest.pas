unit APPurchaseRequest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxPageControl,
  dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, StrUtils,
  dxDBELib, dxEditor, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms, DBCtrls;

type
  TfmAPPurchaseRequest = class(TfmStdLv31)                       
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgUOM: TdxDBGridButtonColumn;
    dbgProduct: TdxDBGridColumn;
    dbgGroup: TdxDBGridColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    quItem: TADOQuery;
    quItemUOMID: TStringField;
    quItemUOMID2: TStringField;
    quItemItemID: TStringField;
    quItemItemName: TStringField;
    quItemProductID: TStringField;
    quItemGroupID: TStringField;
    quItemProductDesc: TStringField;
    quItemGroupDesc: TStringField;
    quCalc: TADOQuery;
    bbCetak: TdxButton;
    cbBerat: TCheckBox;
    quItemKonversi: TIntegerField;
    dbgLKonversi: TdxDBGridColumn;
    quMainTransdate: TDateTimeField;
    quMainSalesID: TStringField;
    quMainFgForm: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    quMainLSalesName: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilUOMID: TStringField;
    quDetilNote: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLItemName: TStringField;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    quDetilMRID: TStringField;
    dbgMRID: TdxDBGridButtonColumn;
    dbgNote: TdxDBGridColumn;
    quMainNoPR: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilFgNum: TIntegerField;
    ActPrint: TAction;
    quDetilJumlah: TBCDField;
    Label3: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    Label6: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    quMainSiteID: TStringField;
    quMainwarehouseID: TStringField;
    DBText2: TDBText;
    DBText3: TDBText;
    quDetilTypeUnit: TStringField;
    quDetilNoUnit: TStringField;
    dbgColumn11: TdxDBGridColumn;
    dbgColumn10: TdxDBGridButtonColumn;
    quMainLWarehouse: TStringField;
    quMainLSites: TStringField;
    quMainDivisiID: TStringField;
    Label7: TLabel;
    DBText4: TDBText;
    dxDBButtonEdit4: TdxDBButtonEdit;
    quMainLDivisi: TStringField;
    quMainacc1: TStringField;
    quMainacc2: TStringField;
    quMainacc3: TStringField;
    quMainKdCab: TStringField;
    dbgColumn12: TdxDBGridButtonColumn;
    quDetilReqBy: TStringField;
    quDetilLReqBy: TStringField;
    quDetilFgOto: TStringField;
    quMaintglupload: TDateTimeField;
    quDetilNoteoto: TStringField;
    quDetilFgConfirm: TStringField;
    quDetilConfirmDate: TDateTimeField;
    quDetilconfirmby: TStringField;
    quMainFgSelesai: TStringField;
    quMainFgDivisi: TStringField;
    quCetak: TADOQuery;
    quMainPRID: TStringField;
    quDetilPRID: TStringField;
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
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure dbgUOMButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure bbCetakClick(Sender: TObject);
    procedure quDetilItemIDChange(Sender: TField);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilJumlahChange(Sender: TField);
    procedure quDetilUOMIDChange(Sender: TField);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgColumn10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgColumn12ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    FgDivisi,Flag : string;
  end;

var
  fmAPPurchaseRequest: TfmAPPurchaseRequest;

implementation

uses ConMain, Search, MyUnit, UnitGeneral, APQRMaterialReuqest, StdLv0,
  RptLv0, RptLv2, APQRPR1, APQRPR2, APQRPR3, APQRMR;

{$R *.dfm}

procedure TfmAPPurchaseRequest.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), PRID';
  FFieldTgl   := 'TransDate';
  FAfterWhere:=' AND FgForm='''+Flag+''' AND ISNULL(FgDivisi,''LOG'')='''+FgDivisi+''' ';
  if KdCab<>'HO' then FAfterWhere:= FAfterWhere + 'AND KdCab='''+KdCab+''' ';
  //SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;

  if Flag = 'MR' then
  begin
    if FgDivisi='SF' then
    Caption := 'Form Material Request Safety'
    else
    if FgDivisi='MT' then
    Caption := 'Form Material Request Maintenance'
    else
    if FgDivisi='OP' then
    Caption := 'Form Material Request Operation'
    else
    if FgDivisi='HR' then
    Caption := 'Form Material Request Human Resource'
    else
    Caption := 'Form Material Request Logistik';
    Label1.Caption := 'Nota MR :';
    Label13.Caption := 'Detail Material Request';
    dbgMRID.Visible := False;
    bbCetak.Caption := 'Cetak (F9)';
    bbcetak.Enabled := False;
    bbcetak.Top := 600;
    dbgNote.Visible := False;
    dbgColumn12.Visible := False;
  end else
  begin
    if FgDivisi='HO' then
    Caption := 'Form Purchase Request Head Office'
    else
    Caption := 'Form Purchase Request Logistik';
    Label1.Caption := 'Nota PR :';
    Label13.Caption := 'Detail Purchase Request';
  end;
end;

procedure TfmAPPurchaseRequest.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  if kdCab<>'HO' then
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit2,quMain.State <> dsInsert);
  if FgPRBD<>'Y' then
  SetReadOnly(dxDBDateEdit1,TRUE);

  if GroupUser<>'admin' then
  begin
    SetReadOnly(dxDBButtonEdit1,quMain.State <> dsInsert);
    SetReadOnly(dxDBButtonEdit3,quMain.State <> dsInsert);
    SetReadOnly(dxDBButtonEdit4,quMain.State <> dsInsert);
  end;
end;

procedure TfmAPPurchaseRequest.dxDBButtonEdit1ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Master Karyawan';
    SQLString := 'SELECT SalesName as Nama_Karyawan,SalesID as Kode_Karyawan,Jabatan '
                +'FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesName';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainSalesID.AsString := Res[1];
    end;
  finally
    free;
  end;
end;

procedure TfmAPPurchaseRequest.dxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPPurchaseRequest.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;
  if TRIM(quMainSalesID.AsString) = '' then
  begin
    pesan('Field Request tidak boleh kosong');
    quMainSalesID.FocusControl;
    Abort;
  end;

  if TRIM(quMainSiteID.AsString) = '' then
  begin
    pesan('Kode Site tidak boleh kosong');
    quMainSiteID.FocusControl;
    Abort;
  end;

 { if TRIM(quMainwarehouseID.AsString) = '' then
  begin
    pesan('Kode Gudang tidak boleh kosong');
    quMainwarehouseID.FocusControl;
    Abort;
  end;  }

  if TRIM(quMainDivisiID.AsString) = '' then
  begin
    pesan('Kode Divisi tidak boleh kosong');
    quMainDivisiID.FocusControl;
    Abort;
  end;

  if TRIM(quMainLSalesName.AsString) = '' then
  begin
    pesan('Data Karyawan belum terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  end;

  If Trim(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if (GroupUser <> 'admin') and (GroupUser <> 'HO-LOG') then
  begin
    if quMainTransdate.AsDateTime < date then
    begin
      MsgInfo('Tanggal tidak bisa BackDate');
      quMainTransdate.FocusControl;
      abort;
    end;
  end;
  {
  if quMain.State=dsInsert then
  Begin
    if KdCab<>'HO' then
    begin
    ST := Flag+KdCab+quMainSiteID.AsString+quMainDivisiID.AsString+FormatDateTime('YY',quMainTransDate.AsDateTime);
    quMainNoPR.AsString := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPurchaseRequestHD', 'NoPR', ST, '0') + 1);
    quMainPRID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPurchaseRequestHD', 'PRID', ST, '0') + 1);
    end else
    begin
    if quMainPRID.ASString='' then
    begin
    ST := Flag+KdCab+quMainSiteID.AsString+quMainDivisiID.AsString+FormatDateTime('YY',quMainTransDate.AsDateTime);
    quMainNoPR.AsString := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPurchaseRequestHD', 'NoPR', ST, '0') + 1);
    quMainPRID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPurchaseRequestHD', 'PRID', ST, '0') + 1);
    end else
    begin
    quMainNoPR.AsString := quMainPRID.AsString;
    end;
    end;
  End;
  }
  if qumain.State = dsInsert then
  begin
  ST := Flag+KdCab+quMainSiteID.AsString+quMainDivisiID.AsString+FormatDateTime('YY',quMainTransDate.AsDateTime);
  quMainNoPR.AsString := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPurchaseRequestHD', 'NoPR', ST, '0') + 1);
  quMainPRID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPurchaseRequestHD', 'PRID', ST, '0') + 1);
  quMainNoPR.AsString := quMainPRID.AsString;
  end;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPPurchaseRequest.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmAPPurchaseRequest.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainKdCab.ASString := kdCab;
  quMainFgDivisi.ASString := Fgdivisi;
  quMainTransDate.AsDateTime:=Date;
  quMainTransDate.FocusControl;
  quMainFgForm.AsString := Flag;
end;

procedure TfmAPPurchaseRequest.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Barang';
    if Flag = 'PR' then
    begin
      if kdCab='HO' then
      begin
      SQLString := 'Select A.ItemName as Nama_Barang,A.ItemID as Part_Number,A.TypeUnit, '
                  +'A.UOMID as Satuan FROM INMsItem A Where A.FgActive=''Y'' Order By A.itemName';
      end else
      begin
      SQLString := 'SELECT K.ItemName as Nama_Barang,convert(varchar(10),K.TransDate,103) as Tgl,K.Nota,ISNULL(K.Qty-K.Jumlah,0) as Qty,K.UOMID,'
                  +'K.ItemID as Part_Number,K.TypeUnit,K.Nounit,K.NumAll as IDTXN,K.SalesID as ReqBy FROM ( '
                  +'SELECT B.Transdate,C.ItemName,B.SiteID,A.PRID as Nota,ISNULL(A.Jumlah,0) as Qty,A.NumAll,A.UOMID,B.SalesID, '
                  +'ISNULL((SELECT SUM(X.Jumlah) as Total FROM APTrPurchaseRequestDt X INNER JOIN APTrPurchaseRequestHd Y ON X.PRID=Y.PRID AND Y.FgForm=''PR'' '
                  +'WHERE X.ItemID=A.ItemID AND X.MRID=A.PRID AND A.NumAll=X.FgNum),0)-'
                  +'ISNULL((SELECT SUM(X.Qty) as Total FROM INTrAdjustmentDt X '
                  +'WHERE X.ItemID=A.ItemID AND X.MRID=A.PRID AND A.NumAll=X.FgNum),0) as Jumlah,A.ItemID,A.Note,C.TypeUnit,A.Nounit '
                  +'FROM APTrPurchaseRequestDt A '
                  +'INNER JOIN APTrPurchaseRequestHd B ON A.PRID=B.PRID AND B.FgForm=''MR'' '
                  +'INNER JOIN INMsItem C ON A.ItemID=C.ItemID WHERE A.FgOTO=''Y'') as K WHERE ISNULL(K.Qty-K.Jumlah,0) > 0 '
                  +'AND CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN ''20210101'' AND '''+FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime)+''' '
                  +'AND K.SiteID='''+quMainSiteID.AsString+''' ORDER BY K.ItemID ' ;
      end;
    end else
    begin
      SQLString := 'Select A.ItemName as Nama_Barang,A.ItemID as Part_Number,A.TypeUnit, '
                  +'A.UOMID as Satuan FROM INMsItem A Where A.FgActive=''Y'' Order By A.itemName';
    end;
    if ShowModal = MrOK then
    begin
       if quDetil.State = dsBrowse then quDetil.Edit;
       if Flag = 'PR' then
       begin
         if KdCab='HO' then
         begin
           quDetilItemID.AsString := Res[1];
           quDetilUOMID.AsString := Res[3];
           quDetilTypeUnit.AsString := Res[2];
         end else
         begin
           quDetilItemID.AsString   := Res[5];
           quDetilUOMID.AsString := Res[4];
           quDetilJumlah.AsCurrency := StrToCurr(Res[3]);
           quDetilMRID.AsString := Res[2];
           quDetilTypeUnit.AsString := Res[6];
           quDetilNoUnit.AsString := Res[7];
           quDetilFgNum.AsString := Res[8];
           quDetilReqBy.ASString := Res[9];
         end;
       end else
       begin
         quDetilItemID.AsString := Res[1];
         quDetilUOMID.AsString := Res[3];
         quDetilTypeUnit.AsString := Res[2];
       end;
    end;
  finally
    free;
  end;
end;

procedure TfmAPPurchaseRequest.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.AsString)='' then
  begin
     MsgInfo('Part Number tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLItemName.AsString)='' then
  begin
     MsgInfo('Barang tidak terdaftar di Master Barang');
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

  if TRIM(quDetilUOMID.AsString) = '' then
  begin
    ShowMessage('Kolom satuan tidak boleh kosong');
    quDetilUOMID.FocusControl;
    Abort;
  end;

  if TRIM(quDetilNoUnit.AsString) = '' then
  begin
    ShowMessage('Nomor Unit tidak boleh kosong');
    quDetilNoUnit.FocusControl;
    Abort;
  end;

  if quDetil.State = dsInsert then
  begin
    with quAct, SQL do
    begin
        Close; Clear;
        Add(' SELECT ItemId FROM APTrPurchaseRequestDT WHERE PRID='''+quMainPRID.Value+''''
           +' AND ItemId='''+quDetilItemID.Value+''' AND NoUnit='''+quDetilNoUnit.Value+''' ');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Kode Item  sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
    end;

   with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT NoUnit FROM  INMsNoUnit  WHERE NoUnit=:NoUnit ');
        with Parameters do
        begin
           ParamByName('NoUnit').Value := quDetilNoUnit.Value;
        end;
        Open;
        if quact.RecordCount=0 then
        begin
           MsgInfo('No Unit Tidak Terdaftar');
           quDetilNoUnit.FocusControl;
           Abort;
        end;
     end;
   end;

  with quAct,SQL do
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

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPPurchaseRequest.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsCurrency:=1;
  quDetilJumlah.AsCurrency:=1;
  if Flag='MR' then
  begin
    if (KdCab<>'02') or (KdCab<>'02A') then
    qudetilFgOto.ASString := 'T'
    else
    qudetilFgOto.ASString := 'Y';
  end else
  begin
    qudetilFgOto.ASString := 'Y';
  end;
  quDetilItemID.FocusControl;
  quDetilMRID.AsString := '-';
  quDetilFgConfirm.ASString := 'T';
end;

procedure TfmAPPurchaseRequest.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  if flag='MR' then
  SetReadOnly(dbgColumn10,quDetil.State<>dsInsert)
  else
  //SetReadOnly(dbgColumn10,TRUE);
  SetReadOnly(dbgUOM,TRUE);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgMRID,TRUE);
  SetReadOnly(dbgProduct,TRUE);
  SetReadOnly(dbgGroup,TRUE);
  SetReadOnly(dbgColumn11,TRUE);
end;

procedure TfmAPPurchaseRequest.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Data';
     SQLString := 'SELECT PRID as Nota,Convert(Varchar(10),Transdate,103) as Tanggal,A.SiteID,A.DivisiID, '
                 +'A.Note as Keterangan,A.UpdUser as Request_By FROM APTrPurchaseRequestHD A '
                 +'WHERE A.FgForm='''+Flag+''' AND ISNULL(A.FgDivisi,''LOG'')='''+FgDivisi+''' ';
     if KdCab<>'HO' then
     SQLString := SQLString + 'AND KdCab='''+KdCab+''' ';
     SQLString := SQLString + 'AND '+FSQLWhere+' ORDER BY TransDate';
     if ShowModal = MrOK then
     begin
       qumain.Locate('PRID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmAPPurchaseRequest.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPPurchaseRequest.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPPurchaseRequest.KrgBrgClick(Sender: TObject);
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

procedure TfmAPPurchaseRequest.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmAPPurchaseRequest.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPPurchaseRequest.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;


  if Flag='MR' then
  begin
    if (KdCab<>'02') or (KdCab<>'02A') then
    begin
      with quAct, SQL do
      begin
        Close; Clear;
        Add('SELECT TOP 1 FgOTO FROM APTrPurchaseRequestDt Where PRID='''+quMainPRID.AsString+''' AND FgOto=''Y'' ');
        Open;
        if not IsEmpty then
        begin
           ShowMessage('sudah pernah ada otorisasi, tidak bisa tambah');
           Abort;
        end;
      end;
    end;
  end;

  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 K.PRID,K.POID,K.Kode FROM ('
       +'SELECT PRID,POID,1 as Kode,ItemID,FgNum FROM APTrPurchaseOrderDt UNION ALL '
       +'SELECT MRID,PRID,2 as Kode,ItemID,FgNum FROM APTrPurchaserequestDt UNION ALL '
       +'SELECT Note,KonsinyasiID,3,ItemID,FgNum FROM APTrKonsinyasiDt UNION ALL '
       +'SELECT PRID,TransferID,4,ItemID,FgNum FROM INTrTransferItemDt '
       +') as K WHERE K.PRID='''+quMainPRID.AsString+''' ');// AND K.ItemID='''+quDetilItemID.ASString+''' AND K.FgNum='''+quDetilNumAll.ASString+''' ');
    Open;
    if not IsEmpty then
    begin
       if quAct.FieldByName('Kode').AsInteger = 1 then
         MsgInfo('PartNumber Sudah ada di Purchase Order ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 2 then
         MsgInfo('PartNumber Sudah ada di Purchase Request ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 3 then
         MsgInfo('PartNumber Sudah ada di Penerimaan ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 4 then
         MsgInfo('PartNumber Sudah ada di Realisasi ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;

  with quact,sql do
  begin
    close;clear;
    add('select case when tglupload is null then 1 else 0 end as hasil from aptrpurchaserequesthd where prid='''+quMainPRID.AsString+''' ');
    open;
  end;
  if (quact.fieldbyname('hasil').asinteger = 0) and (kdcab<>'HO') then
  begin
    ShowMessage('sudah pernah di upload. tidak bisa diubah');
    abort;
  end;
end;

procedure TfmAPPurchaseRequest.dbgUOMButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Satuan';
       SQLString := 'SELECT DISTINCT K.UOMID as Satuan FROM (SELECT ItemID,UOMID FROM INMsItem UNION ALL '
                   +'SELECT ItemID,UOMID2 FROM INMsItem) as K '
                   +'WHERE K.ItemID='''+quDetilItemID.AsString+''' '
                   +'ORDER BY K.UOMID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilUOMID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPurchaseRequest.bbCetakClick(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  if (quMain.IsEmpty) or (quDetil.IsEmpty) then Abort;

  if (Flag='PR') then
  begin
    If  (quMainAcc1.AsString='T') or (quMainAcc2.AsString='T') or (quMainAcc3.AsString='T') then
    begin
      ShowMessage('Data Belum Full Otorisasi');
      Abort;
    end;
  end;

  if Flag = 'MR' then
  Begin
     with TfmAPQRMR.Create(Self) do
     try
       qrlTitle.Caption := 'MATERIAL REQUEST'; qrlPeriode.Caption := ': ' + FormatDateTime('dd/MM/yyyy',quMainTransdate.AsDateTime) ;
       QRBand1.Enabled := true; QrLabel8.Caption := ': '+quMainNote.AsString;

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select A.PRID as No,A.PRID as PR,A.ItemId,A.NumAll,B.ItemName,A.Jumlah as Qty,A.UOMID,ISNULL(A.Note,''-'') as Note '
            +' from APTrPurchaseRequestDt A Inner join INMsItem B on A.ItemID=B.itemid '
            +' WHERE A.PRID='''+quMainPRID.AsString+''' ');
         Open;
       End;

       qu002.Open;

       MyReport.PreviewModal;

     finally
        free;
     end;
  end else
  begin
     if Oto='01' then //untuk 1 2 3 5
     begin
     with TfmAPQRPR1.Create(Self) do
     try
       qrlTitle.Caption := 'PURCHASE REQUEST';
       qrlPeriode.Caption := ': ' + FormatDateTime('dd/MM/yyyy',quMainTransdate.AsDateTime) ;
       QRLabel8.Caption := ': ' + quMainNote.ASString ;
       QRLabel12.Caption := ': ' + quMainPRID.ASString ;
       QRLabel19.Caption := quMainLSites.AsString+'-'+quMainLDivisi.AsString;

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select A.PRID as PR,A.MRID as No,A.ItemId,A.NumAll,B.ItemName,A.Jumlah as Qty,A.UOMID,'
            +' ISNULL(A.Note,''-'') as Note,(SELECT X.SALESNAME FROM ARMSSALES X WHERE X.SALESID=A.ReqBy) as ReqBy, '
            +' A.typeunit,A.nounit,C.SalesID,'''+dmNama+''' as UserA '
            +' from APTrPurchaseRequestDt A '
            +' inner join ApTrPurchaseRequestHD C on A.PRID=C.PRID '
            +' Inner join INMsItem B on A.ItemID=B.itemid '
            +' WHERE A.PRID='''+quMainPRID.AsString+''' '
            +' ORDER BY A.NoUnit,A.TypeUnit,B.Itemname,A.ItemID ');
         Open;
       End;

       qu002.Open;

       MyReport.PreviewModal;

     finally
        free;
     end;

     end else
     if Oto='02' then //untuk 4
     begin
     with TfmAPQRPR2.Create(Self) do
     try
       qrlTitle.Caption := 'PURCHASE REQUEST';
       qrlPeriode.Caption := ': ' + FormatDateTime('dd/MM/yyyy',quMainTransdate.AsDateTime) ;
       QRLabel8.Caption := ': ' + quMainNote.ASString ;
       QRLabel12.Caption := ': ' + quMainPRID.ASString ;
       QRLabel19.Caption := quMainLSites.AsString+'-'+quMainLDivisi.AsString;

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select A.PRID as PR,A.MRID as No,A.ItemId,A.NumAll,B.ItemName,A.Jumlah as Qty,A.UOMID,'
            +' ISNULL(A.Note,''-'') as Note,(SELECT SALESNAME FROM ARMSSALES WHERE SALESID=A.ReqBy) as ReqBy, '
            +' A.typeunit,A.nounit,C.SalesID,'''+dmNama+''' as UserA '
            +' from APTrPurchaseRequestDt A '
            +' inner join ApTrPurchaseRequestHD C on A.PRID=C.PRID '
            +' Inner join INMsItem B on A.ItemID=B.itemid '
            +' WHERE A.PRID='''+quMainPRID.AsString+''' '
            +' ORDER BY A.NoUnit,A.TypeUnit,B.Itemname,A.ItemID ');
         Open;
       End;

       qu002.Open;

       MyReport.PreviewModal;

     finally
        free;
     end;

     end else
     begin

     with TfmAPQRPR3.Create(Self) do
     try
       qrlTitle.Caption := 'PURCHASE REQUEST';
       qrlPeriode.Caption := ': ' + FormatDateTime('dd/MM/yyyy',quMainTransdate.AsDateTime) ;
       QRLabel8.Caption := ': ' + quMainNote.ASString ;
       QRLabel12.Caption := ': ' + quMainPRID.ASString ;
       QRLabel19.Caption := quMainLSites.AsString+'-'+quMainLDivisi.AsString;

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select A.PRID as PR,A.MRID as No,A.ItemId,A.NumAll,B.ItemName,A.Jumlah as Qty,A.UOMID,'
            +' ISNULL(A.Note,''-'') as Note,(SELECT SALESNAME FROM ARMSSALES WHERE SALESID=A.ReqBy) as ReqBy, '
            +' A.typeunit,A.nounit,C.SalesID,'''+dmNama+''' as UserA '
            +' from APTrPurchaseRequestDt A '
            +' inner join ApTrPurchaseRequestHD C on A.PRID=C.PRID '
            +' Inner join INMsItem B on A.ItemID=B.itemid '
            +' WHERE A.PRID='''+quMainPRID.AsString+''' '
            +' ORDER BY A.NoUnit,A.TypeUnit,B.Itemname,A.ItemID ');
         Open;
       End;

       qu002.Open;

       MyReport.PreviewModal;

     finally
        free;
     end;

     end;
  End;
end;

procedure TfmAPPurchaseRequest.quDetilItemIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT FgUomid as uomid2 FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quDetilUOMID.AsString := quAct.FieldByName('UOMID2').AsString;
end;

procedure TfmAPPurchaseRequest.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROM ARMsSales WHERE SalesID='''+quMainSalesID.AsString+''' ');
    Open;
  end;
  quMainLSalesName.AsString := quAct.FieldByName('SalesName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT WareHouseName FROM INMsWarehouse WHERE WarehouseID='''+quMainwarehouseID.AsString+''' ');
    Open;
  end;
  quMainLWarehouse.AsString := quAct.FieldByName('WareHouseName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SiteName FROM INMsSites WHERE SiteID='''+quMainSiteID.AsString+''' ');
    Open;
  end;
  quMainLSites.AsString := quAct.FieldByName('SiteName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT DivisiName FROM INMsDivisi WHERE DivisiID='''+quMainDivisiID.AsString+''' ');
    Open;
  end;
  quMainLDivisi.AsString := quAct.FieldByName('DivisiName').AsString;
end;

procedure TfmAPPurchaseRequest.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ItemName FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quDetilLItemName.AsString := quAct.FieldByName('ItemName').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROM ARMsSales WHERE SalesID='''+quDetilReqBy.AsString+''' ');
    Open;
  end;
  quDetilLReqBy.AsString := quAct.FieldByName('SalesName').AsString;
end;

procedure TfmAPPurchaseRequest.quDetilJumlahChange(Sender: TField);
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

procedure TfmAPPurchaseRequest.quDetilUOMIDChange(Sender: TField);
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

procedure TfmAPPurchaseRequest.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmAPPurchaseRequest.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Sites';
        SQLString := 'SELECT SiteID as Kode_Sites, SiteName as Nama_Sites'
                    +' FROM INMSSites ORDER BY SiteName';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSiteID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmAPPurchaseRequest.dbgColumn10ButtonClick(Sender: TObject;
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

procedure TfmAPPurchaseRequest.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Department';
        SQLString := 'SELECT DivisiID as Kode_Department, DivisiName as Nama_Department FROM INMsDivisi ORDER BY DivisiName';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainDivisiID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmAPPurchaseRequest.dbgColumn12ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Actor';
    SQLString := 'SELECT SalesName as Nama_Karyawan,SalesID as Kode_Karyawan '
                +'FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesName';
    if ShowModal = MrOK then
    begin
       if qudetil.State = dsBrowse then qudetil.Edit;
       quDetilReqBy.AsString := Res[1];
    end;
  finally
    free;
  end;
end;

procedure TfmAPPurchaseRequest.dxDBButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then dxDBButtonEdit3.SetFocus;
end;

procedure TfmAPPurchaseRequest.dxDBButtonEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then dxDBButtonEdit4.SetFocus;
end;

procedure TfmAPPurchaseRequest.dxDBButtonEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then dxdbedit2.SetFocus;
end;

procedure TfmAPPurchaseRequest.dxDBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then bbSave.SetFocus;
end;

procedure TfmAPPurchaseRequest.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  if Flag='MR' then
  begin
    if (KdCab<>'02') or (KdCab<>'02A') then
    begin
      if GroupUser<>'admin' then
      begin
        with quAct, SQL do
        begin
          Close; Clear;
          Add('SELECT TOP 1 FgOTO FROM APTrPurchaseRequestDt Where PRID='''+quMainPRID.AsString+''' AND FgOto=''Y'' ');
          Open;
          if not IsEmpty then
          begin
             ShowMessage('sudah pernah ada otorisasi, tidak bisa tambah');
             Abort;
          end;
        end;
      end;
    end;
  end;

  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 K.PRID,K.POID,K.Kode FROM ('
       +'SELECT PRID,POID,1 as Kode,ItemID,FgNum FROM APTrPurchaseOrderDt UNION ALL '
       +'SELECT MRID,PRID,2 as Kode,ItemID,FgNum FROM APTrPurchaserequestDt UNION ALL '
       +'SELECT Note,KonsinyasiID,3,ItemID,FgNum FROM APTrKonsinyasiDt UNION ALL '
       +'SELECT PRID,TransferID,4,ItemID,FgNum FROM INTrTransferItemDt '
       +') as K WHERE K.PRID='''+quMainPRID.AsString+''' ');//AND K.ItemID='''+quDetilItemID.ASString+''' AND K.FgNum='''+quDetilNumAll.ASString+''' ');
    Open;
    if not IsEmpty then
    begin
       if quAct.FieldByName('Kode').AsInteger = 1 then
         MsgInfo('PartNumber Sudah ada di Purchase Order ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 2 then
         MsgInfo('PartNumber Sudah ada di Purchase Request ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 3 then
         MsgInfo('PartNumber Sudah ada di Penerimaan ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 4 then
         MsgInfo('PartNumber Sudah ada di Realisasi ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;

  with quact,sql do
  begin
    close;clear;
    add('select case when tglupload is null then 1 else 0 end as hasil from aptrpurchaserequesthd where prid='''+quMainPRID.AsString+''' ');
    open;
  end;
  if (quact.fieldbyname('hasil').asinteger = 0) and (kdcab<>'HO') then
  begin
    ShowMessage('sudah pernah di upload. tidak bisa diubah');
    abort;
  end;
end;

procedure TfmAPPurchaseRequest.quMainBeforeDelete(DataSet: TDataSet);
var nopoid : string;
begin
  inherited;


  if Flag='MR' then
  begin
    if (KdCab<>'02') or (KdCab<>'02A') then
    begin
      with quAct, SQL do
      begin
        Close; Clear;
        Add('SELECT TOP 1 FgOTO FROM APTrPurchaseRequestDt Where PRID='''+quMainPRID.AsString+''' AND FgOto=''Y'' ');
        Open;
        if not IsEmpty then
        begin
           ShowMessage('sudah pernah ada otorisasi, tidak bisa tambah');
           Abort;
        end;
      end;
    end;
  end;
  
  if Flag='MR' then
  begin
    if (KdCab<>'02') or (KdCab<>'02A') then
    begin
      with quAct, SQL do
      begin
        Close; Clear;
        Add('SELECT TOP 1 FgOTO FROM APTrPurchaseRequestDt Where PRID='''+quMainPRID.AsString+''' AND FgOto=''Y'' ');
        Open;
        if not IsEmpty then
        begin
           ShowMessage('sudah pernah ada otorisasi, tidak bisa tambah');
           Abort;
        end;
      end;
    end;
  end;
  
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 K.PRID,K.POID,K.Kode FROM ('
       +'SELECT PRID,POID,1 as Kode,ItemID,FgNum FROM APTrPurchaseOrderDt UNION ALL '
       +'SELECT MRID,PRID,2 as Kode,ItemID,FgNum FROM APTrPurchaserequestDt UNION ALL '
       +'SELECT Note,KonsinyasiID,3,ItemID,FgNum FROM APTrKonsinyasiDt UNION ALL '
       +'SELECT PRID,TransferID,4,ItemID,FgNum FROM INTrTransferItemDt '
       +') as K WHERE K.PRID='''+quMainPRID.AsString+''' ');//AND K.ItemID='''+quDetilItemID.ASString+''' AND K.FgNum='''+quDetilNumAll.ASString+''' ');
    Open;
    if not IsEmpty then
    begin
       if quAct.FieldByName('Kode').AsInteger = 1 then
         MsgInfo('PartNumber Sudah ada di Purchase Order ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 2 then
         MsgInfo('PartNumber Sudah ada di Purchase Request ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 3 then
         MsgInfo('PartNumber Sudah ada di Penerimaan ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 4 then
         MsgInfo('PartNumber Sudah ada di Realisasi ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;

  with quact,sql do
  begin
    close;clear;
    add('select case when tglupload is null then 1 else 0 end as hasil from aptrpurchaserequesthd where prid='''+quMainPRID.AsString+''' ');
    open;
  end;
  if (quact.fieldbyname('hasil').asinteger = 0) and (kdcab<>'HO') then
  begin
    ShowMessage('sudah pernah di upload. tidak bisa diubah');
    abort;
  end;

  with quCetak,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainPRID.ASString+''',''Delete'',''Hapus '+Flag+''',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
  nopoid := quMainPRID.ASString;
  quMain.Locate('PRID',nopoid,[]);
end;

procedure TfmAPPurchaseRequest.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  if Flag='MR' then
  begin
    if (KdCab<>'02') or (KdCab<>'02A') then
    begin
      with quAct, SQL do
      begin
        Close; Clear;
        Add('SELECT TOP 1 FgOTO FROM APTrPurchaseRequestDt Where PRID='''+quMainPRID.AsString+''' AND FgOto=''Y'' ');
        Open;
        if not IsEmpty then
        begin
           ShowMessage('sudah pernah ada otorisasi, tidak bisa tambah');
           Abort;
        end;
      end;
    end;
  end;
  
  if Flag='MR' then
  begin
    if (KdCab<>'02') or (KdCab<>'02A') then
    begin
      with quAct, SQL do
      begin
        Close; Clear;
        Add('SELECT TOP 1 FgOTO FROM APTrPurchaseRequestDt Where PRID='''+quMainPRID.AsString+''' AND FgOto=''Y'' ');
        Open;
        if not IsEmpty then
        begin
           ShowMessage('sudah pernah ada otorisasi, tidak bisa tambah');
           Abort;
        end;
      end;
    end;
  end;
  
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT TOP 1 K.PRID,K.POID,K.Kode FROM ('
       +'SELECT PRID,POID,1 as Kode,ItemID,FgNum FROM APTrPurchaseOrderDt UNION ALL '
       +'SELECT MRID,PRID,2 as Kode,ItemID,FgNum FROM APTrPurchaserequestDt UNION ALL '
       +'SELECT Note,KonsinyasiID,3,ItemID,FgNum FROM APTrKonsinyasiDt UNION ALL '
       +'SELECT PRID,TransferID,4,ItemID,FgNum FROM INTrTransferItemDt '
       +') as K WHERE K.PRID='''+quMainPRID.AsString+''' ');//AND K.ItemID='''+quDetilItemID.ASString+''' AND K.FgNum='''+quDetilNumAll.ASString+''' ');
    Open;
    if not IsEmpty then
    begin
       if quAct.FieldByName('Kode').AsInteger = 1 then
         MsgInfo('PartNumber Sudah ada di Purchase Order ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 2 then
         MsgInfo('PartNumber Sudah ada di Purchase Request ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 3 then
         MsgInfo('PartNumber Sudah ada di Penerimaan ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       if quAct.FieldByName('Kode').AsInteger = 4 then
         MsgInfo('PartNumber Sudah ada di Realisasi ['+quAct.FieldByName('POID').AsString+'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;

  with quact,sql do
  begin
    close;clear;
    add('select case when tglupload is null then 1 else 0 end as hasil from aptrpurchaserequesthd where prid='''+quMainPRID.AsString+''' ');
    open;
  end;
  if (quact.fieldbyname('hasil').asinteger = 0) and (kdcab<>'HO') then
  begin
    ShowMessage('sudah pernah di upload. tidak bisa diubah');
    abort;
  end;
end;

end.
