unit CFRptPOBlmInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, ComCtrls, dxTL, dxDBCtrl, dxDBGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmCFRptPOBlmInv = class(TfmRptDlg)
    grbKartu: TGroupBox;
    bbRefresh: TBitBtn;
    dtpDari: TDateTimePicker;
    dgrReport: TdxDBGrid;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    quActPOID: TStringField;
    quActTanggal: TStringField;
    quActSuppName: TStringField;
    quActTTLPO: TBCDField;
    quActStPO: TBCDField;
    quActPPN: TBCDField;
    quActDiscAmount: TBCDField;
    quActSiteName: TStringField;
    quActTglFPP: TStringField;
    quActSelisih: TIntegerField;
    CheckBox3: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    quActongkir: TBCDField;
    quActpbbkb: TBCDField;
    dgrReportColumn11: TdxDBGridColumn;
    dgrReportColumn12: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptPOBlmInv: TfmCFRptPOBlmInv;

implementation

uses UnitGeneral;

{$R *.dfm}

procedure TfmCFRptPOBlmInv.FormShow(Sender: TObject);
begin
  inherited;
  dtpDari.Date := Date;
  quAct.Active := TRUE;

  bbRefreshClick(bbRefresh);
end;

procedure TfmCFRptPOBlmInv.bbRefreshClick(Sender: TObject);
var compa : string;
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  compa := 'RJS';

  with quAct,SQL do
  begin
    Close;Clear;
    Add('select A.POID,CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,B.SuppName,A.TTLPO,A.StPO,A.Ongkir,A.PBBKB,A.PPN,A.DiscAmount,C.SiteName, '
       +'ISNULL((Select CONVERT(VARCHAR(10),Y.Transdate,103) FROM APTrKonsinyasiInvSub X '
       +'INNER JOIN ApTrKonsinyasiInvHD Y on X.KonsinyasiInvId=Y.KonsinyasiInvID WHERE X.POID=A.POID),''-'') as TglFPP, '
       +'DATEDIFF(day,A.Transdate,ISNULL((Select Y.TransDate FROM APTrKonsinyasiInvSub X '
       +'INNER JOIN ApTrKonsinyasiInvHD Y on X.KonsinyasiInvId=Y.KonsinyasiInvID WHERE X.POID=A.POID),GETDATE())) as Selisih '
       +'from APTrPurchaseOrderHd A inner join APMsSupplier B on A.SuppID=B.SuppID '
       +'inner join INMsSites C on A.SiteID=C.SiteID '
       +'Where A.FgOto=''Y'' AND A.warehouseID='''+compa+''' AND CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN ''20200101'' AND '''+FormatDatetime('yyyymmdd',dtpDari.Date)+''' ');
    if RadioGroup2.ItemIndex=0 then
    Add('AND A.POID NOT IN (Select X.POID FROM APTrKonsinyasiInvSub X) ');
    if RadioGroup2.ItemIndex=1 then
    Add('AND A.POID IN (Select X.POID FROM APTrKonsinyasiInvSub X) ');
    Add('order by A.Transdate ');
    Open;
  end;
end;

procedure TfmCFRptPOBlmInv.dsActStateChange(Sender: TObject);
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
  SetReadOnly(dgrReportColumn12,TRUE);
  SetReadOnly(dgrReportColumn11,TRUE);
end;

procedure TfmCFRptPOBlmInv.CheckBox3Click(Sender: TObject);
begin
  inherited;
  if CheckBox3.Checked then
  begin
    dgrReportColumn9.Visible := true;
    dgrReportColumn10.Visible := true;
  end else
  begin
    dgrReportColumn9.Visible := false;
    dgrReportColumn10.Visible := false;
  end;
end;

procedure TfmCFRptPOBlmInv.bbExcelClick(Sender: TObject);
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

procedure TfmCFRptPOBlmInv.bbCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

end.
