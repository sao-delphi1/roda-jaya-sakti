unit OPWorkUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, DBCtrls, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmOPWorkUnit = class(TfmStdLv31)
    quMainTSID: TStringField;
    quMainTransdate: TDateTimeField;
    quMainNote: TStringField;
    quMainSiteID: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilTSID: TStringField;
    quDetilNumAll: TIntegerField;
    quDetilNoUnit: TStringField;
    quDetilSalesID: TStringField;
    quDetilJumlah: TBCDField;
    quDetilTonase: TBCDField;
    quDetilJamMasuk: TDateTimeField;
    quDetilJamKeluar: TDateTimeField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilNote: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    dbgPenjualan: TdxDBGrid;
    Label13: TLabel;
    dbgTSID: TdxDBGridColumn;
    dbgNumAll: TdxDBGridButtonColumn;
    dbgSalesID: TdxDBGridButtonColumn;
    dbgJumlah: TdxDBGridColumn;
    dbgTonase: TdxDBGridColumn;
    dbgJamMasuk: TdxDBGridTimeColumn;
    dbgJamKeluar: TdxDBGridTimeColumn;
    dbgUpdDate: TdxDBGridColumn;
    dbgUpdUser: TdxDBGridColumn;
    DBText1: TDBText;
    quMainLSite: TStringField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dbgNote: TdxDBGridBlobColumn;
    dbgNoUnit: TdxDBGridButtonColumn;
    dxButton1: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dbgSalesIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgNoUnitButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPWorkUnit: TfmOPWorkUnit;

implementation


uses UnitGeneral,ConMain,MyUnit,Search,UnitDate,DateUtils,StdLv3;

{$R *.dfm}

procedure TfmOPWorkUnit.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), TSID';
  FFieldTgl   := 'TransDate';
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
end;

procedure TfmOPWorkUnit.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxdbedit1,TRUE);
end;

procedure TfmOPWorkUnit.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransdate.AsDateTime:= Date;
  quMainSiteID.FocusControl;
end;

procedure TfmOPWorkUnit.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM (quMainTransdate.AsString)='' then
  begin
  ShowMessage('Tanggal Tidak Boleh Kosong');
  quMainTransdate.FocusControl;
  abort;
  end;

  If TRIM (quMainSiteID.AsString)='' then
  begin
  ShowMessage('Site ID tidak boleh kosong');
  quMainSiteId.FocusControl;
  abort;
  end;

  if TRIM(quMainLSite.ASString)='' then
  begin
    Showmessage('Site Tidak Terdaftar');
    quMainSiteID.FocusControl;
    Abort;
  end;
  
  if quMain.State=dsInsert then
  begin
    ST := 'TS/'+KdCab+FormatDateTime('/YYYY/', quMainTransDate.AsDateTime);
    quMainTSID.ASString  := ST+ FormatFloat('00000', RunNumberGL(quAct, 'OPWorkUnitHd', 'TSID', ST, '0') + 1);
  end;
  quMainUpdDate.AsDateTime := GetServerDateTime;
  qumainupduser.AsString := dmmain.UserId;
  end;

procedure TfmOPWorkUnit.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmOPWorkUnit.quMainCalcFields(DataSet: TDataSet);
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

procedure TfmOPWorkUnit.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmOPWorkUnit.KrgBrgClick(Sender: TObject);
begin
  inherited;
   if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmOPWorkUnit.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmOPWorkUnit.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmOPWorkUnit.dbgSalesIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
  try
     Title := 'Cari No Sales';
     SQLString := 'select SalesID as ID_Sales, SalesName as Nama_Sales from ARMsSales order by ID_Sales';
     if ShowModal = MrOK then
     begin
        if quDetil.State = dsBrowse then quDetil.Edit;
        quDetilSalesID.Value := Res[0];
     end;
  finally
     free;
  end;
end;

procedure TfmOPWorkUnit.dbgNoUnitButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with Tfmsearch.create(self) do
  try
     Title := 'Cari No Unit';
     SQLString := 'select NoUnit from InmsNoUnit';
     if ShowModal = MrOK then
     begin
       if quDetil.State = dsBrowse then quMain.Edit;
        quDetilNoUnit.Value := Res[0];
     end;
  finally
     free;
  end;
   {with TfmSearch.Create(Self) do
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
  end;}
end;

procedure TfmOPWorkUnit.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  //SetReadOnly(dbgNoUnit,TRUE);
 // SetReadOnly(dbgSalesID,TRUE);
end;

procedure TfmOPWorkUnit.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
   if TRIM(quDetilJumlah.AsString)='' then
   begin
   ShowMessage('Jumlah tidak boleh kosong');
   quDetilJumlah.FocusControl;
   abort;
   end;

   if quDetilJumlah.value<=0 then
   begin
   ShowMessage('Jumlah tidak boleh kurang dari 1');
   quDetilJumlah.FocusControl;
   abort;
   end;

   if TRIM(quDetilTonase.AsString)='' then
   begin
   ShowMessage('Tonase tidak boleh kosong');
   quDetilTonase.FocusControl;
   abort;
   end;

   if quDetilTonase.value<=0 then
   begin
   ShowMessage('Tonase tidak boleh kurang dari 1');
   quDetilTonase.FocusControl;
   abort;
   end;

   if TRIM(quDetilSalesID.AsString)='' then
   begin
   ShowMessage('Sales ID tidak boleh kosong');
   quDetilSalesID.FocusControl;
   abort;
   end;

   if TRIM(quDetilNoUnit.AsString)='' then
   begin
   ShowMessage('No Unit tidak boleh kosong');
   quDetilNoUnit.FocusControl;
   abort;
   end;

   if TRIM(quDetilJamMasuk.AsString)='' then
   begin
   ShowMessage('Jam Masuk tidak boleh kosong');
   quDetilJamMasuk.FocusControl;
   abort;
   end;

   if TRIM(quDetilJamKeluar.AsString)='' then
   begin
   ShowMessage('Jam Keluar tidak boleh kosong');
   quDetilJamKeluar.FocusControl;
   abort;
   end;

   {if quDetilJamMasuk.Value>quDetilJamKeluar.Value then
   begin
   ShowMessage('Jam masuk tidak boleh lebih kecil dari Jam keluar');
   qudetiljammasuk.FocusControl;
   abort;
   end;   }
   quDetilUpdDate.AsDateTime := GetServerDateTime;
   quDetilUpdUser.AsString := dmmain.UserId;
end;

procedure TfmOPWorkUnit.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  qudetiljumlah.AsInteger:= 1;
  quDetilTonase.AsInteger:= 1;
  quDetilJamMasuk.AsCurrency:= 00.00;
  quDetilJamKeluar.AsCurrency:= 00.00;
end;

end.
