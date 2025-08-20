unit RptAPKartuHutangDetilDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton,
  ActnList;

type
  TfmAPRptKartuHutangDetilDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListSupp: TdxDBGridMaskColumn;
    dbgListSuppName: TdxDBGridMaskColumn;
    cbxOuts: TCheckBox;
    bbCancel: TdxButton;
    Panel1: TPanel;
    rbselect2: TRadioButton;
    rbAll2: TRadioButton;
    dxButton1: TdxButton;
    dbgNota: TdxDBGrid;
    quMain: TADOQuery;
    dsMain: TDataSource;
    dbgNotaPurchaseID: TdxDBGridColumn;
    dbgNotaCurrID: TdxDBGridColumn;
    dbgNotaTgl: TdxDBGridColumn;
    dbgNotaSuppID: TdxDBGridColumn;
    ActionList: TActionList;
    ActPrint: TAction;
    procedure rbAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure rbAll2Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dbgListClick(Sender: TObject);
  private
    { Private declarations }
    Query : String;
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmAPRptKartuHutangDetilDlg: TfmAPRptKartuHutangDetilDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, QRRptAPKartuHutangDetil,
  Search;

{$R *.dfm}

procedure TfmAPRptKartuHutangDetilDlg.RefreshData;
begin
  Query := 'SELECT K.PurchaseID,K.CurrID,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.SuppID FROM ('
          +'SELECT PurchaseID,CurrID,Transdate,SuppID FROM APTrPurchaseHd UNION ALL '
          +'SELECT KonsinyasiInvId,CurrID,Transdate,SuppID FROM APTrKonsinyasiInvHd) as K '
          +'WHERE K.SuppID='''+quAct.FieldByName('SuppID').AsString+''' '
          +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
          +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.PurchaseID,K.CurrID';
  with quMain do
    begin
      if Active then Close;
      SQL.Text := Query;
      Open;
    end;
  dbgNota.OptionsBehavior := dbgNota.OptionsBehavior - [edgoMultiselect];
  rbAll2.Checked := true;
  rbAll2Click(rbAll2);
end;

procedure TfmAPRptKartuHutangDetilDlg.rbAllClick(Sender: TObject);
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

procedure TfmAPRptKartuHutangDetilDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  quMain.Active := TRUE;
  dt1.Date:=date;
  RefreshData;
End;

procedure TfmAPRptKartuHutangDetilDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
   with TfmAPQRRptKartuHutangDetil.Create(Self) do
  try
    tglDari:=dt1.Date;
    qrlTitle.Caption := laTitle.Caption;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);

    if cbxOuts.Checked then
      bCheckced := True
    else
      bCheckced := False;

    With qu001,SQL do
    Begin
       Close;Clear;
       add('SELECT DISTINCT K.SuppID,L.SuppName,(K.SuppID+''-''+L.SuppName) as Supp FROM ('
          +'SELECT A.Transdate,A.TTLPb, ISNULL((SELECT ISNULL(Sum(Price*Qty),0) FROM APTrReturnDt F INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID '
          +'WHERE G.FlagRetur=''B'' AND F.purchaseID=A.PurchaseID  AND G.SuppID=A.SuppID AND '
          +'CONVERT(VARCHAR(8),G.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Retur,'
          +'ISNULL((SELECT ISNULL(Sum(Amount),0) FROM Cftrkkbbhd M INNER JOIN Cftrkkbbdt N ON M.VoucherID=N.VoucherID '
          +'WHERE N.Note=A.PurchaseID AND M.Actor=A.SuppID AND CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Bayar,'
          +'A.SuppID  FROM APTrPurchaseHd A UNION ALL SELECT A.Transdate,A.TTLKs,0,'
          +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentHd M INNER JOIN APTrPaymentDt N ON M.PaymentID=N.PaymentID '
          +'WHERE N.PurchaseID=A.KonsinyasiInvID AND M.SuppID=A.SuppID AND CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Bayar, '
          +'A.SuppID  from APTrKonsinyasiInvHD A) as K INNER JOIN APMsSupplier L ON K.SuppID=L.SuppID '
          +'WHERE CONVERT(VARCHAR(8),K.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
          +'AND ISNULL(K.TTLPb-K.Retur ');
         if bCheckced then
           Add('-K.Bayar');
         Add(',0)<>0 ');
       if rbSelect.Checked then
         Add(' AND K.SuppID IN '+SelGrid(quAct,dbgList,'SuppID'));
       Add('ORDER BY K.SuppId');
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data H!');
          Abort;
       end;
    End;

    With qu002,SQL do
    Begin
       Close;Clear;
       add('SELECT DISTINCT K.SuppID,K.CurrID,L.CurrName,(K.CurrID+''-''+L.CurrName) as Valuta FROM ('
          +'SELECT B.PurchaseID,B.SuppID,B.CurrID,B.TTLPb,B.Transdate,ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F '
          +'INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID WHERE G.FlagRetur=''B'' AND F.purchaseID=B.PurchaseID  AND G.SuppID=B.SuppID '
          +'AND CONVERT(VARCHAR(8),G.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Retur,'
          +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentHd M INNER JOIN APtrPaymentDt N ON M.PaymentID=N.PaymentID '
          +'WHERE N.PurchaseID=B.PurchaseID AND M.SuppID=B.SuppID AND '
          +'CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Bayar '
          +'FROM APTrPurchaseHd B UNION ALL SELECT B.KonsinyasiInvID,B.SuppID,B.CurrID,B.TTLKs,B.Transdate,0, '
          +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentHd M INNER JOIN APtrPaymentDt N ON M.PaymentID=N.PaymentID '
          +'WHERE N.PurchaseID=B.KonsinyasiInvID AND M.SuppID=B.SuppID AND '
          +'CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) '
          +'FROM APTrKonsinyasiInvHD B) as K INNER JOIN SAMsValuta L ON K.CurrID=L.CurrID '
          +'WHERE K.SuppID=:SuppID AND CONVERT(VARCHAR(8),K.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
          +'AND ISNULL(K.TTLPb-K.Retur');
       if bCheckced then
          Add('-K.Bayar');
       Add(',0)<>0 ');
      if rbselect2.Checked then
         Add(' AND K.PurchaseID IN '+SelGrid(quMain,dbgNota,'PurchaseID'));
       Add(' ORDER By K.SuppID');
       Parameters.ParamByName('SuppId').DataType := ftString;
       Open;
    End;
    With qu003,SQL do
    Begin
      Close;Clear;
      add('SELECT K.SuppID,K.CurrID,K.PurchaseID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,ISNULL(K.TTLPi,0) as TTLPi FROM ('
         +'SELECT B.SuppID,B.CurrID,B.PurchaseID,B.TransDate,ISNULL(B.TTLPb,0)-ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F '
         +'INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID WHERE G.FlagRetur=''B'' AND F.purchaseID=B.PurchaseID  AND G.SuppID=B.SuppID AND '
         +'CONVERT(VARCHAR(8),G.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as TTLPi,'
         +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentHd M INNER JOIN APTrPaymentDt N ON M.PaymentID=N.PaymentID '
         +'WHERE N.PurchaseID=B.PurchaseID AND M.SuppID=B.SuppID AND '
         +'CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Bayar '
         +'FROM APTrPurchaseHd B UNION ALL SELECT B.SuppID,B.CurrID,B.KonsinyasiInvID,B.TransDate,ISNULL(B.TTLKs,0),'
         +'ISNULL((SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentHd M INNER JOIN APTrPaymentDt N ON M.PaymentID=N.PaymentID '
         +'WHERE N.PurchaseID=B.KonsinyasiInvID AND M.SuppID=B.SuppID AND '
         +'CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) '
         +'FROM APTrKonsinyasiInvHD B) as K WHERE K.SuppID=:SuppID '
         +'AND K.CurrID=:CurrID AND ISNULL(K.TTLPi');
      if bCheckced then
         Add('-K.Bayar');
      Add(',0) <>0 AND CONVERT(VARCHAR(8),K.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''' ');
      if rbselect2.Checked then
         Add(' AND K.PurchaseID IN '+SelGrid(quMain,dbgNota,'PurchaseID'));
      Add(' ORDER BY CONVERT(VARCHAR(8),K.TransDate,112)');
      Parameters.ParamByName('SuppId').DataType := ftString;
      Parameters.ParamByName('CurrID').DataType := ftString;
      Open;
      if IsEmpty then
      begin
        MsgInfo('No Data D!');
        Abort;
      end;
    End;

//    qu003.Open;
    qu004.Open;
    if Sender=bbPrint then
       MyReport.Print
    else
       MyReport.PreviewModal;
  finally
     free;
  end;
end;

procedure TfmAPRptKartuHutangDetilDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := ' SELECT SuppName as Nama_Supplier ,SuppId as Kode_Supplier'
                   +' FROM APMsSupplier A '
                   +' ORDER BY SuppID';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SuppID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPRptKartuHutangDetilDlg.rbAll2Click(Sender: TObject);
begin
  inherited;
  if Sender=rbAll2 then
  begin
     dbgNota.OptionsBehavior := dbgNota.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbselect2 then
  begin
     dbgNota.OptionsBehavior := dbgNota.OptionsBehavior + [edgoMultiSelect];
     if dbgNota.FocusedNode <> nil then
       dbgNota.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmAPRptKartuHutangDetilDlg.dxButton1Click(Sender: TObject);
var SuppID : string;
begin
  inherited;
  SuppID := SelGrid(quAct,dbgList,'SuppID');
  with TfmSearch.Create(Self) do
    try
       Title := 'Nota Pembelian';
       SQLString := 'SELECT K.PurchaseID as Nota_Pembelian,CONVERT(VARCHAR(10),K.Transdate,103) as Tg,K.CurrID as Valuta FROM ('
                   +'SELECT PurchaseID,Transdate,CurrID,SuppID FROM APTrPurchaseHd UNION ALL '
                   +'SELECT KonsinyasiInvID,Transdate,CurrID,SuppID FROM APTrKonsinyasiInvHd) as K '
                   +'WHERE K.SuppID IN '+SuppID+' '
                   +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
                   +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.PurchaseID';
       if ShowModal = MrOK then
       begin
         Self.quMain.Locate('PurchaseID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPRptKartuHutangDetilDlg.dbgListClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

end.
