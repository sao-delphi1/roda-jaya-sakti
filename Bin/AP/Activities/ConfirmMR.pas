unit ConfirmMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmConfirmMR = class(TfmStdLv31)
    quMainTanggal: TStringField;
    quMainPRID: TStringField;
    quMainSiteName: TStringField;
    quMainSalesName: TStringField;
    quMainDivisiName: TStringField;
    quDetilPRID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilUOMID: TStringField;
    quDetilNote: TStringField;
    quDetilTypeUnit: TStringField;
    quDetilNoUnit: TStringField;
    quDetilItemName: TStringField;
    quDetilFgConfirm: TStringField;
    quDetilConfirmDate: TDateTimeField;
    quDetilConfirmBy: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column3: TdxDBGridColumn;
    dxDBGrid2Column4: TdxDBGridColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    dxDBGrid2Column7: TdxDBGridColumn;
    dxDBGrid2Column8: TdxDBGridColumn;
    dxDBGrid2Column9: TdxDBGridColumn;
    dxDBGrid2Column10: TdxDBGridColumn;
    quDetilNumAll: TAutoIncField;
    RadioGroup1: TRadioGroup;
    BtlBrg: TdxButton;
    quMainKdCab: TStringField;
    dxDBGrid1Column6: TdxDBGridColumn;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fgDivisi : string;
  end;

var
  fmConfirmMR: TfmConfirmMR;

implementation

uses StdLv2,UnitGeneral,ConMain,MyUnit,Search,ConfirmNote;

{$R *.dfm}

procedure TfmConfirmMR.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  qudetil.Active := TRUE;

  if FgDivisi='SF' then
  Caption := 'Konfirmasi Material Request Safety'
  else
  if FgDivisi='MT' then
  Caption := 'Konfirmasi Material Request Maintenance'
  else
  if FgDivisi='OP' then
  Caption := 'Konfirmasi Material Request Operation'
  else
  if FgDivisi='HR' then
  Caption := 'Konfirmasi Material Request Human Resource'
  else
  Caption := 'Konfirmasi Material Request Logistik';

  if KdCab<>'HO' then
  begin
    BtlBrg.Visible := False;
    RadioGroup1.Visible := False;
    CheckBox1.Visible := False;
  end else
  begin
    CheckBox1.Checked := TRUE;
  end;

  BtlBrgClick(BtlBrg);
end;

procedure TfmConfirmMR.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
end;

procedure TfmConfirmMR.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'CARI NOMOR MR';
     SQLString := ' select DISTINCT CONVERT(VARCHAR(10),B.Transdate,103) as Tanggal,A.PRID,C.SiteName,D.SalesName,E.DivisiName '
                 +' from APTrPurchaseRequestDt A inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm=''MR'' '
                 +' inner join INMsSites C on B.SiteID=C.SiteID '
                 +' inner join ARMsSales D on B.SalesID=D.SalesID '
                 +' inner join INMsDivisi E on B.DivisiID=E.DivisiID ';
                 if RadioGroup1.ItemIndex=0 then
                 SQLString := SQLString + ' WHERE ISNULL(A.FgConfirm,''T'')=''T'' ';
                 if RadioGroup1.ItemIndex=1 then
                 SQLString := SQLString + ' WHERE ISNULL(A.FgConfirm,''T'')=''Y'' ';
                 if RadioGroup1.ItemIndex=2 then
                 SQLString := SQLString + ' WHERE ISNULL(A.FgConfirm,''T'') IN (''T'',''Y'') ';
                 if (KdCab<>'HO') AND (CheckBox1.Checked=FALSE) then
                 SQLString := SQLString + ' AND B.KdCab='''+KdCab+''' AND ISNULL(B.FgDivisi,''LOG'')='''+fgDivisi+''' ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('PRID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmConfirmMR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column1,TRUE);
  SetReadOnly(dxDBGrid1Column2,TRUE);
  SetReadOnly(dxDBGrid1Column3,TRUE);
  SetReadOnly(dxDBGrid1Column4,TRUE);
  SetReadOnly(dxDBGrid1Column5,TRUE);
  SetReadOnly(dxDBGrid1Column6,TRUE);
end;

procedure TfmConfirmMR.dsDetilStateChange(Sender: TObject);
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

procedure TfmConfirmMR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    Close;Clear;
    Add(' select DISTINCT CONVERT(VARCHAR(10),B.Transdate,103) as Tanggal,A.PRID,C.SiteName,D.SalesName,E.DivisiName,B.KdCab '
       +' from APTrPurchaseRequestDt A inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm=''MR'' '
       +' inner join INMsSites C on B.SiteID=C.SiteID '
       +' inner join ARMsSales D on B.SalesID=D.SalesID '
       +' inner join INMsDivisi E on B.DivisiID=E.DivisiID ');
    if RadioGroup1.ItemIndex=0 then
    Add(' WHERE ISNULL(A.FgConfirm,''T'')=''T'' ');
    if RadioGroup1.ItemIndex=1 then
    Add(' WHERE ISNULL(A.FgConfirm,''T'')=''Y'' ');
    if RadioGroup1.ItemIndex=2 then
    Add(' WHERE ISNULL(A.FgConfirm,''T'') IN (''T'',''Y'') ');
    if (KdCab<>'HO') AND (CheckBox1.Checked=FALSE) then
    Add(' AND B.KdCab='''+KdCab+''' AND ISNULL(B.FgDivisi,''LOG'')='''+fgDivisi+''' ');
    Open;
  end;

  with qudetil,SQL do
  begin
    Close;Clear;
    Add(' select A.PRID,A.ItemID,A.Qty,A.UOMID,A.Note,A.TypeUnit,A.NoUnit,C.ItemName,ISNULL(A.FgConfirm,''T'') as FgConfirm, '
       +' A.ConfirmDate,A.ConfirmBy,A.NumAll '
       +' from APTrPurchaseRequestDt A inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm=''MR'' '
       +' inner join INMsItem C on A.ItemID=C.ItemID '
       +' Where A.PRID=:PRID ');
    if RadioGroup1.ItemIndex=0 then
    Add(' AND ISNULL(A.FgConfirm,''T'')=''T'' ');
    if RadioGroup1.ItemIndex=1 then
    Add(' AND ISNULL(A.FgConfirm,''T'')=''Y'' ');
    if RadioGroup1.ItemIndex=2 then
    Add(' AND ISNULL(A.FgConfirm,''T'') IN (''T'',''Y'') ');
    if (KdCab<>'HO') AND (CheckBox1.Checked=FALSE) then
    Add(' AND B.KdCab='''+KdCab+''' AND ISNULL(B.FgDivisi,''LOG'')='''+fgDivisi+''' ');
    Open;
  end;
end;

procedure TfmConfirmMR.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmConfirmNote.Create (Application) do
   try
     FgFOrm := 'H';
     Label2.Caption:=Self.quMainPRID.AsString;
     Label3.Visible:=False;
     Label4.Visible:=False;
     ShowModal;
   finally
     Free;
   end;
   quMain.Requery();
end;

procedure TfmConfirmMR.dxDBGrid2DblClick(Sender: TObject);
begin
  inherited;
  with TfmConfirmNote.Create (Application) do
   try
     FgForm := 'D';
     Label2.Caption:=Self.quDetilPRID.AsString;
     Label3.Caption:=Self.quDetilItemID.AsString;
     Label4.Caption:=Self.quDetilNumAll.AsString;
     ShowModal;
   finally
     Free;
   end;
   quMain.Requery();
end;

end.
