unit ARRptPenjPerBrgDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton,
  ActnList, dxDBELib;

type
  TfmARRptPenjPerBrgDlg = class(TfmRptDlg)
    quActItemID: TStringField;
    quActItemName: TStringField;
    ActionList: TActionList;
    ActPrint: TAction;
    rcNota: TdxCheckEdit;
    ActSearch: TAction;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbJenis: TRadioGroup;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    bbCancel: TdxButton;
    dxJenisBrg: TdxImageEdit;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    KodeDari: TdxButtonEdit;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    StLap : string;
  end;

var
  fmARRptPenjPerBrgDlg: TfmARRptPenjPerBrgDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService, 
  APQRRptPembPerBrg, ARQRRptPenjPerBrg, Search, UnitDate;

{$R *.dfm}

procedure TfmARRptPenjPerBrgDlg.bbPreviewClick(Sender: TObject);
var Jenis : string;
begin
  inherited;
  with TfmARQRRptPenjPerBrg.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       Tanggaldari := dt1.date;
       TanggalSampai := dt2.date;

      // if dxJenisBrg.Text = 'M' then Jenis := 'MESIN' else
      //   if dxJenisBrg.Text = 'S' then Jenis := 'SPARE PART' else  Jenis := 'MESIN DAN SPARE PART';

    {   if rbJenis.ItemIndex = 0 then
         qrlValuta.Caption := 'VALUTA : RUPIAH - JENIS : '+Jenis
       else
         qrlValuta.Caption := 'VALUTA : US DOLLAR - JENIS : '+Jenis;     }

       if rcNota.Checked then
       begin
         bnd001.Enabled := True;
       end else
       begin
         bnd001.Enabled := False; QRLabel1.Enabled := False; QRLabel2.Caption := 'Barang'; QRLabel3.Enabled := False;
         QRLabel5.Enabled := False; QRLabel6.Enabled := False; QRDBText3.Left := 12;
       end;

       if StLap = 'Jual' then
       begin
         with qu001,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT A.ItemID,B.Tipe,B.ItemName as Barang,ISNULL(SUM(A.Qty),0) as Jumlah,ISNULL(SUM(A.Qty*A.Price),0) as Total '
              +'FROM ARTrKonInvPelDt A INNER JOIN ARTrKonInvPelHd C ON A.KonInvPelID=C.KonInvPelID '
              +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID WHERE Convert(varchar(8),C.TransDate,112) '
              +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
           if rbJenis.ItemIndex = 0 then
              Add('AND C.CurrID=''IDR'' ')
           else
              Add('AND C.CurrID=''USD'' ');
           if dxJenisBrg.Text <> 'A' then
              Add('AND B.Jenis='''+dxJenisBrg.Text+''' ');
           if rbSelect.Checked then
              Add(' AND A.ItemID IN '+SelGrid(quAct,dbgList,'ItemID'));
           Add('GROUP BY A.ItemID,B.Tipe,B.ItemName ORDER BY B.Tipe,A.ItemID');
           Open;
           if IsEmpty then
           begin
             ShowMessage('No Data !');
             Abort;
           end;
         end;

         with qu002,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT A.ItemID,C.KonInvPelID,CONVERT(VARCHAR(10),C.Transdate,103) as Tgl,CONVERT(VARCHAR(8),C.Transdate,112) as Tgl2,'
              +'ISNULL(A.Qty,0) as Qty,B.CustName,C.CurrID,ISNULL(A.Price,0) as Price,ISNULL(A.Price*A.Qty,0) as Total,B.City '
              +'FROM ARTrKonInvPelDt A INNER JOIN ARTrKonInvPelHd C ON A.KonInvPelID=C.KonInvPelID INNER JOIN ARMsCustomer B ON C.CustID=B.CustID '
              +'WHERE A.ItemId=:ItemID AND Convert(varchar(8),TransDate,112) '
              +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
           if rbJenis.ItemIndex = 0 then
              Add('AND C.CurrID=''IDR'' ')
           else
              Add('AND C.CurrID=''USD'' ');
           Add('ORDER BY CONVERT(VARCHAR(8),C.Transdate,112),C.KonInvPelID');
           Parameters.ParamByName('ItemId').DataType := ftString;
           Open;
         end;
       end else
       begin
         QRLabel6.Caption := 'Supplier';
         with qu001,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT A.ItemID,B.Tipe,B.ItemName2 as Barang,ISNULL(SUM(A.Qty-A.DiscItem),0) as Jumlah,B.UOMID2,'
              +'ISNULL((CASE WHEN C.Fgtax=''Y'' THEN SUM((A.Qty-A.DiscItem)*(A.Price-(A.Price*A.Disc/100)))*1.1 ELSE '
              +'SUM((A.Qty-A.DiscItem)*(A.Price-(A.Price*A.Disc/100))) END),0) as Total '
              +'FROM APTrKonsinyasiInvDt A INNER JOIN APTrKonsinyasiInvHd C ON A.KonsinyasiInvID=C.KonsinyasiInvID '
              +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID WHERE Convert(varchar(8),C.TransDate,112) '
              +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
           if rbJenis.ItemIndex = 0 then
              Add('AND C.CurrID=''IDR'' ')
           else
              Add('AND C.CurrID=''USD'' ');
           if dxJenisBrg.Text <> 'A' then
              Add('AND B.Jenis='''+dxJenisBrg.Text+''' ');
           if rbSelect.Checked then
              Add(' AND A.ItemID IN '+SelGrid(quAct,dbgList,'ItemID'));
           Add('GROUP BY A.ItemID,B.Tipe,B.ItemName,B.ItemName2,C.FgTax,B.UOMID2 ORDER BY B.ItemName2,A.ItemID');
           Open;
           if IsEmpty then
           begin
             ShowMessage('No Data !');
             Abort;
           end;
         end;

         with qu002,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT A.ItemID,C.KonsinyasiInvID KonInvPelID,CONVERT(VARCHAR(10),C.Transdate,103) as Tgl,CONVERT(VARCHAR(8),C.Transdate,112) as Tgl2,'
              +'ISNULL(A.Qty-A.DiscItem,0) as Qty,B.SuppName CustName,C.CurrID,'
              +'ISNULL((CASE WHEN C.FgTax=''Y'' THEN ((A.Price-(A.Price*A.Disc/100)))*1.1 Else ((A.Price-(A.Price*A.Disc/100))*(A.Qty-A.DiscItem)) END),0) as Price,'
              +'ISNULL((CASE WHEN C.FgTax=''Y'' THEN ((A.Price-(A.Price*A.Disc/100))*(A.Qty-A.DiscItem))*1.1 Else ((A.Price-(A.Price*A.Disc/100))*(A.Qty-A.DiscItem)) END),0) as Total,B.City '
              +'FROM APTrKonsinyasiInvDt A INNER JOIN APTrKonsinyasiInvHd C ON A.KonsinyasiInvID=C.KonsinyasiInvID INNER JOIN APMsSupplier B ON C.SuppID=B.SuppID '
              +'WHERE A.ItemId=:ItemID AND Convert(varchar(8),TransDate,112) '
              +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
           if rbJenis.ItemIndex = 0 then
              Add('AND C.CurrID=''IDR'' ')
           else
              Add('AND C.CurrID=''USD'' ');
           Add('ORDER BY CONVERT(VARCHAR(8),C.Transdate,112),C.KonInvPelID');
           Parameters.ParamByName('ItemId').DataType := ftString;
           Open;
         end;
       end;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;


     finally
        free;
     end;
end;

procedure TfmARRptPenjPerBrgDlg.FormShow(Sender: TObject);
begin
  inherited;
  dxJenisBrg.Text := 'A';
  KodeDari.SetFocus;
  quAct.Open;
  dt1.Date:=EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
  if StLap = 'Jual' then
    laTitle.Caption := 'Laporan Penjualan Per Barang'
  else
    laTitle.Caption := 'Laporan Pembelian Per Barang';
end;

procedure TfmARRptPenjPerBrgDlg.rbSelectClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmARRptPenjPerBrgDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := ' SELECT ItemId as Kode_Barang,ItemName as Nama_Barang FROM INMsItem A ORDER BY ItemID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('ItemID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptPenjPerBrgDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARRptPenjPerBrgDlg.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := ' SELECT ItemId as Kode_Barang,ItemName as Nama_Barang FROM INMsItem A ORDER BY ItemID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('ItemID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

end.
