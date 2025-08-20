unit APOtoKonsinyasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmAPOtoKonsinyasi = class(TfmRptDlg)
    dxDBGrid1: TdxDBGrid;
    quMain: TADOQuery;
    dsMain: TDataSource;
    quDetil: TADOQuery;
    dsDetil: TDataSource;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    bbRefresh: TdxButton;
    bbFind: TdxButton;
    quMainNota: TStringField;
    quMainBPBID: TStringField;
    quMainPRID: TStringField;
    quMainItemName: TStringField;
    quMainItemID: TStringField;
    quMainJumlahPO: TBCDField;
    quMainTerima: TBCDField;
    quMainKelebihan: TBCDField;
    dxDBGrid1Column7: TdxDBGridColumn;
    quMainPOID: TStringField;
    dxDBGrid1Column8: TdxDBGridColumn;
    quMainWareHouseID: TStringField;
    quMainCurrID: TStringField;
    quMainSuppID: TStringField;
    quMainSuppName: TStringField;
    quMainNumAll: TAutoIncField;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPOtoKonsinyasi: TfmAPOtoKonsinyasi;

implementation

{$R *.dfm}

uses MyUnit,Search,KonfirmasiKonsinyasi;

procedure TfmAPOtoKonsinyasi.bbRefreshClick(Sender: TObject);
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

procedure TfmAPOtoKonsinyasi.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := True;
  bbRefreshClick(bbRefresh);
end;

procedure TfmAPOtoKonsinyasi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Penerimaan > PO';
       SQLString :='SELECT DISTINCT K.Nota,k.BPBID,K.PRID,F.ItemName,F.ItemID,K.Jumlah as JumlahPO,K.Jum as Terima,K.Jum-k.Jumlah as Kelebihan FROM ( '
                  +'SELECT ISNULL((SELECT SUM(B.Jumlah) FROM APTrKonsinyasiDt B inner join APTrKonsinyasiHd X on B.KonsinyasiID=X.KonsinyasiID '
                  +'WHERE B.Note=A.PRID AND A.ItemID=B.ItemID),0) as Jum,C.KonsinyasiID as Nota,B.ItemID,C.TransDate,b.Note as PRID,A.Jumlah, '
                  +'C.BPBID,B.FgTerima '
                  +'from APTrPurchaseOrderDt A '
                  +'INNER JOIN APTrKonsinyasiDt B ON A.PRID=B.Note  '
                  +'INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID '
                  +') as K '
                  +'INNER JOIN INMsItem F ON K.ItemID=F.ItemID '
                  +'where K.FgTerima=''T'' '
                  +'order by k.Nota ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('Nota',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPOtoKonsinyasi.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmKonfirmasiKonsinyasi.Create (Application) do
   try
     Label3.Caption:=Self.quMainPRID.AsString;
     label4.Caption:=Self.quMainItemID.AsString;
     label5.Caption:=Self.quMainItemName.AsString;
     label6.Caption:=Self.quMainWareHouseID.AsString;
     label7.Caption:=Self.quMainCurrID.AsString;
     label8.Caption :=Self.quMainTerima.AsString;
     label9.Caption:=Self.quMainSuppID.AsString;
     label10.Caption:=Self.quMainSuppName.AsString;
     label11.Caption :=Self.quMainNumAll.AsString;
     label12.Caption :=Self.quMainNota.AsString;
     ShowModal;
     quMain.Requery();
   finally
    Free;
   end;
end;

end.
