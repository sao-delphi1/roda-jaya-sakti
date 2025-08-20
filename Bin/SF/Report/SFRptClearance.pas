unit SFRptClearance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxPSCore,
  ComCtrls;

type
  TfmSFRptClearance = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    bbRefresh: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    dgrReport: TdxDBGrid;
    quActTransDate: TDateTimeField;
    quActTransID: TStringField;
    quActFgClearance: TStringField;
    quActItemID: TStringField;
    quActNoUnit: TStringField;
    quActItemName: TStringField;
    quActQty: TBCDField;
    quActNoTeID: TStringField;
    quActKepada: TStringField;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridImageColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FgDivisi : string;
  end;

var
  fmSFRptClearance: TfmSFRptClearance;

implementation

uses MyUnit, UnitGeneral;

{$R *.dfm}

procedure TfmSFRptClearance.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  bbRefreshClick(bbRefresh);
end;

procedure TfmSFRptClearance.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select B.TransDate,A.TransID,FgClearance,A.ItemID,A.NoUnit,C.ItemName,A.Qty,A.NoTeID, '
       +'CASE WHEN A.FgClearance=''U'' THEN F.Description WHEN A.FgClearance=''K'' THEN D.SalesName ELSE E.DivisiName END as Kepada '
       +'from SFTrClearanceDt A inner join SFTrClearanceHd B on A.TransID=B.TransID AND ISNULL(FgDivisi,''LOG'')='''+FgDivisi+''' ');
    if KdCab<>'HO' then
    Add('AND B.KdCab='''+KdCab+''' ');
    Add('inner join INMsItem C on A.ItemId=C.ItemID '
       +'left join ARMsSales D on A.NoUnit=D.SalesID '
       +'left join INMsDivisi E on A.NoUnit=E.DivisiID '
       +'left join INMsNoUnit F on A.NoUnit=F.NoUnit '
       +'WHERE CONVERT(VARCHAR(10),B.TransDate,112) BETWEEN '''+FormatDateTime('yyyymmdd',DateTimePicker1.Date)+''' '
       +'AND '''+FormatDateTime('yyyymmdd',DateTimePicker2.Date)+''' ');
    Open;
  end;
end;

procedure TfmSFRptClearance.bbExcelClick(Sender: TObject);
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

procedure TfmSFRptClearance.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
