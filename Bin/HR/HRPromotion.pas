unit HRPromotion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, DBCtrls;

type
  TfmHRPromotion = class(TfmStdLv31)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    quMainReffID: TStringField;
    quMainSalesID: TStringField;
    quMainJabAwal: TStringField;
    quMainJabAkhir: TStringField;
    quMainLokAwal: TStringField;
    quMainLokAkhir: TStringField;
    quMainDepAwal: TStringField;
    quMainDepAkhir: TStringField;
    quMainupddate: TDateTimeField;
    quMainupduser: TStringField;
    quMainTransDate: TDateTimeField;
    Label4: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    Label5: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Label6: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    Label7: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label8: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label9: TLabel;
    dxDBEdit4: TdxDBEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    quMainLNama: TStringField;
    DBText2: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    quMainLLokAwal: TStringField;
    quMainLLokAkhir: TStringField;
    quMainLDepAwal: TStringField;
    quMainLDepAkhir: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    StatusBuat : string;
  end;

var
  fmHRPromotion: TfmHRPromotion;

implementation

{$R *.dfm}
uses UnitGeneral, MyUnit, UnitDate, Search, ConMain;

procedure TfmHRPromotion.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), ReffID';
  FFieldTgl   := 'TransDate';
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmHRPromotion.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Master Karyawan';
    SQLString := 'SELECT SalesName as Nama_Karyawan,SalesID as Kode_Karyawan,Jabatan,NIK,Location,department '
                +'FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesName';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainSalesID.AsString := Res[1];
       quMainLokAwal.ASString := Res[4];
       quMainDepAwal.ASString := res[5];
       quMainJabAwal.ASString := res[2];
       quMainLokAkhir.ASString := Res[4];
       quMainDepAkhir.ASString := res[5];
       quMainJabAkhir.ASString := res[2];
    end;
  finally
    free;
  end;
end;

procedure TfmHRPromotion.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName+'' - ''+NIK as Nama FROM ARMsSales WHERE SalesID='''+quMainSalesID.ASString+''' ');
    Open;
  end;
  quMainLNama.ASString := quAct.FieldByName('Nama').ASString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SiteName FROM INMsSites WHERE SiteID='''+quMainLokAwal.ASString+''' ');
    Open;
  end;
  quMainLLokAwal.ASString := quAct.FieldByName('SiteName').ASString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SiteName FROM INMsSites WHERE SiteID='''+quMainLokAkhir.ASString+''' ');
    Open;
  end;
  quMainLLokAkhir.ASString := quAct.FieldByName('SiteName').ASString;

  with quAct, sql do
  begin
    Close;Clear;
    Add('Select DivisiName as NmMaster From INMsDivisi Where DivisiID='''+quMainDepAwal.AsString+''' ');
    Open;
  end;
  quMainLDepAwal.AsString := quAct.FieldByName('NmMaster').AsString;

  with quAct, sql do
  begin
    Close;Clear;
    Add('Select DivisiName as NmMaster From INMsDivisi Where DivisiID='''+quMainDepAkhir.AsString+''' ');
    Open;
  end;
  quMainLDepAkhir.AsString := quAct.FieldByName('NmMaster').AsString;
end;

procedure TfmHRPromotion.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainLokAkhir.FocusControl;
end;

procedure TfmHRPromotion.dxDBButtonEdit2ButtonClick(Sender: TObject;
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
           quMainLokAkhir.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmHRPromotion.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Department';
       SQLString := 'SELECT DivisiName as Department, DivisiID as Kode_Department FROM INMsDivisi ORDER BY DivisiName';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainDepAkhir.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmHRPromotion.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Jabatan';
       SQLString := 'SELECT Jabatan'
                   +' FROM ARMsJabatan'
                   +' ORDER BY Jabatan';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainJabAkhir.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmHRPromotion.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if (quMainDepAwal.ASString=quMainDepAkhir.ASString) AND
     (quMainLokAwal.ASString=quMainLokAkhir.ASString) AND
     (quMainJabAwal.AsString=quMainJabAkhir.ASString) then
  begin
    MsgInfo('Tidak Ada Perubahan. Transaksi dibatalkan');
    Abort;
  end;

  If TRIM(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If TRIM(quMainSalesID.AsString)='' then
  Begin
    MsgInfo('Kode Karyawan tidak boleh kosong');
    quMainSalesID.FocusControl;
    Abort;
  End;

  If TRIM(quMainLNama.AsString)='' then
  Begin
    MsgInfo('Kode Karyawan tidak ada dalam Master');
    quMainSalesID.FocusControl;
    Abort;
  End;

  If TRIM(quMainLokAkhir.AsString)='' then
  Begin
    MsgInfo('Lokasi Baru tidak boleh kosong');
    quMainLokAkhir.FocusControl;
    Abort;
  End;

  If TRIM(quMainLLokAkhir.AsString)='' then
  Begin
    MsgInfo('Lokasi Baru tidak ada dalam Master');
    quMainLokAkhir.FocusControl;
    Abort;
  End;

  If TRIM(quMainDepAkhir.AsString)='' then
  Begin
    MsgInfo('Department Baru tidak boleh kosong');
    quMainDepAkhir.FocusControl;
    Abort;
  End;

  If TRIM(quMainLDepAkhir.AsString)='' then
  Begin
    MsgInfo('Departemen Baru tidak ada dalam Master');
    quMainDepAkhir.FocusControl;
    Abort;
  End;

  if quMain.State=dsInsert then
  begin
    With quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT TOP 1 * FROM HRPromotion WHERE SalesID='''+quMainSalesID.ASString+''' '
        +'AND convert(varchar(10),TransDate,112)>='''+FormatDateTime('yyyymmdd',quMainTransDate.AsDateTime)+''' ');
      Open;
    end;
    if not quAct.IsEmpty then
    begin
      ShowMessage('Sudah Ada Promosi Terbaru. Transaksi dibatalkan ');
      Abort;
    end else
    begin
      StatusBuat := 'OK';
    end;
  end;

  if quMain.State = dsInsert then
  Begin
    ST := 'HR-NOTE/'+FormatDateTime('YY',quMainTransDate.AsDateTime)+'/';
    quMainReffID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'HRPromotion', 'ReffID', ST, '0') + 1);
  End;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmHRPromotion.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit2,TRUE);
  SetReadOnly(dxDBEdit3,TRUE);
  SetReadOnly(dxDBEdit4,TRUE);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit3,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit4,quMain.State<>dsInsert);
end;

procedure TfmHRPromotion.bbFindClick(Sender: TObject);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Data';
       SQLString := 'SELECT CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal, '
                   +'D.SalesName as Nama_Karyawan,D.NIK,'
                   +'B.SiteName as Lokasi_Awal,C.SiteName as Lokasi_Akhir, '
                   +'E.DivisiName as Dep_Awal,F.DivisiName as Dep_Akhir,A.JabAwal,A.JabAkhir '
                   +'FROM HRPromotion A '
                   +'LEFT JOIN INMsSites B on A.LokAwal=B.SiteID '
                   +'LEFT JOIN INMsSites C on A.LokAkhir=C.SiteID '
                   +'LEFT JOIN ARMsSales D on A.SalesID=D.SalesID '
                   +'LEFT JOIN INMsDivisi E on A.DepAwal=E.DivisiID '
                   +'LEFT JOIN INMsDivisi F on A.DepAkhir=F.DivisiID '
                   +'WHERE '+FSQLWhere
                   +' ORDER BY Transdate ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('SalesID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmHRPromotion.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  if StatusBuat='OK' then
  begin
  
    with quAct, SQL do
    begin
      Close;Clear;
      Add('UPDATE ARMsSales SET jabatan='''+quMainJabAkhir.ASString+''',department='''+quMainDepAkhir.ASString+''','
         +'Location='''+quMainLokAkhir.ASString+''' Where salesid='''+quMainSalesID.ASString+''' ');
      ExecSQL;
    end;

  end;
end;

procedure TfmHRPromotion.quMainBeforeDelete(DataSet: TDataSet);
var Lok,Dep,Jab : string;
begin
  inherited;


    With quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT TOP 1 * FROM HRPromotion WHERE SalesID='''+quMainSalesID.ASString+''' and reffid<>'''+quMainReffid.asstring+''' '
        +'AND convert(varchar(10),TransDate,112)>='''+FormatDateTime('yyyymmdd',quMainTransDate.AsDateTime)+''' order by transdate desc');
      Open;
    end;
    if quAct.RecordCount<>0 then
    begin
      ShowMessage('Sudah Ada Transaksi terbaru. Transaksi dibatalkan ');
      Abort;
    end;

    With quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT TOP 1 LokAkhir,DepAkhir,JabAkhir FROM HRPromotion WHERE SalesID='''+quMainSalesID.ASString+''' '
        +'AND convert(varchar(10),TransDate,112)<='''+FormatDateTime('yyyymmdd',quMainTransDate.AsDateTime)+''' order by transdate desc');
      Open;
    end;
    Lok := quAct.FieldBYName('LokAkhir').ASString;
    Dep := quAct.FieldByName('DepAkhir').AsString;
    Jab := quact.FieldByName('JabAkhir').AsString;

    if quAct.RecordCount=0 then
    begin
      ShowMessage('Tidak Ada Transaksi sebelumnya. Transaksi dibatalkan ');
      Abort;
    end else
    begin
      StatusBuat := 'DEL';
    end;



    with quAct, SQL do
    begin
      Close;Clear;
      Add('update armssales set location='''+lok+''',department='''+dep+''',jabatan='''+jab+''' where salesid='''+quMainSalesID.ASString+''' ');
      ExecSQL;
    end;

end;

end.
