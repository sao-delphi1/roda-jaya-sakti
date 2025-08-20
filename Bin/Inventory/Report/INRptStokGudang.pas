unit INRptStokGudang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxGRCLMS, dxEditor, dxEdLib, StdLv0;

type
  TfmINRptStokGudang = class(TfmRptDlg)
    grbKartu: TGroupBox;
    bbRefresh: TBitBtn;
    quCalc: TADOQuery;
    quHitung: TADOQuery;
    quCari: TADOQuery;
    quSearch: TADOQuery;
    dsSearch: TDataSource;
    dt1: TdxDateEdit;
    KodeDari: TdxButtonEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    quSearchWarehouseName: TStringField;
    quSearchUOMID: TStringField;
    dbgListColumn3: TdxDBGridColumn;
    quSearchStock: TBCDField;
    CheckBox1: TCheckBox;
    quSearchLayoutID: TStringField;
    dbgListColumn4: TdxDBGridColumn;
    procedure bbRefreshClick(Sender: TObject);
    procedure KodeDariButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Title     : String;
    SQLString : String;
    KeySearch : String;
    KeyValue : string;
    Res       : array [0..20] of string[100]; //balikin hasilnya
  end;

var
  fmINRptStokGudang: TfmINRptStokGudang;

implementation

uses Search,conMain,MyUnit;

{$R *.dfm}

procedure TfmINRptStokGudang.bbRefreshClick(Sender: TObject);
begin
  inherited;
  if TRIM(KodeDari.Text)='' then
  begin
    ShowMessage('Part Number Tidak Boleh Kosong!');
    KodeDari.SetFocus;
    Abort;
  end;

  with quSearch,SQL do
  begin
    Close;Clear;
    Add('SELECT M.WarehouseName,K.Stock,L.UOMID,K.LayoutID FROM ( '
       +'SELECT A.ItemID,A.WarehouseID,ISNULL(SUM(CASE WHEN A.FgTrans<50 THEN A.Qty ELSE A.Qty*-1 END),0) as Stock,ISNULL(A.LayoutID,'''') as LayoutID '
       +'FROM AllItem A '
       +'WHERE A.ItemID='''+KodeDari.Text+''' AND CONVERT(VARCHAR(8),A.TransDate,112) <= '''+FormatDateTime('yyyymmdd',dt1.date)+''' '
       +'GROUP BY A.ItemID,A.WarehouseID,ISNULL(A.LayoutID,'''') '
       +') as K '
       +'INNER JOIN INMsItem L on K.ItemID=L.ItemID '
       +'INNER JOIN INMsWarehouse M on K.WarehouseID=M.WarehouseID ');

    {   +'SELECT X.WarehouseName,'
       +'ISNULL((select  from AllItem A WHERE A.WarehouseID=X.WarehouseID AND A.ItemID='''+KodeDari.Text+'''),0) as Stock, '
       +'(SELECT UOMID FROM INMsItem WHere ItemId='''+KodeDari.Text+''') as UOMID '
       +'FROM INMsWarehouse X ) as K '); }
    if CheckBox1.Checked then
    Add('WHERE K.Stock<>0 ');
    Open;
  end;

end;

procedure TfmINRptStokGudang.KodeDariButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Master Barang';
     SQLString := ' SELECT ItemName as Nama_Barang, ItemID as Part_Number,  TypeUnit, '
                 +' CASE WHEN FgActive=''Y'' THEN ''AKTIF'' ELSE ''TDK AKTIF'' END as Status FROM INMsItem '
                 +' ORDER BY ItemName ';
     if ShowModal = MrOK then
     begin
       KodeDari.Text := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmINRptStokGudang.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := Date;
  KodeDari.SetFocus;
end;

end.
