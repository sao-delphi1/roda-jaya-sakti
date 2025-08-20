unit MsMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, DBCtrls,
  StdCtrls, ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore,
  dxContainer, Buttons, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmMsMaster = class(TfmStdLv31)
    dbgList: TdxDBGrid;
    dbgKdMaster: TdxDBGridColumn;
    dbgUpdUser: TdxDBGridColumn;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    quMainKdMaster: TStringField;
    quMainNmMaster: TStringField;
    quMainUpdDate: TStringField;
    quMainUpdUser: TStringField;
    quMainFgMaster: TStringField;
    dbgNmMaster: TdxDBGridColumn;
    GBLog: TGroupBox;
    lbUser: TLabel;
    dbLogUser: TDBText;
    LbTime: TLabel;
    dbLogTime: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    dbgUpdDate: TdxDBGridColumn;
    quMainNilai1: TBCDField;
    quMainNilai2: TBCDField;
    dbgListColumn5: TdxDBGridColumn;
    dbgListColumn6: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    FgMaster : String;
    { Public declarations }
  end;

var
  fmMsMaster: TfmMsMaster;

implementation

uses MyUnit, Search, ConMain, UnitGeneral, StdLv1, StdLv0;

{$R *.dfm}

procedure TfmMsMaster.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
end;

procedure TfmMsMaster.FormShow(Sender: TObject);
begin
  inherited;
  {
  FgMaster:

  A=Agama
  F=Hubungan
  W=Wilayah
  L=Lokasi
  S=Suku
  T=Status
  J=Jabatan
  D=Department
  U=Group UNit
  H=Hasil Produksi
  E=Area Produksi
  P=Delivery Point
  O=Payroll

  }

  with quMain,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM AllMaster WHERE FgMaster='''+FgMaster+''' ');
    Open;
  end;
  if Fgmaster = 'A' then
  begin
    Caption := 'Master Agama';
    dbgKdMaster.Caption := 'Kode Agama';
    dbgNmMaster.Caption := 'Nama Agama';
    Label1.Caption := Label1.Caption + ' Agama';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'U' then
  begin
    Caption := 'Master Group Unit';
    dbgKdMaster.Caption := 'Kode Group Unit';
    dbgNmMaster.Caption := 'Nama Group Unit';
    Label1.Caption := Label1.Caption + ' Group Unit';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'F' then
  begin
    Caption := 'Master Jenis Pertanggungan';
    dbgKdMaster.Caption := 'Kode Tanggungan';
    dbgNmMaster.Caption := 'Nama Tanggungan';
    Label1.Caption := Label1.Caption + ' Jenis Pertanggungan';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'S' then
  begin
    Caption := 'Master Suku';
    dbgKdMaster.Caption := 'Kode Suku';
    dbgNmMaster.Caption := 'Nama Suku';
    Label1.Caption := Label1.Caption + ' Suku';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'T' then
  begin
    Caption := 'Master Status';
    dbgKdMaster.Caption := 'Kode Status';
    dbgNmMaster.Caption := 'Nama Status';
    Label1.Caption := Label1.Caption + ' Status';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'J' then
  begin
    Caption := 'Master Jenis Barang';
    dbgKdMaster.Caption := 'Kode Jenis Barang';
    dbgNmMaster.Caption := 'Nama Jenis Barang';
    Label1.Caption := Label1.Caption + ' Jenis Barang';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'W' then
  begin
    Caption := 'Master Wilayah';
    dbgKdMaster.Caption := 'Kode Wilayah';
    dbgNmMaster.Caption := 'Nama Wilayah';
    Label1.Caption := Label1.Caption + ' Wilayah';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'L' then
  begin
    Caption := 'Master Lokasi';
    dbgKdMaster.Caption := 'Kode Lokasi';
    dbgNmMaster.Caption := 'Nama Lokasi';
    Label1.Caption := Label1.Caption + ' Lokasi';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'D' then
  begin
    Caption := 'Master Department';
    dbgKdMaster.Caption := 'Kode Department';
    dbgNmMaster.Caption := 'Nama Department';
    Label1.Caption := Label1.Caption + ' Department';
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'H' then
  begin
    Caption := 'Master Hasil Produksi';
    dbgKdMaster.Caption := 'Kode Hasil Produksi';
    dbgNmMaster.Caption := 'Nama Hasil Produksi';
    Label1.Caption := Label1.Caption + ' Hasil Produksi';
    Label2.Visible := False;
    dbgListColumn5.Visible := True;
    dbgListColumn6.Visible := True;
  end;
  if Fgmaster = 'E' then
  begin
    Caption := 'Master Area Produksi';
    dbgKdMaster.Caption := 'Kode Area Produksi';
    dbgNmMaster.Caption := 'Nama Area Produksi';
    Label1.Caption := Label1.Caption + ' Area Produksi';
    Label2.Visible := False;
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'P' then
  begin
    Caption := 'Master Delivery Point';
    dbgKdMaster.Caption := 'Kode Delivery Point';
    dbgNmMaster.Caption := 'Nama Delivery Point';
    Label1.Caption := Label1.Caption + ' Delivery Point';
    Label2.Visible := False;
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  if Fgmaster = 'O' then
  begin
    Caption := 'Master Payroll Gaji';
    dbgKdMaster.Caption := 'Kode Payroll';
    dbgNmMaster.Caption := 'Nama Payroll';
    Label1.Caption := Label1.Caption + ' Payroll Gaji';
    Label2.Visible := False;
    dbgListColumn5.Visible := False;
    dbgListColumn6.Visible := False;
  end;
  qumain.Last;
end;

procedure TfmMsMaster.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
{  if TRIM(quMainKdMaster.AsString) = '' then
  begin
    pesan('Kode Tidak Boleh Kosong!');
    quMainKdMaster.FocusControl;
    Abort;
  end;                   }

  if TRIM(quMainNmMaster.AsString) = '' then
  begin
    pesan('Nama Tidak Boleh Kosong!');
    quMainNmMaster.FocusControl;
    Abort;
  end;

  if (quMain.State = dsInsert) AND (Fgmaster<>'J') AND (Fgmaster<>'U') AND (Fgmaster<>'E') AND (Fgmaster<>'P') then
  Begin
    ST := Fgmaster ;
    quMainKdMaster.AsString := ST+ FormatFloat('000', RunNumberGL(quAct, 'AllMaster','KdMaster',ST,'0') + 1);
  End;

  if (TRIM(quMainKdMaster.AsString) = '') and (Fgmaster='J') and (Fgmaster='U') AND (Fgmaster='E')  AND (Fgmaster='P') then
  begin
    pesan('Kode Tidak Boleh Kosong!');
    quMainKdMaster.FocusControl;
    Abort;
  end;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmMsMaster.dsMainStateChange(Sender: TObject);
begin
  inherited;
  if (fgmaster='J') or (fgmaster='U') or (Fgmaster='E') or (Fgmaster='P') then
  SetReadOnly(dbgKdMaster,quMain.state<>dsInsert)
  else
  SetReadOnly(dbgKdMaster,TRUE);

  SetReadOnly(dbgUpdDate,TRUE);
  SetReadOnly(dbgUpdUser,TRUE);
end;

procedure TfmMsMaster.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainFgMaster.AsString := FgMaster;
  quMainNilai1.AsCurrency := 1;
  quMainNilai2.AsCurrency := 1;
  if (fgmaster='J') AND (Fgmaster='U') AND (Fgmaster='E') AND (Fgmaster='P') then
  quMainKdMaster.FocusControl
  else
  quMainNmMaster.FocusControl;
end;

procedure TfmMsMaster.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  {
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 K.KdMaster FROM ( '
       +'SELECT DISTINCT KdAgama as KdMaster FROM ARMsCustomer UNION ALL SELECT DISTINCT KdJabatan FROM ARMsCustomer '
       +'UNION ALL SELECT DISTINCT KdWilayah FROM ARMsCustomer UNION ALL SELECT DISTINCT KdLokasi FROM ARMsCustomer '
       +') as K WHERE K.KdMaster=:Kode  ');
    Parameters.ParamByName('Kode').Value := quMainKdMaster.AsString;
    Open;
    if not IsEmpty then
    begin
      pesan('Data sedang digunakan di form yang lain. Tidak bisa dihapus! ');
      Abort;
    end;
  end;
  }
end;

end.
