unit OPTrWorkUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, DBCtrls, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmOPTrWorkUnit = class(TfmStdLv31)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    quMainWorkID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSiteID: TStringField;
    quMainLocation: TStringField;
    quMainNote: TStringField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainKdCab: TStringField;
    quDetilWorkID: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilNoUnit: TStringField;
    quDetilJamMasuk: TDateTimeField;
    quDetilJamKeluar: TDateTimeField;
    quDetilRest1: TDateTimeField;
    quDetilRest2: TDateTimeField;
    quDetilRainTime: TBCDField;
    quDetilRainNote: TStringField;
    quDetilNote: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilSalesID: TStringField;
    dbgPenjualan: TdxDBGrid;
    dbgPenjualanColumn1: TdxDBGridColumn;
    dbgPenjualanColumn2: TdxDBGridButtonColumn;
    dbgPenjualanColumn3: TdxDBGridColumn;
    dbgPenjualanColumn4: TdxDBGridTimeColumn;
    dbgPenjualanColumn5: TdxDBGridTimeColumn;
    dbgPenjualanColumn16: TdxDBGridColumn;
    dbgPenjualanColumn17: TdxDBGridColumn;
    dbgPenjualanColumn26: TdxDBGridTimeColumn;
    dbgPenjualanColumn27: TdxDBGridTimeColumn;
    dbgPenjualanColumn10: TdxDBGridColumn;
    dbgPenjualanColumn11: TdxDBGridBlobColumn;
    dbgPenjualanColumn12: TdxDBGridBlobColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPTrWorkUnit: TfmOPTrWorkUnit;

implementation

uses Search;

{$R *.dfm}

procedure TfmOPTrWorkUnit.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmOPTrWorkUnit.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmOPTrWorkUnit.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmOPTrWorkUnit.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmOPTrWorkUnit.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Pencarian No Produksi';
     SQLString := ' select A.WorkID as No_Produksi,CONVERT(varchar(10),A.transdate,103) as Tanggal,B.SiteName,C.WarehouseName,A.Note '
                 +' from OPTrWorkUnitHd A '
                 +' inner join INMsSites B on A.SiteID=B.SiteID '
                 +' inner join INMsWarehouse C on A.Location=C.WarehouseID '
                 +' WHERE '+FSQLWhere
                 +' ORDER BY Transdate ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('WorkId',Res[0],[]);
     end;
  finally
     free;
  end;
end;

end.
