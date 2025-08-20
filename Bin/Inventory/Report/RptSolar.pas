unit RptSolar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmRptSolar = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    quActWarehouseID: TStringField;
    quActWarehouseName: TStringField;
    rbAll2: TRadioButton;
    rbselect2: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure rbAll2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptSolar: TfmRptSolar;

implementation

{$R *.dfm}
uses UnitDate,QRRptSolar,UnitGeneral;

procedure TfmRptSolar.FormShow(Sender: TObject);
begin
  inherited;
  dt1.DAte := EncodeDate(getYear(Date),getmonth(Date),1);
  dt2.Date := Date;

  quAct.Open;
end;

procedure TfmRptSolar.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmQRRptSolar.Create(Self) do
   try
     qrlTitle.Caption := 'LAPORAN PEMAKAIAN SOLAR';
     qrlPeriode.Caption := 'Periode : '+FormatDatetime('d/M/yyyy',dt1.DAte)+' s/d '+FormatDatetime('d/M/yyyy',dt2.DAte);

     with qu001,SQL do
     Begin
       Close;Clear;
       add('select distinct K.warehouseid,K.warehouseName FROM ( '
          +'select B.WareHouseID,C.WarehouseName '
          +'from INTrAdjustmentHd B '
          +'inner join INMsWarehouse C on B.WareHouseID=C.WarehouseiD '
          +'where B.FlagIN IN (''TS'',''PS'') '
          +'AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dt1.DAte)+''' '
          +'AND '''+FormatDatetime('yyyymmdd',dt2.DAte)+''' '
          +'UNION ALL '
          +'SELECT A.WarehouseID,B.WarehouseName '
          +'FROM ARTrPurchaseOrderHd A inner join inmswarehouse B on A.WarehouseID=B.WarehouseID '
          +'Where A.FgCetak=''Y'' '
          +'AND CONVERT(VARCHAR(8),A.Transdate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dt1.DAte)+''' '
          +'AND '''+FormatDatetime('yyyymmdd',dt2.DAte)+''' '
          +') as K ');
       if rbselect2.Checked then
       Add('Where K.WarehouseID IN '+SelGrid(quAct,dbgList,'WarehouseID'));
       Add(' order by K.WarehouseID ');
       Open;
     End;

     with qu002,SQL do
     Begin
       Close;Clear;
       Add(' select DISTINCT K.WarehouseID,K.ItemID,K.Barang FROM ( '
          +' select B.Transdate,B.WarehouseID,A.ItemID,''Nama Barang : ''+C.ItemName+'', Type Unit : ''+C.TYpeUnit as Barang '
          +' from INTrAdjustmentDt A '
          +' inner join INTrAdjustmentHd B on A.TransID=B.TransID '
          +' inner join inmsitem C on A.ItemiD=C.ItemID and C.Jenis=''L'' '
          +' where B.FlagIN IN (''TS'',''PS'') '
          +' UNION ALL '
          +' select B.Transdate,B.WareHouseID,A.ItemID,''Nama Barang : ''+C.ItemName+'', Type Unit : ''+C.TYpeUnit as Barang '
          +' from ARTrPurchaseOrderDt A inner join ARTrPurchaseOrderHd B on A.POID=B.POID '
          +' inner join INMsItem c on a.ItemID=C.itemid and C.Jenis=''L'' '
          +' Where B.FgCetak=''Y'' '
          +' ) as K '
          +' Where CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dt1.DAte)+''' AND '''+FormatDatetime('yyyymmdd',dt2.DAte)+''' '
          +' AND K.WarehouseID=:WarehouseID '
          +' ORDER BY K.ItemID ');
       Parameters.ParamByName('WarehouseID').DataType := ftString;
       Open;
     End;

     With qu003,SQL do
     Begin
       Close;Clear;
       Add(' select DISTINCT K.WarehouseID,K.ItemID,K.TransDate,K.Tanggal,K.Tanggal2 FROM ( '
          +' SELECT B.WarehouseID,A.ItemID,B.TransDate,CONVERT(VARCHAR(10),B.TransDate,112) as Tanggal, '
          +' CONVERT(VARCHAR(10),B.TransDate,103) as Tanggal2 '
          +' from INTrAdjustmentDt A '
          +' inner join INTrAdjustmentHd B on A.TransID=B.TransID '
          +' inner join INMsItem c on a.ItemID=C.itemid and C.Jenis=''L'' '
          +' where B.FlagIN IN (''TS'',''PS'') '
          +' UNION ALL '
          +' select B.WareHouseID,A.ItemID,B.Transdate,CONVERT(VARCHAR(10),B.TransDate,112) as Tanggal, '
          +' CONVERT(VARCHAR(10),B.TransDate,103) as Tanggal2 '
          +' from ARTrPurchaseOrderDt A inner join ARTrPurchaseOrderHd B on A.POID=B.POID '
          +' inner join INMsItem c on a.ItemID=C.itemid and C.Jenis=''L'' '
          +' where B.FgCetak=''Y'' '
          +' ) as K '
          +' WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dt1.DAte)+''' '
          +' AND '''+FormatDatetime('yyyymmdd',dt2.DAte)+''' '
          +' AND K.ItemID=:ItemID '
          +' and K.WarehouseID=:WarehouseiD '
          +' order by K.ItemID,K.Transdate ');
       Parameters.ParamByName('WarehouseID').DataType := ftString;
       Parameters.ParamByName('ItemID').DataType := ftString;
       Open;
     End;

     With qu004,SQL do
     Begin
       Close;Clear;
       Add('SELECT X.*,ISNULL(X.Stok+X.Terima-X.P-X.H-X.J-X.B-X.R-X.O-X.PJ-X.MG,0) as Akhir FROM ( '
          +'SELECT K.ItemID,K.Tanggal2 as Tanggal, '
          +'ISNULL((SELECT SUM(CASE WHEN FgTrans<50 THEN X.Qty ELSE X.Qty*-1 END) '
          +'FROM AllItem X WHERE X.ItemID=K.ItemID AND CONVERT(VARCHAR(10),X.TransDate,112)<K.Tanggal AND X.WarehouseID=K.WarehouseID),0) as Stok, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN A.Qty ELSE 0 END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TS'',''PS'',''PN'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as Terima, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN 0 ELSE (CASE WHEN A.keperluan=''P'' THEN Qty ELSE 0 END) END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TS'',''PS'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as P, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN 0 ELSE (CASE WHEN A.keperluan=''H'' THEN Qty ELSE 0 END) END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TS'',''PS'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as H, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN 0 ELSE (CASE WHEN A.keperluan=''J'' THEN Qty ELSE 0 END) END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TS'',''PS'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as J, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN 0 ELSE (CASE WHEN A.keperluan=''B'' THEN Qty ELSE 0 END) END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TS'',''PS'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as B, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN 0 ELSE (CASE WHEN A.keperluan=''R'' THEN Qty ELSE 0 END) END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TS'',''PS'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as R, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN 0 ELSE (CASE WHEN A.keperluan=''L'' THEN Qty ELSE 0 END) END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TS'',''PS'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as O, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN 0 ELSE (CASE WHEN A.keperluan=''M'' THEN Qty ELSE 0 END) END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TS'',''PS'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0)+'
          +'ISNULL((SELECT SUM(A.Qty) '
          +'FROM ARTrPurchaseOrderDt A inner join ARTrPurchaseOrderHD B on A.POID=B.POID where B.FgCetak=''Y'' '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as PJ, '
          +'ISNULL((SELECT SUM(A.Qty) '
          +'FROM INTrTransferItemDt A inner join INTrTransferItemHD B on A.TransferID=B.TransferID '
          +'WHERE CONVERT(VARCHAR(10),B.TransferDate,112)=K.Tanggal AND B.WareHouseSrc=K.WarehouseID AND A.ItemID=K.ItemID),0) as MG, '
          +'ISNULL((SELECT SUM(CASE WHEN A.FgStatus=''T'' THEN A.Qty ELSE A.Qty*-1 END) '
          +'FROM INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID where B.FlagIN IN (''TR'') '
          +'AND CONVERT(VARCHAR(10),B.TransDate,112)=K.Tanggal AND B.WareHouseID=K.WarehouseID AND A.ItemID=K.ItemID),0) as Adj '
          +'FROM ( '
          +'select A.ItemID,:tanggal as Tanggal,:tanggal2 as Tanggal2,:warehouseid as WarehouseID FROM INMsItem A WHERE A.ItemID=:ItemID '
          +') as K '
          +') as X ');
       Parameters.ParamByName('WarehouseID').DataType := ftString;
       Parameters.ParamByName('ItemID').DataType := ftString;
       Parameters.ParamByName('tanggal').DataType := ftString;
       Parameters.ParamByName('tanggal2').DataType := ftString;
       Open;
     End;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;

   finally
      free;
   end;
end;

procedure TfmRptSolar.rbAll2Click(Sender: TObject);
begin
  inherited;
  if Sender=rbAll2 then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect2 then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

end.
