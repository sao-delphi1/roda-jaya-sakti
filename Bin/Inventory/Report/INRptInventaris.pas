unit INRptInventaris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, ComCtrls, dxTL, dxDBCtrl, dxDBGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmINRptInventaris = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    quActFlagIN: TStringField;
    quActTransID: TStringField;
    quActTransdate: TDateTimeField;
    quActItemName: TStringField;
    quActItemID: TStringField;
    quActTypeUnit: TStringField;
    quActNoUnit: TStringField;
    quActSalesName: TStringField;
    quActJumlah: TBCDField;
    quActUOMID2: TStringField;
    quActNote: TStringField;
    quActWarehouseID: TStringField;
    quActupddate: TDateTimeField;
    quActupduser: TStringField;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn11: TdxDBGridColumn;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsActDataChange(Sender: TObject; Field: TField);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptInventaris: TfmINRptInventaris;

implementation

uses MyUnit, UnitGeneral, UnitDate, QRRptInventaris, RptLv0;
{$R *.dfm}

procedure TfmINRptInventaris.FormShow(Sender: TObject);
begin
  inherited;
  dtpDari.Date := EncodeDate(GetYear(Date),GetMOnth(Date),1);
  dtpSmp.Date := Date;

  bbRefreshClick(bbrefresh);
end;

procedure TfmINRptInventaris.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add(' SELECT K.* FROM ( '
       +' select B.FlagIN,A.TransID,B.Transdate,C.ItemName,A.ItemID,C.TypeUnit,ISNULL(A.NoUnit,''-'') as NoUnit, '
       +' D.SalesName,A.Qty as Jumlah,C.UOMID2, '
       +' A.Alasan as Note,B.WarehouseID,A.upddate,A.upduser '
       +' from INTrAdjustmentDt A '
       +' inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PI'' '
       +' inner join INMsItem C on A.ItemID=C.ItemId '
       +' inner join ARMsSales D on A.NoUnit=D.SalesID '
       +' Where A.FgStatus IN (''K'') '
       +' ) as K INNER JOIN INMsWarehouse L on K.WarehouseID=L.WarehouseID '
       +' WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dtpdari.date)+''' AND '''+FormatDatetime('yyyymmdd',dtpsmp.date)+''' ');
    Open;
  end;
end;

procedure TfmINRptInventaris.dsActDataChange(Sender: TObject;
  Field: TField);
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
  SetReadOnly(dgrReportColumn13,TRUE);
  SetReadOnly(dgrReportColumn11,TRUE);
  SetReadOnly(dgrReportColumn12,TRUE);
  SetReadOnly(dgrReportColumn14,TRUE);
end;

procedure TfmINRptInventaris.bbExcelClick(Sender: TObject);
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

procedure TfmINRptInventaris.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmINRptInventaris.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmQRRptInventaris.Create(Self) do
    try

      qrlTitle.Caption := 'Laporan Inventaris';

      with qu001,SQL do
      Begin
        Close;Clear;
        add(' select A.NoUnit,C.SalesName,D.NmMaster,C.Jabatan,C.NIK from INTrAdjustmentDt A '
           +' inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PI'' '
           +' inner join ARMsSales C on A.NoUnit=C.SalesID '
           +' left join AllMaster D on C.department=D.KdMaster AND D.FgMaster=''D'' ');
        Open;
      End;

      with qu002,SQL do
      Begin
        Close;Clear;
        add('select DISTINCT A.NoUnit,A.ItemID,C.ItemName, '
           +'ISNULL((SELECT TOP 1 Y.Transdate FROM INTrAdjustmentDT X inner join intradjustmenthd Y on X.transID=Y.TransID '
           +'where X.itemid=A.ItemID and X.nounit=A.nounit order by Y.Transdate DESC),'''') as Tgl_Terima, '
           +'ISNULL((SELECT TOP 1 X.Qty FROM INTrAdjustmentDT X inner join intradjustmenthd Y on X.transID=Y.TransID '
           +'where X.itemid=A.ItemID and X.nounit=A.nounit order by Y.Transdate DESC),0) as Qty, '
           +'C.UOMID from INTrAdjustmentDt A '
           +'inner join INTrAdjustmentHd B on A.TransID=B.TransID AND B.FlagIN=''PI'' '
           +'inner join INMsItem C on A.ItemID=C.itemid WHERE A.NOUnit=:NoUnit ORDER BY C.ItemName ');
        Parameters.ParamByName('NoUnit').DataType := ftString;
        Open;
      End;

      MyReport.PreviewModal;

    finally
      free;
    end;
end;

end.
