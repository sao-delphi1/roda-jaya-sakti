unit APRptSisaTerimaBarangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmAPRptSisaTerimaBarangDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListSuppID: TdxDBGridMaskColumn;
    dbgListSuppName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    quActSuppID: TStringField;
    quActSuppName: TStringField;
    quActAddress: TStringField;
    quActCity: TStringField;
    quActContactPerson: TStringField;
    quActPhone: TStringField;
    quActFax: TStringField;
    quActEmail: TStringField;
    quActNote: TStringField;
    quActUpdDate: TDateTimeField;
    quActUpdUser: TStringField;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPRptSisaTerimaBarangDlg: TfmAPRptSisaTerimaBarangDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral, APQRRptSisaTerimaBarang, Search;

{$R *.dfm}

procedure TfmAPRptSisaTerimaBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
end;

procedure TfmAPRptSisaTerimaBarangDlg.rbSelectClick(Sender: TObject);
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

procedure TfmAPRptSisaTerimaBarangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmAPQRRptSisaTerimaBarang.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.Date);
       tgldari := dt1.Date;

       with qu001,SQL do
       begin
           Close;Clear;
           add('SELECT DISTINCT K.POID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,'
              +'K.Transdate,K.SuppName,K.SuppID,K.SiteName FROM ( '
              +'select A.POID,B.TransDate,B.SuppID,D.SuppName,A.ItemID,A.FgOto,A.Qty,E.SiteName, '
              +'ISNULL((SELECT SUM(X.Qty) FROM APTrKonsinyasiDt X '
              +'Inner Join APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID '
              +'WHERE X.ItemID=A.ItemID AND Y.POID=A.POID AND X.FgNum=A.NumAll),0) as Terima '
              +'from APTrPurchaseOrderDt A '
              +'inner join APTrPurchaseOrderHd B on A.POID=B.POID '
              +'inner join APMsSupplier D on B.SuppID=D.SuppID '
              +'inner join inmssites E on B.SiteID=E.SiteID '
              +') as K '
              +'Where K.FgOto=''Y'' AND Convert(varchar(8),K.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
           if Checkbox1.Checked then
           Add(' AND K.Qty-K.Terima<>0 ');
           if rbSelect.Checked then
           Add(' AND A.SuppID IN '+SelGrid(quAct,dbgList,'SuppID'));
           add(' ORDER by K.TransDate,K.POID ');
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
         Add('SELECT K.*,K.Qty-K.Terima as Sisa FROM ( '
            +'select A.POID,A.ItemID,B.ItemName,A.PRID,A.Qty,A.Price,A.UOMID,A.NoUnit,A.TypeUnit,A.keterangan,A.FgOto, '
            +'ISNULL((SELECT SUM(X.Qty) FROM APTrKonsinyasiDt X '
            +'Inner Join APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID '
            +'WHERE X.ItemID=A.ItemID AND Y.POID=A.POID AND X.FgNum=A.NumAll),0) as Terima '
            +'from APTrPurchaseOrderDt A '
            +'inner join INMsItem B on A.ItemID=B.itemid ) as K '
            +'Where K.FgOto=''Y'' AND K.POID=:POID ');
         if Checkbox1.Checked then
         Add(' AND K.Qty-K.Terima<>0 ');
         Add(' Order BY K.POID ');
         Parameters.ParamByName('POID').Value := ftString;
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

procedure TfmAPRptSisaTerimaBarangDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := ' SELECT SuppName as Supplier,SuppID as Kode_Supplier FROM APMsSupplier A ORDER BY SuppID';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SuppID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
