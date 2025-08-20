unit APRptPOBlmTerima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxCore, dxButton, dxEditor,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmAPRptPOBlmTerima = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    bbCancel: TdxButton;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    CheckBox2: TCheckBox;
    dxTahun: TdxSpinEdit;
    Label1: TLabel;
    dgrReport: TdxDBGrid;
    quActPOID: TStringField;
    quActTransdate: TDateTimeField;
    quActPRID: TStringField;
    quActSuppName: TStringField;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActTypeUnit: TStringField;
    quActNoUnit: TStringField;
    quActQty: TBCDField;
    quActUOMID: TStringField;
    quActterima: TBCDField;
    quActSisa: TBCDField;
    quActSiteID: TStringField;
    quActWarehouseID: TStringField;
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
    bbExcel: TBitBtn;
    BitBtn1: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    dt2: TdxDateEdit;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
    procedure refreshdata;
  public
    { Public declarations }
  end;

var
  fmAPRptPOBlmTerima: TfmAPRptPOBlmTerima;

implementation

{$R *.dfm}
uses UnitGeneral, MyUnit, ConMain, UnitDate;

procedure TfmAPRptPOBlmTerima.refreshdata;
begin
  if dxTahun.Text='' then
  begin
    dxTahun.Text := '0';
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add(' SELECT K.POID,K.Transdate,K.PRID,M.SuppName,K.ItemID,L.ItemName,L.TypeUnit,K.NoUnit,K.Qty,'
       +' K.UOMID,K.terima,ISNULL(K.Qty-K.Terima,0) as Sisa,K.SiteID,K.WarehouseID '
       +' FROM ( '
       +' select A.POID,A.ItemID2 as ItemID,A.UOMID,A.TypeUnit,A.NoUnit,A.Qty,B.Transdate,A.Price,B.SiteID,B.WarehouseID,B.SuppID,A.PRID, '
       +' ISNULL((SELECT SUM(X.Jumlah) FROM APTrKonsinyasiDt X '
       +' Where X.Note=A.PRID AND X.POID=A.POID AND X.ItemID=A.ItemID2 AND X.FgNum=A.NumAll),0) as Terima '
       +' from APTrPurchaseOrderDt A '
       +' inner join APTrPurchaseOrderHd B on A.POID=B.POID ');
    if ComboBox1.ItemIndex=0 then
    Add(' AND ISNULL(B.warehouseID,''RJS'')=''RJS'' ')
    else
    Add(' AND ISNULL(B.warehouseID,''RJS'')=''TIM'' ');
    Add(' ) as K '
       +' INNER JOIN INMsItem L on K.ItemID=L.ItemID AND L.Ctk=''Y'' '
       +' INNER JOIN APMsSupplier M on K.SuppID=M.SuppID ');
    Add(' WHERE CONVERT(VARCHAR(10),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dt1.date)+''' AND '
       +' '''+FormatDateTime('yyyymmdd',dt2.date)+''' ');
    if CheckBox1.Checked then
    begin
    Add(' AND K.Qty-K.Terima<>0 ');
    if CheckBox2.Checked then
    Add(' AND DATEDIFF(day,K.Transdate,getdate())>='+dxTahun.Text+' ');
    end;
    Add(' ORDER BY K.Transdate ');
    Open;
  end;
end;

procedure TfmAPRptPOBlmTerima.FormShow(Sender: TObject);
begin
  inherited;
  dt1.date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := Date;
  refreshdata;
end;

procedure TfmAPRptPOBlmTerima.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
  begin
    CheckBox2.Enabled := True;
    dxTahun.Enabled := True;
    Label1.Enabled := True;
  end else
  begin
    CheckBox2.Enabled := False;
    dxTahun.Enabled := False;
    Label1.Enabled := False;
  end;
end;

procedure TfmAPRptPOBlmTerima.bbExcelClick(Sender: TObject);
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

procedure TfmAPRptPOBlmTerima.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmAPRptPOBlmTerima.dsActStateChange(Sender: TObject);
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
end;

procedure TfmAPRptPOBlmTerima.bbCancelClick(Sender: TObject);
begin
  inherited;
  refreshdata;
end;

end.
