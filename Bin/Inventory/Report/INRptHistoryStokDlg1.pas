unit INRptHistoryStokDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton,
  ActnList;

type
  TfmINRptHistoryBarangDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    dxGudang: TdxImageEdit;
    KodeDari: TdxButtonEdit;
    KodeSampai: TdxButtonEdit;
    TypeBarang: TdxButtonEdit;
    ActionList: TActionList;
    ActPrint: TAction;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure KodeSampaiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TypeBarangButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptHistoryBarangDlg: TfmINRptHistoryBarangDlg;

implementation

uses StdLv0, INQRRptHistoryStok, UnitGeneral, Search, UnitDate, MyUnit;

{$R *.dfm}

procedure TfmINRptHistoryBarangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if TRIM(dxGudang.Text) = '' then
  begin
    pesan('Gudang tidak boleh kosong');
    dxGudang.SetFocus;
    Abort;
  end;
  if TRIM(KodeDari.Text) = '' then
  begin
    pesan('Dari Kode Barang tidak boleh kosong');
    KodeDari.SetFocus;
    Abort;
  end;
  if TRIM(KodeSampai.Text) = '' then KodeSampai.Text := KodeDari.Text;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM INMsItem WHERE ItemID='''+KodeDari.Text+''' ');
    Open;
    if IsEmpty then
    begin
      pesan('Kode Barang dari tidak terdaftar');
      KodeDari.SetFocus;
      Abort;
    end;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM INMsItem WHERE ItemID='''+KodeSampai.Text+''' ');
    Open;
    if IsEmpty then
    begin
      pesan('Kode Barang sampai tidak terdaftar');
      KodeSampai.SetFocus;
      Abort;
    end;
  end;
  if TRIM(TypeBarang.Text) <> '' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT * FROM INMsItem WHERE Tipe = '''+TypeBarang.Text+''' ');
      Open;
    end;
  end;

  with TfmINQRRptHistoryStok.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       tgldari:=dt1.date;
       tglsmp:=dt2.Date;

       with qu001,SQL do
       begin
         Close;Clear;
         add('SELECT DISTINCT A.WareHouseId,(A.WareHouseID+''-''+B.WareHouseName) as Gudang FROM Allitem A '
            +'INNER JOIN INMsWareHouse B ON A.WareHouseID=B.WareHouseID');
         Add(' WHERE CONVERT(VARCHAR(8),A.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
         Add(' AND A.WarehouseID='''+dxGudang.Text+''' AND A.ItemID BETWEEN '''+KodeDari.Text+''' AND '''+KodeSampai.Text+''' ');
         Add(' ORDER BY A.WareHouseID ');
         //showmessage(sql.Text);
         Open;
         if IsEmpty then
         begin
           MsgInfo('No Data !');
           Abort;
         end;
       end;

       with qu002,SQL do
       begin
         Close;Clear;
         add('SELECT DISTINCT A.ItemId,B.ItemName as Barang,B.ItemName,B.UOMId,WareHouseID,'
            +'ISNULL(B.UserPrice,0) as HargaJual FROM AllItem A '
            +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID WHERE WareHouseID=:WareHouseId '
            +' AND CONVERT(varchar(8),A.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
         Add(' AND A.ItemID BETWEEN '''+KodeDari.Text+''' AND '''+KodeSampai.Text+''' ');
         if TRIM(TypeBarang.Text) <> '' then
            Add(' AND B.Tipe='''+TypeBarang.Text+''' ');
         add(' order by A.ItemID ');
         //showmessage(sql.Text);
         Open;
       end;

       qu003.Open;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;

     finally
        free;
     end;
end;

procedure TfmINRptHistoryBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date:=EncodeDate(GetYear(Date),1,1);
  dt2.Date:=date;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT WarehouseID,WarehouseName FROM INMsWarehouse ORDER BY WarehouseID');
    Open;
  end;
  dxGudang.Clear;
  while not quAct.Eof do
  begin
    dxGudang.Values.Add(quAct.FieldByName('WarehouseID').AsString);
    dxGudang.Descriptions.Add(quAct.FieldByName('WarehouseName').AsString);
    quAct.Next;
  end;
  dxGudang.Text := sDGPj;

end;

procedure TfmINRptHistoryBarangDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINRptHistoryBarangDlg.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := ' SELECT ItemID as Kode_Barang,ItemName as Nama_Barang,A.Tipe,'
                   +'(SELECT ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                   +'   FROM ALLITEM F WHERE CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
                   +'   AND F.ItemID=A.ItemID AND F.WarehouseID='''+dxGudang.Text+''') as Stock,UserPRice Harga_Jual,'
                   +' CASE WHEN A.FgActive=''Y'' THEN ''Active'' ELSE ''Tidak Active'' END as Status From INMSItem A '
                   +' INNER JOIN INMsGroup C ON A.GroupID = C.GroupID '
                   +' order by A.GroupID, A.ItemID ';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         KodeDari.Text := Res[0];
       end;
    finally
       free;
  end;
end;

procedure TfmINRptHistoryBarangDlg.KodeSampaiButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := ' SELECT ItemID as Kode_Barang,ItemName as Nama_Barang,A.Tipe,'
                   +'(SELECT ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                   +'   FROM ALLITEM F WHERE CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
                   +'   AND F.ItemID=A.ItemID AND F.WarehouseID='''+dxGudang.Text+''') as Stock,UserPRice Harga_Jual,'
                   +' CASE WHEN A.Jenis=''S'' THEN ''SPARE PART'' ELSE ''MESIN'' END as Jenis,C.GroupDesc as Group_Barang,'
                   +' CASE WHEN A.FgActive=''Y'' THEN ''Active'' ELSE ''Tidak Active'' END as Status From INMSItem A '
                   +' INNER JOIN INMsGroup C ON A.GroupID = C.GroupID '
                   +' order by A.GroupID, A.ItemID ';
       KeyValue := KodeSampai.Text;
       if ShowModal = MrOK then
       begin
         KodeSampai.Text := Res[0];
       end;
    finally
       free;
  end;
end;

procedure TfmINRptHistoryBarangDlg.TypeBarangButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Tipe Barang';
       SQLString := 'SELECT DISTINCT Tipe  FROM INMsItem ORDER BY Tipe';
       KeyValue := TypeBarang.Text;
       if ShowModal = MrOK then
       begin
         TypeBarang.Text := Res[0];
       end;
    finally
       free;
  end;
end;

end.
