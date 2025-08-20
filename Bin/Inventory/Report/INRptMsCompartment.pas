unit INRptMsCompartment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmINRptMsCompartment = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    quActProductID: TStringField;
    quActProductDesc: TStringField;
    quActUpdDate: TDateTimeField;
    quActUpdUser: TStringField;
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptMsCompartment: TfmINRptMsCompartment;

implementation

uses StdLv0,MyUnit,UnitGeneral;

{$R *.dfm}

procedure TfmINRptMsCompartment.bbExcelClick(Sender: TObject);
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

procedure TfmINRptMsCompartment.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmINRptMsCompartment.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
end;

procedure TfmINRptMsCompartment.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dgrReportColumn1,TRUE);
  SetReadOnly(dgrReportColumn2,TRUE);
end;

end.
