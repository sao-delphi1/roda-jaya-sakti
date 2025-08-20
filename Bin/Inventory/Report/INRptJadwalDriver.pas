unit INRptJadwalDriver;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxDBTLCl,
  dxGrClms;

type
  TfmINRptJadwalDriver = class(TfmRptDlg)
    quActNotaID: TStringField;
    quActNoUnit: TStringField;
    quActDriver: TStringField;
    quActJamMulai: TDateTimeField;
    quActJamSelesai: TDateTimeField;
    quActHMAwal: TBCDField;
    quActHMAkhir: TBCDField;
    quActUnitWh: TBCDField;
    quActFgStatus: TStringField;
    quActBDTime: TBCDField;
    quActBD: TStringField;
    quActSTBTime: TBCDField;
    quActSTB: TStringField;
    quActRestTime: TBCDField;
    quActRest: TStringField;
    quActTanggal: TStringField;
    quActSiteName: TStringField;
    quActActivity: TStringField;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn18: TdxDBGridColumn;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    dgrReportColumn4: TdxDBGridTimeColumn;
    quActBD1: TDateTimeField;
    quActBD2: TDateTimeField;
    quActBD3: TDateTimeField;
    quActBD4: TDateTimeField;
    quActSTB1: TDateTimeField;
    quActSTB2: TDateTimeField;
    quActSTB3: TDateTimeField;
    quActSTB4: TDateTimeField;
    quActREST1: TDateTimeField;
    quActREST2: TDateTimeField;
    quActREST3: TDateTimeField;
    quActREST4: TDateTimeField;
    dgrReportColumn19: TdxDBGridColumn;
    dgrReportColumn20: TdxDBGridColumn;
    dgrReportColumn23: TdxDBGridColumn;
    dgrReportColumn24: TdxDBGridColumn;
    dgrReportColumn25: TdxDBGridColumn;
    dgrReportColumn26: TdxDBGridColumn;
    dgrReportColumn27: TdxDBGridColumn;
    dgrReportColumn28: TdxDBGridColumn;
    dgrReportColumn29: TdxDBGridColumn;
    dgrReportColumn30: TdxDBGridColumn;
    dgrReportColumn31: TdxDBGridColumn;
    dgrReportColumn32: TdxDBGridColumn;
    quActLOT: TCurrencyField;
    quActLWH: TCurrencyField;
    quActLBD: TCurrencyField;
    quActLSTB: TCurrencyField;
    quActLRest: TCurrencyField;
    dgrReportColumn33: TdxDBGridColumn;
    dgrReportColumn34: TdxDBGridColumn;
    dgrReportColumn35: TdxDBGridColumn;
    dgrReportColumn36: TdxDBGridColumn;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    dgrReportColumn37: TdxDBGridColumn;
    quActPA: TCurrencyField;
    dgrReportColumn38: TdxDBGridColumn;
    dgrReportColumn39: TdxDBGridColumn;
    quActTypeClassUnit: TStringField;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure quActCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    sQuery : string;
  public
    { Public declarations }
  end;

var
  fmINRptJadwalDriver: TfmINRptJadwalDriver;

implementation

uses UnitDate,DateUtils;
{$R *.dfm}

procedure TfmINRptJadwalDriver.bbRefreshClick(Sender: TObject);
begin
  inherited;
  sQuery :=' select A.NotaID,A.NoUnit,D.TypeClassUnit,A.Driver,A.JamMulai,A.JamSelesai,A.HMAwal,A.HMAkhir,A.UnitWh, '
          +' CASE WHEN A.FgStatus=''O'' THEN ''OPERATIONAL'' '
          +'      WHEN A.FgStatus=''B'' THEN ''BREAKDOWN'' '
          +'      ELSE ''STAND BY'' END as FgStatus, '
          +' A.BDTime,A.BD,A.STBTime,A.STB,A.RestTime,A.Rest, '
          +' CONVERT(VARCHAR(10),B.transdate,111) as Tanggal,C.SiteName, '
          +' CASE WHEN B.Activity=''BG'' THEN ''BARGING'' '
          +'      WHEN B.Activity=''PR'' THEN ''PRODUKSI'' '
          +'      WHEN B.Activity=''HA'' THEN ''HAULING'' '
          +'      WHEN B.Activity=''RT'' THEN ''RENTAL'' ELSE ''OTHERS'' END as Activity, '
          +' BD1,BD2,BD3,BD4, '
          +' STB1,STB2,STB3,STB4, '
          +' REST1,REST2,REST3,REST4 '
          +' from intrjadwaldriverdt A '
          +' inner join intrjadwaldriverhd B on A.NotaID=B.NotaID '
          +' inner join INMsSites C on B.SiteID=C.SiteID '
          +' INNER JOIN INMsNoUnit D ON A.NoUnit=D.NoUnit '
          +' WHERE CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
          +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ';

  with quAct do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;
end;

procedure TfmINRptJadwalDriver.FormShow(Sender: TObject);
begin
  inherited;
  dtpDari.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dtpSmp.Date := Date;
  quAct.Open;
  bbRefreshClick(bbRefresh);
end;

procedure TfmINRptJadwalDriver.bbExcelClick(Sender: TObject);
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

procedure TfmINRptJadwalDriver.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmINRptJadwalDriver.quActCalcFields(DataSet: TDataSet);
var atas,bawah : currency;
begin
  inherited;
  quActLWH.AsCurrency := quActHMAkhir.AsCurrency-quActHMAwal.AsCurrency;
  //quActLBD.AsCurrency := (secondsbetween(quActBD1.AsDateTime,quActBD2.AsDateTime)/3600)+(secondsbetween(quActBD3.AsDateTime,quActBD4.AsDateTime)/3600);
  //quactLSTB.AsCurrency := (secondsbetween(quActSTB1.AsDateTime,quActSTB2.AsDateTime)/3600)+(secondsbetween(quActSTB3.AsDateTime,quActSTB4.AsDateTime)/3600);
  //quactLRest.AsCurrency := (secondsbetween(quActRest1.AsDateTime,quActRest2.AsDateTime)/3600)+(secondsbetween(quActRest3.AsDateTime,quActRest4.AsDateTime)/3600);
  //quactLOT.AsCurrency := (secondsbetween(quActJamMulai.AsDateTime,quActJamSelesai.AsDateTime)/3600)-quActLBD.AsCurrency-quActLSTB.AsCurrency-quActLRest.AsCurrency;
  //atas := ((secondsbetween(quActJamMulai.AsDateTime,quActJamSelesai.AsDateTime)/3600)-quActLBD.AsCurrency-quactLRest.AsCurrency);
  //bawah := ((secondsbetween(quActJamMulai.AsDateTime,quActJamSelesai.AsDateTime)/3600)-quactLRest.AsCurrency);
  atas := (quActLWH.AsCurrency+quActSTBTime.AsCurrency);
  bawah := (quActLWH.AsCurrency+quActSTBTime.AsCurrency+quActBDTime.AsCurrency);
  if bawah=0 then bawah := 1;
  quActPA.AsCurrency := atas/bawah*100;
end;

end.
