unit APTrOtorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmAPTrOtorisasi = class(TfmStdLv31)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    quMainPOID: TStringField;
    quMainSuppName: TStringField;
    quMainTgl: TStringField;
    quMainTTLPO: TBCDField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainwarehouseID: TStringField;
    quMainSiteID: TStringField;
    quMainDivisiID: TStringField;
    quMainStatusOto: TStringField;
    quDetilPart_Number: TStringField;
    quDetilItemName: TStringField;
    quDetiltypeunit: TStringField;
    quDetilNoUnit: TStringField;
    quDetilJumlah: TBCDField;
    quDetilFgUOMID: TStringField;
    quDetilStatusOto: TStringField;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column3: TdxDBGridColumn;
    dxDBGrid2Column4: TdxDBGridColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    dxDBGrid2Column7: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    BtlBrg: TdxButton;
    dxDBGrid2Column8: TdxDBGridColumn;
    dxDBGrid2Column9: TdxDBGridColumn;
    quDetilPrice: TBCDField;
    quDetilTotal: TBCDField;
    dxDBGrid1Column11: TdxDBGridColumn;
    quMainOtoby: TStringField;
    dxDBGrid1Column12: TdxDBGridColumn;
    quMainOtoDate: TDateTimeField;
    quDetilItemID2: TStringField;
    dxDBGrid2Column10: TdxDBGridColumn;
    procedure BtlBrgClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPTrOtorisasi: TfmAPTrOtorisasi;

implementation

{$R *.dfm}
uses Search,ConMain,MyUnit,UnitGeneral,Konfirmasi;

procedure TfmAPTrOtorisasi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    Close;clear;
    Add('select A.POID,B.SuppName,CONVERT(VARCHAR(10),A.TransDate,103) as Tgl,A.TTLPO,'
       +'A.UpdUser,A.UpdDate,A.warehouseID,A.SiteID,A.DivisiID,'
       +'(CASE WHEN A.FgOto=''T'' THEN ''Pending'' WHEN A.FgOto=''X'' THEN ''Rejected'' Else ''Approved'' END) as StatusOto,A.OtoBy,A.OtoDate '
       +'from APTrPurchaseOrderHd A Inner Join APMsSupplier B on A.SuppID=B.SuppID ');
    if RadioGroup1.ItemIndex=0 then
    Add('Where A.FgOto=''T'' AND A.FgRev=''0'' ');
    if RadioGroup1.ItemIndex=1 then
    Add('Where A.FgOto=''X'' AND A.FgRev=''0'' ');
    if RadioGroup1.ItemIndex=2 then
    Add('Where A.FgOto=''Y'' AND A.FgRev=''0'' ');
    Open;
  end;
  quMain.Requery();
  quDetil.Requery();
end;

procedure TfmAPTrOtorisasi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'CARI NOMOR PO';
     SQLString := 'select A.POID,B.SuppName,CONVERT(VARCHAR(10),A.TransDate,103) as Tgl,A.TTLPO,'
                 +'A.UpdUser,A.UpdDate,A.warehouseID,A.SiteID,A.DivisiID,'
                 +'(CASE WHEN A.FgOto=''T'' THEN ''Pending'' WHEN A.FgOto=''X'' THEN ''Rejected'' Else ''Approved'' END) as StatusOto,A.OtoBy,A.otoDate '
                 +'from APTrPurchaseOrderHd A Inner Join APMsSupplier B on A.SuppID=B.SuppID ';
    if RadioGroup1.ItemIndex=0 then
    SQLString := SQLString + 'Where A.FgOto=''T'' AND A.FgRev=''0'' ';
    if RadioGroup1.ItemIndex=1 then
    SQLString := SQLString + 'Where A.FgOto=''X'' AND A.FgRev=''0'' ';
    if RadioGroup1.ItemIndex=2 then
    SQLString := SQLString + 'Where A.FgOto=''Y'' AND A.FgRev=''0'' ';

     if ShowModal = MrOK then
     begin
       quMain.Locate('POID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmAPTrOtorisasi.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmAPTrOtorisasi.FormShow(Sender: TObject);
begin
  inherited;

  RadioGroup1.Top := 10;
  RadioGroup1.Left := 20;
  BtlBrg.Top := 110;
  BtlBrg.Left := 20;
  BtlBrgClick(BtlBrg);
end;

procedure TfmAPTrOtorisasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column1,TRUE);
  SetReadOnly(dxDBGrid1Column2,TRUE);
  SetReadOnly(dxDBGrid1Column3,TRUE);
  SetReadOnly(dxDBGrid1Column4,TRUE);
  SetReadOnly(dxDBGrid1Column5,TRUE);
  SetReadOnly(dxDBGrid1Column6,TRUE);
  SetReadOnly(dxDBGrid1Column7,TRUE);
  SetReadOnly(dxDBGrid1Column8,TRUE);
  SetReadOnly(dxDBGrid1Column9,TRUE);
  SetReadOnly(dxDBGrid1Column10,TRUE);
  SetReadOnly(dxDBGrid1Column11,TRUE);
  SetReadOnly(dxDBGrid1Column12,TRUE);
end;

procedure TfmAPTrOtorisasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid2Column1,TRUE);
  SetReadOnly(dxDBGrid2Column2,TRUE);
  SetReadOnly(dxDBGrid2Column3,TRUE);
  SetReadOnly(dxDBGrid2Column4,TRUE);
  SetReadOnly(dxDBGrid2Column5,TRUE);
  SetReadOnly(dxDBGrid2Column6,TRUE);
  SetReadOnly(dxDBGrid2Column7,TRUE);
  SetReadOnly(dxDBGrid2Column8,TRUE);
  SetReadOnly(dxDBGrid2Column9,TRUE);
  SetReadOnly(dxDBGrid2Column10,TRUE);
end;

procedure TfmAPTrOtorisasi.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmKonfirmasi.Create (Application) do
   try
     FgOto := 'Head';
     Label2.Caption:=Self.quMainPOID.AsString;
     Label1.Visible:=False;
     dxButton1.Visible := TRUE;
     dxButton2.Visible := False;
     ShowModal;
     quMain.Requery();
   finally
    Free;
   end;
end;

procedure TfmAPTrOtorisasi.dxDBGrid2DblClick(Sender: TObject);
begin
  inherited;
  with TfmKonfirmasi.Create (Application) do
   try
     FgOto := 'Detil';
     Label2.Caption:=Self.quMainPOID.AsString;
     Label1.Caption:=Self.quDetilPart_Number.AsString;
     dxButton1.Visible := False;
     dxButton2.Visible := TRUE;
     dxButton3.Caption := 'Void';
     dxButton4.Caption := 'OK';
     jumlah := quDetilJumlah.AsCurrency;
     ShowModal;
     quDetil.Requery();
   finally
    Free;
   end;
end;

end.
