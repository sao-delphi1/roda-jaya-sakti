unit APPrOtorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ActnList,
  DB, ADODB, StdCtrls, ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore,
  dxContainer, Buttons, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCore;

type
  TfmAPPrOtorisasi = class(TfmStdLv31)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column3: TdxDBGridColumn;
    dxDBGrid2Column4: TdxDBGridColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    dxDBGrid2Column8: TdxDBGridColumn;
    dxDBGrid2Column9: TdxDBGridColumn;
    dxDBGrid2Column7: TdxDBGridColumn;
    quMainPRID: TStringField;
    quMainSiteID: TStringField;
    quMainTanggal: TStringField;
    quMainDivisiID: TStringField;
    quDetilStatusOto: TStringField;
    quDetilItemId: TStringField;
    quDetilItemName: TStringField;
    quDetilTypeUnit: TStringField;
    quDetilNoUnit: TStringField;
    quDetilQty: TBCDField;
    quDetilUOMID: TStringField;
    quDetilNote: TStringField;
    quDetilNoteOto: TStringField;
    quDetilJumPO: TBCDField;
    quDetilJumTerima: TBCDField;
    quDetilJumReal: TBCDField;
    quDetilPRID: TStringField;
    quDetilNumAll: TIntegerField;
    dxDBGrid2Column10: TdxDBGridColumn;
    dxDBGrid2Column11: TdxDBGridColumn;
    dxDBGrid2Column12: TdxDBGridColumn;
    dxDBGrid2Column13: TdxDBGridColumn;
    dxDBGrid2Column14: TdxDBGridColumn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label1: TLabel;
    BtlBrg: TdxButton;
    bbExcel: TBitBtn;
    BitBtn1: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    RadioGroup1: TRadioGroup;
    quMainTransdate: TDateTimeField;
    quRef: TADOQuery;
    dsRef: TDataSource;
    quRefItemID: TStringField;
    quRefNumAll: TAutoIncField;
    quRefRefID: TStringField;
    quRefUpdDate: TDateTimeField;
    quRefUpdUser: TStringField;
    quRefLItemName: TStringField;
    quRefLTypeUnit: TStringField;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3Column1: TdxDBGridColumn;
    dxDBGrid3Column2: TdxDBGridColumn;
    dxDBGrid3Column3: TdxDBGridColumn;
    procedure BtlBrgClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure quRefCalcFields(DataSet: TDataSet);
    procedure dsRefStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPPrOtorisasi: TfmAPPrOtorisasi;

implementation

{$R *.dfm}
uses Search, PRAction, PRConfirm, StdLv2, StdLv3, UnitGeneral;

procedure TfmAPPrOtorisasi.BtlBrgClick(Sender: TObject);
var Fgoto : string;
begin
  inherited;
  Fgoto := '''S''';
  if CheckBox1.Checked then FgOto := FgOto+',''T''';
  if CheckBox2.Checked then FgOto := FgOto+',''Y'',''W''';
  if CheckBox3.Checked then FgOto := FgOto+',''P''';
  if CheckBox4.Checked then FgOto := FgOto+',''R''';
  if CheckBox5.Checked then FgOto := FgOto+',''X''';
  if CheckBox6.Checked then FgOto := FgOto+',''F''';

  with quMain,SQL do
  begin
    Close;clear;
    Add('select DISTINCT PRID,SiteID,CONVERT(VARCHAR(10),Transdate,103) as Tanggal,DivisiID,K.TransDate '
       +'FROM ( '
       +'SELECT ISNULL(A.FGOto,''W'') as FgOto,A.PRID,SiteName as SiteID,B.Transdate,DivisiName as DivisiID, '
       +'CASE WHEN ISNULL(A.FGOto,''W'')=''W'' THEN ''On Progress'' '
       +'     WHEN ISNULL(A.FGOto,''W'')=''Y'' THEN ''On Progress'' '
       +'     WHEN ISNULL(A.FGOto,''W'')=''F'' THEN ''Sent by HO'' '
       +'     WHEN ISNULL(A.FGOto,''W'')=''R'' THEN ''Repair'' '
       +'     WHEN ISNULL(A.FGOto,''W'')=''P'' THEN ''Pending'' '
       +'     WHEN ISNULL(A.FGOto,''W'')=''X'' THEN ''Rejected'' ELSE ''Belum Oto'' END as StatusOto '
       +'from aptrpurchaserequestdt A '
       +'Inner Join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm=''PR'' '
       +'Inner Join INMsSites C on B.SiteID=C.SiteID '
       +'Inner Join INMsDivisi D on B.DivisiID=D.DivisiID '
       +') as K '
       +'Where K.FgOto IN ('+FgOto+') ORDER BY K.TransDate');
    Open;
  end;

  with quDetil,SQL do
  begin
    Close;Clear;
    Add('select CASE WHEN K.FgOto=''W'' THEN ''On Progress'' '
       +'            WHEN K.FgOto=''Y'' THEN ''On Progress'' '
       +'            WHEN K.FgOto=''F'' THEN ''Sent All'' '
       +'            WHEN K.FgOto=''R'' THEN ''Repair'' '
       +'            WHEN K.FgOto=''P'' THEN ''Pending'' '
       +'            WHEN K.FgOto=''X'' THEN ''Rejected'' ELSE ''Belum Oto'' END as StatusOto, '
       +'            ItemId,ItemName,TypeUnit,NoUnit,Qty,UOMID,Note,NoteOto,JumPO,JumTerima,JumReal,PRID,NumAll '
       +'FROM ( '
       +'SELECT ISNULL(A.FGOto,''W'') as FgOto,A.PRID,A.ItemID,B.ItemName,A.TypeUnit,A.NoUnit,A.Qty,A.UOMID,A.Note,A.NoteOto,A.NumAll, '
       +'ISNULL((SELECT SUM(X.Jumlah) FROM APTrPurchaseOrderDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumPO, '
       //+'ISNULL((SELECT SUM(X.Jumlah) FROM APTrKonsinyasiDt X INNER JOIN APTrKonsinyasiHd Y on X.KonsinyasiID=Y.KonsinyasiID '
       //+'WHERE X.Note=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumTerima, '

       +'ISNULL((SELECT SUM(F.Terima) FROM( '
       +'SELECT X.POID,X.ItemID2,ISNULL((SELECT SUM(M.Jumlah) FROM APTrKonsinyasiDT M WHERE M.POID=X.POID '
       +'AND M.ItemID=X.ItemID2 AND M.FgNum=X.NumAll),0) as Terima '
       +'FROM APTrPurchaseOrderDt X Where X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll) as F ),0) as JumTerima, '

       +'ISNULL((SELECT SUM(X.Qty) FROM INTrTransferItemDt X WHERE X.PRID=A.PRID AND X.ItemID=A.ItemID AND X.FgNum=A.NumAll),0) as JumReal '
       +'from aptrpurchaserequestdt A '
       +'inner join INMsItem B on A.ItemID=B.ItemID '
       +') as K WHERE K.FgOto IN ('+FgOto+') AND K.PRID=:PRID ');
    Open;
  end;



  quMain.Requery();
  quDetil.Requery();
end;

procedure TfmAPPrOtorisasi.bbFindClick(Sender: TObject);
var FgOto : string;
begin
  inherited;
  Fgoto := '''S''';
  if CheckBox1.Checked then FgOto := FgOto+',''T''';
  if CheckBox2.Checked then FgOto := FgOto+',''Y'',''W''';
  if CheckBox3.Checked then FgOto := FgOto+',''P''';
  if CheckBox4.Checked then FgOto := FgOto+',''R''';
  if CheckBox5.Checked then FgOto := FgOto+',''X''';
  if CheckBox6.Checked then FgOto := FgOto+',''F''';

  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Purchase Request';
     SQLString := 'select DISTINCT PRID,SiteID,CONVERT(VARCHAR(10),Transdate,103) as Tanggal,DivisiID,K.TransDate '
                 +'FROM ( '
                 +'SELECT ISNULL(A.FGOto,''W'') as FgOto,A.PRID,C.SiteName as SiteID,B.Transdate,DivisiName as DivisiID, '
                 +'CASE WHEN ISNULL(A.FGOto,''W'')=''W'' THEN ''On Progress'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''Y'' THEN ''On Progress'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''F'' THEN ''Sent by HO'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''R'' THEN ''Repair'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''P'' THEN ''Pending'' '
                 +'     WHEN ISNULL(A.FGOto,''W'')=''X'' THEN ''Rejected'' ELSE ''Belum Oto'' END as StatusOto '
                 +'from aptrpurchaserequestdt A '
                 +'Inner Join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm=''PR'' '
                 +'Inner Join INMsSites C on B.SiteID=C.SiteID '
                 +'Inner Join INMsDivisi D on B.DivisiID=D.DivisiID '
                 +') as K '
                 +'Where K.FgOto IN ('+FgOto+') ORDER BY K.Transdate';

     if ShowModal = MrOK then
     begin
       quMain.Locate('PRID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmAPPrOtorisasi.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmAPPrOtorisasi.FormShow(Sender: TObject);
begin
  inherited;
  bbFind.Enabled := TRUE;
  quMain.Open;
  quDetil.Open;
  quRef.Open;
  BtlBrgClick(BtlBrg);
end;

procedure TfmAPPrOtorisasi.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmPRConfirm.Create (Application) do
   try
     Label1.Caption:=Self.quMainPRID.AsString;
     ShowModal;
     BtlBrgClick(BtlBrg);
   finally
     Free;
   end;
end;

procedure TfmAPPrOtorisasi.dxDBGrid2DblClick(Sender: TObject);
var PRID : string;
begin
  inherited;
  with TfmPRAction.Create (Application) do
   try
     FgForm:='PR';
     Label1.Caption:=Self.quDetilPRID.AsString;
     Label2.Caption:=Self.quDetilItemId.AsString;
     Label6.Caption:=Self.quDetilNumAll.AsString;
     Note:=Self.quDetilNoteOto.AsString;
     Jum := Self.quDetilQty.AsCurrency;
     ShowModal;
     qudetil.Requery();
   finally
     Free;
   end;
end;

procedure TfmAPPrOtorisasi.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
  begin
    if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
      dxDBGrid2.SaveToXLS(saveDlg.FileName, true)
    else
     ;dxDBGrid2.SaveToXLS(saveDlg.FileName + '.xls', true)
  end;
end;

procedure TfmAPPrOtorisasi.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmAPPrOtorisasi.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex = 0 then
  begin
    dxDBGrid2Column1.Visible := True;
    dxDBGrid2Column2.Visible := True;
    dxDBGrid2Column3.Visible := True;
    dxDBGrid2Column4.Visible := True;
    dxDBGrid2Column5.Visible := True;
    dxDBGrid2Column6.Visible := True;
    dxDBGrid2Column7.Visible := False;
    dxDBGrid2Column8.Visible := True;
    dxDBGrid2Column9.Visible := True;
    dxDBGrid2Column10.Visible := True;
    dxDBGrid2Column11.Visible := False;
    dxDBGrid2Column12.Visible := True;
    dxDBGrid2Column13.Visible := True;
    dxDBGrid2Column14.Visible := True;
    dxDBGrid2Column10.ColIndex := 0;
    dxDBGrid2Column4.ColIndex := 1;
    dxDBGrid2Column3.ColIndex := 2;
    dxDBGrid2Column1.ColIndex := 3;
    dxDBGrid2Column2.ColIndex := 4;
    dxDBGrid2Column5.ColIndex := 5;
    dxDBGrid2Column6.ColIndex := 6;
    dxDBGrid2Column12.ColIndex := 7;
    dxDBGrid2Column13.ColIndex := 8;
    dxDBGrid2Column14.ColIndex := 9;
    dxDBGrid2Column8.ColIndex := 10;
    dxDBGrid2Column9.ColIndex := 11;
  end else
  begin
    dxDBGrid2Column1.Visible := True;
    dxDBGrid2Column2.Visible := True;
    dxDBGrid2Column3.Visible := True;
    dxDBGrid2Column4.Visible := True;
    dxDBGrid2Column5.Visible := True;
    dxDBGrid2Column6.Visible := True;
    dxDBGrid2Column7.Visible := False;
    dxDBGrid2Column8.Visible := False;
    dxDBGrid2Column9.Visible := False;
    dxDBGrid2Column10.Visible := False;
    dxDBGrid2Column11.Visible := False;
    dxDBGrid2Column12.Visible := False;
    dxDBGrid2Column13.Visible := False;
    dxDBGrid2Column14.Visible := False;
    dxDBGrid2Column2.ColIndex := 0;
    dxDBGrid2Column1.ColIndex := 1;
    dxDBGrid2Column5.ColIndex := 2;
    dxDBGrid2Column6.ColIndex := 3;
    dxDBGrid2Column3.ColIndex := 4;
    dxDBGrid2Column4.ColIndex := 5;
  end;

end;

procedure TfmAPPrOtorisasi.quRefCalcFields(DataSet: TDataSet);
var ItemName,TypeUnit : string;
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('SELECT ItemName,TypeUnit FROM INMsItem Where itemid='''+quRefRefID.AsString+''' ');
    Open;
  end;
  ItemName := quAct.FieldByName('ItemName').AsString;
  TypeUnit := quAct.FieldByName('TypeUnit').AsString;
  quRefLItemName.ASString := ItemName;
  quRefLTypeUnit.ASString := TypeUnit;
end;

procedure TfmAPPrOtorisasi.dsRefStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid3Column1,TRUE);
  SetReadOnly(dxDBGrid3Column2,TRUE);
  SetReadOnly(dxDBGrid3Column3,TRUE);
end;

end.
