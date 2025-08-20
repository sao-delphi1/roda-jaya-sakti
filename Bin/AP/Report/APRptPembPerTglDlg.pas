unit APRptPembPerTglDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, ActnList;

type
  TfmAPRptPembPerTglDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    rcNota: TdxCheckEdit;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    ActionList: TActionList;
    ActPrint: TAction;
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Status : string;
  end;

var
  fmAPRptPembPerTglDlg: TfmAPRptPembPerTglDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, APQRRptPembPerTgl, RptLv4, UnitDate,
  CFQRRptLabaRugi,MyUnit,QRRptBeliTgl,Search;

{$R *.dfm}

procedure TfmAPRptPembPerTglDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if Status <> 'RugiLaba' then
  begin
  with TfmQRRptBeliTgl.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

       with qu001,sql do
       begin
           Close;Clear;
           add('select distinct CONVERT(VARCHAR(10),K.TransDate,103) as Tanggal,K.Transdate FROM ( '
              +'select A.transdate from APTrPurchaseOrderHd A ) as K '
              +'WHERE CONVERT(VARCHAR(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
              +'ORDER BY K.Transdate');
           Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;

       with qu002,sql do
       begin
          Close;Clear;
          add(' select * FROM ( '
             +' select A.transdate,A.POID,A.SuppID,B.SuppName,A.SiteID,A.DivisiID,C.SiteName as Sites,'''' as Divisi, '
             +' ISNULL(A.StPO,0) as Subtotal, '
             +' ISNULL(A.DiscAmount,0) as Diskon,ISNULL(A.PPN,0) as Pajak, '
             +' ISNULL(A.TTLPO,0) as TtlStlhPajak,0 as Pck,0 as Adm, '
             +' 0 as Okr,ISNULL(A.TTLPO,0) as Total,A.Kurs as Rate '
             +' from APTRPurchaseOrderHD A '
             +' INNER JOIN APMsSupplier B on A.SuppID=B.SuppID '
             +' INNER JOIN INMsSites C on A.SiteID=C.SiteID '
             +' ) as K '
             +' WHERE K.Transdate=:Transdate');
          Parameters.ParamByName('Transdate').DataType  := ftDateTime;
          Open;
       end;

       if rcNota.Checked then
       Begin
           with qu003,sql do
           begin
              Close;Clear;
              add('select A.POID,A.ItemID,A.Price as Harga,A.Qty,D.TypeUnit,A.NoUnit, '
                 +'(A.Price*C.Kurs*(A.Qty-A.DiscItem)) as Total,D.ItemName,D.UOMID2  '
                 +'from APTrPurchaseOrderdt A '
                 +'INNER JOIN APTrPurchaseOrderHd C on A.POID=C.POID '
                 +'INNER JOIN INMsItem D on A.ItemID=D.ItemID '
                 +'WHERE A.POID=:POID ');
              Parameters.ParamByName('POID').DataType := ftString;
              Open;
           end;
       End else bnd002.Height := 0;


       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;


     finally
        free;
     end;
  end else
  begin
    with TfmCFQrRptLabaRugi.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       if CheckBox1.Checked then QRLabel4.Caption := 'Site : '+Edit2.Text else QRLabel4.Caption := '';


       with qu001,SQL do
       begin
         Close;Clear;
         Add('SELECT No,Urut as Kode,Komponen FROM ( '
            +'SELECT 1 as no,4 as urut,''PENDAPATAN'' as Komponen UNION ALL '
            +'SELECT 2,8,''PEMBELIAN'' UNION ALL '
            +'SELECT 3,5,''BEBAN/BIAYA'' UNION ALL '
            +'SELECT 4,6,''PEND/BIAYA LAIN-LAIN'' UNION ALL '
            +'SELECT 5,7,''PAJAK'' ) AS K ORDER BY NO');
         Open;
       end;

       with qu002,SQL do
       begin
         Close;Clear;
         add('SELECT K.RekeningID as GroupRekID,K.RekeningName as GroupRekName,'
            +'CASE WHEN K.Kode IN (1,4) THEN K.Jumlah ELSE K.Jumlah*-1 END as Jumlah,K.Kode FROM ( '
            +'SELECT DISTINCT A.RekeningID,A.RekeningName,'
            +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) FROM ( '
            //tabel keuangan
            +'SELECT A.RekeningID,B.Transdate,A.Jenis,ISNULL(A.Amount,0) as Amount,B.CurrID,B.Rate,A.SiteID '
            +'FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FgPayment=''T'' UNION ALL '
            //tabel header
            +'SELECT C.RekeningID,B.Transdate,CASE WHEN A.Jenis=''K'' THEN ''D'' ELSE ''K'' END,ISNULL(A.Amount,0) as Amount,B.CurrID,B.Rate,A.SiteID FROM CFTrKKBBDt A '
            +'INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FgPayment=''T'' '
            +'AND B.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'',''KK'',''BK'',''APK'',''APB'',''APC'') '
            +'INNER JOIN CFMsBank C ON B.BankID=C.BankID UNION ALL '

          {  +'SELECT B.RekeningID,A.Transdate,CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' '
            +'WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' '
            +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' '
            +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' END,'
            +'ISNULL(CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK '
            +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD '
            +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK END,0),A.CurrID,A.Rate,A.SiteID FROM CFTrKKBBHd A '
            +'INNER JOIN CFMsBank B ON A.BankID=B.BankID WHERE A.FgPayment=''T'' UNION ALL '   }
            //tabel penjualan
            +'SELECT RekeningU,Transdate,''D'',ISNULL(TTLKj,0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            +'SELECT RekeningD,Transdate,''D'',ISNULL((STKJ*Discount*0.01),0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            +'SELECT RekeningK,Transdate,''K'',ISNULL(StKj,0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            +'SELECT RekeningO,Transdate,''K'',ISNULL(Ongkir,0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            +'SELECT RekeningA,Transdate,''K'',ISNULL(Administrasi,0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            +'SELECT RekeningR,Transdate,''K'',ISNULL(RePack,0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            +'SELECT RekeningP,Transdate,''K'',ISNULL(PPN,0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            +'SELECT RekeningPsd,transdate,''K'',ISNULL(Modal,0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            +'SELECT RekeningHpp,transdate,''D'',ISNULL(Modal,0),CurrID,Rate,SiteID FROM ARTrKonInvPelHd UNION ALL '
            //tabel pembelian
            +'SELECT RekeningU,Transdate,''K'',ISNULL(TTLks,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekeningK,Transdate,''D'',ISNULL(SubTotal-SubTotalJ,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekeningO,Transdate,''D'',ISNULL(Ongkir,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekPBBKB,Transdate,''D'',ISNULL(PBBKB,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekeningR,Transdate,''D'',ISNULL(Repack,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekeningA,Transdate,''D'',ISNULL(Administrasi,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekeningD,Transdate,''K'',ISNULL(Disc,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekeningJ,Transdate,''D'',ISNULL(SubTotalJ,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekeningDP,Transdate,''D'',ISNULL(DP,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '
            +'SELECT RekeningP,Transdate,''D'',ISNULL(PPN,0),CurrID,Rate,SiteID FROM ApTrkonsinyasiInvhD Where Fgoto=''Y'' UNION ALL '

            +'SELECT RekeningU,Transdate,''K'',ISNULL(TTLPb,0),CurrID,Rate,SiteID FROM ApTrPurchaseHD where FgPajak=''Y'' AND FgOto=''Y'' UNION ALL '
            +'SELECT RekeningK,Transdate,''D'',ISNULL(Stpb-SubTotalU,0),CurrID,Rate,SiteID FROM ApTrPurchaseHD where FgPajak=''Y'' AND FgOto=''Y'' UNION ALL '
            +'SELECT RekeningD,Transdate,''K'',ISNULL(DiscAmount,0),CurrID,Rate,SiteID FROM ApTrPurchaseHD where FgPajak=''Y'' AND FgOto=''Y'' UNION ALL '
            +'SELECT RekeningJ,Transdate,''D'',ISNULL(SubTotalU,0),CurrID,Rate,SiteID FROM ApTrPurchaseHD where FgPajak=''Y'' AND FgOto=''Y'' UNION ALL '
            +'SELECT RekeningP,Transdate,''D'',ISNULL(PPN,0),CurrID,Rate,SiteID FROM ApTrPurchaseHD where FgPajak=''Y'' AND FgOto=''Y'' '

            +') as X '
            +'WHERE CONVERT(VARCHAR(8),X.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
            +'AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' AND X.RekeningID=A.RekeningID ');
         if CheckBox1.Checked then
         Add(' AND X.SiteID='''+Edit1.Text+'''');
         Add('),0) as Jumlah,A.Tipe as Kode ');
         Add(' FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekID=B.GroupRekID '
            +') as K WHERE K.Kode=:Kode AND K.Jumlah<>0 ');
         Add(' ORDER BY K.RekeningID');
         Parameters.ParamByName('Kode').DataType := ftString;
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
  end;
end;

procedure TfmAPRptPembPerTglDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date:=EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
  if Status = 'RugiLaba' then
  begin
    laTitle.Caption := 'Laporan Laba Rugi';
    rcNota.Visible := False;
  end;
end;

procedure TfmAPRptPembPerTglDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPRptPembPerTglDlg.Button1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Site';
     SQLString := 'select * from ( '
                 //+'select '''' as SiteID,''ALL'' as SiteName UNION ALL '
                 +'select SiteID,SiteName from INMsSites ) as K order by K.SiteID ';
     if ShowModal = MrOK then
     begin
         Edit1.Text := Res[0];
         Edit2.Text := Res[1];
     end;
  finally
     Free;
  end;
end;

end.
