unit CFRptDetailKas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, ComCtrls, dxTL, dxDBCtrl, dxDBGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmCFRptDetailKas = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    dgrReport: TdxDBGrid;
    quActVoucherID: TStringField;
    quActTransDate: TDateTimeField;
    quActRekeningID: TStringField;
    quActRekeningName: TStringField;
    quActNote: TStringField;
    quActAmount: TBCDField;
    quActJenis: TStringField;
    quActBankName: TStringField;
    quActActor: TStringField;
    quActBNote: TStringField;
    quActMOP: TStringField;
    quActKdCab: TStringField;
    quActNoBGCek: TStringField;
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
    quActFlagKKBB: TStringField;
    dgrReportColumn14: TdxDBGridColumn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptDetailKas: TfmCFRptDetailKas;

implementation

uses MyUnit, UnitGeneral, UnitDate, ConMain;

{$R *.dfm}

procedure TfmCFRptDetailKas.bbRefreshClick(Sender: TObject);
var Flag : string;
begin
  inherited;
  Flag := '''AAAAAAA''';
  if CheckBox1.Checked then
  Flag := Flag + ',''KM''';
  if CheckBox2.Checked then
  Flag := Flag + ',''KK''';
  if CheckBox3.Checked then
  Flag := Flag + ',''BM''';
  if CheckBox4.Checked then
  Flag := Flag + ',''BK''';
  if CheckBox5.Checked then
  Flag := Flag + ',''JU''';
  if CheckBox6.Checked then
  Flag := Flag + ',''APK'',''APB'',''APC''';
  if CheckBox7.Checked then
  Flag := Flag + ',''ARK'',''ARB'',''ARC''';

  with quAct, SQL do
  begin
    Close;Clear;
    Add(' select A.VoucherID,B.TransDate,A.RekeningID,C.RekeningName,A.Note,Amount,A.Jenis,D.BankName, '
       +' ISNULL(E.SuppName,B.Actor) as Actor,B.Note as BNote,B.MOP,ISNULL(B.KdCab,''HO'') as KdCab,NoBGCek,FlagKKBB '
       +' from CFTrKKBBDt A '
       +' inner join CFTrKKBBHd b on A.VoucherID=B.VoucherID '
       +' inner join CFMsRekening C on A.RekeningID=C.RekeningID '
       +' LEFT join CFMsBank D on B.BankID=D.BankID '
       +' LEFT JOIN '
       +' (select suppid,suppname from APMsSupplier union all '
       +' select custid,custname from ARMsCustomer ) as E on B.Actor=E.SuppID '
       +' where CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dtpdari.date)+''' AND '''+FormatDatetime('yyyymmdd',dtpsmp.date)+''' '
       +' AND B.Flagkkbb IN ('+Flag+') ');
    if RadioGroup1.ItemIndex = 0 then
    Add(' AND B.KdCab IN ('''+Kdcab+''') ');
    if RadioGroup1.ItemIndex = 2 then
    Add(' AND B.KdCab IN (''HO'') ');
    if RadioGroup1.ItemIndex = 3 then
    Add(' AND B.KdCab NOT IN (''HO'') ');
    Open;
  end;
end;

procedure TfmCFRptDetailKas.FormShow(Sender: TObject);
begin
  inherited;
  dtpDari.Date := EncodeDate(getyear(date),getmonth(date),1);
  dtpSmp.Date := Date;

  if (KdCab<>'HO') AND (GroupUser<>'admin') then
  begin
    RadioGroup1.Visible := False;
  end;

  bbRefreshClick(bbRefresh);
end;

procedure TfmCFRptDetailKas.dsActStateChange(Sender: TObject);
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
end;

procedure TfmCFRptDetailKas.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmCFRptDetailKas.bbExcelClick(Sender: TObject);
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
