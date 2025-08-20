unit ARTrKonRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBTLCl, dxGrClms, DBCtrls, dxDBELib,Printers,
  dxEditor;

type
  TfmARTrKonRetur = class(TfmStdLv41)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    quItem: TADOQuery;
    DBText3: TDBText;
    quMainKonReturID: TStringField;
    quMainCustID: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainTransDate: TDateTimeField;
    dbgListKonReturID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMemoColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    quCustomer: TADOQuery;
    ADOQuery1: TADOQuery;
    quMainLCustName: TStringField;
    quMainNote: TStringField;
    quLocation: TADOQuery;
    txtKonReturID: TdxDBEdit;
    txtTransDate: TdxDBDateEdit;
    txtCustID: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ItemID: TdxDBGridButtonColumn;
    dxDBGrid1ItemName: TdxDBGridColumn;
    dxDBGrid1Konsinyasi: TdxDBGridButtonColumn;
    dxDBGrid1Lokasi: TdxDBGridButtonColumn;
    dxDBGrid1Qty: TdxDBGridColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    dxDBGrid1Price: TdxDBGridColumn;
    dxButton1: TdxButton;
    ActPrint: TAction;
    quDetilKonReturID: TStringField;
    quDetilItemID: TStringField;
    quDetilKonTransBrgId: TStringField;
    quDetilWareHouseID: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilPrice: TBCDField;
    quDetilLItemName: TStringField;
    quDetilLWarehouseName: TStringField;
    dbgBatch: TdxDBGrid;
    dbgBatchKonsinyasiID: TdxDBGridMaskColumn;
    dbgBatchItemID: TdxDBGridMaskColumn;
    dbgBatchUpdDate: TdxDBGridDateColumn;
    dbgBatchUpdUser: TdxDBGridMaskColumn;
    dbgBatchJumlah: TdxDBGridColumn;
    dbgBatchExpDate: TdxDBGridDateColumn;
    dbgBatchColumn8: TdxDBGridColumn;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNKonReturID: TStringField;
    quSNItemID: TStringField;
    quSNKonTransBrgId: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quSNSNID: TStringField;
    quSNQty: TBCDField;
    quSNExpDate: TDateTimeField;
    quSNNumAll: TAutoIncField;
    dbgBatchSNID: TdxDBGridButtonColumn;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton5: TdxButton;
    dxButton4: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure txtCustIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1ItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtKonReturIDKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1LokasiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1KonsinyasiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure dbgBatchSNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARTrKonRetur: TfmARTrKonRetur;

implementation

uses StdLv2, StdLv1, StdLv0, Search, UnitGeneral, ConMain, StdLv3, MyUnit,
  Allitem, StdLv4, ARQRRptSuratJalan;

{$R *.dfm}

procedure TfmARTrKonRetur.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), KonReturID';
  FFieldTgl   := 'TransDate';
  //SettingDxGrid(dxDBGrid1);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quSN.Active := True;
  ts01.TabVisible := FALSE;
end;

procedure TfmARTrKonRetur.txtCustIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT Custname as Nama_Pelanggan,CustId as Kode_Pelanggan FROM ARMsCustomer ORDER BY CustId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainCustID.Value := Res[1];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrKonRetur.dxDBGrid1ItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  quDetilLItemName.FocusControl;
  quDetilItemID.FocusControl;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT DISTINCT C.ItemName as Nama_Barang,A.ItemID as Kode_Barang '
                   +'FROM ARTrKonInvPelDt A INNER JOIN ARTrKonInvPelHd B ON A.KonInvPelID=B.KonInvPelID '
                   +'INNER JOIN INMsItem C ON A.ItemID=C.ItemID '
                   +' WHERE B.CustId='''+quMainCustID.AsString+''''
                   +' ORDER BY A.ItemID';
       KeyValue := quDetilItemID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonRetur.quMainBeforePost(DataSet: TDataSet);
var  ST: String;
begin
  inherited;
  if Trim(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal Retur Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainCustID.Value)= '' then
  Begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCustName.Value)= '' then
  Begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMain.State=dsinsert then
  Begin
    ST := 'RJL/R'+ FormatDateTime('YY/MM-', quMainTransDate.AsDateTime);
    quMainKonReturID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrKonReturHd', 'KonReturId', ST, '0') + 1);
  End;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmARTrKonRetur.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtKonReturID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtCustID,qumain.State<>dsinsert);
end;

procedure TfmARTrKonRetur.txtKonReturIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrKonRetur.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1ItemID, quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1ItemName, TRUE);
  SetReadOnly(dxDBGrid1Price, TRUE);
  SetReadOnly(dxDBGrid1ItemID, quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1Lokasi, quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1Konsinyasi, quDetil.State<>dsInsert);
end;

procedure TfmARTrKonRetur.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:= date;
  quMainTransDate.FocusControl;
  
end;

procedure TfmARTrKonRetur.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrKonRetur.dxDBGrid1LokasiButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'select WarehouseID as Kode_Gudang ' +
                    'from ARTrKonTransBrgHd WHERE KonTransBrgId='''+quDetilKonTransBrgId.Value+''' ' +
                    'order by WarehouseID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilWareHouseID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonRetur.dxDBGrid1KonsinyasiButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Nota DO';
       SQLString := 'SELECT K.Nota_DO,K.Tgl,K.Sisa,K.Price FROM ('
                   +'SELECT A.ItemID,B.CustID,A.KonTransBrgID as Nota_DO,CONVERT(VARCHAR(10),B.Transdate,103) as Tgl,A.Qty-'
                   +'(SELECT ISNULL(SUM(E.Qty),0) FROM ARTrKonReturDt E  WHERE E.ItemId=A.ItemId AND E.KonTransBrgId=A.KonTransBrgId) as Sisa,A.Price '
                   +'FROM ARTrKonInvPelDt A INNER JOIN ARTrKonInvPelHd B ON A.KonInvPelID=B.KonInvPelID) as K '
                   +'WHERE K.ItemID = '''+quDetilItemID.AsString+''' AND K.CustId='''+quMainCustID.AsString+''' AND K.Sisa <> 0 ORDER BY K.Nota_DO ';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilKonTransBrgId.AsString := Res[0];
             quDetilQty.AsString := Res[2];
             quDetilPrice.AsString := Res[3];
             quDetilQty.FocusControl;
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonRetur.quDetilBeforePost(DataSet: TDataSet);
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
     MsgInfo('Kode Item tidak ada dalam Master !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilKonTransBrgId.AsString)='' then
  begin
     MsgInfo('Nota Konsinyasi tidak boleh kosong !');
     quDetilKonTransBrgId.FocusControl;
     Abort;
  end;

  if quDetilQty.AsCurrency <= 0  then
  begin
     MsgInfo('Jumlah Barang harus lebih besar dari 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if TRIM(quDetilWareHouseID.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak boleh kosong !');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLwareHouseName.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak ada dalam master !');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT Count(ItemID) FROM ARTrKonReturDt WHERE KonReturID=:KonReturID AND KonTransBrgID=:KonTransBrgID and ItemID=:ItemID');
        with Parameters do
        begin
           ParamByName('KonReturID').Value := quMainKonReturID.Value;
           ParamByName('KonTransBrgID').Value  := quDetilKonTransBrgId.Value;
           ParamByName('ItemID').Value := quDetilItemID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Item sudah ada dalam List');
           abort;
        end;
     end;
  end;


  with quact,sql do
  Begin
    Close;Clear;
    add(' select A.KonTransBrgID as Nota_Konsinyasi,convert(varchar(10),Transdate,103) as Tgl,A.WareHouseID, '+
        ' isnull(Qty,0)-(Select isnull(Sum(Qty),0) FROM ARTrKonReturDt E '+
        ' Where E.ItemId=B.ItemId AND E.KonTransBrgId=A.KonTransBrgId AND KonReturId <>'''+quMainKonReturID.Value +''' ) '+
        ' as Sisa '+
        ' from ARTrKonTransBrgHd A INNER JOIN ARTrKonTransBrgDt B '+
        ' ON A.KonTransBrgId=B.KonTransBrgId ' +
        ' where B.ItemID = ''' + quDetilItemID.Value + ''' AND A.CustId='''+quMainCustID.Value+'''' +
        ' AND A.SOID='''+quDetilKonTransBrgId.AsString+''' AND A.WareHouseId='''+quDetilWareHouseID.Value +''''+
        ' order by A.KonTransBrgID ');
        //showmessage(sql.text);
    Open;
    If IsEmpty then
    Begin
      MsgInfo('Data tidak terdapat pada Nota DO');
      quDetilItemID.FocusControl;
      Abort;
    End;
  End;

 { if quDetilQty.AsCurrency > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Jumlah Barang melebihi jumlah Di Nota DO '+#13
           +' Sisa pada Nota DO adalah ['+ quAct.FieldByName('Sisa').AsString +']');
    quDetilQty.FocusControl;
    Abort;
  end;      }


  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrKonRetur.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;

  DeleteFromAllItem(quMainKonReturID.Value,quDetilKonTransBrgId.Value,quDetilItemID.Value,
                    quDetilWareHouseID.Value,0,9,1,'');
  InsertToAllItem(quMainKonReturID.Value,quDetilKonTransBrgId.Value,quMainTransDate.value,quDetilWareHouseID.Value,
                  quDetilItemID.Value,9,abs(quDetilQty.Value),0,'',1,'AR',quMainLCustName.Value,'-');
  quDetil.Append;
end;

procedure TfmARTrKonRetur.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;


  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''Y'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrKonReturDtSN WHERE KonReturID='''+quMainKonReturID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' )');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''Y'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrKonReturDtSN WHERE KonReturID='''+quMainKonReturID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' )');
    ExecSQL;
  end;
  DeleteFromAllItem(quMainKonReturID.Value,quDetilKonTransBrgId.Value,quDetilItemID.Value,
                    quDetilWareHouseID.Value,0,9,1,'');
end;

procedure TfmARTrKonRetur.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;


  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''Y'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrKonReturDtSN  WHERE KonReturID='''+quMainKonReturID.AsString+''') ');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''Y'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrKonReturDtSN  WHERE KonReturID='''+quMainKonReturID.AsString+''') ');
    ExecSQL;
  end;
  DeleteFromAllItem(quMainKonReturID.Value,9,1,'')
end;

procedure TfmARTrKonRetur.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Retur Konsinyasi Penjualan ';
       SQLString := ' SELECT A.KonReturID as Nota_Retur_Konsinyasi, '
                   +' Convert(varchar(10),A.TransDate,103) as Tanggal, '
                   +' A.CustId as Kode_Pelanggan,B.CustName as Pelangggan, '
                   +' A.Note as Keterangan '
                   +' FROM ARTrKonReturHd A '
                   +' INNER JOIN ARMsCustomer B '
                   +' ON A.CustID=B.CustID '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY A.KonReturID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('KonReturID',Res[0],[]);
       end;
   finally
      free;
   end;
end;

procedure TfmARTrKonRetur.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsCurrency := 1;
  quDetilWareHouseID.AsString := sDGR;
  quDetilItemID.FocusControl;
end;

procedure TfmARTrKonRetur.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if quMain.IsEmpty then Abort;
end;

procedure TfmARTrKonRetur.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTrKonRetur.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrKonRetur.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrKonRetur.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrKonRetur.ActPrintExecute(Sender: TObject);
var  iPrint : Integer;
     FgTax : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT FgTax FROM SAMsSet');
    Open;
  end;
  FgTax := quAct.FieldByName('FgTax').AsString;
  if (quMain.IsEmpty) and (quDetil.IsEmpty) then Abort;
  iPrint := Printer.Printers.IndexOf(sDPB);
  with TfmQRRptSuratJalan.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       qlbNamaInvoice.Caption := '** RETUR **';
       QRLabel24.Enabled := False; QRLabel25.Enabled := False;
       if FgTax = 'Y' then
       begin
         qrlDate.Caption := FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);
         QRLabel23.Caption := 'Date'; QRDBText9.Enabled := False; QRLabel25.Enabled := False;
         QRLabel24.Enabled := False; QRDBText10.Enabled := False; QRLabel1.Enabled := False;
         QRLabel20.Enabled := False; QRLabel7.Enabled := False; QRLabel22.Enabled := False;
         QRDBText6.Enabled := False; qrlDate.Left := 96; qrlDate.Top := 84;
         QRLabel27.Enabled := False; QRLabel28.Enabled := False; QRDBText14.Enabled := False;
     //    QRLabel10.Enabled := False; QRLabel10.Enabled := False; QRLabel16.Caption := 'Checker'; QRLabel17.Enabled := False;
     //    QRLabel14.Enabled := False; QRDBText1.enabled := false;
       end else
         qrlDate.Caption := FormatDateTime('dd MMMM yyyy',Date);
       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT A.KonReturID as KonTransBrgID,A.KonReturID as SaleID,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,'
            +'CONVERT(VARCHAR(8),Getdate(),108) as Jam,A.CustID,C.CustName,C.Address,'''' as Sales,'
            +'CASE WHEN C.KodePOS='''' THEN C.City ELSE C.City+'' - ''+C.KodePOS END as City,D.WarehouseID+'' - ''+B.WarehouseName as Gudang  FROM ARTrKonReturHd A '
            +'INNER JOIN ARTrKonReturDt D ON A.KonReturID=D.KonReturID INNER JOIN ARMsCustomer C ON A.CustID=C.CustID INNER JOIN INMsWarehouse B ON D.WarehouseID=B.WarehouseID '
            +'WHERE A.KonReturID='''+quMainKonReturID.AsString+''' ');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add(' SELECT  A.ItemId,B.ItemName,B.UOMId,ISNULL(Qty,0) as Qty,B.Tipe,B.Lokasi FROM ARTrKonReturDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid WHERE A.KonReturID=:KonTransBrgId'
            +' ORDER BY A.UpdDate');
         Open;
       End;
      { if quMainNote.AsString = '' then
         qlbKet.Caption := ''
       else
         qlbKet.Caption := '* KETERANGAN : '+quMainNote.AsString;    }

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

      finally
        free;
     end;
end;

procedure TfmARTrKonRetur.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quSNNumAll.AsString+''' and voucherno='''+quMainKonReturID.AsString+''' and snid='''+quSNSNID.AsString+''' and warehouseid='''+quDetilWareHouseID.AsString+''' ');
   ExecSQL;
  End;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('insert AllLootNumber (fgNum,voucherno,TransDate,FgTrans,SNID,qty,expdate,warehouseid,itemid) '
      +'select '''+quSNNumAll.AsString+''','''+quMainKonReturID.AsString+''','''+FormatDatetime('yyyy-mm-dd',quMainTransDate.AsDatetime)+''',6,'
      +''''+quSNSNID.AsString+''','''+quSNQty.AsString+''','''+FormatDatetime('yyyy-mm-dd',quSNExpDate.AsDatetime)+''','''+quDetilWareHouseID.AsString+''','''+quDetilItemID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmARTrKonRetur.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add('delete from AllLootNumber where '
      +'fgnum='''+quSNNumAll.AsString+''' and voucherno='''+quMainKonReturID.AsString+''' and snid='''+quSNSNID.AsString+''' and warehouseid='''+quDetilWareHouseID.AsString+''' ');
   ExecSQL;
  End;
end;

procedure TfmARTrKonRetur.dbgBatchSNIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Kode Produksi';
    SQLString := 'SELECT K.SNID,ISNULL(SUM(CASE WHEN K.FgTrans<50 THEN K.Jumlah ELSE K.Jumlah*-1 END),0) as Jumlah,ExpDate FROM ( '
                +'  select A.NumAll,A.TransID,C.transdate,CASE WHEN B.FgStatus=''T'' THEN 2 ELSE 52 END as FgTrans,A.SNID,A.Jumlah,A.ExpDate,C.WareHouseid ,A.Itemid '
                +'  from INTrAdjustmentSN A inner join INTrAdjustmentDt B on A.TransID=B.TransID '
                +'  Inner join INTrAdjustmentHd C on B.TransID=C.TransID union all '
                +'  select '''',A.TransferID,B.TransferDate,4,A.SNID,A.Qty,A.ExpDate,B.WareHouseDest,A.Itemid from INTrTransferItemSN A '
                +'  Inner join INTrTransferItemHd B on A.TransferID=B.TransferID union all '
                +'  select '''',A.TransferID,B.TransferDate,54,A.SNID,A.Qty,A.ExpDate,B.WareHouseSrc,A.Itemid from INTrTransferItemSN A '
                +'  Inner join INTrTransferItemHd B on A.TransferID=B.TransferID union all '
                +'  select A.NumAll,A.KonsinyasiID,B.TransDate,1,A.SNID,A.Jumlah,A.ExpDate,B.WareHouseID,A.Itemid from APTrKonsinyasiDtSN A '
                +'  inner join APTrKonsinyasiHd b on A.KonsinyasiID=B.KonsinyasiID union all '
                +'  select A.NumAll,A.ReturnKonID,C.TransDate,6,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from APTrReturnKonSN A '
                +'  inner join APTrReturnKondt B on A.ReturnKonID=B.ReturnKonID '
                +'  inner join APTrReturnKonHd C on C.ReturnKonID=B.ReturnKonID union all '
                +'  select A.NumAll,A.ReturnID,C.TransDate,6,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from APTrReturnSN A '
                +'  inner join APTrReturndt B on A.ReturnID=B.ReturnID '
                +'  inner join APTrReturnHd C on C.ReturnID=B.ReturnID union all '
                +'  select A.NumAll,A.ReturnID,C.TransDate,55,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from ARTrReturPenjualanDtSN A '
                +'  inner join ARTrReturPenjualanDt B on A.ReturnID=B.ReturnID '
                +'  inner join ARTrReturPenjualanHd C on C.ReturnID=B.ReturnID union all '
                +'  select A.NumAll,A.KonReturID,C.TransDate,56,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from ARTrKonReturDtSN A '
                +'  inner join ARTrKonReturDt B on A.KonReturID=B.KonReturID '
                +'  inner join ARTrKonReturHd C on C.KonReturID=B.KonReturID union all '
                +'  select A.urut,A.KonTransBrgID,B.transdate,51,A.SNID,A.Qty,A.ExpDate,B.WareHouseID,A.Itemid from ARTrKonTransBrgDtSN A '
                +'  inner join ARTrKonTransBrgHd B on A.KonTransBrgID=B.KonTransBrgID ) as K '
                +'  WHERE K.Jumlah<>0 AND K.ItemID = '''+quDetilItemID.AsString+''' AND K.WareHouseID = '''+quDetilWareHouseID.AsString+''' '
                +'  GROUP BY K.SNID,K.ExpDate ';
    if ShowModal = MrOK then
    begin
       if quSN.State = dsBrowse then quSN.Edit;
       quSNSNID.AsString     := Res[0];
       quSNExpdate.AsDatetime  := StrtoDatetime(Res[2]);
    end;
  finally
    free;
  end;
end;

procedure TfmARTrKonRetur.dxButton4Click(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmARTrKonRetur.dxButton3Click(Sender: TObject);
begin
  inherited;
  if quSN.IsEmpty then Abort;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmARTrKonRetur.dxButton2Click(Sender: TObject);
begin
  inherited;
  quSN.Append;
end;

procedure TfmARTrKonRetur.dxButton5Click(Sender: TObject);
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

end.
