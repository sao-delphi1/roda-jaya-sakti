unit OPTrProduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, DBCtrls, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl;

type
  TfmOPTrProduksi = class(TfmStdLv31)
    quMainProdID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSiteID: TStringField;
    quMainLocation: TStringField;
    quMainNote: TStringField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainKdCab: TStringField;
    quDetilProdID: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilNoUnit: TStringField;
    quDetilQty: TBCDField;
    quDetilUOMID: TStringField;
    quDetilJumlah: TBCDField;
    quDetilNote: TStringField;
    quDetilUpdUser: TStringField;
    quDetilUpdDate: TDateTimeField;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNProdID: TStringField;
    quSNNumAll: TIntegerField;
    quSNFgNum: TAutoIncField;
    quSNItemId: TStringField;
    quSNQty: TBCDField;
    quSNNote: TStringField;
    quSNUpdUser: TStringField;
    quSNUpdDate: TDateTimeField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Label5: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    quMainLSite: TStringField;
    quMainLGudang: TStringField;
    DBText2: TDBText;
    dxDBEdit2: TdxDBEdit;
    dbg: TdxDBGrid;
    dbgColumn1: TdxDBGridButtonColumn;
    dbgColumn2: TdxDBGridColumn;
    dbgColumn3: TdxDBGridButtonColumn;
    dbgColumn4: TdxDBGridColumn;
    dbgColumn5: TdxDBGridBlobColumn;
    dbgColumn6: TdxDBGridButtonColumn;
    quDetilSalesID: TStringField;
    quDetilLSalesName: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridButtonColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridBlobColumn;
    quSNLHasil: TStringField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    quDetilFGShift: TStringField;
    quDetilTotalP: TCurrencyField;
    dbgColumn7: TdxDBGridColumn;
    quSNBCM: TBCDField;
    quSNNoUnit: TStringField;
    quSNSalesID: TStringField;
    dxDBGrid1Column5: TdxDBGridButtonColumn;
    dxDBGrid1Column6: TdxDBGridButtonColumn;
    quSNLSalesName: TStringField;
    quDetilItemId: TStringField;
    quDetilLHasil: TStringField;
    dbgColumn8: TdxDBGridButtonColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dbgColumn9: TdxDBGridButtonColumn;
    dbgColumn10: TdxDBGridButtonColumn;
    quDetilFgArea: TStringField;
    quDetilDelPoint: TStringField;
    dbgColumn11: TdxDBGridImageColumn;
    quSNDelPoint: TStringField;
    dxDBGrid1Column8: TdxDBGridButtonColumn;
    quSNPayload: TBCDField;
    quSNNilai1: TBCDField;
    quSNNilai2: TBCDField;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    quSNTonase: TBCDField;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    quAct1: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dbgColumn1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgColumn6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quSNCalcFields(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1Column1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Click(Sender: TObject);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBGrid1Column5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Column6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgColumn8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgColumn9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgColumn10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Column8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quSNQtyChange(Sender: TField);
    procedure quSNTonaseChange(Sender: TField);
    procedure quSNPayloadChange(Sender: TField);
    procedure quSNNilai2Change(Sender: TField);
    procedure quSNNilai1Change(Sender: TField);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPTrProduksi: TfmOPTrProduksi;

implementation

uses StdLv3, MyUnit, UnitGeneral, UnitDate, Search, ConMain;

{$R *.dfm}

procedure TfmOPTrProduksi.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112),ProdID';
  FFieldTgl   := 'TransDate';
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quSN.Active := TRUE;
end;

procedure TfmOPTrProduksi.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SiteName FROM INMsSites WHERE SIteID='''+quMainSiteID.ASString+''' ');
    Open;
  end;
  quMainLSite.AsString := quAct.FieldByName('SiteName').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT WarehouseName FROM INMsWarehouse WHERE WarehouseID='''+quMainLocation.ASString+''' ');
    Open;
  end;
  quMainLGudang.AsString := quAct.FieldByName('WarehouseName').AsString;
end;

procedure TfmOPTrProduksi.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmOPTrProduksi.dxDBButtonEdit3ButtonClick(Sender: TObject;
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
         quMainLocation.Value := Res[0];
      end;
   finally
      free;
   end;
end;

procedure TfmOPTrProduksi.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainKdCab.ASstring := KdCab;
  quMainSiteID.FocusControl;
end;

procedure TfmOPTrProduksi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State <> dsInsert);
  SetReadOnly(dxDBButtonEdit3,quMain.State <> dsInsert);
end;

procedure TfmOPTrProduksi.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if Trim(quMainTransDate.AsString) = '' then
  begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.AsString;
    Abort;
  end;

  if Trim(quMainSiteID.AsString) = '' then
  begin
    MsgInfo('Site tidak boleh kosong');
    quMainSiteID.AsString;
    Abort;
  end;

  if Trim(quMainLocation.AsString) = '' then
  begin
    MsgInfo('Gudang tidak boleh kosong');
    quMainLocation.AsString;
    Abort;
  end;

  if Trim(quMainLSite.AsString) = '' then
  begin
    MsgInfo('Site tidak ada dalam Master');
    quMainSiteID.AsString;
    Abort;
  end;

  if Trim(quMainLGudang.AsString) = '' then
  begin
    MsgInfo('Gudang tidak ada dalam Master');
    quMainLocation.AsString;
    Abort;
  end;

  if (quMain.State=dsInsert) then  //01202103080001
  Begin
    ST :=  KdCab+FormatDateTime('YYYYMMDD',quMainTransDate.AsDateTime);
    quMainProdID.AsString := ST + FormatFloat('0000', RunNumberGL(quAct, 'OPTrProduksiHd', 'ProdID', ST, '0') + 1);
  End;

  quMainKdCab.AsString := KdCab;
  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmOPTrProduksi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Pencarian No Produksi';
     SQLString := ' select A.ProdID as No_Produksi,CONVERT(varchar(10),A.transdate,103) as Tanggal,B.SiteName,C.WarehouseName,A.Note '
                 +' from optrproduksihd A '
                 +' inner join INMsSites B on A.SiteID=B.SiteID '
                 +' inner join INMsWarehouse C on A.Location=C.WarehouseID '
                 +' WHERE '+FSQLWhere
                 +' ORDER BY Transdate ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('ProdID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmOPTrProduksi.dbgColumn1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Pilih Nomor Unit';
    SQLString := 'SELECT NoUnit, Description FROM INMsNoUnit Where Fgactive=''Y'' ORDER BY NoUnit';
    if ShowModal = MrOK then
    begin
       if qudetil.State = dsBrowse then qudetil.Edit;
       quDetilNoUnit.Value := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmOPTrProduksi.dbgColumn6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
  try
    Title := 'Master Karyawan';
    SQLString := 'SELECT SalesName as Nama_Karyawan,SalesID as Kode_Karyawan,Jabatan '
                +'FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesName';
    if ShowModal = MrOK then
    begin
       if qudetil.State = dsBrowse then qudetil.Edit;
       quDetilSalesID.AsString := Res[1];
    end;
  finally
    free;
  end;
end;

procedure TfmOPTrProduksi.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsCurrency := 0;
  quDetilJumlah.AsCurrency := 0;
  quDetilNoUnit.FocusControl;
end;

procedure TfmOPTrProduksi.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROM ARMsSales WHERE SalesID='''+quDetilSalesID.AsString+''' ');
    Open;
  end;
  quDetilLSalesName.AsString := quAct.FieldByName('SalesName').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT NmMaster FROM AllMaster Where KdMaster='''+quDetilItemId.AsString+''' AND FgMaster=''H'' ');
    Open;
  end;
  quDetilLHasil.AsString := quAct.FieldByname('NmMaster').ASString;

  quDetilTotalP.AsCurrency := quDetilQty.AsCurrency * quDetilJumlah.AsCurrency ;
end;

procedure TfmOPTrProduksi.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quDetilNoUnit.AsString) = '' then
  begin
    MsgInfo('No Unit tidak boleh kosong');
    quDetilNoUnit.AsString;
    Abort;
  end;

  if Trim(quDetilSalesID.AsString) = '' then
  begin
    MsgInfo('Driver tidak boleh kosong');
    quDetilLSalesName.AsString;
    Abort;
  end;

  if Trim(quDetilQty.AsString) = '' then
  begin
    MsgInfo('Nilai Retase tidak boleh kosong');
    quDetilQty.AsString;
    Abort;
  end;

  if Trim(quDetilJumlah.AsString) = '' then
  begin
    MsgInfo('Nilai Tonase tidak boleh kosong');
    quDetilJumlah.AsString;
    Abort;
  end;

  if quDetilQty.AsCurrency < 0 then
  begin
    MsgInfo('Nilai Retase tidak boleh dibawah 0');
    quDetilQty.AsString;
    Abort;
  end;

  if quDetilJumlah.AsCurrency < 0 then
  begin
    MsgInfo('Nilai Tonase tidak boleh dibawah 0');
    quDetilJumlah.AsString;
    Abort;
  end;

  quDetilUpdUser.AsString := dmmain.userid;
  qudetilupddate.AsDateTime := GetServerDateTime;
end;

procedure TfmOPTrProduksi.quSNCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT NmMaster FROM AllMaster Where KdMaster='''+quSNItemId.AsString+''' AND FgMaster=''H'' ');
    Open;
  end;
  quSNLHasil.AsString := quAct.FieldByname('NmMaster').ASString;

  with quAct, SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROM ARMsSales WHERE SalesID='''+quSNSalesID.AsString+''' ');
    Open;
  end;
  quSNLSalesName.AsString := quAct.FieldByName('SalesName').AsString;
end;

procedure TfmOPTrProduksi.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column3,TRUE);
end;

procedure TfmOPTrProduksi.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmOPTrProduksi.dxButton1Click(Sender: TObject);
begin
  inherited;
  quSN.Append;
end;

procedure TfmOPTrProduksi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmOPTrProduksi.dxButton4Click(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmOPTrProduksi.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus No Unit ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmOPTrProduksi.dxButton2Click(Sender: TObject);
begin
  inherited;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Hasil Produksi ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmOPTrProduksi.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmOPTrProduksi.dxButton3Click(Sender: TObject);
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

procedure TfmOPTrProduksi.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNNumAll.AsInteger := quDetilNumAll.AsInteger;
  quSNItemId.ASString := quDetilItemId.ASString;

  with quAct1,SQl do
  begin
    Close;Clear;
    Add('Select ISNULL(Nilai1,1) as Nilai1,ISNULL(Nilai2,1) as Nilai2 FROM AllMaster Where KdMaster='''+quDetilItemId.AsString+''' ');
    Open;
  end;
  quSNNilai1.AsCurrency := quAct1.FieldByName('Nilai1').AsCurrency;
  quSNNilai2.AsCurrency := quAct1.FieldByName('Nilai2').AsCurrency;

  quSNQty.AsCurrency := 0;
  quSNItemId.FocusControl;
end;

procedure TfmOPTrProduksi.dxDBGrid1Column1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Hasil Produksi';
       SQLString := 'SELECT NmMaster as Hasil_Produksi,KdMaster as Kode_Item FROM AllMaster WHERE FgMaster=''H'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
          quSNItemId.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmOPTrProduksi.dxDBGrid1Click(Sender: TObject);
begin
  inherited;
  if (quDetil.State=dsInsert) or (quDetil.State=dsEdit) then
  qudetil.Post;
end;

procedure TfmOPTrProduksi.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNItemId.AsString) = '' then
  begin
    MsgInfo('Kode Item tidak boleh kosong');
    quSNItemId.AsString;
    Abort;
  end;

  if Trim(quSNQty.AsString) = '' then
  begin
    MsgInfo('Kode Item tidak boleh kosong');
    quSNItemId.AsString;
    Abort;
  end;

  if quSNQty.AsCurrency < 0 then
  begin
    MsgInfo('Nilai Tonase tidak boleh dibawah 0');
    quSNQty.AsString;
    Abort;
  end;

  quSNItemID.ASString := quDetilItemId.ASString;
  quSNUpdUser.AsString := dmmain.userid;
  quSNUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmOPTrProduksi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgColumn7,TRUE);
end;

procedure TfmOPTrProduksi.dxDBGrid1Column5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Pilih Nomor Unit';
    SQLString := 'SELECT NoUnit, Description, ISNULL(Payload,0) as Payload FROM INMsNoUnit Where FgActive=''Y'' ORDER BY NoUnit';
    if ShowModal = MrOK then
    begin
       if quSN.State = dsBrowse then quSN.Edit;
       quSNNoUnit.AsString := Res[0];
       quSNPayload.AsCurrency := StrToCurr(Res[2]);
    end;
  finally
    free;
  end;
end;

procedure TfmOPTrProduksi.dxDBGrid1Column6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Master Karyawan';
    SQLString := 'SELECT SalesName as Nama_Karyawan,SalesID as Kode_Karyawan,Jabatan '
                +'FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesName';
    if ShowModal = MrOK then
    begin
       if quSN.State = dsBrowse then quSN.Edit;
       quSNSalesID.AsString := Res[1];
    end;
  finally
    free;
  end;
end;

procedure TfmOPTrProduksi.dbgColumn8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Hasil Produksi';
       SQLString := 'SELECT NmMaster as Hasil_Produksi,KdMaster as Kode_Item FROM AllMaster WHERE FgMaster=''H'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemId.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmOPTrProduksi.dbgColumn9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Area Produksi';
       SQLString := 'SELECT NmMaster as Area_Produksi,KdMaster as Kode_Area FROM AllMaster WHERE FgMaster=''E'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilFgArea.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmOPTrProduksi.dbgColumn10ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Delivery Point Produksi';
       SQLString := 'SELECT NmMaster as Nama_Lokasi,KdMaster as Kode_Lokasi FROM AllMaster WHERE FgMaster=''P'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilDelPoint.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmOPTrProduksi.dxDBGrid1Column8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Delivery Point Produksi';
       SQLString := 'SELECT NmMaster as Nama_Lokasi,KdMaster as Kode_Lokasi FROM AllMaster WHERE FgMaster=''P'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
          quSNDelPoint.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmOPTrProduksi.quSNQtyChange(Sender: TField);
var Tonase,Tonase1 : currency;
begin
  inherited;
  quSNTonase.AsCurrency := quSNQty.AsCurrency*quSNPayload.AsCurrency;
  if quSNNoUnit.AsString<>'' then
  begin
  Tonase := (quSNQty.AsCurrency*quSNPayload.AsCurrency);
  Tonase1 := Tonase/quSNNilai1.AsCurrency;
  quSNBCM.AsCurrency := Tonase1/quSNNilai2.AsCurrency;
  end;
end;

procedure TfmOPTrProduksi.quSNTonaseChange(Sender: TField);
var Tonase,Tonase1 : currency;
begin
  inherited;
  if quSNNoUnit.AsString<>'' then
  begin
  Tonase := (quSNQty.AsCurrency*quSNPayload.AsCurrency);
  Tonase1 := Tonase/quSNNilai1.AsCurrency;
  quSNBCM.AsCurrency := Tonase1/quSNNilai2.AsCurrency;
  end;
end;

procedure TfmOPTrProduksi.quSNPayloadChange(Sender: TField);
var Tonase,Tonase1 : currency;
begin
  inherited;
  quSNTonase.AsCurrency := quSNQty.AsCurrency*quSNPayload.AsCurrency;

  if quSNNoUnit.AsString<>'' then
  begin
  Tonase := (quSNQty.AsCurrency*quSNPayload.AsCurrency);
  Tonase1 := Tonase/quSNNilai1.AsCurrency;
  quSNBCM.AsCurrency := Tonase1/quSNNilai2.AsCurrency;
  end;
end;

procedure TfmOPTrProduksi.quSNNilai2Change(Sender: TField);
var Tonase,Tonase1 : currency;
begin
  inherited;
  if quSNNoUnit.AsString<>'' then
  begin
  Tonase := (quSNQty.AsCurrency*quSNPayload.AsCurrency);
  Tonase1 := Tonase/quSNNilai1.AsCurrency;
  quSNBCM.AsCurrency := Tonase1/quSNNilai2.AsCurrency;
  end;
end;

procedure TfmOPTrProduksi.quSNNilai1Change(Sender: TField);
var Tonase,Tonase1 : currency;
begin
  inherited;
  if quSNNoUnit.AsString<>'' then
  begin
  Tonase := (quSNQty.AsCurrency*quSNPayload.AsCurrency);
  Tonase1 := Tonase/quSNNilai1.AsCurrency;
  quSNBCM.AsCurrency := Tonase1/quSNNilai2.AsCurrency;
  end;
end;

procedure TfmOPTrProduksi.quSNAfterPost(DataSet: TDataSet);
var TotalA : currency;
    numall,fgnum : string;
begin
  inherited;
  NumAll := quSNNumAll.AsString;
  FgNum := quSNFgNum.AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('select ISNULL(SUM(A.Tonase),0) as Total from OPTrProduksiDtSN A Where A.ProdID='''+quMainProdID.AsString+''' '
       +'AND A.NumAll='''+quSNNumAll.AsString+''' ');
    Open;
  end;

  TotalA := quAct.FieldByName('Total').AsCurrency;

  with quAct1,SQL do
  begin
    Close;Clear;
    Add('update OPTrProduksiDt set Jumlah='+CurrToStr(TotalA)+' Where ProdID='''+quMainProdID.AsString+''' '
       +'AND NumAll='''+quSNNumAll.AsString+''' ');
    ExecSQL;
  end;

  qudetil.Requery();
  qudetil.Locate('NumAll',NumAll,[]);
  quSN.Locate('FgNum',FgNum,[]);
end;

procedure TfmOPTrProduksi.quSNAfterDelete(DataSet: TDataSet);
var TotalA : currency;
    numall : string;
begin
  inherited;
  NumAll := quSNNumAll.AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('select ISNULL(SUM(A.Tonase),0) as Total from OPTrProduksiDtSN A Where A.ProdID='''+quMainProdID.AsString+''' '
       +'AND A.NumAll='''+quSNNumAll.AsString+''' ');
    Open;
  end;

  TotalA := quAct.FieldByName('Total').AsCurrency;

  with quAct1,SQL do
  begin
    Close;Clear;
    Add('update OPTrProduksiDt set Jumlah='+CurrToStr(TotalA)+' Where ProdID='''+quMainProdID.AsString+''' '
       +'AND NumAll='''+quSNNumAll.AsString+''' ');
    ExecSQL;
  end;

  qudetil.Requery();
  qudetil.Locate('NumAll',NumAll,[]);
end;

end.
