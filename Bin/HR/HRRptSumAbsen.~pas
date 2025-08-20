unit HRRptSumAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton, dxEditor, dxEdLib,
  DBCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCore;

type
  TfmHRRptSumAbsen = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dxTahun: TdxSpinEdit;
    BtlBrg: TdxButton;
    dgrReport: TdxDBGrid;
    quCalc: TADOQuery;
    dsCalc: TDataSource;
    quCalcJumlah: TIntegerField;
    dxBulan: TdxImageEdit;
    DBText24: TDBText;
    Label29: TLabel;
    quActSalesID: TStringField;
    quActSalesName: TStringField;
    quActNIK: TStringField;
    quActJabatan: TStringField;
    quActDiv: TStringField;
    quActMasuk: TIntegerField;
    quActAlpha: TIntegerField;
    quActSakit: TIntegerField;
    quActIzin: TIntegerField;
    quActIzinSakit: TIntegerField;
    quActDayOff: TIntegerField;
    quActCuti: TIntegerField;
    quActHK: TIntegerField;
    quActSP: TIntegerField;
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
    quActLChecker: TStringField;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    dgrReportColumn16: TdxDBGridColumn;
    quActX1: TIntegerField;
    quActX2: TIntegerField;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn18: TdxDBGridColumn;
    quActIzinBerbayar: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure quActCalcFields(DataSet: TDataSet);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure CekPeriode;
    procedure HitungHari;
    procedure RefreshAct;
  public
    { Public declarations }
    PeriodeLap,Periode,Akhir : string;
  end;

var
  fmHRRptSumAbsen: TfmHRRptSumAbsen;

implementation

uses MyUnit, UnitGeneral, conMain, UnitDate, Search;

{$R *.dfm}
procedure TfmHRRptSumAbsen.CekPeriode;
begin
  if dxBulan.Text = '01' then
  begin
    PeriodeLap := 'January';
    Periode := dxTahun.Text+'0101';
    Akhir := dxTahun.Text+'0201';
  end;
  if dxBulan.Text = '02' then
  begin
    PeriodeLap := 'Febuary';
    Periode := dxTahun.Text+'0201';
    Akhir := dxTahun.Text+'0301';
  end;
  if dxBulan.Text = '03' then
  begin
    PeriodeLap := 'Maret';
    Periode := dxTahun.Text+'0301';
    Akhir := dxTahun.Text+'0401';
  end;
  if dxBulan.Text = '04' then
  begin
    PeriodeLap := 'April';
    Periode := dxTahun.Text+'0401';
    Akhir := dxTahun.Text+'0501';
  end;
  if dxBulan.Text = '05' then
  begin
    PeriodeLap := 'Mei';
    Periode := dxTahun.Text+'0501';
    Akhir := dxTahun.Text+'0601';
  end;
  if dxBulan.Text = '06' then
  begin
    PeriodeLap := 'Juni';
    Periode := dxTahun.Text+'0601';
    Akhir := dxTahun.Text+'0701';
  end;
  if dxBulan.Text = '07' then
  begin
    PeriodeLap := 'July';
    Periode := dxTahun.Text+'0701';
    Akhir := dxTahun.Text+'0801';
  end;
  if dxBulan.Text = '08' then
  begin
    PeriodeLap := 'Agustus';
    Periode := dxTahun.Text+'0801';
    Akhir := dxTahun.Text+'0901';
  end;
  if dxBulan.Text = '09' then
  begin
    PeriodeLap := 'September';
    Periode := dxTahun.Text+'0901';
    Akhir := dxTahun.Text+'1001';
  end;
  if dxBulan.Text = '10' then
  begin
    PeriodeLap := 'Oktober';
    Periode := dxTahun.Text+'1001';
    Akhir := dxTahun.Text+'1101';
  end;
  if dxBulan.Text = '11' then
  begin
    PeriodeLap := 'November';
    Periode := dxTahun.Text+'1101';
    Akhir := dxTahun.Text+'1201';
  end;
  if dxBulan.Text = '12' then
  begin
    PeriodeLap := 'Desember';
    Periode := dxTahun.Text+'1201';
    Akhir := IntToStr(StrToInt(dxTahun.Text)+1)+'0101';
  end;
end;

procedure TfmHRRptSumAbsen.HitungHari;
begin
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT DATEDIFF(day,'''+Periode+''','''+Akhir+''') as Jumlah ');
    Open;
  end;
  quCalc.Requery();
end;

procedure TfmHRRptSumAbsen.RefreshAct;
begin
  with quAct, SQL do
  begin
    Close;Clear;
    Add(' SELECT K.SalesID,L.SalesName,L.NIK,L.Jabatan,ISNULL(M.NmMaster,L.department) as Div, '
       +' SUM(A) as Masuk, '
       +' SUM(B) as Alpha, '
       +' SUM(C) as Sakit, '
       +' SUM(D) as Izin, '
       +' SUM(E) as IzinSakit, '
       +' SUM(F) as IzinBerbayar, '
       +' SUM(G) as DayOff, '
       +' SUM(H) as Cuti, '
       +' SUM(I) as X1, '
       +' SUM(J) as X2, '
       +' SUM(A+B+C+D+E+F+G+H+I+J) as HK, '
       +' SUM(SP) as SP '
       +' FROM ( '
       +' select A.SalesID,A.Tanggal, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''Y'' THEN (CASE WHEN ISNULL(JamMasuk,'''')='''' THEN 0 ELSE '
       +' (CASE WHEN ISNULL(JamKeluar,'''')='''' THEN 0 ELSE 1 END) END) ELSE 0 END As A, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''A'' THEN 1 ELSE 0 END as B, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''S'' THEN 1 ELSE 0 END as C, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''IJ'' THEN 1 ELSE 0 END as D, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''IJS'' THEN 1 ELSE 0 END as E, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''LWP'' THEN 1 ELSE 0 END as F, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''TBY'' THEN 1 ELSE 0 END as G, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''C'' THEN 1 ELSE 0 END as H, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''XI'' THEN 1 ELSE 0 END as I, '
       +' CASE WHEN ISNULL(FgAbsen,'''')=''X2'' THEN 1 ELSE 0 END as J, '
       +' CASE WHEN A.Tanggal BETWEEN '
       +' (select TOP 1 (CASE WHEN X.FgSP=''1'' THEN X.Tanggal ELSE X.Tanggal END) from TrAbsensi X '
       +' where X.fgsp<>''T'' and X.Salesid=A.Salesid and CONVERT(VARCHAR(10),X.Tanggal,112)<= '''+Akhir+''' order by A.Tanggal desc) '
       +' AND '
       +' (select TOP 1 (CASE WHEN X.FgSP=''1'' THEN X.Tanggal+90 ELSE X.Tanggal+180 END) from TrAbsensi X '
       +' where X.fgsp<>''T'' and X.Salesid=A.Salesid and CONVERT(VARCHAR(10),X.Tanggal,112)<= '''+Akhir+''' order by A.Tanggal desc) '
       +' THEN 1 ELSE 0 END as SP '
       +' from TrAbsensi A '
       +' ) as K '
       +' inner join ARMsSales L on K.SalesID=L.SalesID '
       +' LEFT join AllMaster M on L.department=M.KdMaster '
       +' WHERE CONVERT(VARCHAR(10),K.Tanggal,112) >= '''+Periode+''' AND '
       +' CONVERT(VARCHAR(10),K.Tanggal,112) < '''+Akhir+''' '
       +' GROUP BY K.SalesID,L.SalesName,L.NIK,L.Jabatan,L.department,M.NmMaster '
       +' ORDER BY L.SalesName ');
    //showmessage(sql.text);
    Open;
  end;

end;

procedure TfmHRRptSumAbsen.FormShow(Sender: TObject);
begin
  inherited;
  quCalc.Active := TRUE;
  quAct.Active := TRUE;

  dxBulan.Text := FormatDateTime('MM',Date);
  dxTahun.Text := FormatDateTime('YYYY',Date);
  BtlBrgClick(BtlBrg);
end;

procedure TfmHRRptSumAbsen.BtlBrgClick(Sender: TObject);
begin
  inherited;
  CekPeriode;
  HitungHari;
  RefreshAct;
end;

procedure TfmHRRptSumAbsen.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportColumn1,TRUE);
  SetReadOnly2(dgrReportColumn2,TRUE);
  SetReadOnly2(dgrReportColumn3,TRUE);
  SetReadOnly2(dgrReportColumn4,TRUE);
  SetReadOnly2(dgrReportColumn5,TRUE);
  SetReadOnly2(dgrReportColumn6,TRUE);
  SetReadOnly2(dgrReportColumn7,TRUE);
  SetReadOnly2(dgrReportColumn8,TRUE);
  SetReadOnly2(dgrReportColumn9,TRUE);
  SetReadOnly2(dgrReportColumn10,TRUE);
  SetReadOnly2(dgrReportColumn11,TRUE);
  SetReadOnly2(dgrReportColumn12,TRUE);
  SetReadOnly2(dgrReportColumn13,TRUE);
  SetReadOnly2(dgrReportColumn14,TRUE);
  SetReadOnly2(dgrReportColumn15,TRUE);
end;

procedure TfmHRRptSumAbsen.quActCalcFields(DataSet: TDataSet);
begin
  inherited;
  if quCalcJumlah.AsCurrency-quActHK.AsCurrency<>0 then
  quActLChecker.ASString := 'Terjadi Kesalahan'
  else
  quActLChecker.AsString := 'OK';
end;

procedure TfmHRRptSumAbsen.bbExcelClick(Sender: TObject);
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

end.
