unit RekapConfirmMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore, ComCtrls;

type
  TfmRekapConfirmMR = class(TfmRptDlg)
    RadioGroup1: TRadioGroup;
    BtlBrg: TdxButton;
    CheckBox1: TCheckBox;
    quActPRID: TStringField;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActtypeunit: TStringField;
    quActNoUnit: TStringField;
    quActQty: TBCDField;
    quActUOMID: TStringField;
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
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    RadioGroup2: TRadioGroup;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    quActTgl_MR: TDateTimeField;
    quActMRuser: TStringField;
    quActTgl_PR: TDateTimeField;
    quActPRuser: TStringField;
    quActTgl_PO: TDateTimeField;
    quActPOUser: TStringField;
    quActTgl_terima_HO: TDateTimeField;
    quActHOuser: TStringField;
    quActTgl_SJ: TDateTimeField;
    quActSJuser: TStringField;
    quActTgl_Terima: TDateTimeField;
    quActTerimaUser: TStringField;
    quActTgl_Keluar: TDateTimeField;
    quActKeluarUser: TStringField;
    quActTgl_Pasang: TDateTimeField;
    quActPasangUser: TStringField;
    quActInterval1: TIntegerField;
    quActInterval2: TIntegerField;
    quActInterval3: TIntegerField;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn18: TdxDBGridColumn;
    dgrReportColumn19: TdxDBGridColumn;
    dgrReportColumn20: TdxDBGridColumn;
    dgrReportColumn21: TdxDBGridColumn;
    dgrReportColumn22: TdxDBGridColumn;
    dgrReportColumn23: TdxDBGridColumn;
    dgrReportColumn24: TdxDBGridColumn;
    dgrReportColumn25: TdxDBGridColumn;
    dgrReportColumn26: TdxDBGridColumn;
    procedure dsActStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRekapConfirmMR: TfmRekapConfirmMR;

implementation

uses UnitGeneral,MyUnit,CoNMain,UnitDate,DateUtils;

{$R *.dfm}

procedure TfmRekapConfirmMR.dsActStateChange(Sender: TObject);
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
  SetReadOnly(dgrReportColumn23,TRUE);
  SetReadOnly(dgrReportColumn24,TRUE);
  SetReadOnly(dgrReportColumn25,TRUE);
  SetReadOnly(dgrReportColumn26,TRUE);
end;

procedure TfmRekapConfirmMR.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;

  WindowState := wsMaximized;
  dtpDari.Date := EncodeDate(getyear(date),1,1);
  dtpSmp.Date := Date;

  if KdCab<>'HO' then
  begin
    CheckBox1.Visible := False;
  end else
  begin
    CheckBox1.Checked := TRUE;
  end;

  BtlBrgClick(BtlBrg);
end;

procedure TfmRekapConfirmMR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add(' SELECT K.*,DATEDIFF(day,K.Tgl_MR,ISNULL(K.Tgl_Terima,GETDATE())) as Interval1, '
       +' CASE WHEN DATEDIFF(day,ISNULL(K.Tgl_Keluar,GETDATE()),ISNULL(K.Tgl_Pasang,GETDATE()))<0 THEN 0 ELSE '
       +' DATEDIFF(day,ISNULL(K.Tgl_Keluar,GETDATE()),ISNULL(K.Tgl_Pasang,GETDATE())) END as Interval2, '
       +' DATEDIFF(day,K.Tgl_MR,ISNULL(K.Tgl_Pasang,GETDATE())) as Interval3 FROM ( '
       +' select A.PRID,A.ItemID,C.ItemName,C.typeunit,A.NoUnit,A.Qty,C.UOMID,B.Transdate as Tgl_MR,B.UpdUser as MRuser, '
       +' ISNULL(E.Transdate,null) as Tgl_PR,E.UpdUser as PRuser, '
       +' ISNULL((select TOP 1 Y.Transdate from APTrPurchaseOrderDt X inner join APTrPurchaseOrderHd Y on X.POID=Y.POID '
       +' WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll order by Y.Transdate DESC),null) as Tgl_PO, '
       +' ISNULL((select TOP 1 Y.UpdUser from APTrPurchaseOrderDt X inner join APTrPurchaseOrderHd Y on X.POID=Y.POID '
       +' WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll order by Y.Transdate DESC),null) as POUser, '
       +' ISNULL((select TOP 1 Y.Transdate from APTrKonsinyasiDt X inner join APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID '
       +' WHERE X.ItemID=D.ItemID AND X.Note=D.PRID AND X.FgNum=D.NumAll order by Y.Transdate DESC),null) as Tgl_terima_HO, '
       +' ISNULL((select TOP 1 Y.UpdUser from APTrKonsinyasiDt X inner join APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID '
       +' WHERE X.ItemID=D.ItemID AND X.Note=D.PRID AND X.FgNum=D.NumAll order by Y.Transdate DESC),null) as HOuser, '
       +' ISNULL((select TOP 1 Y.TransferDate from INTrTransferItemDt X inner join INTrTransferItemHd Y on X.TransferID=Y.TransferID '
       +' WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll order by Y.TransferDate DESC),null) as Tgl_SJ, '
       +' ISNULL((select TOP 1 Y.UpdUser from INTrTransferItemDt X inner join INTrTransferItemHd Y on X.TransferID=Y.TransferID '
       +' WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll order by Y.TransferDate DESC),null) as SJuser, '
       +' ISNULL((select TOP 1 Y.Transdate from INTrAdjustmentDt X inner join INTrAdjustmentHd Y on X.TransID=Y.TransID AND X.FgStatus=''T'' '
       +' WHERE X.ItemID=D.ItemID AND Y.nosj IN ( '
       +' select TOP 1 X.TransferID from INTrTransferItemDt X inner join INTrTransferItemHd Y on X.TransferID=Y.TransferID '
       +' WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll order by Y.TransferDate DESC)),null) as Tgl_Terima, '
       +' ISNULL((select TOP 1 Y.UpdUser from INTrAdjustmentDt X inner join INTrAdjustmentHd Y on X.TransID=Y.TransID AND X.FgStatus=''T'' '
       +' WHERE X.ItemID=D.ItemID AND Y.nosj IN ( '
       +' select TOP 1 X.TransferID from INTrTransferItemDt X inner join INTrTransferItemHd Y on X.TransferID=Y.TransferID '
       +' WHERE X.ItemID=D.ItemID AND X.PRID=D.PRID AND X.FgNum=D.NumAll order by Y.TransferDate DESC)),null) as TerimaUser, '
       +' ISNULL((select TOP 1 Y.Transdate from INTrAdjustmentDt X inner join INTrAdjustmentHd Y on X.TransID=Y.TransID AND X.FgStatus=''K'' '
       +' WHERE X.ItemID=D.ItemID AND X.MRID=A.PRID),null) as Tgl_Keluar, '
       +' ISNULL((select TOP 1 Y.UpdUser from INTrAdjustmentDt X inner join INTrAdjustmentHd Y on X.TransID=Y.TransID AND X.FgStatus=''K'' '
       +' WHERE X.ItemID=D.ItemID AND X.MRID=A.PRID),null) as KeluarUser, '
       +' ISNULL(A.ConfirmDate,null) as Tgl_Pasang, '
       +' ISNULL(A.confirmby,null) as PasangUser '
       +' from APTrPurchaseRequestDt A '
       +' inner join APTrPurchaseRequestHd B on A.PRID=B.PRID and B.FgForm=''MR'' '
       +' inner join INMsItem C on A.ItemID=C.ItemID '
       +' LEFT JOIN AptrpurchaseRequestDt D on A.PRID=D.MRID And D.FgNum=A.NumAll AND A.ItemID=D.ItemID '
       +' LEFT JOIN AptrpurchaseRequesthd E on D.PRID=E.PRID ');
    if RadioGroup2.ItemIndex=0 then
    Add(' Where Convert(varchar(10),B.Transdate,112) between '''+FormatDatetime('yyyymmdd',dtpdari.date)+''' and '''+FormatDatetime('yyyymmdd',dtpSmp.date)+''' ')
    else
    Add(' Where Convert(varchar(10),B.Transdate,112) <= '''+FormatDatetime('yyyymmdd',dtpSmp.date)+''' ');
    if RadioGroup1.ItemIndex=0 then
    Add(' AND ISNULL(A.FgConfirm,''T'')=''T'' ');
    if RadioGroup1.ItemIndex=1 then
    Add(' AND ISNULL(A.FgConfirm,''T'')=''Y'' ');
    if RadioGroup1.ItemIndex=2 then
    Add(' AND ISNULL(A.FgConfirm,''T'') IN (''T'',''Y'') ');
    if (KdCab<>'HO') AND (CheckBox1.Checked=FALSE) then
    Add(' AND B.KdCab='''+KdCab+''' ');
    Add(') as K ');
    Open;
  end;
end;

procedure TfmRekapConfirmMR.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmRekapConfirmMR.bbExcelClick(Sender: TObject);
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

procedure TfmRekapConfirmMR.RadioGroup2Click(Sender: TObject);
begin
  inherited;
  if RadioGroup2.ItemIndex = 0 then
  begin
    grbKartu.Width := 311;
    Label3.Visible := True;
    dtpDari.Visible := True;
    dtpSmp.Left := 200;
  end else
  begin
    grbKartu.Width := 172;
    Label3.Visible := False;
    dtpDari.Visible := False;
    dtpSmp.Left := dtpdari.Left;
  end;
end;

end.
