unit RptHutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, ComCtrls, StdCtrls, DB, dxExEdtr, dxCntner, ADODB,
  Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmRptHutang = class(TfmRptDlg)
    grbKartu: TGroupBox;
    bbRefresh: TBitBtn;
    dtpDari: TDateTimePicker;
    dgrReport: TdxDBGrid;
    quActTanggal: TStringField;
    quActNo_FPP: TStringField;
    quActNote: TStringField;
    quActnorek: TStringField;
    quActbankname: TStringField;
    quActSuppName: TStringField;
    quActSubTotal: TBCDField;
    quActPPN: TBCDField;
    quActDisc: TBCDField;
    quActTTLKS: TBCDField;
    quActApproval: TStringField;
    quActOtoby: TStringField;
    quActPPh21: TBCDField;
    quActPPh23: TBCDField;
    quActPPH42: TBCDField;
    quActBayar: TBCDField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
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
    CheckBox4: TCheckBox;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    RadioGroup1: TRadioGroup;
    quActKode: TStringField;
    dgrReportColumn17: TdxDBGridColumn;
    quActSisa: TBCDField;
    dgrReportColumn18: TdxDBGridColumn;
    dgrReportColumn19: TdxDBGridColumn;
    quActOngkir: TBCDField;
    quActPBBKB: TBCDField;
    dgrReportColumn20: TdxDBGridColumn;
    quActPPh15: TBCDField;
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    DateTimePicker3: TDateTimePicker;
    quActSiteID: TStringField;
    dgrReportColumn21: TdxDBGridColumn;
    dgrReportColumn22: TdxDBGridColumn;
    quActPPh26: TBCDField;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dgrReportDblClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptHutang: TfmRptHutang;

implementation

uses UnitGeneral, Detail, DateUtils, UnitDate;

{$R *.dfm}

procedure TfmRptHutang.bbRefreshClick(Sender: TObject);
var fgoto,fgkode,tanggal : string;
begin
  inherited;
  fgoto := '''Z''';
  if CheckBox1.Checked then fgoto := fgoto + ',''Y''';
  if CheckBox2.Checked then fgoto := fgoto + ',''T''';
  if CheckBox3.Checked then fgoto := fgoto + ',''X''';

  if RadioGroup1.ItemIndex=0 then
  fgkode := '''1'',''2'',''3'''
  else
  if RadioGroup1.ItemIndex=1 then
  fgkode := '''1'',''2'''
  else
  if RadioGroup1.ItemIndex=2 then
  fgkode := '''1'''
  else
  if RadioGroup1.ItemIndex=3 then
  fgkode := '''2'''
  else
  fgkode := '''3''';

  if RadioGroup2.ItemIndex=0 then
  tanggal := 'AND CONVERT(VARCHAR(10),A.TransDate,112) <= '''+FormatDatetime('yyyymmdd',DateTimePicker3.date)+''' '
  else
  tanggal := 'AND CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+FormatDatetime('yyyymmdd',DateTimePicker1.date)+''' AND '''+FormatDatetime('yyyymmdd',DateTimePicker2.date)+''' ';


  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select K.*,K.TTLKS-K.Bayar as Sisa from ( ');
    Add('select ''1'' as Kode,CONVERT(VARCHAR(10),A.TransDate,111) as Tanggal,A.KonsinyasiInvId as No_FPP,A.Note,B.norek,B.bankname, '
       +'B.SuppName,A.SubTotal,A.Ongkir,A.PBBKB,A.PPN,A.Disc,A.TTLKS, '
       +'CASE WHEN A.FgOto=''Y'' THEN ''APPROVED'' WHEN A.FgOto=''T'' THEN ''WAITING'' ELSE ''REJECTED'' END as Approval,A.Otoby, '
       +'A.PPH21,A.PPH23,A.PPH42,A.Pph15,A.PPh26, '
       +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) FROM CFtrKKBBDt X INNER JOIN CFtrKKBBHd Y on X.VoucherID=Y.VoucherID '
       +'Where X.Note=A.KonsinyasiInvID AND CONVERT(VARCHAR(10),Y.Transdate,112)<='''+formatDatetime('yyyymmdd',dtpDari.Date)+'''),0) as Bayar,A.SiteID '
       +'from APTrKonsinyasiInvHd A '
       +'inner join APMsSupplier B on A.SuppID=B.SuppID WHERE A.FgOto IN ('+fgoto+') '+Tanggal
       +'UNION ALL '

       +'select ''2'' as Kode,CONVERT(VARCHAR(10),A.TransDate,111),A.PurchaseID,A.Note,B.norek,B.bankname, '
       +'B.SuppName,A.StPb,0,0,A.PPN,A.DiscAmount,A.TTLPb, '
       +'CASE WHEN A.FgOto=''Y'' THEN ''APPROVED'' WHEN A.FgOto=''T'' THEN ''WAITING'' ELSE ''REJECTED'' END as Approval,A.Otoby, '
       +'A.PPH21,A.PPH23,A.PPH42,A.pph15,A.PPh26, '
       +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) FROM CFtrKKBBDt X INNER JOIN CFtrKKBBHd Y on X.VoucherID=Y.VoucherID '
       +'Where X.Note=A.PurchaseID AND CONVERT(VARCHAR(10),Y.Transdate,112)<='''+formatDatetime('yyyymmdd',dtpDari.Date)+'''),0) as Bayar,A.SiteID '
       +'from APTrPurchaseHd A '
       +'inner join APMsSupplier B on A.SuppID=B.SuppID WHERE A.FgOto IN ('+fgoto+') '+Tanggal
       +'AND A.FgPajak=''Y'' '
       +'UNION ALL '

       +'select ''3'' as Kode,CONVERT(VARCHAR(10),A.TransDate,111),A.PurchaseID,A.Note,B.norek,B.bankname, '
       +'B.SuppName,A.StPb,0,0,A.PPN,A.DiscAmount,A.TTLPb, '
       +'CASE WHEN A.FgOto=''Y'' THEN ''APPROVED'' WHEN A.FgOto=''T'' THEN ''WAITING'' ELSE ''REJECTED'' END as Approval,A.Otoby, '
       +'A.PPH21,A.PPH23,A.PPH42,A.PPh15,A.PPh26, '
       +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) FROM CFtrKKBBDt X INNER JOIN CFtrKKBBHd Y on X.VoucherID=Y.VoucherID '
       +'Where X.Note=A.PurchaseID AND CONVERT(VARCHAR(10),Y.Transdate,112)<='''+formatDatetime('yyyymmdd',dtpDari.Date)+'''),0) as Bayar,A.SiteID '
       +'from APTrPurchaseHd A '
       +'inner join APMsSupplier B on A.SuppID=B.SuppID WHERE A.FgOto IN ('+fgoto+') '+Tanggal
       +'AND A.FgPajak=''T'' '
       +') as K WHERE K.Kode IN ('+fgKode+') ');
    if CheckBox4.Checked then
    Add('AND K.TTLKS-K.Bayar <> 0 ');
    Add('ORDER BY K.Tanggal ');
    Open;
  end;

end;

procedure TfmRptHutang.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  dtpDari.Date := DATE;
  DateTimePicker1.Date := EncodeDate(GetYear(Date),1,1);
  DateTimePicker2.Date := Date;
  DateTimePicker3.Date := Date;
  WindowState := wsMaximized;
  bbRefreshClick(bbRefresh);
end;

procedure TfmRptHutang.CheckBox1Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmRptHutang.CheckBox2Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmRptHutang.CheckBox3Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmRptHutang.dsActStateChange(Sender: TObject);
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
  SetReadOnly(dgrReportColumn18,TRUE);
  SetReadOnly(dgrReportColumn19,TRUE);
  SetReadOnly(dgrReportColumn20,TRUE);
  SetReadOnly(dgrReportColumn21,TRUE);
  SetReadOnly(dgrReportColumn22,TRUE);
end;

procedure TfmRptHutang.bbExcelClick(Sender: TObject);
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

procedure TfmRptHutang.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmRptHutang.dgrReportDblClick(Sender: TObject);
begin
  inherited;
  with TfmDetail.Create(Self) do
  try
    kode := quActNo_FPP.ASString;
    ShowModal;
    finally
      free;
    end;
end;

procedure TfmRptHutang.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  if RadioGroup2.ItemIndex=0 then
  begin
    GroupBox2.Visible := True;
    GroupBox1.Visible := False;
  end else
  begin
    GroupBox2.Visible := False;
    GroupBox1.Visible := True;
  end;

end;

end.
