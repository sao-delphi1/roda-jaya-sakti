unit SFRptPakai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxPSCore;

type
  TfmSFRptPakai = class(TfmRptDlg)
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    bbRefresh: TBitBtn;
    dgrReport: TdxDBGrid;
    quActTransDate: TDateTimeField;
    quActTransID: TStringField;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActQty: TBCDField;
    quActNoUnit: TStringField;
    quActKeterangan: TStringField;
    quActJenis: TStringField;
    quActNIK: TStringField;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    quActFgDivisi: TStringField;
    dgrReportColumn10: TdxDBGridColumn;
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FgDivisi : string;
  end;

var
  fmSFRptPakai: TfmSFRptPakai;

implementation

uses MyUnit, UnitGeneral, UnitDate;

{$R *.dfm}

procedure TfmSFRptPakai.bbExcelClick(Sender: TObject);
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

procedure TfmSFRptPakai.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmSFRptPakai.FormShow(Sender: TObject);
begin
  inherited;
  DateTimePicker1.Date := EncodeDate(GetYear(Date),1,1);
  DateTimePicker2.Date := Date;
  quAct.Active := TRUE;

  if FgDivisi='SF' then
  CheckBox2.Checked := TRUE;

  if FgDivisi='HR' then
  CheckBox1.Checked := TRUE;

  if KdCab='HO' then
  GroupBox2.Visible := TRUE;


  bbRefreshClick(bbRefresh);
end;

procedure TfmSFRptPakai.bbRefreshClick(Sender: TObject);
var CEKLAPORAN : string;
begin
  inherited;
  CEKLAPORAN := '''XX''';
  if CheckBox1.Checked then CEKLAPORAN := CEKLAPORAN + ',''HR''';
  if CheckBox2.Checked then CEKLAPORAN := CEKLAPORAN + ',''SF''';

  with quAct, SQl do
  begin
    Close;Clear;
    Add(' select B.TransDate,A.TransID,A.ItemID,F.ItemName,A.Qty,A.NoUnit, '
       +' CASE WHEN B.FlagIN=''PI'' THEN C.SalesName '
       +'      WHEN B.FlagIN=''SU'' THEN E.Description ELSE D.DivisiName END as Keterangan, '
       +' CASE WHEN B.FlagIN=''PI'' THEN ''KARYAWAN'' '
       +'      WHEN B.FlagIN=''SU'' THEN ''UNIT'' ELSE ''DEPARTEMEN'' END as Jenis, '
       +' CASE WHEN B.FlagIN=''PI'' THEN C.NIK ELSE '''' END as NIK,B.FgDivisi '
       +' from INTrAdjustmentDt A '
       +' inner join INTrAdjustmentHd B on A.TransID=B.TransID AND ISNULL(B.FgDivisi,''LOG'') IN ('+CEKLAPORAN+') ');
    //if KdCab<>'HO' then
    //Add(' AND B.KdCab='''+KdCab+''' ');
    Add(' left join ARMsSales C on A.NoUnit=C.SalesID '
       +' left join INMsDivisi D on A.NoUnit=D.DivisiID '
       +' left join INMsNoUnit E on A.NoUnit=E.NoUnit '
       +' inner join INMsItem F on A.ItemID=F.ItemID '
       +' WHERE B.FlagIN IN (''PI'',''SU'',''SD'') '
       +' AND CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',DateTimePicker1.Date)+''' '
       +' AND '''+FormatDateTime('yyyymmdd',DateTimePicker2.Date)+''' '
       +' ORDER BY Jenis,TransDate,A.TransID,F.ItemName,Keterangan');
    Open;
  end;
end;

end.
