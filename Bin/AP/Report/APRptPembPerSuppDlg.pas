unit APRptPembPerSuppDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton,
  ActnList;

type
  TfmAPRptPembPerSuppDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    quActSuppID: TStringField;
    quActSuppName: TStringField;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListSuppID: TdxDBGridMaskColumn;
    dbgListSuppName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    ActionList: TActionList;
    ActPrint: TAction;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dt1Change(Sender: TObject);
    procedure dt2Change(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPRptPembPerSuppDlg: TfmAPRptPembPerSuppDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService, 
  StdLv0, APQRRptPembPerBrg, APQRRptPembPerSupp, Search, UnitDate;

{$R *.dfm}

procedure TfmAPRptPembPerSuppDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmAPQRRptPembPerSupp.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       with qu001,sql do
       begin
           Close;Clear;
           add(' SELECT DISTINCT K.SuppId,K.Supplier,K.SuppId as SuppId2 FROM '
              +' (select Distinct A.SuppId,(A.SuppId+''-''+B.SuppName) as Supplier'
              +' FROM APTrPurchaseHd A INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId WHERE'
              +' CONVERT(VARCHAR(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''''
              +' AND A.PurchaseId<>''STOCKFISIK''');
            if rbSelect.Checked then
            Add(' AND A.SuppId IN '+SelGrid(quAct,dbgList,'SuppID'));
            Add('UNION ALL  SELECT DISTINCT A.SuppId,(A.SuppId+''-''+B.SuppName) as Cust'
              +' FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId WHERE'
              +' CONVERT(VARCHAR(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           if rbSelect.Checked then
            Add(' AND A.SuppID IN '+SelGrid(quAct,dbgList,'SuppID'));
           Add(' ) as K ORDER BY K.SuppId');
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
          add('  SELECT DISTINCT K.PurchaseId,K.PurchaseId as PurchaseId2,K.SuppId,K.SuppId as SuppId2,K.Tgl,K.Tgl2,K.CurrId,K.TTlPb FROM'
             +' (SELECT distinct A.PurchaseId,A.SuppId,Convert(VARCHAR(10),Transdate,103) as Tgl,Convert(VARCHAR(8),TransDate,112) as Tgl2,'
             +' CurriD,TTLPb'
             +' FROM APTrPurchaseHd A'
             +' WHERE A.SuppId=:SuppId AND A.PurchaseId<>''STOCKFISIK'''
             +' AND CONVERT(VARCHAR(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
          Add(' UNION ALL'
             +' SELECT distinct A.KonsinyasiInvId,A.SuppID,CONVERT(VARCHAR(10),Transdate,103) as Tgl,Convert(varchar(8),TransDate,112) as Tgl2,'
             +' CurriD,TTLKS'
             +' FROM APTrKonsinyasiInvHd A'
             +' WHERE A.SuppID=:SuppId2 '
             +' AND CONVERT(VARCHAR(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
          Add(' ) as K ORDER BY K.PurchaseId');
          Parameters.ParamByName('SuppId').DataType := ftString;
          Parameters.ParamByName('SuppId2').DataType := ftString;
          Open;
       end;


       with qu003,sql do
       begin
          Close;Clear;
          add(' SELECT distinct A.ItemId,B.ItemName,A.Qty,A.Price,(A.Qty*A.Price) as Total'
             +' FROM APTrPurchasedt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE A.PurchaseId=:PurchaseId AND SuppId=:SuppId'
             +' UNION ALL '
             +' SELECT distinct A.ItemId,B.ItemName,A.Qty,A.Price,(A.Qty*A.Price) as Total'
             +' FROM APTrKonsinyasiInvdt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE A.KonsinyasiInvId=:PurchaseId2 AND SuppID=:SuppId2');
          add(' ORDER by A.ItemID ');
          Parameters.ParamByName('PurchaseId').DataType := ftString;
          Parameters.ParamByName('SuppId').DataType := ftString;
           Parameters.ParamByName('PurchaseId2').DataType := ftString;
          Parameters.ParamByName('SuppId2').DataType := ftString;
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

procedure TfmAPRptPembPerSuppDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date:=EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
  With quAct,SQL do
  Begin
    Close;Clear;
    Add(' SELECT DISTINCT K.SuppId,K.SuppName FROM'
       +' (Select A.SuppId,B.SuppName FROM APTrPurchaseHd A INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId'
       +' WHERE Convert(varchar(10),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''''
       +' UNION  ALL'
       +' Select A.SuppID,B.SuppName FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId'
       +' WHERE Convert(varchar(10),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''''
       +' ) As K ORDER BY K.SuppId');
    Open;
  End;
end;

procedure TfmAPRptPembPerSuppDlg.rbSelectClick(Sender: TObject);
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

procedure TfmAPRptPembPerSuppDlg.bbCancelClick(Sender: TObject);
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

procedure TfmAPRptPembPerSuppDlg.dt1Change(Sender: TObject);
begin
  inherited;
 With quAct,sql do
  Begin
    Close;Clear;
    Add(' SELECT DISTINCT K.SuppId,K.SuppName FROM'
       +' (Select A.SuppId,B.SuppName FROM APTrPurchaseHd A INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId'
       +' WHERE Convert(varchar(10),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''''
       +' UNION  ALL'
       +' Select A.SuppID,B.SuppName FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId'
       +' WHERE Convert(varchar(10),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''''
       +' ) As K ORDER BY K.SuppId');
    Open;
  End;
end;

procedure TfmAPRptPembPerSuppDlg.dt2Change(Sender: TObject);
begin
  inherited;
  With quAct,sql do
  Begin
    Close;Clear;
    Add(' SELECT DISTINCT K.SuppId,K.SuppName FROM'
       +' (Select A.SuppId,B.SuppName FROM APTrPurchaseHd A INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId'
       +' WHERE Convert(varchar(10),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''''
       +' UNION  ALL'
       +' Select A.SuppId,B.SuppName FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId'
       +' WHERE Convert(varchar(10),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''''
       +' ) As K ORDER BY K.SuppId');
    Open;
  End;
end;

procedure TfmAPRptPembPerSuppDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

end.
