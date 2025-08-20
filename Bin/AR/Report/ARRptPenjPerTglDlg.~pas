unit ARRptPenjPerTglDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons, Printers,
  ExtCtrls, dxEditor, dxEdLib, ActnList;

type
  TfmARRptPenjPerTglDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    rcNota: TdxCheckEdit;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbJenis: TRadioGroup;
    ActionList: TActionList;
    ActPrint: TAction;
    dxJenisBrg: TdxImageEdit;
    rcHPP: TdxCheckEdit;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure rcNotaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Status : string;
  end;

var
  fmARRptPenjPerTglDlg: TfmARRptPenjPerTglDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, APQRRptPembPerTgl, ARQRRptPenjPerTgl,UnitDate,
  RptLv0, StdLv0, ConMain;

{$R *.dfm}

procedure TfmARRptPenjPerTglDlg.bbPreviewClick(Sender: TObject);
var Jenis : string;
begin
  inherited;
  with TfmARQRRptPenjPerTgl.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

       if dxJenisBrg.Text = 'M' then Jenis := 'MESIN' else
         if dxJenisBrg.Text = 'S' then Jenis := 'SPARE PART' else  Jenis := 'MESIN DAN SPARE PART';

   {    if rcHPP.Checked then
       begin
         qlbTHPP.Enabled := True; QRLabel21.Left := qlbTHPP.Left;
         MyReport.Page.Orientation := poLandscape;
       end else
       begin
         qlbTHPP.Enabled := False;
         MyReport.Page.Orientation := poPortrait;
       end;       }

       if rbJenis.ItemIndex = 0 then
         qrlValuta.Caption := 'VALUTA : RUPIAH'
       else
         qrlValuta.Caption := 'VALUTA : US DOLLAR';

       if Status = 'Jual' then
       begin
         with qu001,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT CONVERT(VARCHAR(8),A.Transdate,112) as Tanggal,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.Transdate,'
              +'ISNULL(SUM(A.TTLKj),0) as Total FROM ARTrKonInvPelHd A INNER JOIN ARTrPurchaseOrderHD B ON A.SOID=B.POID '
              +'AND A.CustID=B.CustID WHERE CONVERT(VARCHAR(8),A.Transdate,112) '
              +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
           if rbJenis.ItemIndex = 0 then
              Add(' AND A.CurrID=''IDR'' ')
           else
              Add(' AND A.CurrID=''USD'' ');
        {   if dxJenisBrg.Text = 'M' then
              Add(' AND B.Jenis=''M'' ');
           if dxJenisBrg.Text = 'S' then
              Add(' AND B.Jenis=''S'' ');     }
           add('GROUP BY A.Transdate ORDER BY CONVERT(VARCHAR(8),A.Transdate,112)');
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
            add('SELECT A.KonInvPelId,A.CustID,CONVERT(varchar(10),A.Transdate,103) as Tgl1,B.CustName as Cust,ISNULL(A.TTLKj,0) as Total, '
               +'A.CurrID,B.City,D.POCust,CONVERT(varchar(10),A.Transdate+A.JatuhTempo,103) as Tgl2 '
               +'FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
               +'Inner join ARTrPurchaseOrderHd D on A.SOID=D.POID '
               +'WHERE A.Transdate=:Transdate ');
            if rbJenis.ItemIndex = 0 then
               Add(' AND A.CurrID=''IDR'' ')
            else
               Add(' AND A.CurrID=''USD'' ');
            Add('ORDER by A.KonInvPelID ');
            Parameters.ParamByName('Transdate').DataType := ftDateTime;
            Open;
         end;
         if rcNota.Checked then
         Begin
           QRShape3.Enabled :=  True;
           FgLap := 'Detail';
           with qu003,SQL do
           begin
              Close;Clear;
              add('SELECT DISTINCT K.Tipe,K.ItemID,K.ItemName,K.Qty,K.Price,K.Total,K.HPP,K.Qty*K.HPP as TotalHPP FROM ('
                 +'SELECT DISTINCT A.KonInvPelID,B.Tipe,B.ItemID as ItemId,B.ItemName,A.Qty,A.Price,(A.Qty*A.Price) as Total,'
                 +'ISNULL((SELECT ISNULL(SUM(X.Price*X.Qty)/SUM(X.Qty),0) as HPP FROM APTrKonsinyasiInvDt X '
                 +'INNER JOIN APTrKonsinyasiInvHd Y ON X.KonsinyasiInvID=Y.KonsinyasiInvID '
                 +'WHERE X.ItemID=A.ItemID AND CONVERT(VARCHAR(8),Y.Transdate,112) <= CONVERT(VARCHAR(8),C.Transdate,112)),0) as HPP '
                 +'FROM ARTrKonInvPeldt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId '
                 +'INNER JOIN ARTrKonInvPelHd C ON A.KonInvPelID=C.KonInvPelID) as K '
                 +'WHERE K.KonInvPelId=:KoninvPelId');
              add(' ORDER by K.Tipe,K.ItemID ');
              Parameters.ParamByName('KoninvPelId').DataType := ftString;
              Open;
           end;
         End Else
         Begin
           FgLap := 'Rangkum';
           QRShape3.Enabled :=  False;
           bnd002.Enabled := False;
           bndCH.Height := 23;
         End;
       end else
       begin
         QRLabel3.Caption := 'Supplier'; QRLabel4.Enabled := False;
         with qu001,SQL do
         begin
           Close;Clear;
           add('SELECT DISTINCT CONVERT(VARCHAR(8),A.Transdate,112) as Tanggal,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.Transdate,'
              +'ISNULL(SUM(A.TTLKs),0) as Total FROM APTrKonsinyasiInvHd A '
              +'WHERE CONVERT(VARCHAR(8),A.Transdate,112) '
              +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
           if rbJenis.ItemIndex = 0 then
              Add(' AND A.CurrID=''IDR'' ')
           else
              Add(' AND A.CurrID=''USD'' ');
           add('GROUP BY A.Transdate ORDER BY CONVERT(VARCHAR(8),A.Transdate,112)');
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
            add('SELECT A.KonsinyasiInvID KonInvPelId,A.SuppID CustID,A.Transdate,B.SuppName as Cust,ISNULL(A.TTLKs,0) as Total,A.CurrID,B.City '
               +'FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
               //+'INNER JOIN APTrKonsinyasiHd C ON A.BPBID=C.BPBID AND A.CurrID=C.CurrID AND A.SuppID=C.SuppID '
               +'WHERE A.Transdate=:Transdate ');
            if rbJenis.ItemIndex = 0 then
               Add(' AND A.CurrID=''IDR'' ')
            else
               Add(' AND A.CurrID=''USD'' ');
            if dxJenisBrg.Text = 'M' then
               Add(' AND C.Jenis=''M'' ');
            if dxJenisBrg.Text = 'S' then
               Add(' AND C.Jenis=''S'' ');
            Add('ORDER by A.KonInvPelID ');
            Parameters.ParamByName('Transdate').DataType := ftDateTime;
            Open;
         end;
         if rcNota.Checked then
         Begin
           QRShape3.Enabled :=  True;
           with qu003,SQL do
           begin
              Close;Clear;
              add(' SELECT DISTINCT B.Tipe,A.ItemId,B.ItemName,ISNULL(A.Qty-A.DiscItem,0) as Qty,A.Price,ISNULL((A.Qty-A.DiscItem)*A.Price,0) as Total'
                 +' FROM APTrKonsinyasiInvDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
                 +' WHERE A.KonsinyasiInvID=:KoninvPelId');
              add(' ORDER by B.Tipe,A.ItemID ');
              Parameters.ParamByName('KoninvPelId').DataType := ftString;
              Open;
           end;
         End Else
         Begin
           QRShape3.Enabled :=  False;
           bnd002.Enabled := False;
           bndCH.Height := 23;
         End;
       end;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;
     finally
        free;
     end;
end;

procedure TfmARRptPenjPerTglDlg.FormShow(Sender: TObject);
begin
  inherited;
  if Status = 'Beli' then
  begin
    laTitle.Caption := 'Laporan Pembelian Per Tanggal';
//    rcHPP.Visible := False;
  end else
  begin
    laTitle.Caption := 'Laporan Penjualan Per Tanggal';
{    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT FgHPP FROM SysMsUser WHERE UserID='''+dmMain.UserId+''' ');
      Open;
    end;
    if quAct.FieldByName('FgHPP').AsString = 'Y' then
      rcHPP.Visible := True
    else
      rcHPP.Visible := False;}
  end;
  dt1.Date:=EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
end;

procedure TfmARRptPenjPerTglDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARRptPenjPerTglDlg.rcNotaChange(Sender: TObject);
begin
  inherited;
  if rcNota.Checked then
  begin
    if GroupUser = 'admin' then
      rcHPP.Visible := True;
    rcHPP.Checked := False;
  end else
  begin
    rcHPP.Visible := False;
    rcHPP.Checked := False;
  end;
end;

end.
