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
    Label4: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    ActionList: TActionList;
    ActPrint: TAction;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    rbAll2: TRadioButton;
    rbselect2: TRadioButton;
    KodeDari: TdxButtonEdit;
    dxButtonEdit1: TdxButtonEdit;
    bbCancel: TdxButton;
    quActItemID: TStringField;
    quActItemName: TStringField;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure dxGudangKeyPress(Sender: TObject; var Key: Char);
    procedure KodeDariKeyPress(Sender: TObject; var Key: Char);
    procedure KodeSampaiKeyPress(Sender: TObject; var Key: Char);
    procedure TypeBarangKeyPress(Sender: TObject; var Key: Char);
    procedure KodeDariEnter(Sender: TObject);
    procedure KodeSampaiEnter(Sender: TObject);
    procedure TypeBarangEnter(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure rbAll2Click(Sender: TObject);
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

  if TRIM(KodeDari.Text) = '' then
  begin
    ShowMessage('Anda Belum Memilih Gudang !');
    KodeDari.SetFocus;
    Abort;
  end;

  with TfmINQRRptHistoryStok.Create(Self) do
     try
       qrlTitle.Caption := 'KARTU STOCK BARANG';
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       tglDari := dt1.Date;
       tglsmp := dt2.Date;

       with qu001,SQL do
       begin
         Close;Clear;
         add(' SELECT DISTINCT A.WareHouseId,B.WareHouseName as Gudang FROM Allitem A '
            +' INNER JOIN INMsWareHouse B ON A.WareHouseID=B.WareHouseID');
         Add(' WHERE CONVERT(VARCHAR(8),A.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
         Add(' AND A.WarehouseID='''+KodeDari.Text+''' ');
         if rbSelect2.Checked then
         Add(' and A.ItemID IN '+SelGrid(quAct,dbgList,'ItemID'));
         Add(' ORDER BY A.WareHouseID ');
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
         add(' SELECT DISTINCT A.ItemId,B.ItemName as Barang,B.ItemName,B.TypeUnit,B.UOMId,WareHouseID '
            +' FROM AllItem A '
            +' INNER JOIN INMsItem B ON A.ItemID=B.ItemID WHERE WareHouseID=:WareHouseId '
            +' AND CONVERT(varchar(8),A.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
         if rbSelect2.Checked then
         Add(' and A.ItemID IN '+SelGrid(quAct,dbgList,'ItemID'));
         add(' order by B.ItemName ');
         Open;
       end;

       qu003.Open;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;

     finally
        free;
        KodeDari.SetFocus;
        
     end;
end;

procedure TfmINRptHistoryBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date:=EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date:=date;
  quAct.Open;
  kodedari.SetFocus;
end;

procedure TfmINRptHistoryBarangDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmINRptHistoryBarangDlg.KodeDariButtonClick(Sender: TObject;
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

procedure TfmINRptHistoryBarangDlg.dxGudangKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmINRptHistoryBarangDlg.KodeDariKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmINRptHistoryBarangDlg.KodeSampaiKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmINRptHistoryBarangDlg.TypeBarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmINRptHistoryBarangDlg.KodeDariEnter(Sender: TObject);
begin
  inherited;
//  kodedari.Text := '';
end;

procedure TfmINRptHistoryBarangDlg.KodeSampaiEnter(Sender: TObject);
begin
  inherited;
 // KodeSampai.text := '';
end;

procedure TfmINRptHistoryBarangDlg.TypeBarangEnter(Sender: TObject);
begin
  inherited;
// TypeBarang.Text := '';
end;

procedure TfmINRptHistoryBarangDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Master Barang';
       SQLString := ' SELECT ItemName as Nama_Barang,ItemID as Part_Number,A.TypeUnit, '
                   +' CASE WHEN A.FgActive=''Y'' THEN ''AKTIF'' ELSE ''TDK AKTIF'' END as Status From INMSItem A '
                   +' order by A.ItemName, A.ItemID ';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('ItemID',Res[1],[]);
       end;
    finally
       free;
  end;
end;

procedure TfmINRptHistoryBarangDlg.rbAll2Click(Sender: TObject);
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
