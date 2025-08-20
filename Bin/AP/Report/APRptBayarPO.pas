unit APRptBayarPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxEditor, dxEdLib,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmAPRptBayarPO = class(TfmRptDlg)
    grbKartu: TGroupBox;
    bbRefresh: TBitBtn;
    RadioGroup2: TRadioGroup;
    RadioGroup1: TRadioGroup;
    quActDt: TADOQuery;
    dsActDt: TDataSource;
    quActPOID: TStringField;
    quActSuppID: TStringField;
    quActTerm: TIntegerField;
    quActTransdate: TDateTimeField;
    quActJatuhTempo: TDateTimeField;
    quActSuppName: TStringField;
    quActTTLPO: TBCDField;
    quActBayar: TBCDField;
    quActSisa: TBCDField;
    quActDtKonsinyasiInvID: TStringField;
    quActDtSubtotalM: TBCDField;
    quActDtSubtotalU: TBCDField;
    quActDtPPN: TBCDField;
    quActDtDiscAmount: TBCDField;
    quActDtTTLKJ: TBCDField;
    quActDtpbbkb: TBCDField;
    quActDtongkir: TBCDField;
    quActDtBayar: TBCDField;
    quActDtSisa: TBCDField;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    DBText4: TDBText;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    quActDtTransDate: TDateTimeField;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dt1: TdxDateEdit;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure dsActDtStateChange(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPRptBayarPO: TfmAPRptBayarPO;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral;

procedure TfmAPRptBayarPO.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select *,K.TTLPO-K.Bayar as Sisa from ( '
       +'select A.POID,A.SuppID,A.Term,A.Transdate,A.Term+A.Transdate as JatuhTempo,B.SuppName,A.TTLPO, '
       +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) '
       +'FROM CFtrKKBBDt X INNER JOIN CFtrKKBBHd Y on X.VoucherID=Y.VoucherID '
       +'Where X.Note IN (SELECT DISTINCT Z.KonsinyasiInvID FROM APTrKonsinyasiInvSub Z Where Z.POID=A.POID) '
       //+'AND CONVERT(VARCHAR(10),Y.Transdate,112)<='''+FormatDateTime('yyyymmdd',dt1.Date)+'''),0) as Bayar '
       +'),0) as Bayar '
       +'from APTrPurchaseOrderHd A '
       +'inner join APMsSupplier B on A.SuppID=B.SuppID '
       +'Where CONVERT(VARCHAR(10),A.Transdate,112) BETWEEN ''20200101'' AND '''+FormatDateTime('yyyymmdd',dt1.Date)+''' ');
    if RadioGroup1.ItemIndex=0 then
    Add('AND A.WarehouseID=''RJS'' ');
    Add(') as K ');
    if RadioGroup2.ItemIndex=0 then
    Add('WHERE K.TTLPO-K.Bayar<>0 ');
    if RadioGroup2.ItemIndex=1 then
    Add('WHERE K.TTLPO-K.Bayar=0 ');
    Open;
  end;
  {
  with quActDt,SQL do
  begin
    Close;Clear;
    Add('SELECT K.*,K.TTLKJ-K.Bayar as Sisa FROM ( '
       +'select A.KonsinyasiInvID,B.TransDate,SubtotalM,SubtotalU,A.PPN,A.DiscAmount,A.TTLKJ,A.pbbkb,A.ongkir, '
       +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) '
       +'FROM CFtrKKBBDt X INNER JOIN CFtrKKBBHd Y on X.VoucherID=Y.VoucherID '
       +'Where X.Note=A.KonsinyasiInvID '
       +'AND CONVERT(VARCHAR(10),Y.Transdate,112)<='''+FormatDateTime('yyyymmdd',date)+'''),0) as Bayar '
       +'from APTrKonsinyasiInvSub A '
       +'inner join APTrKonsinyasiInvHd B on A.KonsinyasiInvID=B.KonsinyasiInvID '
       +'WHERE A.POID=:POID ) as K ');
    Open;
  end;  }
end;

procedure TfmAPRptBayarPO.FormShow(Sender: TObject);
begin
  inherited;
  dt1.DAte := Date;
  quAct.Active := TRUE;
  quActDt.Active := TRUE;
  bbRefreshClick(bbRefresh);
end;

procedure TfmAPRptBayarPO.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmAPRptBayarPO.dsActStateChange(Sender: TObject);
begin
  inherited;
  SETReadOnly(dgrReportColumn1,TRUE);
  SETReadOnly(dgrReportColumn2,TRUE);
  SETReadOnly(dgrReportColumn3,TRUE);
  SETReadOnly(dgrReportColumn4,TRUE);
  SETReadOnly(dgrReportColumn5,TRUE);
  SETReadOnly(dgrReportColumn6,TRUE);
  SETReadOnly(dgrReportColumn7,TRUE);
  SETReadOnly(dgrReportColumn8,TRUE);
end;

procedure TfmAPRptBayarPO.dsActDtStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column1,TRUE);
  SetReadOnly(dxDBGrid1Column2,TRUE);
  SetReadOnly(dxDBGrid1Column3,TRUE);
  SetReadOnly(dxDBGrid1Column4,TRUE);
  SetReadOnly(dxDBGrid1Column5,TRUE);
end;

procedure TfmAPRptBayarPO.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmAPRptBayarPO.bbExcelClick(Sender: TObject);
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
