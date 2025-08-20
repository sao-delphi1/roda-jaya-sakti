unit MTMutasiUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxDBELib, dxEditor, DBCtrls;

type
  TfmMTMutasiUnit = class(TfmStdLv31)
    quMainNotaID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainKepada: TStringField;
    quMainKeterangan: TStringField;
    quMainKdCab: TStringField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainLokasi: TStringField;
    quDetilNotaID: TStringField;
    quDetilNoUnit: TStringField;
    quDetilHM: TStringField;
    quDetilUpdUser: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilNumAll: TAutoIncField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtKonInvPelID: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    txtPelangganID: TdxDBButtonEdit;
    Label4: TLabel;
    dxDBEdit1: TdxDBEdit;
    Label5: TLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridButtonColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    quMainLLokasi: TStringField;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBText3: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    DBText1: TDBText;
    quDetilLNoUnit: TStringField;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    KrgBrg: TdxButton;
    TmbBrg: TdxButton;
    dxButton6: TdxButton;
    quMainKota: TStringField;
    Label6: TLabel;
    dxDBEdit3: TdxDBEdit;
    quMainAsal: TStringField;
    dxDBImageEdit5: TdxDBImageEdit;
    quMaincompany: TStringField;
    Label7: TLabel;
    Label9: TLabel;
    DBText2: TDBText;
    dxDBButtonEdit1: TdxDBButtonEdit;
    quMainLAsal: TStringField;
    procedure FormShow(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBGrid1Column2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure txtPelangganIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton6Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  fmMTMutasiUnit: TfmMTMutasiUnit;

implementation

uses UnitGeneral, MYUnit, ConMain, Search, MTSuratJalan, RptLv0;

{$R *.dfm}

procedure TfmMTMutasiUnit.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), NotaID';
  FFieldTgl   := 'TransDate';
  FAfterWhere:=' AND KdCab='''+KdCab+''' ';
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
end;

procedure TfmMTMutasiUnit.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainKepada.FocusControl;
  quMainKdCab.AsString := KdCab;
end;

procedure TfmMTMutasiUnit.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if Trim(quMainKepada.AsString)='' then
  begin
    MsgInfo('Kepada tidak boleh kosong');
    quMainKepada.FocusControl;
    Abort;
  End;

  if Trim(quMainKepada.AsString)='' then
  begin
    MsgInfo('Kota tidak boleh kosong');
    quMainKota.FocusControl;
    Abort;
  End;

  if Trim(quMainLokasi.AsString)='' then
  begin
    MsgInfo('Lokasi tidak boleh kosong');
    quMainLokasi.FocusControl;
    Abort;
  End;

  if Trim(quMainLLokasi.AsString)='' then
  begin
    MsgInfo('Lokasi tidak ada dalam master');
    quMainLokasi.FocusControl;
    Abort;
  End;

  if quMain.State=dsInsert then
  begin
    ST := KdCab+'/RJS-MUTASI'+FormatDateTime('/YYYY/', quMainTransDate.AsDateTime);
    quMainNotaID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'MTMutasiUnitHd', 'NotaID', ST, '0') + 1);
  end;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmMTMutasiUnit.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select Warehousename from inmswarehouse where warehouseid='''+quMainLokasi.AsString+''' ');
    Open;
  end;
  quMainLLokasi.ASString := quAct.FieldBYName('WarehouseName').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select Warehousename from inmswarehouse where warehouseid='''+quMainAsal.AsString+''' ');
    Open;
  end;
  quMainLAsal.ASString := quAct.FieldBYName('WarehouseName').AsString;
end;

procedure TfmMTMutasiUnit.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(txtKonInvPelID,TRUE);
end;

procedure TfmMTMutasiUnit.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select Description from inmsnounit where nounit='''+quDetilNoUnit.AsString+''' ');
    Open;
  end;
  qudetilLNoUnit.ASString := quAct.FieldBYName('Description').AsString;
end;

procedure TfmMTMutasiUnit.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Pilih Nota Surat Jalan';
     SQLString := 'SELECT A.NotaID as SuratJalan,CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,A.Kepada,A.Lokasi FROM MTMutasiUnitHd A '
                 +'WHERE '+FSQLWhere
                 +' AND KdCab='''+KdCab+''' '
                 +' ORDER BY A.Transdate ';

     if ShowModal = MrOK then
     begin
       quMain.Locate('NotaID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmMTMutasiUnit.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column4,TRUE);
end;

procedure TfmMTMutasiUnit.dxDBGrid1Column2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Pilih Nomor Unit';
    SQLString := 'SELECT NoUnit, Description FROM INMsNoUnit where fgactive=''Y'' ORDER BY NoUnit';
    if ShowModal = MrOK then
    begin
       if qudetil.State = dsBrowse then qudetil.Edit;
       quDetilNoUnit.Value := Res[0];
    end;
  finally
    free;
  end;
end;

procedure TfmMTMutasiUnit.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quDetilNoUnit.AsString)='' then
  begin
    MsgInfo('No Unit tidak boleh kosong');
    quDetilNoUnit.FocusControl;
    Abort;
  End;

  if Trim(quDetilHM.AsString)='' then
  begin
    MsgInfo('HM tidak boleh kosong');
    quDetilHM.FocusControl;
    Abort;
  End;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select NoUnit from inmsnounit where nounit='''+quDetilNoUnit.AsString+''' ');
    Open;
    if IsEmpty then
    begin
      ShowMessage('No Unit Tidak Terdaftar');
      quDetilNoUnit.FocusControl;
      Abort;
    end;
  end;

  quDetilUpdDate.AsDateTime := GetServerDateTime;
  quDetilUpdUser.AsString := dmMain.UserId;
end;

procedure TfmMTMutasiUnit.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmMTMutasiUnit.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Unit ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmMTMutasiUnit.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmMTMutasiUnit.BtlBrgClick(Sender: TObject);
begin
  inherited;
  qudetil.Cancel;
end;

procedure TfmMTMutasiUnit.txtPelangganIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pilih Lokasi';
       SQLString := ' SELECT WarehouseName as Lokasi,WarehouseID as Kode from inmswarehouse '
                   +' ORDER BY warehousename';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainLokasi.ASString := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmMTMutasiUnit.dxButton6Click(Sender: TObject);
begin
  inherited;
  with TfmMTSuratJalan.Create(Self) do
  try
      qrlTitle.Caption := 'SURAT JALAN MUTASI UNIT';
      qrlPeriode.Caption := '** No. '+quMainNotaID.ASString+' **';
      qrlabel18.Caption := quMainKota.ASString+', '+FormatDateTime('d MMMM yyyy',quMainTransDate.AsDateTime);

      with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT A.*,B.*,C.WareHouseName As WarehouseNamee from MTMutasiUnitHd A '
            +'inner join InmsWarehouse B on A.Lokasi=B.WarehouseID '
            +'inner join InmsWarehouse C on A.Asal=C.WarehouseID '
            +'WHERE A.NotaID='''+quMainNotaID.AsString+''' ');
            //showmessage(sql.text);
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add(' SELECT * from MTMutasiUnitDt A WHERE A.NotaID='''+quMainNotaID.AsString+'''  ');
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

procedure TfmMTMutasiUnit.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pilih Lokasi';
       SQLString := ' SELECT WarehouseName as Lokasi,WarehouseID as Kode from inmswarehouse '
                   +' ORDER BY warehousename';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainAsal.ASString := Res[1];
       end;
    finally
       free;
    end;
end;

end.
