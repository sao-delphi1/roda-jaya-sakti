unit APRptPOBlmTerima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxCore, dxButton, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmAPRptPOBlmTerima = class(TfmRptDlg)
    quMain: TADOQuery;
    dsMain: TDataSource;
    quDetil: TADOQuery;
    dsDetil: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    bbRefresh: TdxButton;
    bbFind: TdxButton;
    procedure bbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPRptPOBlmTerima: TfmAPRptPOBlmTerima;

implementation

{$R *.dfm}

procedure TfmAPRptPOBlmTerima.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    close;clear;
    Add('SELECT DISTINCT K.Nota,k.BPBID,K.PRID,K.POID,F.ItemName,F.ItemID,K.Jumlah as JumlahPO,K.Jum as Terima,K.Jum-k.Jumlah as Kelebihan,K.WareHouseID,K.CurrID,K.SuppID,G.SuppName,K.NumAll '
        +'FROM ( '
        +'SELECT ISNULL((SELECT SUM(B.Jumlah) FROM APTrKonsinyasiDt B inner join APTrKonsinyasiHd X on B.KonsinyasiID=X.KonsinyasiID  '
        +'WHERE B.Note=A.PRID AND A.ItemID=B.ItemID AND B.FgNum=A.FgNum),0) as Jum,C.KonsinyasiID as Nota,B.ItemID,C.TransDate,b.Note as PRID,A.Jumlah, '
        +'C.BPBID,B.FgTerima,A.POID,C.WareHouseID,B.CurrID,C.SuppID,B.NumAll '
        +'from APTrPurchaseOrderDt A '
        +'INNER JOIN APTrKonsinyasiDt B ON A.PRID=B.Note AND B.FgNum=A.FgNum '
        +'INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID '
        +') as K '
        +'INNER JOIN INMsItem F ON K.ItemID=F.ItemID '
        +'INNER JOIN APMsSupplier G ON K.SuppID=G.SuppID '
        +'where K.FgTerima=''T''  '
        +'order by k.Nota ');
    Open;
  end;
end;

end.
