unit INRptPakaiUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxEditor, dxEdLib;

type
  TfmINRptPakaiUnit = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    quActFlagIN: TStringField;
    quActTransID: TStringField;
    quActTransdate: TDateTimeField;
    quActTgl: TStringField;
    quActItemName: TStringField;
    quActItemID: TStringField;
    quActTypeUnit: TStringField;
    quActNoUnit: TStringField;
    quActJumlah: TBCDField;
    quActUOMID2: TStringField;
    quActStatus: TStringField;
    quActNote: TStringField;
    quActkeperluan: TStringField;
    quActnomorban: TStringField;
    quActKM: TStringField;
    quActUserPrice: TBCDField;
    quActWarehouseID: TStringField;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    dgrReportColumn11: TdxDBGridColumn;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    quActupddate: TDateTimeField;
    quActupduser: TStringField;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox4: TCheckBox;
    dgrReportColumn14: TdxDBGridColumn;
    KodeDari: TdxButtonEdit;
    dxButtonEdit1: TdxButtonEdit;
    Label1: TLabel;
    dgrReportColumn15: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    quActLayoutID: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptPakaiUnit: TfmINRptPakaiUnit;

implementation

{$R *.dfm}
uses UnitGeneral, DateUtils, UnitDate, Search;

procedure TfmINRptPakaiUnit.FormShow(Sender: TObject);
begin
  inherited;
  dtpSmp.Date := Date;
  dtpDari.Date := EncodeDate(GetYear(Date),GetMOnth(Date),1);

  quAct.Open;

  bbRefreshClick(bbRefresh);
end;

procedure TfmINRptPakaiUnit.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dgrReport.SaveToXLS(saveDlg.FileName, true)
      else
        dgrReport.SaveToXLS(saveDlg.FileName + '.xls', true);
    end;
end;

procedure TfmINRptPakaiUnit.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmINRptPakaiUnit.bbRefreshClick(Sender: TObject);
var FlagIN : string;
begin
  inherited;

  FlagIN := '''ASDJKL''';
  if checkbox1.Checked then
  FlagIN := FlagIN + ',''PG''';
  if checkbox2.Checked then
  FlagIN := FlagIN + ',''TB''';
  if checkbox4.Checked then
  FlagIN := FlagIN + ',''PN''';
  if checkbox5.Checked then
  FlagIN := FlagIN + ',''PO''';
  if checkbox6.Checked then
  FlagIN := FlagIN + ',''KAN''';
  if checkbox3.Checked then
  FlagIN := FlagIN + ',''TS'',''PS''';

  with quAct, SQL do
  begin
    Close;Clear;
    Add('SELECT K.* FROM ( '
       +' select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty as Jumlah,C.UOMID2, '
       +' ''Pakai'' as Status,A.Alasan as Note,'''' as Kondisi,A.keperluan,A.nomorban,A.KMawal as KM,C.UserPrice,B.WarehouseID,A.upddate,A.upduser,A.LayoutID '
       +' from INTrAdjustmentDt A '
       +' inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PG'' '
       +' inner join INMsItem C on A.ItemID=C.ItemId '
       +' Where A.FgStatus IN (''K'') '
       +' UNION ALL '
       +' select B.FlagIN,A.TransID,B.TransDate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
       +' ''Pakai'' as Status,A.Alasan as Note,'''', '
       +' CASE WHEN A.keperluan=''H'' THEN ''Hauling'' '
       +'      WHEN A.keperluan=''P'' THEN ''Produksi'' '
       +'      WHEN A.keperluan=''J'' THEN ''Jetty'' '
       +'      WHEN A.keperluan=''B'' THEN ''Alat Bantu'' '
       +'      WHEN A.keperluan=''R'' THEN ''Alat Rental'' '
       +'      WHEN A.keperluan=''M'' THEN ''Peminjaman'' ELSE ''Operasional'' END as Keperluan,A.nomorban,A.KMAwal,C.UserPrice,B.WarehouseID,A.upddate,A.upduser,A.LayoutID '
       +' from INTrAdjustmentDt A '
       +' inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PS'' '
       +' inner join INMsItem C on A.ItemID=C.ItemId '
       +' Where A.FgStatus IN (''K'') '
       +' UNION ALL '
       +' select B.FlagIN,A.TransID,B.Transdate, '
       +' CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,  ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
       +' B.nosj,A.Alasan as Note,'''', '
       +' '''','''','''',C.UserPrice,B.WarehouseID,A.upddate,A.upduser,A.LayoutID '
       +' from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PN''  inner join INMsItem C on A.ItemID=C.ItemId '
       +' Where A.FgStatus IN (''T'') '
       +' UNION ALL '
       +' select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
       +' CASE WHEN A.FgStatus=''L'' THEN ''Spare'' WHEN A.FgStatus=''K'' THEN ''Pasang'' END as Status,A.Alasan as Note, '
       +' (CASE WHEN A.statusban=''BR'' THEN ''Baru'' ELSE ''Bekas'' END),'''',A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,A.upddate,A.upduser,A.LayoutID '
       +' from INTrAdjustmentDt A '
       +' inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''TB'' '
       +' inner join INMsItem C on A.ItemID=C.ItemId '
       +' Where A.FgStatus IN (''K'',''T'',''S'') '
       +' UNION ALL '
       +' select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit, '
       +' ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, CASE WHEN A.FgStatus=''O'' THEN ''Tambah Oli'' ELSE ''Ganti Oli'' END as Status,A.Alasan as Note, '
       +' '''','''', '
       +' A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,A.upddate,A.upduser,A.LayoutID from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PO'' '
       +' inner join INMsItem C on A.ItemID=C.ItemId Where A.FgStatus IN (''K'',''O'') '
       +' UNION ALL '
       +' select ''KAN'',A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.typeunit,ISNULL(B.NoUnit,''-'') as NoUnit, '
       +' A.Qty,C.UOMID2,''Kanibal Unit dari ''+B.NoUnitSrc,'''','''','''','''',B.KM,C.UserPrice,B.WarehouseID,A.upddate,A.upduser,'''' '
       +' from INTrKanibalDt A inner join INTrKanibalHd B on A.TransID=B.TransID AND B.Fgoto=''Y'' '
       +' inner join INMsItem C on A.ItemID=C.ItemID '
       +' ) as K INNER JOIN INMsWarehouse L on K.WarehouseID=L.WarehouseID LEFT JOIN INmsNoUnit M on K.NoUnit=M.NoUnit '
       +' WHERE K.FlagIN IN ('+FlagIN+') AND '
       +' CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dtpDari.Date)+''' AND '''+FormatDatetime('yyyymmdd',dtpSmp.Date)+''' ');
    if TRIM(KodeDari.Text)<>'' then
    Add('AND M.GroupID IN ('''+KodeDari.Text+''') ');
    Add(' ORDER BY K.Transdate ');
    Open;
  end;
end;

procedure TfmINRptPakaiUnit.CheckBox3Click(Sender: TObject);
begin
  inherited;
  //bbRefreshClick(bbRefresh);
end;

procedure TfmINRptPakaiUnit.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dgrReportColumn1,TRUE);
  SetReadOnly(dgrReportColumn2,TRUE);
  SetReadOnly(dgrReportColumn3,TRUE);
  SetReadOnly(dgrReportColumn4,TRUE);
  SetReadOnly(dgrReportColumn5,TRUE);
  SetReadOnly(dgrReportColumn6,TRUE);
  SetReadOnly(dgrReportColumn7,TRUE);
  SetReadOnly(dgrReportColumn8,TRUE);
  SetReadOnly(dgrReportColumn9,TRUE);
  SetReadOnly(dgrReportColumn10,TRUE);
  SetReadOnly(dgrReportColumn11,TRUE);
  SetReadOnly(dgrReportColumn12,TRUE);
  SetReadOnly(dgrReportColumn13,TRUE);
  SetReadOnly(dgrReportColumn14,TRUE);
  SetReadOnly(dgrReportColumn15,TRUE);
  SetReadOnly(dgrReportColumn16,TRUE);
end;

procedure TfmINRptPakaiUnit.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Group Unit';
       SQLString := 'SELECT K.* FROM ( '
                   +'SELECT ''SEMUA UNIT'' as Nama_Group,'''' as Kode_Group UNION ALL '
                   +'SELECT NmMaster as Nama_Group,KdMaster as Kode_Group FROM AllMaster WHERE FgMaster=''U'' ) as K ORDER BY Nama_Group';
       if ShowModal = MrOK then
       begin
         KodeDari.Text := Res[1];
         dxButtonEdit1.Text := Res[0];
       end;
    finally
       free;
    end;
end;

end.
