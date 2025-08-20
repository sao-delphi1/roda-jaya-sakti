unit INTrJadwalDriver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  DBCtrls, dxDBELib, dxEditor, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms;

type
  TfmINTrJadwalDriver = class(TfmStdLv31)
    Label1: TLabel;
    dxDBEdit1: TdxDBEdit;
    Label2: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBPajak: TdxDBImageEdit;
    Label3: TLabel;
    Label4: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    DBText1: TDBText;
    quMainNotaID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSiteID: TStringField;
    quMainActivity: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainNote: TStringField;
    quDetilNotaID: TStringField;
    quDetilNoUnit: TStringField;
    quDetilDriver: TStringField;
    quDetilJamMulai: TDateTimeField;
    quDetilJamSelesai: TDateTimeField;
    quDetilHMAwal: TBCDField;
    quDetilHMAkhir: TBCDField;
    quDetilUnitWH: TBCDField;
    quDetilFgStatus: TStringField;
    quDetilBDTime: TBCDField;
    quDetilBD: TStringField;
    quDetilSTBTime: TBCDField;
    quDetilSTB: TStringField;
    quDetilRESTTime: TBCDField;
    quDetilREST: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    quMainLSite: TStringField;
    dbgPenjualan: TdxDBGrid;
    Label13: TLabel;
    dbgPenjualanColumn1: TdxDBGridColumn;
    dbgPenjualanColumn2: TdxDBGridButtonColumn;
    dbgPenjualanColumn6: TdxDBGridColumn;
    dbgPenjualanColumn7: TdxDBGridColumn;
    dbgPenjualanColumn8: TdxDBGridColumn;
    dbgPenjualanColumn9: TdxDBGridImageColumn;
    dbgPenjualanColumn10: TdxDBGridColumn;
    dbgPenjualanColumn11: TdxDBGridImageColumn;
    dbgPenjualanColumn12: TdxDBGridColumn;
    dbgPenjualanColumn13: TdxDBGridImageColumn;
    dbgPenjualanColumn14: TdxDBGridColumn;
    dbgPenjualanColumn15: TdxDBGridImageColumn;
    dbgPenjualanColumn16: TdxDBGridColumn;
    dbgPenjualanColumn17: TdxDBGridColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dbgPenjualanColumn18: TdxDBGridTimeColumn;
    quDetilBD1: TDateTimeField;
    quDetilBD2: TDateTimeField;
    quDetilBD3: TDateTimeField;
    quDetilBD4: TDateTimeField;
    quDetilSTB1: TDateTimeField;
    quDetilSTB2: TDateTimeField;
    quDetilSTB3: TDateTimeField;
    quDetilSTB4: TDateTimeField;
    quDetilREST1: TDateTimeField;
    quDetilREST2: TDateTimeField;
    quDetilREST3: TDateTimeField;
    quDetilREST4: TDateTimeField;
    dbgPenjualanColumn4: TdxDBGridTimeColumn;
    dbgPenjualanColumn5: TdxDBGridTimeColumn;
    dbgPenjualanColumn20: TdxDBGridTimeColumn;
    dbgPenjualanColumn19: TdxDBGridTimeColumn;
    dbgPenjualanColumn21: TdxDBGridTimeColumn;
    dbgPenjualanColumn22: TdxDBGridTimeColumn;
    dbgPenjualanColumn23: TdxDBGridTimeColumn;
    dbgPenjualanColumn24: TdxDBGridTimeColumn;
    dbgPenjualanColumn25: TdxDBGridTimeColumn;
    dbgPenjualanColumn26: TdxDBGridTimeColumn;
    dbgPenjualanColumn27: TdxDBGridTimeColumn;
    dbgPenjualanColumn28: TdxDBGridTimeColumn;
    dbgPenjualanColumn29: TdxDBGridTimeColumn;
    quDetilLWH: TCurrencyField;
    quDetilLBD: TCurrencyField;
    quDetilLSTB: TCurrencyField;
    quDetilLRest: TCurrencyField;
    dbgPenjualanColumn30: TdxDBGridColumn;
    dbgPenjualanColumn31: TdxDBGridColumn;
    dbgPenjualanColumn32: TdxDBGridColumn;
    dbgPenjualanColumn33: TdxDBGridColumn;
    quDetilLOT: TCurrencyField;
    quDetilPA: TCurrencyField;
    dbgPenjualanColumn34: TdxDBGridColumn;
    dbgPenjualanColumn35: TdxDBGridColumn;
    dbgPenjualanColumn3: TdxDBGridButtonColumn;
    quDetilLSalesName: TStringField;
    quDetilNote: TStringField;
    dbgPenjualanColumn36: TdxDBGridColumn;
    quDetilTypeUnit: TStringField;
    dbgClassUnit: TdxDBGridColumn;
    quDetilLTypeClass: TStringField;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dbgPenjualanColumn2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilNoUnitChange(Sender: TField);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure dbgPenjualanColumn3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgTypeUnitButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure CekHM;
  public
    { Public declarations }
  end;

var
  fmINTrJadwalDriver: TfmINTrJadwalDriver;

implementation

uses UnitGeneral,ConMain,MyUnit,Search,UnitDate,DateUtils, StdLv3;

{$R *.dfm}

procedure TfmINTrJadwalDriver.CekHM;
begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 K.NoUnit,HMAwal,cekAwal,K.NotaID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal FROM ( '
       +'select A.NotaID,B.Transdate,A.NoUnit,A.HMAwal,ISNULL((SELECT TOP 1 X.HMAkhir FROM INTrJadwalDriverDt X '
       +'WHERE X.NoUnit=A.NoUnit AND X.NumAll<A.NumAll order by NumAll DESC),A.HMAwal) as cekAwal '
       +'from INTrJadwalDriverDt A inner join INTrJadwalDriverHd B on A.NotaID=B.NotaID) as K WHERE K.HMAwal<>K.cekAwal ');
    Open;
  end;
  if quAct.RecordCount>0 then
  begin
    ShowMessage(quAct.FieldByName('NotaID').ASString+' tanggal '+quAct.FieldByName('Tanggal').ASString+' terdapat kesalahan '+char(13)
               +'CEK NoUnit '+quAct.FieldByName('NOunit').AsString+' HM Awal tidak valid, HM Akhir sebelumnya '+quAct.FieldBYName('cekAwal').ASString);
    Abort;
  end;
end;

procedure TfmINTrJadwalDriver.dsMainStateChange(Sender: TObject);
begin
  inherited;
  setReadOnly(dxdbedit1,TRUE);
end;

procedure TfmINTrJadwalDriver.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainActivity.AsString := 'BG';
  quMainSiteID.FocusControl;
end;

procedure TfmINTrJadwalDriver.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainTransDate.AsString)='' then
  begin
    ShowMessage('Tanggal Tidak Boleh Kosong!');
    quMainTransDate.FocusControl;
    Abort;
  end;

  if TRIM(quMainSiteID.ASString)='' then
  begin
    ShowMessage('Site Belum Dipilih');
    quMainSiteID.FocusControl;
    Abort;
  end;

  if TRIM(quMainLSite.ASString)='' then
  begin
    Showmessage('Site Tidak Terdaftar');
    quMainSiteID.FocusControl;
    Abort;
  end;

  if quMain.State=dsInsert then
  begin
    ST := KdCab+FormatDateTime('/YYYY/', quMainTransDate.AsDateTime);
    quMainNotaID.ASString  := ST+ FormatFloat('00000', RunNumberGL(quAct, 'INTrJadwalDriverHd', 'NotaID', ST, '0') + 1);
  end;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmINTrJadwalDriver.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select sitename from inmssites WHERE SiteID='''+quMainSiteID.AsString+''' ');
    Open;
  end;
  quMainLSite.ASString := quAct.FieldBYName('SiteName').AsString;
end;

procedure TfmINTrJadwalDriver.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Jadwal Driver';
     SQLString := ' SELECT NotaID as Kode_Transaksi, '
                 +' Convert(Varchar(10),Transdate,103) as Tgl_Transaksi, '
                 +' B.SiteName as Site, '
                 //+' CASE WHEN A.Activity=''BG'' THEN ''BARGING'' '
                 //+'      WHEN A.Activity=''PR'' THEN ''PRODUKSI'' '
                 //+'      WHEN A.Activity=''HA'' THEN ''HAULING'' '
                 //+'      WHEN A.Activity=''RT'' THEN ''RENTAL '' ELSE ''OTHERS'' END as Activity, '
                 +' Note as Keterangan '
                 +' FROM INTrJadwalDriverHD A inner join inmssites B on A.siteID=B.SiteID '
                 +' WHERE '+FSQLWhere
                 +' ORDER BY TransDate ';
     if ShowModal = MrOK then
     begin
       qumain.Locate('NotaID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmINTrJadwalDriver.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), NotaID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbgPenjualan);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
end;

procedure TfmINTrJadwalDriver.TmbBrgClick(Sender: TObject);
begin
  inherited;
    if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmINTrJadwalDriver.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmINTrJadwalDriver.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmINTrJadwalDriver.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmINTrJadwalDriver.dbgPenjualanColumn2ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
   try
      Title := 'Pilih Nomor Unit';
      SQLString := 'SELECT NoUnit, Description,TypeClassUnit FROM INMsNoUnit WHERE FgActive=''Y'' ORDER BY NoUnit';
      if ShowModal = MrOK then
      begin
         if qudetil.State = dsBrowse then qudetil.Edit;
         quDetilNoUnit.Value := Res[0];
         quDetilLTypeClass.Value := Res[2];
      end;
   finally
      free;
   end;
end;

procedure TfmINTrJadwalDriver.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Site';
     SQLString := 'SELECT SiteName as Nama_Site,SiteID as Kode_Site '
                 +'FROM INMsSites ORDER BY SiteName';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
        quMainSiteID.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmINTrJadwalDriver.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilJamMulai.AsDateTime := GetServerTime;
  quDetilJamSelesai.AsDateTime := GetServerTime;
  quDetilHMAwal.AsCurrency := 0;
  quDetilHMAkhir.AsCurrency := 0;
  quDetilBDTime.AsCurrency := 0;
  quDetilSTBTime.AsCurrency := 0;
end;

procedure TfmINTrJadwalDriver.quDetilNoUnitChange(Sender: TField);
begin
  inherited;
 { with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 ISNULL(HMAkhir,0) as HMAkhir FROM INTrJadwalDriverDT Where Nounit='''+quDetilNoUnit.ASString+''' AND NumAll<>'''+quDetilNumAll.ASString+''' order by NUmAll DESC');
    showmessage(sql.text);
    Open;
  end;
  if quAct.RecordCount=0 then
  begin
    quDetilHMAwal.AsCurrency := 0;
    quDetilHMAkhir.AsCurrency := 0;
  end else
  begin
    quDetilHMAwal.AsCurrency := quAct.FieldByName('HMAkhir').AsCurrency;
    quDetilHMAkhir.AsCurrency := quAct.FieldByName('HMAkhir').AsCurrency;
  end;    }
end;

procedure TfmINTrJadwalDriver.quDetilCalcFields(DataSet: TDataSet);
var atas,bawah :currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT NoUnit, Description,TypeClassUnit FROM INMsNoUnit WHERE FgActive=''Y'' AND NoUnit='''+quDetilNoUnit.AsString+''' ORDER BY NoUnit  ');
    Open;
  end;
  quDetilLTypeClass.ASString := quAct.FieldBYName('TypeClassUnit').AsString;

  quDetilLWH.AsCurrency := quDetilHMAkhir.AsCurrency-quDetilHMAwal.AsCurrency;
  //quDetilLBD.AsCurrency := (secondsbetween(quDetilBD1.AsDateTime,quDetilBD2.AsDateTime)/3600)+(secondsbetween(quDetilBD3.AsDateTime,quDetilBD4.AsDateTime)/3600);
  //quDetilLSTB.AsCurrency := (secondsbetween(quDetilSTB1.AsDateTime,quDetilSTB2.AsDateTime)/3600)+(secondsbetween(quDetilSTB3.AsDateTime,quDetilSTB4.AsDateTime)/3600);
  //quDetilLRest.AsCurrency := (secondsbetween(quDetilREST1.AsDateTime,quDetilREST2.AsDateTime)/3600)+(secondsbetween(quDetilREST3.AsDateTime,quDetilREST4.AsDateTime)/3600);
  //quDetilLOT.AsCurrency := (secondsbetween(quDetilJamMulai.AsDateTime,quDetilJamSelesai.AsDateTime)/3600)-quDetilLBD.AsCurrency-quDetilLSTB.AsCurrency-quDetilLRest.AsCurrency;
  //atas := ((secondsbetween(quDetilJamMulai.AsDateTime,quDetilJamSelesai.AsDateTime)/3600)-quDetilLBD.AsCurrency-quDetilLRest.AsCurrency);
  //bawah := ((secondsbetween(quDetilJamMulai.AsDateTime,quDetilJamSelesai.AsDateTime)/3600)-quDetilLRest.AsCurrency);
  //if bawah=0 then bawah := 1;
  //qudetilPA.AsCurrency := atas/bawah*100;

  atas := (quDetilLWH.AsCurrency+quDetilSTBTime.AsCurrency);
  bawah := (quDetilLWH.AsCurrency+quDetilSTBTime.AsCurrency+quDetilBDTime.AsCurrency);
  if bawah=0 then bawah := 1;
  if (quDetilNoUnit.AsString<>'') then
  qudetilPA.AsCurrency := atas/bawah*100;

  with quAct, SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROM ARMsSales WHERE SalesID='''+quDetilDriver.AsString+''' ');
    Open;
  end;
  quDetilLSalesName.AsString := quAct.FieldByName('SalesName').AsString;
end;

procedure TfmINTrJadwalDriver.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPenjualanColumn2,qudetil.state<>dsInsert);
  SetReadOnly(dbgClassUnit,qudetil.state<>dsInsert);
  SetReadOnly(dbgPenjualanColumn8,TRUE);
  SetReadOnly(dbgPenjualanColumn30,TRUE);
  SetReadOnly(dbgPenjualanColumn31,TRUE);
  SetReadOnly(dbgPenjualanColumn32,TRUE);
  SetReadOnly(dbgPenjualanColumn33,TRUE);
  SetReadOnly(dbgPenjualanColumn34,TRUE);
end;

procedure TfmINTrJadwalDriver.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  {
  if TRIM(qudetilBD1.AsString)<>'' then
  begin
    if TRIM(qudetilBD2.AsString)='' then
    begin
      ShowMessage('BD2 harus diisi');
      qudetilBD2.FocusControl;
      Abort;
    end;
  end;

  if TRIM(qudetilBD2.AsString)<>'' then
  begin
    if TRIM(qudetilBD1.AsString)='' then
    begin
      ShowMessage('BD1 harus diisi');
      qudetilBD1.FocusControl;
      Abort;
    end;
  end;

  if TRIM(qudetilBD3.AsString)<>'' then
  begin
    if TRIM(qudetilBD4.AsString)='' then
    begin
      ShowMessage('BD4 harus diisi');
      qudetilBD4.FocusControl;
      Abort;
    end;
  end;

  if TRIM(qudetilBD4.AsString)<>'' then
  begin
    if TRIM(qudetilBD3.AsString)='' then
    begin
      ShowMessage('BD3 harus diisi');
      qudetilBD3.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilSTB1.AsString)<>'' then
  begin
    if TRIM(quDetilSTB2.AsString)='' then
    begin
      ShowMessage('STB2 harus diisi');
      quDetilSTB2.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilSTB2.AsString)<>'' then
  begin
    if TRIM(quDetilSTB1.AsString)='' then
    begin
      ShowMessage('STB1 harus diisi');
      quDetilSTB1.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilSTB3.AsString)<>'' then
  begin
    if TRIM(quDetilSTB4.AsString)='' then
    begin
      ShowMessage('STB4 harus diisi');
      quDetilSTB4.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilSTB4.AsString)<>'' then
  begin
    if TRIM(quDetilSTB3.AsString)='' then
    begin
      ShowMessage('STB3 harus diisi');
      quDetilSTB3.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilREST1.AsString)<>'' then
  begin
    if TRIM(quDetilREST2.AsString)='' then
    begin
      ShowMessage('REST2 harus diisi');
      quDetilREST2.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilREST2.AsString)<>'' then
  begin
    if TRIM(quDetilREST1.AsString)='' then
    begin
      ShowMessage('REST1 harus diisi');
      quDetilREST1.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilREST3.AsString)<>'' then
  begin
    if TRIM(quDetilREST4.AsString)='' then
    begin
      ShowMessage('REST4 harus diisi');
      quDetilREST4.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quDetilREST4.AsString)<>'' then
  begin
    if TRIM(quDetilREST3.AsString)='' then
    begin
      ShowMessage('REST3 harus diisi');
      quDetilREST3.FocusControl;
      Abort;
    end;
  end;

  if quDetilJamMulai.AsDateTime>quDetilJamSelesai.AsDateTime then
  begin
    ShowMessage('Jam Mulai tidak bisa lebih besar dari jam selesai');
    quDetilJamMulai.FocusControl;
    Abort;
  end;

  if quDetilJamMulai.AsDateTime>quDetilJamSelesai.AsDateTime then
  begin
    ShowMessage('Jam Mulai tidak bisa lebih besar dari jam selesai');
    quDetilJamMulai.FocusControl;
    Abort;
  end;     }

  if quDetilHMAwal.AsCurrency>quDetilHMAkhir.AsCurrency then
  begin
    ShowMessage('HM Awal tidak bisa lebih besar dari HM Akhir');
    quDetilHMAwal.FocusControl;
    Abort;
  end;
  {
  if TRIM(quDetilJamMulai.AsString)='' then
  begin
    ShowMessage('Jam Mulai harus diisi');
    quDetilJamMulai.FocusControl;
    Abort;
  end;

  if TRIM(quDetilJamSelesai.AsString)='' then
  begin
    ShowMessage('Jam Selesai harus diisi');
    quDetilJamSelesai.FocusControl;
    Abort;
  end;   }

  if TRIM(quDetilHMAwal.AsString)='' then
  begin
    ShowMessage('HM Awal harus diisi');
    quDetilHMAwal.FocusControl;
    Abort;
  end;

  if TRIM(quDetilHMAkhir.AsString)='' then
  begin
    ShowMessage('HM Akhir harus diisi');
    quDetilHMAkhir.FocusControl;
    Abort;
  end;
  {
  if (quDetilBD1.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(quDetilBD1.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    qudetilBD1.FocusControl;
    Abort;
  end;

  if (quDetilBD2.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(quDetilBD2.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilBD2.FocusControl;
    Abort;
  end;

  if (quDetilBD3.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(quDetilBD3.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilBD3.FocusControl;
    Abort;
  end;

  if (quDetilBD4.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(quDetilBD4.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilBD4.FocusControl;
    Abort;
  end;

  if (quDetilSTB4.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(qudetilSTB4.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilSTB4.FocusControl;
    Abort;
  end;

  if (quDetilSTB3.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(qudetilSTB3.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilSTB3.FocusControl;
    Abort;
  end;

  if (quDetilSTB2.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(qudetilSTB2.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilSTB2.FocusControl;
    Abort;
  end;

  if (quDetilSTB1.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(qudetilSTB1.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilSTB1.FocusControl;
    Abort;
  end;

  if (quDetilREST1.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(quDetilREST1.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilREST1.FocusControl;
    Abort;
  end;

  if (quDetilREST2.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(quDetilREST2.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilREST2.FocusControl;
    Abort;
  end;

  if (quDetilREST3.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(quDetilREST3.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilREST3.FocusControl;
    Abort;
  end;

  if (quDetilREST4.AsDateTime<quDetilJamMulai.AsDateTime) AND (TRIM(quDetilREST4.AsString)<>'') then
  begin
    ShowMessage('Jam Mulai Unit dari '+FormatDatetime('HH:MM',quDetilJamMulai.AsDateTime)+'. Periksa Inputan');
    quDetilREST4.FocusControl;
    Abort;
  end;

  if (quDetilBD1.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilBD1.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    qudetilBD1.FocusControl;
    Abort;
  end;

  if (quDetilBD2.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilBD2.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilBD2.FocusControl;
    Abort;
  end;

  if (quDetilBD3.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilBD3.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilBD3.FocusControl;
    Abort;
  end;

  if (quDetilBD4.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilBD4.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilBD4.FocusControl;
    Abort;
  end;

  if (quDetilSTB4.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilSTB4.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilSTB4.FocusControl;
    Abort;
  end;

  if (quDetilSTB3.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilSTB3.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilSTB3.FocusControl;
    Abort;
  end;

  if (quDetilSTB2.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilSTB2.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilSTB2.FocusControl;
    Abort;
  end;

  if (quDetilSTB1.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilSTB1.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilSTB1.FocusControl;
    Abort;
  end;

  if (quDetilREST1.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilREST1.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilREST1.FocusControl;
    Abort;
  end;

  if (quDetilREST2.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilREST2.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilREST2.FocusControl;
    Abort;
  end;

  if (quDetilREST3.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilREST3.AsString)<>'') then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilREST3.FocusControl;
    Abort;
  end;

  if (quDetilREST4.AsDateTime>quDetilJamSelesai.AsDateTime) AND (TRIM(quDetilREST4.AsString)<>'')  then
  begin
    ShowMessage('Jam Selesai Unit dari '+FormatDatetime('HH:MM',quDetilJamSelesai.AsDateTime)+'. Periksa Inputan');
    quDetilREST4.FocusControl;
    Abort;
  end;
   }
 { if ROUND(quDetilLWH.AsCurrency)-ROUND(quDetilBD.AsCurrency)-ROUND(quDetilLOT.AsCurrency)<>0 then
  begin
    ShowMessage('Total HM tidak sama dengan Total Operational Unit');
    quDetilHMAkhir.FocusControl;
    Abort;
  end;  }

 { if (GroupUser)<>'Admin' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 ISNULL(HMAkhir,0) as HMAkhir FROM INTrJadwalDriverDT Where Nounit='''+quDetilNoUnit.ASString+''' AND NumAll<'''+quDetilNumAll.ASString+''' order by NUmAll DESC');
    Open;
  end;
  if (quAct.FieldBYName('HMAkhir').AsCurrency<>quDetilHMAwal.AsCurrency) and (quact.fieldbyname('HMakhir').AsCurrency<>0) then
  begin
    ShowMessage('HM Awal tidak sama dengan HM terakhir');
    quDetilHMAwal.FocusControl;
    Abort;
  end;
  end;  }

  if TRIM(quDetilBDTime.AsString)='' then
  begin
    ShowMessage('Breakdown Time harus diisi');
    quDetilBDTime.FocusControl;
    Abort;
  end;

  if TRIM(quDetilSTBTime.AsString)='' then
  begin
    ShowMessage('Stand By Time harus diisi');
    quDetilSTBTime.FocusControl;
    Abort;
  end;

  if quDetilSTBTime.AsCurrency<0 then
  begin
    ShowMessage('Stand By Time tidak boleh dibawah 0');
    quDetilSTBTime.FocusControl;
    Abort;
  end;

  if quDetilBDTime.AsCurrency<0 then
  begin
    ShowMessage('Breakdown Time tidak boleh dibawah 0');
    quDetilBDTime.FocusControl;
    Abort;
  end;

  if quDetilBDTime.AsCurrency+quDetilSTBTime.AsCurrency+quDetilLWH.AsCurrency>24 then
  begin
    ShowMessage('Breakdown+StandBy tidak boleh lebih besar dari 24 jam');
    Abort;
  end;

  quDetilUpdDate.AsDateTime := GetServerDateTime;
  quDetilUpdUser.AsString := dmMain.UserId;
end;

procedure TfmINTrJadwalDriver.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CekHM;
end;

procedure TfmINTrJadwalDriver.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT NoUnit FROM INTrJadwalDriverDt Where Nounit='''+quDetilNoUnit.AsString+''' AND NumAll>'+quDetilNumAll.ASString+' ');
    Open;
  end;
  if quact.RecordCount>0 then
  begin
    ShowMessage('Sudah ada data setelah data ini, tidak bisa hapus');
    Abort;
  end;
end;

procedure TfmINTrJadwalDriver.dbgPenjualanColumn3ButtonClick(
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
       if qudetil.State = dsBrowse then qudetil.Edit;
       quDetilDriver.AsString := Res[1];
    end;
  finally
    free;
  end;
end;

procedure TfmINTrJadwalDriver.dbgTypeUnitButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
   try
      Title := 'Pilih Type Unit';
      SQLString := 'SELECT TypeUnit, Description FROM INMsTypeUnit ORDER BY TypeUnit';
      if ShowModal = MrOK then
      begin
         if qudetil.State = dsBrowse then qudetil.Edit;
         quDetilTypeUnit.Value := Res[0];
      end;
   finally
      free;
   end;
end;

end.
