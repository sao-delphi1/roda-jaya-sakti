unit ARRptKartuPiutangDetilDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton,
  dxDBELib, ActnList;

type
  TfmARRptKartuPiutangDetilDlg = class(TfmRptDlg)
    cbxOuts: TCheckBox;
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    rbJenis: TRadioGroup;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    bbCancel: TdxButton;
    dbgList: TdxDBGrid;
    dbgListCust: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
    Panel1: TPanel;
    rbselect2: TRadioButton;
    rbAll2: TRadioButton;
    dxButton1: TdxButton;
    dbgInvoice: TdxDBGrid;
    quMain: TADOQuery;
    dsMain: TDataSource;
    quMainKonInvPelID: TStringField;
    quMainTgl: TStringField;
    dbgInvoiceKonInvPelID: TdxDBGridColumn;
    dbgInvoiceTgl: TdxDBGridColumn;
    quActCustID: TStringField;
    quActCustName: TStringField;
    ActionList: TActionList;
    ActPrint: TAction;
    KodeDari: TdxButtonEdit;
    cbHistory: TCheckBox;
    dt2: TdxDateEdit;
    Label1: TLabel;
    procedure rbAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure rbAll2Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure cbHistoryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StLap : string;
  end;

var
  fmARRptKartuPiutangDetilDlg: TfmARRptKartuPiutangDetilDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, QRRptAPKartuHutangDetil,
  ARQRRptKartuPiutangDetil, Search, MyUnit;

{$R *.dfm}

procedure TfmARRptKartuPiutangDetilDlg.rbAllClick(Sender: TObject);
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

procedure TfmARRptKartuPiutangDetilDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date:= date;
  dt2.Date:= date;
  quAct.Open;
  quMain.Open;
  if StLap = 'Jual' then
  begin
    laTitle.Caption := 'Laporan Kartu Piutang Penjualan';
    dbgListCust.Caption := 'Kode Pelanggan';
    dbgListCustName.Caption := 'Nama Pelanggan';
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT CustID,CustName FROM ARMsCustomer ORDER BY CustID');
      Open;
    end;
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT KonInvPelID,CONVERT(VARCHAR(10),Transdate,103) as Tgl FROM ARTrKonInvPelHd WHERE CustID=:CustID ');
      Parameters.ParamByName('CustID').DataType := ftString;
      Open;
    end;
  end else
  begin
    laTitle.Caption := 'Laporan Kartu Hutang Pembelian';
    dbgListCust.Caption := 'Kode Supplier';
    dbgListCustName.Caption := 'Nama Supplier';
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT SuppID as CustID,SuppName as CustName FROM APMsSupplier ORDER BY SuppID');
      Open;
    end;
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT KonsinyasiInvID as KonInvPelID,CONVERT(VARCHAR(10),Transdate,103) as Tgl FROM APTrKonsinyasiInvHd WHERE SuppID=:CustID ');
      Parameters.ParamByName('CustID').DataType := ftString;
      Open;
    end;
  end;
end;

procedure TfmARRptKartuPiutangDetilDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptKartuPiutangDetil.Create(Self) do
  try
    tglDari:=dt1.Date;
    qrlTitle.Caption := laTitle.Caption;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);
    LapSt := StLap;
     if rbJenis.ItemIndex = 0 then
       qrlValuta.Caption := 'VALUTA : RUPIAH'
     else
       qrlValuta.Caption := 'VALUTA : US DOLLAR';

    if cbxOuts.Checked then
      bCheckced := True
    else
      bCheckced := False;

    if StLap = 'Jual' then
    begin
      With qu001,SQL do
      Begin
         Close;Clear;
         Add('SELECT DISTINCT K.CustID,L.CustName,L.CustName as Cust,City,ISNULL(SUM(K.Total-Retur),0) as Total,'
            +'ISNULL(SUM(K.Bayar),0) as Bayar,ISNULL(SUM(K.Total-Retur-Bayar),0) as Sisa FROM (SELECT A.CustID,A.Transdate,ISNULL(A.TTLKj,0) as Total,'
            +'ISNULL((SELECT ISNULL(SUM(X.Qty*Z.Price),0) as Retur FROM ARTrKonReturDt X INNER JOIN ARTrKonReturHd Y ON X.KonReturID=Y.KonReturID '
            +'INNER JOIN ARTrKonInvPelDt Z ON X.ItemID=Z.ItemID AND X.KonTransBrgID=Z.KonTransBrgID '
            +'WHERE Z.KonInvPelID=A.KonInvPelID AND X.KonTransBrgID=A.SOID AND Y.CustID=A.CustID),0) as Retur,A.CurrID,A.KonInvPelID,'
            +'(SELECT ISNULL(SUM(CASE WHEN L.Jenis=''K'' THEN L.Amount ELSE L.Amount*-1 END),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHd Q ON L.VoucherID=Q.VoucherID '
            +'WHERE L.Note = A.KonInvPelID AND L.RekeningID='''+sDRPj+''' AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''') as Bayar '
            +'FROM ARTrKonInvPelHd A) as K INNER JOIN ARMsCustomer L ON K.CustID=L.CustID '
            +'WHERE CONVERT(VARCHAR(8),K.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
         if bCheckced then
            Add(' AND ISNULL(K.Total-K.Retur-K.Bayar,0)<>0');
         if rbSelect.Checked then
            Add(' AND K.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
         if rbSelect2.Checked then
            Add(' AND K.KonInvPelID IN '+SelGrid(quMain,dbgInvoice,'KonInvPelID'));
         if rbJenis.ItemIndex = 0 then
            Add(' AND K.CurrID=''IDR'' ')
         else
            Add(' AND K.CurrID=''USD'' ');
         Add('GROUP BY K.CustID,L.CustName,L.City ORDER BY K.CustID');
         Open;
         if IsEmpty then
         begin
            MsgInfo('No Data !');
            Abort;
         end;
      End;

      With qu002,SQL do
      Begin
         Close;Clear;
         Add('SELECT DISTINCT K.CustID,K.CurrID,K.KonInvPelID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,'
            +'DATEADD(DAY,ISNULL(K.JatuhTempo,0),K.Transdate) as JTemp,ISNULL(K.Total-K.Retur-K.Bayar,0) as Sisa,'
            +'ISNULL(K.Total-K.Retur,0) as Total,CONVERT(VARCHAR(10),DATEADD(DAY,ISNULL(K.JatuhTempo,0),K.Transdate),103) as jth FROM ('
            +'SELECT A.CustID,A.Transdate,ISNULL(A.TTLKj,0) as Total,'
            +'ISNULL((SELECT ISNULL(SUM(X.Qty*Z.Price),0) as Retur FROM ARTrKonReturDt X INNER JOIN ARTrKonReturHd Y ON X.KonReturID=Y.KonReturID '
            +'INNER JOIN ARTrKonInvPelDt Z ON X.ItemID=Z.ItemID AND X.KonTransBrgID=Z.KonTransBrgID '
            +'WHERE Z.KonInvPelID=A.KonInvPelID AND X.KonTransBrgID=A.SOID AND Y.CustID=A.CustID),0) as Retur,A.CurrID,'
            +'(SELECT ISNULL(SUM(CASE WHEN L.Jenis=''K'' THEN L.Amount ELSE L.Amount*-1 END),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHd Q ON L.VoucherID=Q.VoucherID '
            +'WHERE L.Note = A.KonInvPelID AND L.RekeningID='''+sDRPj+''' AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''') as Bayar,A.KonInvPelID,'
            +'ISNULL(A.JatuhTempo,0) as JatuhTempo FROM ARTrKonInvPelHd A) as K '
            +'WHERE K.CustID=:CustID AND CONVERT(VARCHAR(8),K.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
         if bCheckced then
            Add(' AND ISNULL(K.Total-K.Retur-K.Bayar,0)<>0');
         if rbSelect2.Checked then
            Add(' AND K.KonInvPelID IN '+SelGrid(quMain,dbgInvoice,'KonInvPelID'));
         if rbJenis.ItemIndex = 0 then
            Add(' AND K.CurrID=''IDR'' ')
         else
            Add(' AND K.CurrID=''USD'' ');
         Add(' ORDER BY K.KonInvPelID');
         Parameters.ParamByName('CustId').DataType := ftString;
         Open;
      End;

      with qu003,SQL do
      begin
        Close;Clear;
        Add('SELECT CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.VoucherID as PiutangID,ISNULL(CASE WHEN B.Jenis=''K'' THEN B.Amount ELSE B.Amount*-1 END,0) as Bayar,A.Transdate,'
           +'CASE WHEN A.FlagKKBB=''ARK'' THEN ''Kas'' ELSE (SELECT X.BankName FROM CFMsBank X WHERE X.BankID=A.BankID) END as CaraBayar '
           +'FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID '
           +'WHERE A.Actor=:CustID AND B.RekeningID='''+sDRPj+''' AND B.Note=:KonInvPelID '//AND B.RekeningID='''+sDRPj+''' '
           +'AND CONVERT(VARCHAR(8),A.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
         if rbJenis.ItemIndex = 0 then
            Add(' AND A.CurrID=''IDR'' ')
         else
            Add(' AND A.CurrID=''USD'' ');
        Add('ORDER BY CONVERT(VARCHAR(8),A.Transdate,112),A.PiutangID');
        Parameters.ParamByName('CustId').DataType := ftString;
        Parameters.ParamByName('KonInvPelID').DataType := ftString;
        Open;
      end;
    end else
    begin
      QRLabel1.Caption := 'SUPPLIER :';
      QRLabel11.Caption := 'GRAND TOTAL HUTANG PEMBELIAN :';
      With qu001,SQL do
      Begin
         Close;Clear;
         Add('SELECT DISTINCT K.CustID,L.SuppName as CustName,L.SuppName as Cust,City,ISNULL(SUM(K.Total-Retur),0) as Total,ISNULL(SUM(K.Bayar),0) as Bayar,'
            +'ISNULL(SUM(K.Total-Retur-Bayar),0) as Sisa FROM (SELECT A.SuppID CustID,A.Transdate,ISNULL(A.TTLKs,0) as Total,0 as Retur,A.CurrID,A.KonsinyasiInvID,'
            +'(SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHd Q ON L.VoucherID=Q.VoucherID '
            +'WHERE L.Note = A.KonsinyasiInvID AND L.RekeningID='''+sDRPb+''' AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''') as Bayar '
            +'FROM APTrKonsinyasiInvHd A) as K INNER JOIN APMsSupplier L ON K.CustID=L.SuppID '
            +'WHERE CONVERT(VARCHAR(8),K.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
         if bCheckced then
            Add(' AND ISNULL(K.Total-K.Retur-K.Bayar,0)<>0');
         if rbSelect.Checked then
            Add(' AND K.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
         if rbSelect2.Checked then
            Add(' AND K.KonsinyasiInvID IN '+SelGrid(quMain,dbgInvoice,'KonInvPelID'));
         if rbJenis.ItemIndex = 0 then
            Add(' AND K.CurrID=''IDR'' ')
         else
            Add(' AND K.CurrID=''USD'' ');
         Add('GROUP BY K.CustID,L.SuppName,L.City ORDER BY K.CustID');
         Open;
         if IsEmpty then
         begin
            MsgInfo('No Data !');
            Abort;
         end;
      End;

      With qu002,SQL do
      Begin
         Close;Clear;
         Add('SELECT DISTINCT K.CustID,K.CurrID,K.KonInvPelID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,'
            +'DATEADD(DAY,ISNULL(K.JatuhTempo,0),K.Transdate) as JTemp,ISNULL(K.Total-K.Retur-K.Bayar,0) as Sisa,'
            +'ISNULL(K.Total,0) as Total,CONVERT(VARCHAR(10),DATEADD(DAY,ISNULL(K.JatuhTempo,0),K.Transdate),103) as jth FROM ('
            +'SELECT A.SuppID as CustID,A.Transdate,ISNULL(A.TTLKs,0) as Total,0 as Retur,A.CurrID,'
            +'(SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHd Q ON L.VoucherID=Q.VoucherID '
            +'WHERE L.Note = A.KonsinyasiInvID AND L.RekeningID='''+sDRPb+''' AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''') as Bayar,A.KonsinyasiInvID KonInvPelID,'
            +'ISNULL(A.JatuhTempo,0) as JatuhTempo FROM APTrKonsinyasiInvHd A) as K '
            +'WHERE K.CustID=:CustID AND CONVERT(VARCHAR(8),K.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
         if bCheckced then
            Add(' AND ISNULL(K.Total-K.Retur-K.Bayar,0)<>0');
         if rbSelect2.Checked then
            Add(' AND K.KonInvPelID IN '+SelGrid(quMain,dbgInvoice,'KonInvPelID'));
         if rbJenis.ItemIndex = 0 then
            Add(' AND K.CurrID=''IDR'' ')
         else
            Add(' AND K.CurrID=''USD'' ');
         Add(' ORDER BY K.KonInvPelID');
         Parameters.ParamByName('CustId').DataType := ftString;
         Open;
      End;

      with qu003,SQL do
      begin
        Close;Clear;
        Add('SELECT CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.VoucherID as PiutangID,ISNULL(B.Amount,0) as Bayar,A.Transdate,'
           +'CASE WHEN A.FlagKKBB=''APK'' THEN ''Kas'' ELSE (SELECT X.BankName FROM CFMsBank X WHERE X.BankID=A.BankID) END as CaraBayar '
           +'FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID '
           +'WHERE A.Actor=:CustID AND B.Note=:KonInvPelID AND B.RekeningID='''+sDRPb+''' '
           +'AND CONVERT(VARCHAR(8),A.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
         if rbJenis.ItemIndex = 0 then
            Add(' AND A.CurrID=''IDR'' ')
         else
            Add(' AND A.CurrID=''USD'' ');
        Add('ORDER BY CONVERT(VARCHAR(8),A.Transdate,112)');
        Parameters.ParamByName('CustId').DataType := ftString;
        Parameters.ParamByName('KonInvPelID').DataType := ftString;
        Open;
      end;
    end;

    if Sender=bbPreview then
       MyReport.PreviewModal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmARRptKartuPiutangDetilDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  if StLap = 'Jual' then
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustName as Nama_Pelanggan ,CustId as Kode_Pelanggan FROM ARMsCustomer ORDER BY CustID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
  end else
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := ' SELECT SuppName as Nama_Pelanggan, SuppID as Kode_Supplier FROM APMsSupplier ORDER BY SuppID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
  end;
end;

procedure TfmARRptKartuPiutangDetilDlg.rbAll2Click(Sender: TObject);
begin
  inherited;
  if Sender=rbAll2 then
  begin
     dbgInvoice.OptionsBehavior := dbgInvoice.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbselect2 then
  begin
     dbgInvoice.OptionsBehavior := dbgInvoice.OptionsBehavior + [edgoMultiSelect];
     if dbgInvoice.FocusedNode <> nil then
       dbgInvoice.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmARRptKartuPiutangDetilDlg.dxButton1Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Invoice';
       if StLap = 'Jual' then
         SQLString := 'SELECT KonInvPelID as No_Invoice,CONVERT(VARCHAR(10),Transdate,103) as Tgl FROM ARTrKonInvPelHd WHERE CustID='''+quActCustID.AsString+''' '
       else
         SQLString := 'SELECT KonsinyasiInvID as No_Invoice,CONVERT(VARCHAR(10),Transdate,103) as Tgl FROM APTrKonsinyasiInvHd WHERE SuppID='''+quActCustID.AsString+''' ';
       if ShowModal = MrOK then
       begin
         Self.quMain.Locate('KonInvPelID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptKartuPiutangDetilDlg.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if StLap = 'Jual' then
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustName as Nama_Pelanggan ,CustId as Kode_Pelanggan FROM ARMsCustomer ORDER BY CustID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
  end else
  begin
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := ' SELECT SuppName as Nama_Pelanggan, SuppID as Kode_Supplier FROM APMsSupplier ORDER BY SuppID';
       KeyValue := KodeDari.Text;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
  end;
end;

procedure TfmARRptKartuPiutangDetilDlg.cbHistoryClick(Sender: TObject);
begin
  inherited;
  if cbHistory.Checked then
  begin
    cbxOuts.Visible := False;
    GroupBox1.Width := 384;
  end else
  begin
    cbxOuts.Visible := True;
    GroupBox1.Width := 168;
  end;
end;

end.
