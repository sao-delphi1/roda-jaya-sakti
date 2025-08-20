unit INMutasiBan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxDBGrid, dxTL, dxDBCtrl, dxEditor, dxEdLib;

type
  TfmINMutasiBan = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbAll2: TRadioButton;
    rbselect2: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    dbgItem: TdxDBGrid;
    dxDBGridItemID: TdxDBGridColumn;
    dxDBGridItemName: TdxDBGridColumn;
    quBan: TADOQuery;
    dsBan: TDataSource;
    quBanItemID: TStringField;
    quBanItemName: TStringField;
    quActWarehouseID: TStringField;
    quActWarehouseName: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure rbAll2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StLap : string;
  end;

var
  fmINMutasiBan: TfmINMutasiBan;

implementation

uses MyUnit,UnitDate,UnitGeneral, INRptMutasiBan;

{$R *.dfm}

procedure TfmINMutasiBan.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  quBan.Active := TRUE;

  if stLap='B' then
  begin
    Caption := 'Laporan Mutasi Ban';
    laTitle.Caption := 'Laporan Mutasi Ban';
    with quBan,SQL do
    begin
      Close;Clear;
      Add('SELECT * from inmsitem where jenis=''B'' ');
      Open;
    end;
  end else
  begin
    Caption := 'Laporan Mutasi Oli';
    laTitle.Caption := 'Laporan Mutasi Oli';
    with quBan,SQL do
    begin
      Close;Clear;
      Add('SELECT * from inmsitem where jenis=''O'' ');
      Open;
    end;
  end;

  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := Date;

  if kdcab<>'HO' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('Select * from InMsWarehouse Where Warehouseid<>''GUD HO'' ');
      Open;
    end;
  end;
end;

procedure TfmINMutasiBan.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if StLap='B' then
  begin

    with TfmINRptMutasiBan.Create(Self) do
     try
       qrlTitle.Caption := 'LAPORAN MUTASI BAN';
       qrlPeriode.Caption := 'Periode : '+FormatDatetime('d/M/yyyy',dt1.Date)+' s/d '+FormatDatetime('d/M/yyyy',dt2.Date);

       with qu001,SQL do
       Begin
         Close;Clear;
         add('select DISTINCT A.WarehouseID,A.WarehouseID+'' - ''+C.WarehouseName as Gudang,C.WarehouseName '
            +'from AllItem A '
            +'inner join INMsItem B on A.ItemID=B.ItemID AND B.Jenis=''B'' AND B.FgActive=''Y'' '
            +'INNER JOIN INMsWareHouse C on A.WarehouseID=C.WarehouseID ');
         if RadioButton2.Checked then
         Add('WHERE A.WarehouseID IN '+SelGrid(quAct,dbgList,'WarehouseID'));
         Add(' Order by C.WarehouseName ');
         Open;
       End;

       with qu002,SQL do
       Begin
         Close;Clear;
         add('select DISTINCT A.WarehouseID,A.ItemID,B.ItemName,B.UOMID, '
            +'A.ItemID+'' - ''+B.ItemName as Barang, '
            +'''Stok Per Tanggal '+FormatDatetime('dd/MM/yyyy',dt1.Date)+''' as Ket, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans<50 THEN X.Qty ELSE X.Qty*-1 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID '
            +'AND CONVERT(VARCHAR(10),X.TransDate,112)<'''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0) as Stok '
            +'from AllItem A inner join INMsItem B on A.ItemID=B.ItemID AND B.Jenis=''B'' AND B.FgActive=''Y'' '
            +'AND A.WarehouseID=:WarehouseID ');
         if rbselect2.Checked then
         Add('WHERE A.ItemID IN '+SelGrid(quBan,dbgItem,'ItemID'));
         Parameters.ParamByName('WarehouseID').DataType := ftString;
         Open;
       End;

       With qu003,SQL do
       Begin
         Close;Clear;
         add('select DISTINCT A.WarehouseID,A.ItemID,A.TransDate,CONVERT(VARCHAR(10),A.TransDate,112) as tanggal, '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal2, '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal3, '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal4, '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal5,  '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal6,  '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal7 '
            +'from AllItem A inner join INMsItem B on A.ItemID=B.ItemID AND B.Jenis=''B'' AND B.FgActive=''Y'' '
            +'WHERE CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dt1.Date)+''' AND '''+FormatDatetime('yyyymmdd',dt2.Date)+''' '
            +'AND A.WarehouseID=:WarehouseID AND A.ItemID=:ItemID ORDER BY A.Transdate');
         Parameters.ParamByName('WarehouseID').DataType := ftString;
         Parameters.ParamByName('ItemID').DataType := ftString;
         Open;
       End;

       With qu004,SQL do
       Begin
         Close;Clear;
         add('select DISTINCT *,K.Stok+K.Terima+K.Spare-K.Pasang-K.Mutasi-K.Pinjam as Akhir from ( '
            +'select A.ItemID,CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans<50 THEN X.Qty ELSE X.Qty*-1 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)<:tanggal2),0) as Stok, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (7,3,23,26) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal3),0) as Terima, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (24) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal4),0) as Spare, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (73) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal5),0) as Pasang, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (53,83,52) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal6),0) as Mutasi, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (88) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal7),0) as Pinjam '
            +'from AllItem A inner join INMsItem B on A.ItemID=B.ItemID AND B.Jenis=''B'' AND B.FgActive=''Y'' '
            +'AND A.WarehouseID=:warehouseid AND A.ItemID=:itemid '
            +'AND A.TransDate=:tanggal ) as K ');
         Parameters.ParamByName('WarehouseID').DataType := ftString;
         Parameters.ParamByName('ItemID').DataType := ftString;
         Parameters.ParamByName('tanggal').DataType := ftString;
         Parameters.ParamByName('tanggal2').DataType := ftString;
         Parameters.ParamByName('tanggal3').DataType := ftString;
         Parameters.ParamByName('tanggal4').DataType := ftString;
         Parameters.ParamByName('tanggal5').DataType := ftString;
         Parameters.ParamByName('tanggal6').DataType := ftString;
         Parameters.ParamByName('tanggal7').DataType := ftString;
         Open;
       End;

         if Sender=bbPrint then
            MyReport.Print
         else
            MyReport.PreviewModal;

     finally
        free;
     end;

   end else
   begin

     with TfmINRptMutasiBan.Create(Self) do
     try
       qrlTitle.Caption := 'LAPORAN MUTASI OLI';
       qrlabel4.Caption := 'Ganti Oli';
       QRLabel16.Caption := 'Tambah Oli';
       qrlPeriode.Caption := 'Periode : '+FormatDatetime('d/M/yyyy',dt1.Date)+' s/d '+FormatDatetime('d/M/yyyy',dt2.Date);

       with qu001,SQL do
       Begin
         Close;Clear;
         add('select DISTINCT A.WarehouseID,A.WarehouseID+'' - ''+C.WarehouseName as Gudang,C.WarehouseName '
            +'from AllItem A '
            +'inner join INMsItem B on A.ItemID=B.ItemID AND B.Jenis=''O'' AND B.FgActive=''Y'' '
            +'INNER JOIN INMsWareHouse C on A.WarehouseID=C.WarehouseID ');
         if RadioButton2.Checked then
         Add('WHERE A.WarehouseID IN '+SelGrid(quAct,dbgList,'WarehouseID'));
         Add(' Order by C.WarehouseName ');
         Open;
       End;

       with qu002,SQL do
       Begin
         Close;Clear;
         add('select DISTINCT A.WarehouseID,A.ItemID,B.ItemName,B.UOMID, '
            +'A.ItemID+'' - ''+B.ItemName as Barang, '
            +'''Stok Per Tanggal '+FormatDatetime('dd/MM/yyyy',dt1.Date)+''' as Ket, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans<50 THEN X.Qty ELSE X.Qty*-1 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID '
            +'AND CONVERT(VARCHAR(10),X.TransDate,112)<'''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0) as Stok '
            +'from AllItem A inner join INMsItem B on A.ItemID=B.ItemID AND B.Jenis=''O'' AND B.FgActive=''Y'' '
            +'AND A.WarehouseID=:WarehouseID ');
         if rbselect2.Checked then
         Add('WHERE A.ItemID IN '+SelGrid(quBan,dbgItem,'ItemID'));
         Parameters.ParamByName('WarehouseID').DataType := ftString;
         Open;
       End;

       With qu003,SQL do
       Begin
         Close;Clear;
         add('select DISTINCT A.WarehouseID,A.ItemID,A.TransDate,CONVERT(VARCHAR(10),A.TransDate,112) as tanggal, '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal2, '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal3, '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal4, '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal5,  '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal6,  '
            +'CONVERT(VARCHAR(10),A.TransDate,112) as tanggal7 '
            +'from AllItem A inner join INMsItem B on A.ItemID=B.ItemID AND B.Jenis=''O'' AND B.FgActive=''Y'' '
            +'WHERE CONVERT(VARCHAR(10),A.TransDate,112) BETWEEN '''+FormatDatetime('yyyymmdd',dt1.Date)+''' AND '''+FormatDatetime('yyyymmdd',dt2.Date)+''' '
            +'AND A.WarehouseID=:WarehouseID AND A.ItemID=:ItemID ORDER BY A.Transdate');
         Parameters.ParamByName('WarehouseID').DataType := ftString;
         Parameters.ParamByName('ItemID').DataType := ftString;
         Open;
       End;

       With qu004,SQL do
       Begin
         Close;Clear;
         add('select DISTINCT *,K.Stok+K.Terima-K.Spare-K.Pasang-K.Mutasi-K.Pinjam as Akhir from ( '
            +'select A.ItemID,CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans<50 THEN X.Qty ELSE X.Qty*-1 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)<:tanggal2),0) as Stok, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans<50 THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal3),0) as Terima, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (79) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal4),0) as Spare, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (80) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal5),0) as Pasang, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (53,83,52) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal6),0) as Mutasi, '
            +'ISNULL((SELECT SUM(CASE WHEN X.FgTrans IN (88) THEN X.Qty ELSE 0 END) FROM AllItem X '
            +'WHERE X.ItemID=A.ItemID AND X.WarehouseID=A.WarehouseID AND CONVERT(VARCHAR(10),X.TransDate,112)=:tanggal7),0) as Pinjam '
            +'from AllItem A inner join INMsItem B on A.ItemID=B.ItemID AND B.Jenis=''O'' AND B.FgActive=''Y'' '
            +'AND A.WarehouseID=:warehouseid AND A.ItemID=:itemid '
            +'AND A.TransDate=:tanggal ) as K ');
         Parameters.ParamByName('WarehouseID').DataType := ftString;
         Parameters.ParamByName('ItemID').DataType := ftString;
         Parameters.ParamByName('tanggal').DataType := ftString;
         Parameters.ParamByName('tanggal2').DataType := ftString;
         Parameters.ParamByName('tanggal3').DataType := ftString;
         Parameters.ParamByName('tanggal4').DataType := ftString;
         Parameters.ParamByName('tanggal5').DataType := ftString;
         Parameters.ParamByName('tanggal6').DataType := ftString;
         Parameters.ParamByName('tanggal7').DataType := ftString;
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
end;

procedure TfmINMutasiBan.rbAll2Click(Sender: TObject);
begin
  inherited;
  if Sender=rbAll2 then
  begin
     dbgItem.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect2 then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior + [edgoMultiSelect];
     if dbgItem.FocusedNode <> nil then
       dbgItem.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmINMutasiBan.RadioButton1Click(Sender: TObject);
begin
  inherited;
  if Sender=RadioButton1 then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=RadioButton2 then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

end.
