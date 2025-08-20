unit SFRptSafetyItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxEditor, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmSFRptSafetyItem = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
    quActSalesID: TStringField;
    quActNIK: TStringField;
    quActSalesName: TStringField;
    quActJabatan: TStringField;
    quActFgActive: TStringField;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActQty: TBCDField;
    quActTerima: TBCDField;
    quActJatuhTempo: TIntegerField;
    quActTglTerima: TDateTimeField;
    quActTglJatuhTempo: TDateTimeField;
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
    CheckBox1: TCheckBox;
    RadioGroup2: TRadioGroup;
    GroupBox2: TGroupBox;
    DateTimePicker3: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox3: TGroupBox;
    dxDateEdit1: TdxDateEdit;
    dxTahun: TdxSpinEdit;
    dxBulan: TdxImageEdit;
    bbRefresh: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioGroup3: TRadioGroup;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
    procedure TentukanPeriode;
  public
    { Public declarations }
    PeriodeLap,Periode,PrdAwal,FGDivisi : string;
  end;

var
  fmSFRptSafetyItem: TfmSFRptSafetyItem;

implementation

{$R *.dfm}
uses MyUnit;

procedure TfmSFRptSafetyItem.TentukanPeriode;
begin
  PrdAwal := dxTahun.Text+dxBulan.Text+'01';

  if dxBulan.Text = '01' then
  begin
    PeriodeLap := 'January';
    Periode := dxTahun.Text+'0131';
  end;
  if dxBulan.Text = '02' then
  begin
    PeriodeLap := 'Febuary';
    Periode := dxTahun.Text+'0229';
  end;
  if dxBulan.Text = '03' then
  begin
    PeriodeLap := 'Maret';
    Periode := dxTahun.Text+'0331';
  end;
  if dxBulan.Text = '04' then
  begin
    PeriodeLap := 'April';
    Periode := dxTahun.Text+'0430';
  end;
  if dxBulan.Text = '05' then
  begin
    PeriodeLap := 'Mei';
    Periode := dxTahun.Text+'0531';
  end;
  if dxBulan.Text = '06' then
  begin
    PeriodeLap := 'Juni';
    Periode := dxTahun.Text+'0630';
  end;
  if dxBulan.Text = '07' then
  begin
    PeriodeLap := 'July';
    Periode := dxTahun.Text+'0731';
  end;
  if dxBulan.Text = '08' then
  begin
    PeriodeLap := 'Agustus';
    Periode := dxTahun.Text+'0831';
  end;
  if dxBulan.Text = '09' then
  begin
    PeriodeLap := 'September';
    Periode := dxTahun.Text+'0930';
  end;
  if dxBulan.Text = '10' then
  begin
    PeriodeLap := 'Oktober';
    Periode := dxTahun.Text+'1031';
  end;
  if dxBulan.Text = '11' then
  begin
    PeriodeLap := 'November';
    Periode := dxTahun.Text+'1130';
  end;
  if dxBulan.Text = '12' then
  begin
    PeriodeLap := 'Desember';
    Periode := dxTahun.Text+'1231';
  end;
end;

procedure TfmSFRptSafetyItem.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  DateTimePicker3.Date := Date;
  DateTimePicker2.Date := Date;
  DateTimePicker1.Date := Date;
  dxBulan.Text := FormatDateTime('MM',Date);
  dxTahun.Text := FormatDateTime('YYYY',Date);
  RadioGroup2Click(RadioGroup2);
  RadioGroup2Click(RadioGroup1);
  bbRefreshClick(bbRefresh);
end;

procedure TfmSFRptSafetyItem.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  if RadioGroup2.ItemIndex=0 then
  begin
    GroupBox1.Visible := FALSE;
    GroupBox2.Visible := TRUE;
    GroupBox3.Visible := FALSE;
  end else
  if RadioGroup2.ItemIndex=1 then
  begin
    GroupBox1.Visible := TRUE;
    GroupBox2.Visible := FALSE;
    GroupBox3.Visible := FALSE;
  end else
  begin
    GroupBox1.Visible := FALSE;
    GroupBox2.Visible := FALSE;
    GroupBox3.Visible := TRUE;
  end;
  bbRefreshClick(bbRefresh);
end;

procedure TfmSFRptSafetyItem.RadioGroup1Click(Sender: TObject);
begin
  inherited;
   if RadioGroup1.ItemIndex=0 then
  begin
    dgrReportColumn1.Caption := 'Nomor Unit';
    dgrReportColumn2.Caption := 'Description';
    dgrReportColumn3.Visible := False;
    dgrReportColumn4.Visible := False;
  end else
  if RadioGroup1.ItemIndex=1 then
  begin
    dgrReportColumn1.Caption := 'Kode Karyawan';
    dgrReportColumn2.Caption := 'Nama Karyawan';
    dgrReportColumn3.Visible := TRUE;
    dgrReportColumn4.Visible := TRUE;
  end else
  begin
    dgrReportColumn1.Caption := 'Kode Departemen';
    dgrReportColumn2.Caption := 'Nama Departemen';
    dgrReportColumn3.Visible := False;
    dgrReportColumn4.Visible := False;
  end;
  bbRefreshClick(bbRefresh);
end;

procedure TfmSFRptSafetyItem.bbRefreshClick(Sender: TObject);
begin
  inherited;
  TentukanPeriode;

  if RadioGroup1.ItemIndex=1 then
  begin

    with quAct,SQl do
    begin
      Close;Clear;
      Add('SELECT V.* FROM ( '
         +'select K.*, '
         +'(SELECT TOP 1 N.Transdate FROM INTrAdjustmentDt M Inner join INTrAdjustmentHd N on M.TransID=N.TransID '
         +'WHERE M.NoUnit=K.SalesID AND M.ItemID=K.ItemID ORDER BY N.TransDate DESC) as TglTerima, '
         +'(SELECT TOP 1 N.Transdate+K.JatuhTempo FROM INTrAdjustmentDt M Inner join INTrAdjustmentHd N on M.TransID=N.TransID '
         +'WHERE M.NoUnit=K.SalesID AND M.ItemID=K.ItemID ORDER BY N.TransDate DESC) as TglJatuhTempo '
         +'FROM ( '
         +'select DISTINCT A.SalesID,A.NIK,A.SalesName,A.Jabatan,A.FgActive,B.ItemID,D.ItemName,B.Qty, '
         +'ISNULL((SELECT SUM(X.qty) FROm SFTrClearanceDt X WHERE X.NoteID=B.TransID AND X.ItemID=B.ItemID AND B.NoUnit=X.NoUnit AND X.FgClearance=''K''),0) as Terima, '
         +'ISNULL(CASE WHEN ISNULL(D.FGLama,''D'')=''D'' THEN ISNULL(D.Lama,0) '
         +'WHEN ISNULL(D.FGLama,''D'')=''M'' THEN ISNULL(D.Lama*30,0) ELSE ISNULL(D.Lama*365,0) END,0) as JatuhTempo '
         +'from ARMsSales A '
         +'inner join INTrAdjustmentDt B on A.SalesID=B.NoUnit '
         +'inner join INTrAdjustmentHd C on B.TransID=C.TransID AND C.FlagIN=''PI'' AND C.FgDivisi='''+FGDivisi+''' ');
      //if KdCab<>'HO' then
      //Add('AND KdCab='''+KdCab+''' ');
      Add('inner join INMsItem D on B.ItemID=D.ItemId '
         +') as K WHERE K.SalesID<>'''' ');
      if CheckBox1.Checked then
      Add(' AND K.Qty-K.Terima>0 ');
      if RadioGroup3.ItemIndex=1 then
      Add(' AND K.FgActive=1 ');
      if RadioGroup3.ItemIndex=2 then
      Add(' AND K.FgActive=0 ');
      Add(') as V ');
      if RadioGroup2.ItemIndex=0 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112)<='''+FormatDateTime('yyyymmdd',DateTimePicker3.Date)+''' ');
      if RadioGroup2.ItemIndex=1 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112) BETWEEN '''+FormatDateTime('yyyymmdd',DateTimePicker1.Date)+''' AND '''+FormatDateTime('yyyymmdd',DateTimePicker2.Date)+''' ');
      if RadioGroup2.ItemIndex=2 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112) BETWEEN '''+PrdAwal+''' AND '''+Periode+''' ');
      Open;
    end;

  end else
  if RadioGroup1.ItemIndex=2 then
  begin

    with quAct,SQl do
    begin
      Close;Clear;
      Add('SELECT V.* FROM ( '
         +'select K.*, '
         +'(SELECT TOP 1 N.Transdate FROM INTrAdjustmentDt M Inner join INTrAdjustmentHd N on M.TransID=N.TransID '
         +'WHERE M.NoUnit=K.SalesID AND M.ItemID=K.ItemID ORDER BY N.TransDate DESC) as TglTerima, '
         +'(SELECT TOP 1 N.Transdate+K.JatuhTempo FROM INTrAdjustmentDt M Inner join INTrAdjustmentHd N on M.TransID=N.TransID '
         +'WHERE M.NoUnit=K.SalesID AND M.ItemID=K.ItemID ORDER BY N.TransDate DESC) as TglJatuhTempo '
         +'FROM ( '
         +'select DISTINCT A.DivisiID as SalesID,'''' as NIK,A.DivisiName as SalesName,'''' as Jabatan,''1'' as FgActive,B.ItemID,D.ItemName,B.Qty, '
         +'ISNULL((SELECT SUM(X.qty) FROm SFTrClearanceDt X WHERE X.NoteID=B.TransID AND X.ItemID=B.ItemID AND B.NoUnit=X.NoUnit AND X.FgClearance=''D''),0) as Terima, '
         +'ISNULL(CASE WHEN ISNULL(D.FGLama,''D'')=''D'' THEN ISNULL(D.Lama,0) '
         +'WHEN ISNULL(D.FGLama,''D'')=''M'' THEN ISNULL(D.Lama*30,0) ELSE ISNULL(D.Lama*365,0) END,0) as JatuhTempo '
         +'from INMsDivisi A '
         +'inner join INTrAdjustmentDt B on A.DivisiID=B.NoUnit '
         +'inner join INTrAdjustmentHd C on B.TransID=C.TransID AND C.FlagIN=''SD'' AND C.FgDivisi='''+FGDivisi+''' ');
      //if KdCab<>'HO' then
      //Add('AND KdCab='''+KdCab+''' ');
      Add('inner join INMsItem D on B.ItemID=D.ItemId '
         +') as K WHERE K.SalesID<>'''' ');
      if CheckBox1.Checked then
      Add(' AND K.Qty-K.Terima>0 ');
      if RadioGroup3.ItemIndex=1 then
      Add(' AND K.FgActive=1 ');
      if RadioGroup3.ItemIndex=2 then
      Add(' AND K.FgActive=0 ');
      Add(') as V ');
      if RadioGroup2.ItemIndex=0 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112)<='''+FormatDateTime('yyyymmdd',DateTimePicker3.Date)+''' ');
      if RadioGroup2.ItemIndex=1 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112) BETWEEN '''+FormatDateTime('yyyymmdd',DateTimePicker1.Date)+''' AND '''+FormatDateTime('yyyymmdd',DateTimePicker2.Date)+''' ');
      if RadioGroup2.ItemIndex=2 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112) BETWEEN '''+PrdAwal+''' AND '''+Periode+''' ');
      Open;
    end;

  end else
  begin

    with quAct,SQl do
    begin
      Close;Clear;
      Add('SELECT V.* FROM ( '
         +'select K.*, '
         +'(SELECT TOP 1 N.Transdate FROM INTrAdjustmentDt M Inner join INTrAdjustmentHd N on M.TransID=N.TransID '
         +'WHERE M.NoUnit=K.SalesID AND M.ItemID=K.ItemID ORDER BY N.TransDate DESC) as TglTerima, '
         +'(SELECT TOP 1 N.Transdate+K.JatuhTempo FROM INTrAdjustmentDt M Inner join INTrAdjustmentHd N on M.TransID=N.TransID '
         +'WHERE M.NoUnit=K.SalesID AND M.ItemID=K.ItemID ORDER BY N.TransDate DESC) as TglJatuhTempo '
         +'FROM ( '
         +'select DISTINCT A.NoUnit as SalesID,'''' as NIK,A.Description as SalesName,'''' as Jabatan,CASE WHEN A.FgActive=''Y'' THEN ''1'' Else ''0'' END as FgActive,B.ItemID,D.ItemName,B.Qty, '
         +'ISNULL((SELECT SUM(X.qty) FROm SFTrClearanceDt X WHERE X.NoteID=B.TransID AND X.ItemID=B.ItemID AND B.NoUnit=X.NoUnit AND X.FgClearance=''U''),0) as Terima, '
         +'ISNULL(CASE WHEN ISNULL(D.FGLama,''D'')=''D'' THEN ISNULL(D.Lama,0) '
         +'WHEN ISNULL(D.FGLama,''D'')=''M'' THEN ISNULL(D.Lama*30,0) ELSE ISNULL(D.Lama*365,0) END,0) as JatuhTempo '
         +'from INMsNoUnit A '
         +'inner join INTrAdjustmentDt B on A.NOUnit=B.NoUnit '
         +'inner join INTrAdjustmentHd C on B.TransID=C.TransID AND C.FlagIN=''SU'' AND C.FgDivisi='''+FGDivisi+''' ');
      //if KdCab<>'HO' then
      //Add('AND KdCab='''+KdCab+''' ');
      Add('inner join INMsItem D on B.ItemID=D.ItemId '
         +') as K WHERE K.SalesID<>'''' ');
      if CheckBox1.Checked then
      Add(' AND K.Qty-K.Terima>0 ');
      if RadioGroup3.ItemIndex=1 then
      Add(' AND K.FgActive=1 ');
      if RadioGroup3.ItemIndex=2 then
      Add(' AND K.FgActive=0 ');
      Add(') as V ');
      if RadioGroup2.ItemIndex=0 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112)<='''+FormatDateTime('yyyymmdd',DateTimePicker3.Date)+''' ');
      if RadioGroup2.ItemIndex=1 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112) BETWEEN '''+FormatDateTime('yyyymmdd',DateTimePicker1.Date)+''' AND '''+FormatDateTime('yyyymmdd',DateTimePicker2.Date)+''' ');
      if RadioGroup2.ItemIndex=2 then
      Add(' WHERE CONVERT(VARCHAR(10),V.TglJatuhTempo,112) BETWEEN '''+PrdAwal+''' AND '''+Periode+''' ');
      Open;
    end;

  end;

end;

procedure TfmSFRptSafetyItem.CheckBox1Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmSFRptSafetyItem.RadioGroup3Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmSFRptSafetyItem.bbExcelClick(Sender: TObject);
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

procedure TfmSFRptSafetyItem.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
