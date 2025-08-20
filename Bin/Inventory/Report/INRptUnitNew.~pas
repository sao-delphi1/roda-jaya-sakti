unit INRptUnitNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmRptUnitNew = class(TfmRptDlg)
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
    quActDealerPrice: TBCDField;
    quActLokasi: TStringField;
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
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn15: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    quActTotal: TCurrencyField;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    Label1: TLabel;
    KodeDari: TdxButtonEdit;
    dxButtonEdit1: TdxButtonEdit;
    RadioGroup1: TRadioGroup;
    CheckBox8: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox3: TCheckBox;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    quCalc: TADOQuery;
    quActLHarga: TCurrencyField;
    quActLayoutID: TStringField;
    dgrReportColumn17: TdxDBGridColumn;
    procedure quActCalcFields(DataSet: TDataSet);
    procedure dsActStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptUnitNew: TfmRptUnitNew;

implementation

{$R *.dfm}
uses MyUnit, ConMain, UnitGeneral, Search, UnitDate;

procedure TfmRptUnitNew.quActCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add(' SELECT UserPrice as Harga FROM INMsItem WHERE ItemID='''+quActItemID.AsString+''' ');
    Open;
  end;
  quActLHarga.AsCurrency := quCalc.FieldByName('Harga').AsCurrency;
  quActTotal.AsCurrency := quActJumlah.AsCurrency * quActLharga.AsCurrency;
end;

procedure TfmRptUnitNew.dsActStateChange(Sender: TObject);
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
  SetReadOnly(dgrReportColumn17,TRUE);
end;

procedure TfmRptUnitNew.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := Date;
  bbRefreshClick(bbRefresh);
end;

procedure TfmRptUnitNew.bbRefreshClick(Sender: TObject);
var FlagIN : string;
begin
  inherited;
  FlagIN := '''ASDJKL''';
  if checkbox1.Checked then
  FlagIN := FlagIN + ',''PG''';
  if checkbox2.Checked then
  FlagIN := FlagIN + ',''TB''';
  if checkbox5.Checked then
  FlagIN := FlagIN + ',''PO''';
  if checkbox6.Checked then
  FlagIN := FlagIN + ',''KAN''';
  if checkbox3.Checked then
  FlagIN := FlagIN + ',''TS'',''PS''';

  with quAct,SQL do
  Begin
    Close;Clear;
    add('SELECT K.*,');
  {  if RadioGroup1.ItemIndex=0 then
    begin
    add('ISNULL(ISNULL((select TOP 1 PRICE from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
      +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate AND B.SiteID=L.City ORDER BY B.Transdate DESC,A.Price DESC),'
      +'(select TOP 1 PRICE from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
      +'WHERE A.ItemID=K.ItemID AND B.TransDate<=K.Transdate ORDER BY B.Transdate DESC,A.Price DESC)),');
    if CheckBox8.Checked then
    add('K.UserPrice) as Price,')
    else
    add('0) as Price,');
    end;
    if RadioGroup1.ItemIndex=1 then
    add('ISNULL(K.UserPrice,0) as Price,');
    if RadioGroup1.ItemIndex=2 then
    add('ISNULL(K.DealerPrice,0) as Price,');  }
    add('K.WarehouseID as Lokasi FROM ( '
      +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty as Jumlah,C.UOMID2, '
      +'''Pakai'' as Status,A.Alasan as Note,A.keperluan,A.nomorban,A.KMawal as KM,C.UserPrice,B.WarehouseID,C.DealerPrice,A.LayoutID '
      +'from INTrAdjustmentDt A '
      +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PG'' '
      +'inner join INMsItem C on A.ItemID=C.ItemId '
      +'Where A.FgStatus IN (''K'') '
      +'UNION ALL '
      +'select B.FlagIN,A.TransID,B.TransDate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
      +'''Pakai'' as Status,A.Alasan as Note,'
      +'CASE WHEN A.keperluan=''H'' THEN ''Hauling'' '
      +'     WHEN A.keperluan=''P'' THEN ''Produksi'' '
      +'     WHEN A.keperluan=''J'' THEN ''Jetty'' '
      +'     WHEN A.keperluan=''B'' THEN ''Alat Bantu'' '
      +'     WHEN A.keperluan=''R'' THEN ''Alat Rental'' '
      +'     WHEN A.keperluan=''M'' THEN ''Peminjaman'' ELSE ''Operasional'' END as Keperluan,A.nomorban,A.KMAwal,C.UserPrice,B.WarehouseID,C.DealerPrice,A.LayoutID '
      +'from INTrAdjustmentDt A '
      +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PS'' '
      +'inner join INMsItem C on A.ItemID=C.ItemId '
      +'Where A.FgStatus IN (''K'') '
      +'UNION ALL '
      +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, '
      +'CASE WHEN A.FgStatus=''L'' THEN ''Spare'' WHEN A.FgStatus=''K'' THEN ''Pasang'' END as Status,A.Alasan as Note, '
      +'(CASE WHEN A.statusban=''BR'' THEN ''Baru'' ELSE ''Bekas'' END),A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,C.DealerPrice,A.LayoutID '
      +'from INTrAdjustmentDt A '
      +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''TB'' '
      +'inner join INMsItem C on A.ItemID=C.ItemId '
      +'Where A.FgStatus IN (''K'',''T'',''S'') '
      +'UNION ALL '
      +'select B.FlagIN,A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.TypeUnit, '
      +'ISNULL(A.NoUnit,''-'') as NoUnit,A.Qty,C.UOMID2, CASE WHEN A.FgStatus=''O'' THEN ''Tambah Oli'' ELSE ''Ganti Oli'' END as Status,A.Alasan as Note, '
      +''''', '
      +'A.nomorban,A.KMawal,C.UserPrice,B.WarehouseID,C.DealerPrice,A.LayoutID '
      +'from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PO'' '
      +'inner join INMsItem C on A.ItemID=C.ItemId Where A.FgStatus IN (''K'',''O'') '
      +'UNION ALL '
      +'select ''KAN'',A.TransID,B.Transdate,CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,C.ItemName,A.ItemID,C.typeunit,ISNULL(B.NoUnit,''-'') as NoUnit, '
      +'A.Qty,C.UOMID2,''Kanibal Unit dari ''+B.NoUnitSrc,'''','''','''',B.KM,C.UserPrice,B.WarehouseID,C.DealerPrice,'''' '
      +'from INTrKanibalDt A inner join INTrKanibalHd B on A.TransID=B.TransID AND B.Fgoto=''Y'' '
      +'inner join INMsItem C on A.ItemID=C.ItemID '
      +') as K INNER JOIN INMsWarehouse L on K.WarehouseID=L.WarehouseID LEFT JOIN INMsNoUnit M on K.NoUnit=M.NoUnit '
      +'WHERE K.FlagIN IN ('+FlagIN+') AND '
      +'CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dt1.Date)+''' and '''+FormatDateTime('yyyymmdd',dt2.Date)+''' ');
    if TRIM(KodeDari.Text)<>'' then
    Add('AND M.GroupID IN ('''+KodeDari.Text+''') ');
    //Add(' order BY K.Transdate ');
    Open;
  End;
end;

procedure TfmRptUnitNew.KodeDariButtonClick(Sender: TObject;
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

procedure TfmRptUnitNew.bbExcelClick(Sender: TObject);
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

procedure TfmRptUnitNew.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
