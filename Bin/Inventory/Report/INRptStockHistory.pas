unit INRptStockHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls, dxCore, dxButton, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmINRptStockHistory = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    bbCancel: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure dt2KeyPress(Sender: TObject; var Key: Char);
    procedure rbAllKeyPress(Sender: TObject; var Key: Char);
    procedure rbSelectKeyPress(Sender: TObject; var Key: Char);
    procedure bbCancelKeyPress(Sender: TObject; var Key: Char);
    procedure bbPreviewKeyPress(Sender: TObject; var Key: Char);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptStockHistory: TfmINRptStockHistory;

implementation

uses MyUnit, ConMain, UnitGeneral, UnitDate, INQRRptStockHistory, Search;

{$R *.dfm}

procedure TfmINRptStockHistory.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := date;
  dt2.Date := date;
  quAct.Active := TRUE;
end;

procedure TfmINRptStockHistory.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptStockHistory.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       dari := FormatDateTime('yyyyMMdd',dt1.date);
       sampai :=FormatDateTime('yyyyMMdd',dt2.date);

       with qu001,sql do
       begin
          Close;Clear;
          Add(' SELECT DISTINCT Itemid from AllLootNumber WHERE ITEMid is not null ');
          if rbSelect.Checked then
            Add(' AND ItemId IN '+SelGrid(quAct,dbgList,'ItemID'));
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
          Add(' SELECT K.ItemId,L.ItemName,K.SNID,CONVERT(VARCHAR(10),K.ExpDate,103) as ExpDate FROM ( '
             +' SELECT ItemID,SNID,ExpDate from AllLootNumber ) as K Inner Join InMsItem L On K.ItemId=L.ItemId '
             +' Where K.ItemID=:ItemID ');
          //showmessage(sql.text);
          Parameters.ParamByName('ItemID').DataType := ftString;
          Open;
       end;

       with qu003,sql do
       begin
         Close;Clear;
         Add('SELECT X.Kode,X.nota,X.ItemId,X.SNID,X.Jumlah,CONVERT(VARCHAR(10),X.Tgl,103) as Tgl, '
            +'(SELECT SuppName FROM ( '
            +'Select SuppID,SuppName FROM APMsSupplier UNION ALL '
            +'Select CustID,CustName FROM ARMsCustomer ) as Y WHERE Y.SuppID=X.SuppID) as Customer FROM ( '
            +'select (case when A.FgTrans<50 THEN ''AP'' ELSE ''AR'' END) as Kode,A.VoucherNo as Nota,A.ItemID, '
            +'A.SNID,A.Qty as Jumlah,A.TransDate as Tgl, '
            +'ISNULL((Select TOP 1 Suppid FROM ( '
            +'select KonsinyasiID,SuppID from APTrKonsinyasiHd union all '
            +'select kontransbrgid,CustID from ARTrKonTransBrgHd union all '
            +'select transid,'''' from INTrAdjustmentHd union all '
            +'select ReturnID,SuppID from APTrReturnHd union all '
            +'select ReturnKonID,SuppID from APTrReturnKonHd union all '
            +'select ReturnID,CustID from ARTrReturPenjualanHd union all '
            +'select KonReturID,CustID from ARTrKonReturHd ) as K where K.KonsinyasiID=A.VoucherNo),'''') as SuppID '
            +'from AllLootNumber A ) as X WHERE X.ItemID=:ItemID AND X.SNID=:SNID '
            +'AND Convert(varchar(8),X.Tgl,112) Between '''+FormatDateTime('yyyyMMdd',dt1.date)+''' and '''+FormatDateTime('yyyyMMdd',dt2.date)+''' ');
         Parameters.ParamByName('ItemID').DataType := ftString;
         Parameters.ParamByName('SNID').DataType := ftString;
         //showmessage(sql.text);
         Open;
       end;

       if Sender=bbPreview then
         MyReport.PreviewModal
       else
         MyReport.Print;

     finally
       free;
     end;
end;

procedure TfmINRptStockHistory.rbAllClick(Sender: TObject);
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

procedure TfmINRptStockHistory.rbSelectClick(Sender: TObject);
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

procedure TfmINRptStockHistory.dt1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINRptStockHistory.dt2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINRptStockHistory.rbAllKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINRptStockHistory.rbSelectKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINRptStockHistory.bbCancelKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINRptStockHistory.bbPreviewKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINRptStockHistory.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Barang';
     SQLString := ' SELECT ItemName as Nama_Barang ,ItemId as Kode_Barang'
                 +' FROM INMsItem A '
                 +' ORDER BY ItemID';

     if ShowModal = MrOK then
     begin
       Self.quAct.Locate('ItemID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

end.
