unit ARRptInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxTL, dxDBCtrl, dxDBGrid, dxPSCore;

type
  TfmARRptInvoice = class(TfmRptDlg)
    grbKartu: TGroupBox;
    bbRefresh: TBitBtn;
    dtpDari: TDateTimePicker;
    quActKonInvPelID: TStringField;
    quActTanggal: TStringField;
    quActSTKJ: TBCDField;
    quActPPN: TBCDField;
    quActTTLKJ: TBCDField;
    quActPPH: TBCDField;
    quActCustName: TStringField;
    quActCustID: TStringField;
    quActBayar: TBCDField;
    quActBank: TStringField;
    quActRekening: TStringField;
    quActnama: TStringField;
    quActSisa: TBCDField;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    CheckBox4: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    dgrReport: TdxDBGrid;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    quActNote: TStringField;
    dgrReportColumn13: TdxDBGridColumn;
    quActTransdate: TDateTimeField;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    quActJenis: TStringField;
    dgrReportColumn15: TdxDBGridColumn;
    quActTempo: TDateTimeField;
    quActJatuhTempo: TIntegerField;
    dgrReportColumn18: TdxDBGridColumn;
    dgrReportColumn19: TdxDBGridColumn;
    quActNoKontrak: TStringField;
    quActPeriodeCharge: TStringField;
    dgrReportColumn20: TdxDBGridColumn;
    dgrReportColumn21: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    quActBankID: TStringField;
    dgrReportColumn22: TdxDBGridColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dgrReportDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptInvoice: TfmARRptInvoice;

implementation

uses UnitGeneral, ConMain, Detail;

{$R *.dfm}

procedure TfmARRptInvoice.bbRefreshClick(Sender: TObject);
var FgPerforma : string;
begin
  inherited;
  FgPerforma := '''XXX''';
  if CheckBox1.Checked then
  FgPerforma := FgPerforma+',''R''';
  if CheckBox2.Checked then
  FgPerforma := FgPerforma+',''T''';
  if CheckBox3.Checked then
  FgPerforma := FgPerforma+',''H''';
  if CheckBox5.Checked then
  FgPerforma := FgPerforma+',''O''';
  if CheckBox6.Checked then
  FgPerforma := FgPerforma+',''A''';
  if CheckBox7.Checked then
  FgPerforma := FgPerforma+',''S''';
  if CheckBox8.Checked then
  FgPerforma := FgPerforma+',''M''';

  with quAct,SQL do
  begin
    Close;Clear;
    Add(' select *,TTLKJ-Bayar as Sisa from ( '
       +' select A.KonInvPelID,ISNULL(A.BankID,''RJS'') as BankID,A.Note,A.Transdate,A.Transdate+A.JatuhTempo as Tempo,CONVERT(VARCHAR(10),A.Transdate,111) as Tanggal,'
       +' A.STKJ,A.PPN,A.TTLKJ,A.PPH, '
       +' B.CustName,A.CustID,A.JatuhTempo, '
       +' CASE WHEN A.FgPerforma=''R'' THEN ''RENTAL'' '
       +'      WHEN A.FgPerforma=''H'' THEN ''HAULING ORE'' '
       +'      WHEN A.FgPerforma=''T'' THEN ''MINING SERVICE'' '
       +'      WHEN A.FgPerforma=''A'' THEN ''KONSUMSI'' '
       +'      WHEN A.FgPerforma=''S'' THEN ''SOLAR'' '
       +'      WHEN A.FgPerforma=''O'' THEN ''OVERTIME'' '
       +'      WHEN A.FgPerforma=''M'' THEN ''MESS'' END as Jenis,'
       +' ISNULL((SELECT SUM(CASE WHEN X.Jenis=''K'' THEN X.Amount ELSE X.Amount*-1 END) FROM CFTrKKBBdt X '
       +' Inner join CFTrKKBBHd Y on X.VoucherID=Y.VoucherID '
       +' Where X.Note=A.KonInvPelID AND Y.Actor=A.CustID),0) as Bayar, '
       +' C.Bank,C.Rekening,C.nama,A.NoKontrak,A.PeriodeCharge '
       +' from ARTrKonInvPelHd A '
       +' inner join ARMsCustomer B on A.CustID=B.CustID '
       +' inner join samsrekjual C on A.RekJual=C.RekJualID '
       +' Where A.FgPerforma IN ('+FgPerforma+') ');
    if RadioGroup1.ItemIndex=1 then
    Add(' AND A.FgTax=''Y'' ');
    if RadioGroup1.ItemIndex=2 then
    Add(' AND A.FgTax=''T'' ');
    Add(' ) as K '
       +' WHERE CONVERT(VARCHAR(10),K.Transdate,112) <= '''+FormatDateTime('yyyymmdd',dtpdari.Date)+''' ');
    if CheckBox4.Checked then
    Add(' AND K.TTLKJ-K.Bayar<>0 ');
    //showmessage(sql.Text);
    Open;
  end;
end;

procedure TfmARRptInvoice.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  dtpDari.Date := Date;
  WindowState := wsMaximized;
  bbRefreshClick(bbRefresh);
end;

procedure TfmARRptInvoice.CheckBox1Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmARRptInvoice.CheckBox2Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmARRptInvoice.CheckBox3Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmARRptInvoice.CheckBox4Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmARRptInvoice.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dgrReportColumn1,TRUE);
  SetReadOnly(dgrReportColumn2,TRUE);
  SetReadOnly(dgrReportColumn3,TRUE);
  SetReadOnly(dgrReportColumn4,TRUE);
  SetReadOnly(dgrReportColumn5,TRUE);
  SetReadOnly(dgrReportColumn6,TRUE);
  SetReadOnly(dgrReportColumn7,TRUE);
  SetReadOnly(dgrReportColumn9,TRUE);
  SetReadOnly(dgrReportColumn10,TRUE);
  SetReadOnly(dgrReportColumn13,TRUE);
  SetReadOnly(dgrReportColumn14,TRUE);
  SetReadOnly(dgrReportColumn16,TRUE);
  SetReadOnly(dgrReportColumn15,TRUE);
  SetReadOnly(dgrReportColumn17,TRUE);
  SetReadOnly(dgrReportColumn18,TRUE);
  SetReadOnly(dgrReportColumn19,TRUE);
  SetReadOnly(dgrReportColumn20,TRUE);
  SetReadOnly(dgrReportColumn21,TRUE);
  SetReadOnly(dgrReportColumn22,TRUE);
end;

procedure TfmARRptInvoice.bbExcelClick(Sender: TObject);
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

procedure TfmARRptInvoice.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmARRptInvoice.dgrReportDblClick(Sender: TObject);
begin
  inherited;
  with TfmDetail.Create(Self) do
  try
    kode := quActKonInvPelID.ASString;
    ShowModal;
    finally
      free;
    end;
end;

end.
