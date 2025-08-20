unit AROtorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmAROtorisasi = class(TfmStdLv31)
    dbgDetail: TdxDBGrid;
    dbgList: TdxDBGrid;
    dbgListColumn1: TdxDBGridColumn;
    dbgListColumn2: TdxDBGridColumn;
    dbgListColumn3: TdxDBGridColumn;
    dbgListColumn4: TdxDBGridColumn;
    dbgListColumn5: TdxDBGridColumn;
    dbgListColumn6: TdxDBGridColumn;
    dbgListColumn7: TdxDBGridColumn;
    dbgListColumn8: TdxDBGridColumn;
    dbgDetailColumn1: TdxDBGridColumn;
    dbgDetailColumn2: TdxDBGridColumn;
    dbgDetailColumn3: TdxDBGridColumn;
    dbgDetailColumn4: TdxDBGridColumn;
    dbgDetailColumn5: TdxDBGridColumn;
    dbgDetailColumn6: TdxDBGridColumn;
    dbgDetailColumn8: TdxDBGridColumn;
    RgData: TRadioGroup;
    quMainTransdate: TDateTimeField;
    quMainPOID: TStringField;
    quMainSiteName: TStringField;
    quMainPeminjam: TStringField;
    quMainSalesName: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilPOID: TStringField;
    quDetilItemName: TStringField;
    quDetilJumlah: TBCDField;
    quDetilUOMID: TStringField;
    quDetilItemID: TStringField;
    quDetilNoUnit: TStringField;
    quDetiltypeunit: TStringField;
    Label1: TLabel;
    dbgDetailColumn9: TdxDBGridColumn;
    quDetilPriceM: TCurrencyField;
    quMainSite2: TStringField;
    quMainCustID: TStringField;
    quDetilTotal: TCurrencyField;
    dbgDetailColumn10: TdxDBGridColumn;
    dbgDetailColumn11: TdxDBGridColumn;
    quDetilLayoutID: TStringField;
    procedure dsMainStateChange(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RgDataClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dbgListDblClick(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAROtorisasi: TfmAROtorisasi;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, Search, ARKonfirmasi;

procedure TfmAROtorisasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgListColumn1,TRUE);
  SetReadOnly(dbgListColumn2,TRUE);
  SetReadOnly(dbgListColumn3,TRUE);
  SetReadOnly(dbgListColumn4,TRUE);
  SetReadOnly(dbgListColumn5,TRUE);
  SetReadOnly(dbgListColumn6,TRUE);
  SetReadOnly(dbgListColumn7,TRUE);
  SetReadOnly(dbgListColumn8,TRUE);
end;

procedure TfmAROtorisasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgDetailColumn1,TRUE);
  SetReadOnly(dbgDetailColumn2,TRUE);
  SetReadOnly(dbgDetailColumn3,TRUE);
  SetReadOnly(dbgDetailColumn4,TRUE);
  SetReadOnly(dbgDetailColumn5,TRUE);
  SetReadOnly(dbgDetailColumn6,TRUE);
  SetReadOnly(dbgDetailColumn8,TRUE);
  SetReadOnly(dbgDetailColumn9,TRUE);
  SetReadOnly(dbgDetailColumn10,TRUE);
  SetReadOnly(dbgDetailColumn11,TRUE);
end;

procedure TfmAROtorisasi.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmAROtorisasi.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := True;
  quDEtil.Active := True;

  RgData.Left := 20;
  RgData.Top := 15;
  RgDataClick(RgData);
end;

procedure TfmAROtorisasi.RgDataClick(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    Close;Clear;
    Add('select A.Transdate,A.POID,D.SiteName,B.SiteName as Peminjam,C.SalesName,A.Note,A.UpdDate,A.UpdUser,A.Site2,A.CustID '
       +'from ARTrPurchaseOrderHd A '
       +'Inner Join INMsSites B on A.CustID=B.SiteID '
       +'Inner Join INMsSites D on A.Site2=D.SiteID '
       +'Inner Join ARMsSales C on A.SalesID=C.SalesID ');
    if RgData.ItemIndex = 0 then Add('where A.FgCetak=''T'' ');
    if RgData.ItemIndex = 1 then Add('where A.FgCetak=''X'' ');
    if RgData.ItemIndex = 2 then Add('where A.FgCetak=''Y'' ');
    Add('Order By A.TransDate ');
    Open;
  end;
end;

procedure TfmAROtorisasi.bbFindClick(Sender: TObject);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Peminjaman';
       SQLString := 'select CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.POID,D.SiteName,B.SiteName as Peminjam, '
                   +'C.SalesName,A.Note,CONVERT(VARCHAR(10),A.Transdate,103) as UpdDate,A.UpdUser '
                   +'from ARTrPurchaseOrderHd A '
                   +'Inner Join INMsSites B on A.CustID=B.SiteID '
                   +'Inner Join INMsSites D on A.Site2=D.SiteID '
                   +'Inner Join ARMsSales C on A.SalesID=C.SalesID ';
       if RgData.ItemIndex = 0 then SQLString := SQLString + 'where A.FgCetak=''T'' ';
       if RgData.ItemIndex = 1 then SQLString := SQLString + 'where A.FgCetak=''X'' ';
       if RgData.ItemIndex = 2 then SQLString := SQLString + 'where A.FgCetak=''Y'' ';
       SQLString := SQLString + 'Order By A.TransDate ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('POID',Res[2],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAROtorisasi.dbgListDblClick(Sender: TObject);
begin
  inherited;
  with TfmARKonfirmasi.Create (Application) do
   try
     Label3.Caption:=Self.quMainPOID.AsString;
     ShowModal;
     quMain.Requery();
   finally
    Free;
   end;
end;

procedure TfmAROtorisasi.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select TOP 1 ISNULL(A.Price,C.UserPrice) as Harga from ApTrPurchaseOrderDt A '
       +'inner join ApTrPurchaseOrderHd b on A.POID=B.POID '
       +'inner join INMsItem C on A.ItemID=C.ItemID '
       +'WHERE A.ItemID='''+quDetilItemID.AsString+''' AND B.TransDate<='''+FormatDateTime('yyyymmdd',quMainTransdate.AsDateTime)+''' '
       +'AND B.SiteID='''+quMainSite2.AsString+''' ORDER BY B.Transdate DESC ');
    Open;
  end;
  quDetilPriceM.AsCurrency := quAct.FieldBYName('Harga').AsCurrency;
  quDetilTotal.AsCurrency := quAct.FieldBYName('Harga').AsCurrency*quDetilJumlah.AsCurrency;
end;

end.
