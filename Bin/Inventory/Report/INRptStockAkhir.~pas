unit INRptStockAkhir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, ComCtrls, dxTL, dxDBCtrl, dxDBGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxEditor, dxEdLib;

type
  TfmINRptStockAkhir = class(TfmRptDlg)
    grbKartu: TGroupBox;
    bbRefresh: TBitBtn;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    bbExcel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    quActLayout: TStringField;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActUOMID: TStringField;
    quActtypeunit: TStringField;
    quActWarehouseID: TStringField;
    quActBarang: TStringField;
    quActUserPrice: TBCDField;
    quActStock: TBCDField;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    quActLharga: TCurrencyField;
    quCalc: TADOQuery;
    dtpsmp: TdxDateEdit;
    Label4: TLabel;
    KodeDari: TdxButtonEdit;
    dxButtonEdit1: TdxButtonEdit;
    quActLTotal: TCurrencyField;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure quActCalcFields(DataSet: TDataSet);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptStockAkhir: TfmINRptStockAkhir;

implementation

uses MyUnit, UnitGeneral, ConMain, Unitdate, Search;

{$R *.dfm}

procedure TfmINRptStockAkhir.FormShow(Sender: TObject);
begin
  inherited;
  dtpSmp.Date := date;
  dtpSmp.SetFocus;
  KodeDari.Text := 'TGF';
 // bbRefreshClick(bbRefresh);
end;

procedure TfmINRptStockAkhir.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if TRIM(KodeDari.Text) = '' then
  begin
    ShowMessage('Anda Belum Memilih Gudang !');
    KodeDari.SetFocus;
    Abort;
  end;
  
    with quAct,SQL do
    Begin
      Close;Clear;
      Add(' SELECT K.LayoutID as Layout,K.ItemID,L.ItemName,L.UOMID,L.TypeUnit,K.WarehouseID,K.Barang,L.UserPrice,K.Stock '
         +' FROM ( '
         +' select ISNULL((SELECT SUM(Case WHEN A.FgTrans < 50  THEN A.QTy ELSE A.Qty * - 1 END)),0) as Stock, '
         +' A.ItemID,A.WarehouseID,ISNULL(A.Barang,''-'') as Barang,ISNULL(A.LayoutID,'''') as LayoutID '
         +' from AllItem A '
         +' WHERE CONVERT(VARCHAR(8),A.TransDate,112) <= '''+FormatDateTime('yyyymmdd',dtpSmp.date)+''' '
         +' GROUP BY A.ItemID,A.WarehouseID,A.Barang,ISNULL(A.LayoutID,'''') '
         +' ) as K inner join INMsItem L on K.ItemID=L.ItemID '
         +' WHERE K.Stock<>0 AND K.WarehouseID='''+KodeDari.Text+''' ');
      Open;
    end;
    
end;

procedure TfmINRptStockAkhir.bbExitClick(Sender: TObject);
begin
  inherited;
    Close;
end;

procedure TfmINRptStockAkhir.bbExcelClick(Sender: TObject);
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

procedure TfmINRptStockAkhir.dsActStateChange(Sender: TObject);
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
end;

procedure TfmINRptStockAkhir.quActCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    {Add(' select TOP 1 PRICE as Harga from ApTrPurchaseOrderDt A inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
       +' WHERE A.ItemID='''+quActItemID.AsString+''' AND convert(varchar(10),B.TransDate,112)<'''+FormatDateTime('yyyymmdd',dtpsmp.date)+''' '
       +' AND B.SiteID=(SELECT ISNULL(X.City,''-'') FROM INMSWarehouse X Where X.WarehouseID='''+quActWarehouseID.ASString+''') '
       +' ORDER BY B.Transdate DESC ');}
    Add(' SELECT UserPrice as Harga FROM INMsItem WHERE ItemID='''+quActItemID.AsString+''' ');
    Open;
  end;
  quActLharga.AsCurrency := quCalc.FieldByName('Harga').AsCurrency;
  quActLTotal.AsCurrency := quActLharga.AsCurrency * quActStock.AsCurrency;
end;

procedure TfmINRptStockAkhir.KodeDariButtonClick(Sender: TObject;
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
         dxButtonEdit1.Text := Res[0];
       end;
    finally
       free;
  end;
end;

end.
