unit INRptAdjusmentDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib;

type
  TfmINRptAdjustmentDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptAdjustmentDlg: TfmINRptAdjustmentDlg;

implementation

uses INQRRptAdjusment, UnitGeneral;

{$R *.dfm}

procedure TfmINRptAdjustmentDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptAdjusment.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
  
       with qu001,sql do
       begin
           Close;Clear;
           add(' select A.TransId,Convert(Varchar(10),Transdate,103) as Tgl,'
              +' isnull((A.WareHouseId+''-''+B.WareHouseName),'''') as Gudang '
              +' FROM INTrAdjustmentHd A INNER JOIN INMsWareHouse B ON A.WareHouseID=B.WareHouseID '
              +' WHERE Convert(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
              +' And A.FlagIN=''TR'' '
              +' order by Convert(Varchar(10),A.Transdate,112),A.TransId');
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
          {add(' SELECT distinct A.ItemId,B.ItemName,B.TypeUnit,B.UOMID,B.Merk, '
             +' Case When FgStatus=''T'' then ''Tambah'' Else ''Kurang'' End as Status,'
             +' A.QTY, Alasan,A.FgStatus,A.Qty as Selisih '
             +' FROM INTrAdjustmentDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId '
             +' WHERE TransID=:TransId');
          add(' order by A.ItemID ');       }

          add(' Select *, '
              +'CASE WHEN K.FgStatus=''K'' then K.StockSistem-K.Qty else K.StockSistem+K.Qty end as StokFisik  from( '
              +'SELECT distinct A.ItemId,B.ItemName,B.TypeUnit,B.UOMID,B.Merk, '
              +'Case When FgStatus=''T'' then ''Tambah'' Else ''Kurang'' End as Status, '
              +'A.QTY, A.Alasan,A.FgStatus,  '
              +'(SELECT ISNULL(SUM (CASE WHEN X.FgTrans<50 then X.Qty else X.Qty*-1 END),0) From AllItem X where x.ItemID=a.ItemID) as StockSistem  '
              +'FROM INTrAdjustmentDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId '
              +'WHERE TransID=:TransId) as K');
          add(' order by K.ItemID ');
          Parameters.ParamByName('TransId').DataType := ftString;
          Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
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

procedure TfmINRptAdjustmentDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := date;
  dt2.date := date;
end;

end.
