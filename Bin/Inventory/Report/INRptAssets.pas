unit INRptAssets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCore, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib;

type
  TfmINRptAssets = class(TfmRptDlg)
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
    quActAssetsID: TStringField;
    quActAssetsName: TStringField;
    quActTglBeli: TStringField;
    quActTglJual: TStringField;
    quActAssetsValue: TBCDField;
    quActJenis: TStringField;
    quActDisusut: TStringField;
    quActLamaSusut: TIntegerField;
    quActStatus: TStringField;
    quActRekeningD: TStringField;
    quActRekeningK: TStringField;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    quActValueSusut: TBCDField;
    quActSisaBuku: TBCDField;
    dt1: TdxDateEdit;
    Label1: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    quActFgActive: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptAssets: TfmINRptAssets;

implementation

{$R *.dfm}

procedure TfmINRptAssets.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  dt1.Date := Date;
  Button1Click(Button1);
end;

procedure TfmINRptAssets.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dgrReport.SaveToXLS(saveDlg.FileName, true)
      else
        dgrReport.SaveToXLS(saveDlg.FileName + '.xls', true)
    end
end;

procedure TfmINRptAssets.Button1Click(Sender: TObject);
begin
  inherited;
  with quAct,SQl do
  begin
    Close;Clear;
    Add( ''
        +'Select K.*,K.AssetsValue-K.ValueSusut as SisaBuku FROM ( '
        +'select A.AssetsID,A.AssetsName,CONVERT(VARCHAR(10),A.tglbeli,103) as TglBeli, '
        +'CASE WHEN A.FgActive=''Y'' THEN ''-'' ELSE CONVERT(VARCHAR(10),A.tgljual,103) END as TglJual,A.AssetsValue, '
        +'CASE WHEN A.AssetsType=1 THEN ''KENDARAAN'' '
        +'WHEN A.AssetsType=1 THEN ''TANAH'' '
        +'WHEN A.AssetsType=1 THEN ''MESIN/PERALATAN'' '
        +'WHEN A.AssetsType=1 THEN ''GEDUNG/BANGUNAN'' ELSE ''FURNITURE'' END as Jenis, '
        +'A.FgActive, '
        +'CASE WHEN A.FgSusut=''Y'' THEN ''YA'' ELSE ''TDK'' END as Disusut,A.term as LamaSusut, '
        +'CASE WHEN A.FgActive=''Y'' THEN ''ACTIVE'' '
        +'WHEN A.FgActive=''T'' THEN ''DISPOSAL'' ELSE ''SOLD'' END as Status, '
        +'A.RekeningD,A.RekeningK, '
        +'(select SUM(X.JumlahD) from CFTrKKBBHd X Where X.VoucherNo=A.AssetsID '
        +'AND CONVERT(varchar(8),X.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ) as ValueSusut '
        +'from inmsassets A ) as K ');
    if CheckBox1.Checked then
    Add('WHERE K.FgActive=''Y'' ');
    Open;
  end;
end;

end.
