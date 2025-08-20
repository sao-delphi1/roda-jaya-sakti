unit ARRptPenjPerSalesDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons, Printers,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton,
  ActnList, dxDBELib;

type
  TfmARRptPenjPerSalesDlg = class(TfmRptDlg)
    quActSalesID: TStringField;
    quActSalesName: TStringField;
    ActionList: TActionList;
    ActPrint: TAction;
    rcNota: TdxCheckEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbJenis: TRadioGroup;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    bbCancel: TdxButton;
    Label1: TLabel;
    dxJenisBrg: TdxImageEdit;
    dbgList: TdxDBGrid;
    dbgListSalesID: TdxDBGridMaskColumn;
    dbgListSalesName: TdxDBGridMaskColumn;
    KodeDari: TdxButtonEdit;
    RgJenis: TRadioGroup;
    Panel1: TPanel;
    Label3: TLabel;
    dxSpinEdit1: TdxSpinEdit;
    Label4: TLabel;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure RgJenisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptPenjPerSalesDlg: TfmARRptPenjPerSalesDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService,
  StdLv0, APQRRptPembPerBrg, APQRRptPembPerSupp, ARQRRptPenjPerCust,
  ARQRRptPenjPerSales, Search, RptLv4, RptLv2, RptLv3, RptLv0, UnitDate,
  ARQRRptKomisiSales, MyUnit;

{$R *.dfm}

procedure TfmARRptPenjPerSalesDlg.bbPreviewClick(Sender: TObject);
var Jenis : string;
begin
  inherited;
  if RgJenis.ItemIndex = 0 then
  begin
  with TfmARQRRptPenjPerSales.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

       if dxJenisBrg.Text = 'M' then Jenis := 'MESIN' else
         if dxJenisBrg.Text = 'S' then Jenis := 'SPARE PART' else  Jenis := 'MESIN DAN SPARE PART';

       if rbJenis.ItemIndex = 0 then
         qrlValuta.Caption := 'VALUTA : RUPIAH - JENIS : '+Jenis
       else
         qrlValuta.Caption := 'VALUTA : US DOLLAR - JENIS : '+Jenis;

       if rcNota.Checked then
       begin
         bnd001.Enabled := True;
       end else
       begin
         bnd001.Enabled := False; QRLabel1.Enabled := False; QRDBText1.Left := 10;
         QRLabel3.Caption := 'Sales'; QRLabel2.Enabled := False; QRLabel10.Enabled := False;
         QRLabel20.Enabled := False; QRLabel25.Enabled := False;
         QRLabel8.Left := 500; QRDBText6.Left := 500;
       end;

       with qu001,SQL do
       begin
         Close;Clear;
         add('SELECT DISTINCT A.SalesID,C.SalesName as Sales,ISNULL(SUM(A.TTLKj),0) as Total FROM ARTrKonInvPelHd A '
            +'INNER JOIN Artrpurchaseorderhd B ON A.SOID=B.POID AND A.CustID=B.CustID '
            +'INNER JOIN ARMsSales C ON A.SalesID=C.SalesID '
            +'WHERE CONVERT(VARCHAR(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
         if rbJenis.ItemIndex = 0 then
            Add('AND A.CurrID=''IDR'' ')
         else
            Add('AND A.CurrID=''USD'' ');
         if dxJenisBrg.Text <> 'A' then
            Add('AND B.Jenis='''+dxJenisBrg.Text+''' ');
         if rbSelect.Checked then
            Add(' AND A.SalesId IN '+SelGrid(quAct,dbgList,'SalesID'));
         add(' GROUP BY A.SalesID,C.SalesName ORDER BY A.SalesId');
         //showmessage(sql.text);
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
          Add('SELECT CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.KonInvPelID as Invoice,C.ItemName,E.POCust,CONVERT(VARCHAR(10),A.Transdate+A.JatuhTempo,103) as JthTempo, '
             +'B.Qty*B.Price as Total,B.Qty,B.Price FROM ARTrKonInvPelHd A INNER JOIN ARTrKonInvPelDt B ON A.KonInvPelID=B.KonInvPelID '
             +'INNER JOIN INMsItem C ON B.ItemID=C.ItemID INNER JOIN Artrpurchaseorderhd D ON A.SOID=D.POID AND A.CustID=D.CustID '
             +'Inner Join Artrpurchaseorderhd E on D.POID=E.POID '
             +'WHERE CONVERT(VARCHAR(8),A.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
             +'AND A.SalesID=:SalesID ');
          if rbJenis.ItemIndex = 0 then
             Add('AND A.CurrID=''IDR'' ')
          else
             Add('AND A.CurrID=''USD'' ');
          if dxJenisBrg.Text <> 'A' then
             Add('AND D.Jenis='''+dxJenisBrg.Text+''' ');
          Add('ORDER BY CONVERT(VARCHAR(8),A.Transdate,112),A.KonInvPelID');
          Parameters.ParamByName('SalesID').DataType := ftString;
          //showmessage(sql.text);
          Open;
       end;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;
     finally
        free;
     end;
  end else
  begin
  with TfmARQRRptKomisiSales.Create(Self) do
     try
       qrlTitle.Caption := 'Laporan Komisi Sales';
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

       if dxJenisBrg.Text = 'M' then Jenis := 'MESIN' else
         if dxJenisBrg.Text = 'S' then Jenis := 'SPARE PART' else  Jenis := 'MESIN DAN SPARE PART';

       if rbJenis.ItemIndex = 0 then
         qrlValuta.Caption := 'VALUTA : RUPIAH - JENIS : '+Jenis
       else
         qrlValuta.Caption := 'VALUTA : US DOLLAR - JENIS : '+Jenis;

       qlbAging.Caption := 'Aging Tagihan : '+ IntToStr(dxSpinEdit1.IntValue)+ ' Hari';
       with qu001,SQL do
       begin
         Close;Clear;
         add('SELECT DISTINCT A.SalesID,''SALES : ''+C.SalesName as Sales,ISNULL(SUM(A.TTLKj),0) as Total FROM ARTrKonInvPelHd A '
            +'INNER JOIN ARTrKonTransBrgHd B ON A.SOID=B.KonTransBrgID AND A.CustID=B.CustID '
            +'INNER JOIN ARMsSales C ON A.SalesID=C.SalesID '
            +'WHERE CONVERT(VARCHAR(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
         if rbJenis.ItemIndex = 0 then
            Add('AND A.CurrID=''IDR'' ')
         else
            Add('AND A.CurrID=''USD'' ');
         if dxJenisBrg.Text <> 'A' then
            Add('AND B.Jenis='''+dxJenisBrg.Text+''' ');
         if rbSelect.Checked then
            Add(' AND A.SalesId IN '+SelGrid(quAct,dbgList,'SalesID'));
         add(' GROUP BY A.SalesID,C.SalesName ORDER BY A.SalesId');
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
          Add('SELECT DISTINCT A.SalesID,B.Jenis,''JENIS : ''+CASE WHEN B.Jenis=''S'' THEN ''SPARE PART'' ELSE ''MESIN'' END as JenisTransaksi FROM ARTrKonInvPelHd A '
             +'INNER JOIN ARTrKonTransBrgHd B ON A.CustID=B.CustID AND A.SOID=B.KonTransBrgID WHERE CONVERT(VARCHAR(8),A.Transdate,112) '
             +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
             +'AND A.SalesID=:SalesID ');
          if rbJenis.ItemIndex = 0 then
             Add('AND A.CurrID=''IDR'' ')
          else
             Add('AND A.CurrID=''USD'' ');
          if dxJenisBrg.Text <> 'A' then
             Add('AND B.Jenis='''+dxJenisBrg.Text+''' ');
          Add('ORDER BY B.Jenis');
          Parameters.ParamByName('SalesID').DataType := ftString;
          Open;
       end;

       with qu003,SQL do
       begin
         Close;Clear;
         Add('SELECT K.*,ISNULL(K.Penjualan-K.NKredit-K.Retur,0) as Total,'
            +'CASE WHEN ISNULL(K.Penjualan-K.NKredit-K.Retur-K.Bayar,0) > 0 THEN 0 ELSE '
            +'  CASE WHEN K.Amount=0 THEN 0 ELSE '
            +'   CASE WHEN K.Aging > '''+IntToStr(dxSpinEdit1.IntValue)+''' THEN 0 ELSE '
            +'     CASE WHEN K.Jenis=''S'' THEN K.Amount*1*0.01 ELSE K.Amount*0.5*0.01 END END END END as Komisi FROM ('
            +'SELECT A.Transdate,ISNULL(DATEDIFF(DAY,A.Transdate,X.Transdate),0) as Aging,'
            +'CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.KonInvPelID,A.CustID+'' ''+B.CustName as Pelanggan,ISNULL(A.TTLKj,0) as Penjualan,'
            +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) FROM CFTrKKBBDt X WHERE X.RekeningID=(SELECT DGRBi FROM SAMsSet) AND X.Note=A.KonInvPelID),0) as NKredit,'
            +'ISNULL((SELECT SUM(X.Qty*Y.Price) FROM ARTrKonReturDt X INNER JOIN ARTrKonInvPelDt Y ON X.KonTransBrgID=Y.KonTransBrgID AND X.ItemID=Y.ItemID '
            +'WHERE X.KonTransBrgID=A.SOID AND X.KonTransBrgID=C.KonTransBrgID),0) as Retur,'
            +'X.VoucherID as PiutangID,CONVERT(VARCHAR(10),X.Transdate,103) as TglBayar,ISNULL(SUM(CASE WHEN X.Jenis=''K'' THEN X.Amount ELSE X.Amount*-1 END),0) as Amount,C.Jenis,'
            +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''K'' THEN X.Amount ELSE X.Amount*-1 END) FROM CFTrKKBBDt X WHERE X.Note=A.KonInvPelID AND X.RekeningID='''+sDRPj+'''),0) as Bayar '
            +'FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID INNER JOIN ARTrKonTransBrgHd C ON A.SOID=C.KonTransBrgID '
            +'LEFT JOIN (SELECT D.VoucherID,D.Transdate,D.Actor as CustID,E.Note as KonInvPelID,E.Jenis,E.Amount FROM CFTrKKBBHd D '
            +'INNER JOIN CFTrKKBBDt E ON D.VoucherID=E.VoucherID) X ON A.CustID=X.CustID AND A.KonInvPelID=X.KonInvPelID '
            +'WHERE CONVERT(VARCHAR(8),A.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
            +'AND A.SalesID=:SalesID ');
         if rbJenis.ItemIndex = 0 then
            Add('AND A.CurrID=''IDR'' ')
         else
            Add('AND A.CurrID=''USD'' ');
         Add('AND C.Jenis=:Jenis '
            +'GROUP BY A.Transdate,X.Transdate,A.KonInvPelID,A.CustID,B.CustName,A.TTLKj,A.SOID,C.KonTransBrgID,X.VoucherID,C.Jenis) as K');
         Add('ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.Pelanggan,K.KonInvPelID');
         Parameters.ParamByName('SalesID').DataType := ftString;
         Parameters.ParamByName('Jenis').DataType := ftString;
         Open;
       end;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;
     finally
        free;
     end;
  end;
end;

procedure TfmARRptPenjPerSalesDlg.FormShow(Sender: TObject);
begin
  inherited;
  dxJenisBrg.Text := 'A';
  quAct.Open;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
end;

procedure TfmARRptPenjPerSalesDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptPenjPerSalesDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesName as Nama_Sales ,SalesId as Kode_Sales FROM ARMsSales ORDER BY SalesID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SalesID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptPenjPerSalesDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARRptPenjPerSalesDlg.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesName as Nama_Sales ,SalesId as Kode_Sales FROM ARMsSales ORDER BY SalesID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SalesID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptPenjPerSalesDlg.RgJenisClick(Sender: TObject);
begin
  inherited;
  if RgJenis.ItemIndex = 0 then
  begin
    Panel1.Visible := False;
    rcNota.Visible := True;
  end else
  begin
    Panel1.Visible := True;
    rcNota.Visible := False;
  end;
end;

end.
