unit QROtorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmQROtorisasi = class(TfmStdLv31)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2Column4: TdxDBGridColumn;
    dxDBGrid2Column3: TdxDBGridColumn;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    dxDBGrid2Column12: TdxDBGridColumn;
    dxDBGrid2Column13: TdxDBGridColumn;
    quMainTransdate: TDateTimeField;
    quMainPRID: TStringField;
    quMainFgDivisi: TStringField;
    quMainSiteID: TStringField;
    quDetilItemID: TStringField;
    quDetilItemName: TStringField;
    quDetilQty: TBCDField;
    quDetilUOMID: TStringField;
    quDetilTYpeUnit: TStringField;
    quDetilNoUnit: TStringField;
    quDetilSalesName: TStringField;
    quDetilOtorisasi: TStringField;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label1: TLabel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label2: TLabel;
    quDetilNumAll: TAutoIncField;
    dxDBGrid2Column9: TdxDBGridColumn;
    quDetilStock: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQROtorisasi: TfmQROtorisasi;

implementation

uses StdLv2, MyUnit,Control, Search;

{$R *.dfm}

procedure TfmQROtorisasi.FormShow(Sender: TObject);
begin
  UsePeriod := False;
  inherited;
  quMain.Active := TRUE;
  qudetil.ACtive := TRUE;

  Button1Click(Button1);
end;

procedure TfmQROtorisasi.Button1Click(Sender: TObject);
var FgOto,FgOtoD : string;
begin
  inherited;
  FgOto := '''AASSSDFF''';
  FgOtoD := '''AASSSDFF''';

  if CheckBox1.Checked then FgOto := FgOto + ',''T''';
  if CheckBox2.Checked then FgOto := FgOto + ',''X''';
  if CheckBox3.Checked then FgOto := FgOto + ',''Y''';

  if CheckBox4.Checked then FgOtoD := FgOtoD + ',''T''';
  if CheckBox5.Checked then FgOtoD := FgOtoD + ',''X''';
  if CheckBox6.Checked then FgOtoD := FgOtoD + ',''Y''';

  with quMain,SQL do
  begin
    Close;Clear;
    Add('select DISTINCT B.Transdate,B.PRID,ISNULL(B.FgDivisi,''LOG'') as FgDivisi,SiteID from APTrPurchaseRequestDt A '
       +'inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm=''MR'' '
       +'inner join INMsItem C on A.ItemID=C.ItemID '
       +'inner join ARMsSales D on B.SalesID=D.SalesID '
       +'WHERE ISNULL(A.FgOto,''Y'') IN ('+FgOto+') ');
    if KdCab<>'HO' then
    Add(' AND B.KdCab='''+KdCab+''' ');
    Open;
  end;

  with quDetil,SQL do
  begin
    Close;Clear;
    Add('select A.ItemID,C.ItemName,A.Qty,C.UOMID,C.TYpeUnit,A.NoUnit,D.SalesName '
       +',(SELECT ISNULL(SUM(CASE WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) FROM ALLITEM F WHERE F.ItemID=A.ItemID) as Stock, '
       +'CASE WHEN ISNULL(A.FgOto,''Y'')=''T'' THEN ''WAITING'' '
       +'     WHEN ISNULL(A.FgOto,''Y'')=''X'' THEN ''REJECTED'' ELSE ''APPROVED'' END as Otorisasi,A.NumAll '
       +'from APTrPurchaseRequestDt A '
       +'inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm=''MR'' '
       +'inner join INMsItem C on A.ItemID=C.ItemID '
       +'inner join ARMsSales D on B.SalesID=D.SalesID '
       +'WHERE ISNULL(A.FgOto,''Y'') IN ('+FgOtoD+') AND A.PRID=:PRID ');
    if KdCab<>'HO' then
    Add(' AND B.KdCab='''+KdCab+''' ');
    Parameters.ParamByName('PRID').DataType := ftString;
    Open;
  end;
end;

procedure TfmQROtorisasi.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmQC.Create (Application) do
   try
     Label1.Caption:=Self.quMainPRID.AsString;
     StatusF := 'H';
     ShowModal;
   finally
     Free;
   end;
   Button1Click(Button1);
end;

procedure TfmQROtorisasi.dxDBGrid2DblClick(Sender: TObject);
begin
  inherited;
  with TfmQC.Create (Application) do
   try
     Label1.Caption:=Self.quMainPRID.AsString;
     Label2.Caption:=Self.qudetilItemID.AsString;
     Label3.Caption:=Self.qudetilNumAll.AsString;
     StatusF := 'D';
     ShowModal;
   finally
     Free;
   end;
   Button1Click(Button1);
end;

procedure TfmQROtorisasi.bbFindClick(Sender: TObject);
var FgOtoD : String;
begin
  inherited;
  FgOtoD := '''AASSSDFF''';

  if CheckBox4.Checked then FgOtoD := FgOtoD + ',''T''';
  if CheckBox5.Checked then FgOtoD := FgOtoD + ',''X''';
  if CheckBox6.Checked then FgOtoD := FgOtoD + ',''Y''';

  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Material Request';
     SQLString := 'select CONVERT(VARCHAR(10),B.TransDate,103) as Tanggal,A.PRID,ISNULL(B.FgDivisi,''LOG'') as FgDivisi,A.ItemID,'
                 +'C.ItemName,A.Qty,C.UOMID,C.TYpeUnit,A.NoUnit,D.SalesName, '
                 +'CASE WHEN A.FgOto=''T'' THEN ''WAITING'' WHEN A.FgOto=''X'' THEN ''REJECTED'' ELSE ''APPROVED'' END as Otorisasi '
                 +'from APTrPurchaseRequestDt A '
                 +'inner join APTrPurchaseRequestHd B on A.PRID=B.PRID AND B.FgForm=''MR'' '
                 +'inner join INMsItem C on A.ItemID=C.ItemID '
                 +'inner join ARMsSales D on B.SalesID=D.SalesID '
                 +'Where ISNULL(A.FgOto,''Y'') IN ('+FgOtoD+') ORDER BY B.Transdate,B.PRID,A.ItemID ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('PRID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

end.
