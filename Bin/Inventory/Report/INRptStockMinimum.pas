unit INRptStockMinimum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCore;

type
  TfmINRptStockMinimum = class(TfmRptDlg)
    Label4: TLabel;
    KodeDari: TdxButtonEdit;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActtypeunit: TStringField;
    quActmerk: TStringField;
    quActMinimumStok: TBCDField;
    quActStock: TBCDField;
    bbCancel: TdxButton;
    cek1: TCheckBox;
    cek2: TCheckBox;
    cek3: TCheckBox;
    cek4: TCheckBox;
    cek6: TCheckBox;
    cek7: TCheckBox;
    cek8: TCheckBox;
    CheckBox1: TCheckBox;
    cek5: TCheckBox;
    quActJenis: TStringField;
    dgrReportColumn7: TdxDBGridImageColumn;
    bbExcel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    RadioGroup1: TRadioGroup;
    CheckBox2: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure bbCancelClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptStockMinimum: TfmINRptStockMinimum;

implementation

uses MyUnit, Search, UnitGeneral;

{$R *.dfm}

procedure TfmINRptStockMinimum.FormShow(Sender: TObject);
begin
  inherited;
  KodeDari.Text := 'TGF';
  bbCancelClick(bbCancel);
end;

procedure TfmINRptStockMinimum.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Master Gudang';
       SQLString := 'SELECT WarehouseName,WarehouseID FROM INMsWarehouse ';
       if ShowModal = MrOK then
       begin
         KodeDari.Text := Res[1];
       end;
    finally
       free;
  end;
end;

procedure TfmINRptStockMinimum.bbCancelClick(Sender: TObject);
var jenis : string;
begin
  inherited;
  jenis := '''XXX''';
  if cek1.Checked then
  jenis := jenis + ',''A''';
  if cek2.Checked then
  jenis := jenis + ',''I''';
  if cek3.Checked then
  jenis := jenis + ',''L''';
  if cek4.Checked then
  jenis := jenis + ',''B''';
  if cek5.Checked then
  jenis := jenis + ',''J''';
  if cek6.Checked then
  jenis := jenis + ',''O''';
  if cek7.Checked then
  jenis := jenis + ',''S''';
  if cek8.Checked then
  jenis := jenis + ',''H''';
  if CheckBox1.Checked then
  jenis := jenis + ',''M''';

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT K.* FROM ( '
       +'select ItemID,ItemName,typeunit,merk,MinimumStok, '
       +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans<50 THEN X.Qty ELSE X.Qty*-1 END) '
       +'FROM AllItem X WHere X.ItemID=A.ItemID AND X.WarehouseID='''+KodeDari.Text+'''),0) as Stock,A.Jenis '
       +'from INMsItem A '//INNER JOIN AllMaster B on A.Jenis=B.KdmAster and B.Fgmaster=''J'' '
       +'WHERE A.Jenis IN ('+jenis+') ');
    if CheckBox2.Checked then
    Add('AND A.FgActive=''Y'' ');
    Add(') as K ');
    if RadioGroup1.ItemIndex=0 then
    Add('WHERE K.Stock<K.MinimumStok ');
    Add('ORDER BY K.ItemName ');
    Open;
  end;
end;

procedure TfmINRptStockMinimum.dsActStateChange(Sender: TObject);
begin
  inherited;
  SETReadOnly2(dgrReportColumn1,TRUE);
  SETReadOnly2(dgrReportColumn2,TRUE);
  SETReadOnly2(dgrReportColumn3,TRUE);
  SETReadOnly2(dgrReportColumn4,TRUE);
  SETReadOnly2(dgrReportColumn5,TRUE);
  SETReadOnly2(dgrReportColumn6,TRUE);
  SETReadOnly2(dgrReportColumn7,TRUE);
end;

procedure TfmINRptStockMinimum.bbExcelClick(Sender: TObject);
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
