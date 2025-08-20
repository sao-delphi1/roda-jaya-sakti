unit SFTrClearance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DBCtrls, dxDBELib, dxEditor;

type
  TfmSFTrClearance = class(TfmStdLv31)
    Label1: TLabel;
    Label2: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label4: TLabel;
    quMainTransID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainNote: TStringField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quDetilTransID: TStringField;
    quDetilFgClearance: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilItemID: TStringField;
    quDetilNoUnit: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    dbg: TdxDBGrid;
    dbgColumn1: TdxDBGridColumn;
    dbgColumn2: TdxDBGridButtonColumn;
    dbgColumn3: TdxDBGridButtonColumn;
    dbgColumn4: TdxDBGridColumn;
    dbgColumn5: TdxDBGridColumn;
    dbgColumn6: TdxDBGridColumn;
    dbgColumn7: TdxDBGridImageColumn;
    quDetilLNama: TStringField;
    quDetilLItemName: TStringField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    quDetilNoteID: TStringField;
    dbgColumn8: TdxDBGridButtonColumn;
    quMainKdCab: TStringField;
    quMainFgDivisi: TStringField;
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dbgColumn2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dbgColumn3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dbgColumn8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    FgDivisi : string;
  end;

var
  fmSFTrClearance: TfmSFTrClearance;

implementation

uses MyUnit, Search, UnitGeneral, UnitDate, ConMain;

{$R *.dfm}

procedure TfmSFTrClearance.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECt ItemName FROm INMsItem WHere ITemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quDetilLItemName.ASString := quAct.FieldByName('ItemName').ASString;

  if quDetilFgClearance.ASString<>'' then
  begin

  if quDetilFgClearance.ASString='U' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECt Description as ItemName FROm INMsNoUnit WHere NoUnit='''+quDetilNoUnit.AsString+''' ');
    Open;
  end;
  quDetilLNama.ASString := quAct.FieldByName('ItemName').ASString;
  end else
  if quDetilFgClearance.ASString='K' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECt SalesName as ItemName FROm ARMsSales WHere SalesId='''+quDetilNoUnit.AsString+''' ');
    Open;
  end;
  quDetilLNama.ASString := quAct.FieldByName('ItemName').ASString;
  end else
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECt DivisiName as ItemName FROm INMsDivisi WHere DivisiId='''+quDetilNoUnit.AsString+''' ');
    Open;
  end;
  quDetilLNama.ASString := quAct.FieldByName('ItemName').ASString;
  end;
  end;
end;

procedure TfmSFTrClearance.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainTransDate.ASString)='' then
  begin
     MsgInfo('Tanggal Tidak Boleh Kosong !');
     quMainTransDate.FocusControl;
     Abort;
  end;

  if qumain.State=dsinsert then
  Begin
    ST := kdcab+'-CLR-'+FormatDateTime('YYYY-', quMainTransDate.AsDateTime);
    quMainTransID.ASString  := ST + FormatFloat('00000', RunNumberGL(quAct, 'SFTrClearanceHd', 'TransId', ST, '0') + 1);
  End;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmSFTrClearance.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112),TransID';
  FFieldTgl   := 'TransDate';
  if KdCab<>'HO' then
  FAfterWhere :=' AND ISNULL(KdCab,''HO'')='''+KdCab+''' AND ISNULL(FgDivisi,''LOG'')='''+FgDivisi+''' '
  else
  FAfterWhere :=' AND ISNULL(FgDivisi,''LOG'')='''+FgDivisi+''' ';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
end;

procedure TfmSFTrClearance.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
end;

procedure TfmSFTrClearance.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainKdCab.ASString := KdCab;
  quMainFgDivisi.AsString := FgDivisi;
  quMainTransDate.FocusControl;
end;

procedure TfmSFTrClearance.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Transaksi Clearance';
       SQLString := ' SELECT TransId as Kode_Transaksi '
                   +' ,Convert(Varchar(10),Transdate,103) as Tgl_Transaksi '
                   +' ,Note as Keterangan '
                   +' FROM SFTrClearanceHd '
                   +' WHERE '+FSQLWhere
                   +' AND ISNULL(FgDivisi,''LOG'')='''+FgDivisi+''' ';
       if KdCab<>'HO' then
       SQLString := SQLString + ' AND ISNULL(KdCab,''HO'')='''+kdCab+''' ';
       SQLString := SQLString + ' ORDER By TransDate';
       if ShowModal = MrOK then
       begin
         qumain.Locate('TransId',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmSFTrClearance.dbgColumn2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := 'SELECT A.ItemName as Nama_Barang,A.ItemID as Kode_Barang,A.Typeunit,A.Merk,A.UOMID As Satuan '
                   +' FROM INMsItem A '
                   +' WHERE A.FgActive=''Y'' AND A.Ctk=''Y'' ORDER BY A.ItemID';
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

procedure TfmSFTrClearance.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgColumn4,TRUE);
  SetReadOnly(dbgColumn5,TRUE);
  SetReadOnly(dbgColumn7,quDetil.State<>dsInsert);
  SetReadOnly(dbgColumn3,quDetil.State<>dsInsert);
  SetReadOnly(dbgColumn6,quDetil.State<>dsInsert);
  SetReadOnly(dbgColumn2,quDetil.State<>dsInsert);
  SetReadOnly(dbgColumn8,quDetil.State<>dsInsert);
end;

procedure TfmSFTrClearance.dbgColumn3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if quDetilFgClearance.ASString='' then
  begin
    ShowMessage('Jenis Clearance Belum Dipilih!');
    quDetilFgClearance.FocusControl;
    Abort;
  end;

  if quDetilFgClearance.ASString='D' then
  begin
    with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Kode Departemen';
        SQLString := 'SELECT DivisiID as Kode_Departemen, DivisiName as Nama_Departemen FROM INMsDivisi ORDER BY DivisiName';
        if ShowModal = MrOK then
        begin
           if qudetil.State = dsBrowse then qudetil.Edit;
           quDetilNoUnit.Value := Res[0];
        end;
     finally
        free;
     end;
   end else
   if quDetilFgClearance.ASString='K' then
   begin
     with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Kode Karyawan';
        SQLString := 'SELECT SalesID as Kode_Karyawan, SalesName as Nama_Karyawan,NIK,Jabatan FROM ARMsSales Where FgActive<>0 ORDER BY SalesName';
        if ShowModal = MrOK then
        begin
           if qudetil.State = dsBrowse then qudetil.Edit;
           quDetilNoUnit.Value := Res[0];
        end;
     finally
        free;
     end;
   end else
   begin
     with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Kode Unit';
        SQLString := 'SELECT NoUnit as Nomor_Unit, Description as Keterangan FROM InMsNoUnit WHere FgActive=''Y'' ORDER BY NoUnit';
        if ShowModal = MrOK then
        begin
           if qudetil.State = dsBrowse then qudetil.Edit;
           quDetilNoUnit.Value := Res[0];
        end;
     finally
        free;
     end;
   end;
end;

procedure TfmSFTrClearance.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilFgClearance.AsString := 'U';
  quDetilQty.AsInteger := 0;
  quDetilItemID.FocusControl;
end;

procedure TfmSFTrClearance.TmbBrgClick(Sender: TObject);
begin
  inherited;
  qudetil.Append;
end;

procedure TfmSFTrClearance.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     dsDetil.DataSet.Delete;
end;

procedure TfmSFTrClearance.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmSFTrClearance.BtlBrgClick(Sender: TObject);
begin
  inherited;
  qudetil.Cancel;
end;

procedure TfmSFTrClearance.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilLItemName.Value)='' then
  begin
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilNoUnit.Value)='' then
  begin
     MsgInfo('Clearance From belum diisi ');
     quDetilNoUnit.FocusControl;
     Abort;
  end;

  if TRIM(quDetilNoteID.Value)='' then
  begin
     MsgInfo('Nota Pemberian belum diisi ');
     quDetilNoteID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilQty.AsString)='' then
  begin
     MsgInfo('jumlah belum diisi ');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetilQty.AsCurrency<=0 then
  begin
     MsgInfo('jumlah harus lebih besar dari 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  quDetilUpdDate.AsDateTime := GetServerDateTime;
  quDetilUpdUser.AsString := dmMain.UserId;

end;

procedure TfmSFTrClearance.dbgColumn8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
  var FgUnit : string;
begin
  inherited;
  if quDetilFgClearance.ASString='U' then
  FgUnit := '''SU'''
  else
  if quDetilFgClearance.ASString='K' then
  FgUnit := '''PI'''
  else
  FgUnit := '''SD''';
  
    with TfmSearch.Create(Self) do
    try
       Title := 'Nota Pemberian Barang';
       SQLString := 'SELECT DISTINCT K.TransID FROM ( '
                   +'select A.TransID,A.ItemID,A.Qty,A.NoUnit, '
                   +'ISNULL((SELECT SUM(X.qty) FROm SFTrClearanceDt X WHERE X.NoteID=A.TransID AND X.ItemID=A.ItemID '
                   +'AND A.NoUnit=X.NoUnit AND X.FgClearance='''+quDetilFgClearance.ASString+'''),0) as Terima '
                   +'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN IN ('+FgUnit+') '
                   +') as K WHERE K.Qty-K.Terima>0 AND K.ItemID='''+quDetilItemID.AsString+''' '
                   +'AND NoUnit='''+quDetilNoUnit.ASString+''' ';

       KeyValue := quDetilNoteID.AsString;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilNoteID.ASString := Res[0];
       end;
    finally
       free;
    end;

end;

end.
