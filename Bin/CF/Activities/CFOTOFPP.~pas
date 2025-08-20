unit CFOTOFPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxDBTLCl, dxGrClms;

type
  TfmCFOTOFPP = class(TfmStdLv31)
    quMainTanggal: TStringField;
    quMainNo_FPP: TStringField;
    quMainSuppName: TStringField;
    quMainSubTotal: TBCDField;
    quMainPPN: TBCDField;
    quMainDisc: TBCDField;
    quMainTTLKS: TBCDField;
    quMainApproval: TStringField;
    quMainOtoby: TStringField;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    RadioGroup2: TRadioGroup;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    Label2: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxButton6: TdxButton;
    dxDBGrid2: TdxDBGrid;
    dxDBGridButtonColumn1: TdxDBGridButtonColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGrid1Column11: TdxDBGridImageColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn4: TdxDBGridImageColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    dxDBGridColumn9: TdxDBGridColumn;
    quDetilKonsinyasiInvID: TStringField;
    quDetilPOID: TStringField;
    quDetilFgTax: TStringField;
    quDetilDisc: TBCDField;
    quDetilSubtotalM: TBCDField;
    quDetilSubtotalU: TBCDField;
    quDetilPPN: TBCDField;
    quDetilDiscAmount: TBCDField;
    quDetilTTLKJ: TBCDField;
    quDetilNote: TStringField;
    quDetilupddate: TDateTimeField;
    quDetilupduser: TStringField;
    quDetilSuppID: TStringField;
    quDetilfgpph42: TStringField;
    quDetilLtanggal: TStringField;
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    quMainongkir: TBCDField;
    quMainpbbkb: TBCDField;
    dxDBGrid2Column12: TdxDBGridColumn;
    dxDBGrid2Column13: TdxDBGridColumn;
    quDetilOngkir: TBCDField;
    quDetilPBBKB: TBCDField;
    procedure dsMainStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFOTOFPP: TfmCFOTOFPP;

implementation

{$R *.dfm}
uses UnitGeneral,ConMain,MyUnit, StdLv2,UnitDAte,DateUtils,Search,FPPKonfirm;

procedure TfmCFOTOFPP.dsMainStateChange(Sender: TObject);
begin
  inherited;
  setreadonly(dxdbgrid1column1,TRUE);
  setreadonly(dxdbgrid1column2,TRUE);
  setreadonly(dxdbgrid1column3,TRUE);
  setreadonly(dxdbgrid1column4,TRUE);
  setreadonly(dxdbgrid1column5,TRUE);
  setreadonly(dxdbgrid1column6,TRUE);
  setreadonly(dxdbgrid1column7,TRUE);
  setreadonly(dxdbgrid1column8,TRUE);
  setreadonly(dxdbgrid1column9,TRUE);
  setreadonly(dxdbgrid1column10,TRUE);
  setreadonly(dxdbgrid1column12,TRUE);
end;

procedure TfmCFOTOFPP.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  quDEtil.Active := TRUE;
  dt1.Date := EncodeDate(GETYEAR(Date),1,1);
  dt2.Date := Date;
  RadioGroup1.Top := 140;
  RadioGroup2.top := 60;
  GroupBox1.top := 208;
  dxButton6Click(dxButton6);
end;

procedure TfmCFOTOFPP.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmCFOTOFPP.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex = 0 then
  GroupBox1.Visible := False
  else
  GroupBox1.Visible := TRUE;
end;

procedure TfmCFOTOFPP.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT K.Tanggal FROM ( '
       +'SELECT CONVERT(VARCHAR(10),Transdate,103) as Tanggal FROM APTrPurchaseOrderHd Where POID='''+quDetilPOID.AsString+''' UNION ALL '
       +'SELECT CONVERT(VARCHAR(10),TransDate,103) as Tanggal FROM APTrPurchaseHD Where PurchaseID='''+quMainNO_FPP.AsString+''' ) as K ');
    Open;
  end;
  quDetilLtanggal.AsString := quAct.FieldBYName('Tanggal').AsString;
end;

procedure TfmCFOTOFPP.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  setreadonly(dxDBGrid1Column11,TRUE);
  setreadonly(dxDBGridButtonColumn1,TRUE);
  setreadonly(dxDBGridColumn1,TRUE);
  setreadonly(dxDBGridColumn2,TRUE);
  setreadonly(dxDBGridColumn3,TRUE);
  setreadonly(dxDBGridColumn4,TRUE);
  setreadonly(dxDBGridColumn5,TRUE);
  setreadonly(dxDBGridColumn6,TRUE);
  setreadonly(dxDBGridColumn7,TRUE);
  setreadonly(dxDBGridColumn8,TRUE);
  setreadonly(dxDBGridColumn9,TRUE);
  setreadonly(dxDBGrid2Column12,TRUE);
  setreadonly(dxDBGrid2Column13,TRUE);
end;

procedure TfmCFOTOFPP.dxButton6Click(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    Close;clear;
    Add(' select K.tanggal,K.No_FPP,K.SuppName,K.SubTotal,K.Ongkir,K.PBBKB,K.PPN,K.Disc,K.TTLKs,K.Approval,K.otoby FROM ( '
       +' select CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,A.KonsinyasiInvId as No_FPP, '
       +' B.SuppName,A.SubTotal,A.Ongkir,A.PBBKB,A.PPN,A.Disc,A.TTLKS, '
       +' CASE WHEN A.FgOto=''Y'' THEN ''APPROVED'' '
       +' WHEN A.FgOto=''T'' THEN ''PENDING'' '
       +' ELSE ''REJECTED'' END as Approval,A.Otoby,A.FgOto,A.TransDate '
       +' from APTrKonsinyasiInvHd A '
       +' inner join APMsSupplier B on A.SuppID=B.SuppID '
       +' UNION ALL '
       +' select CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,A.PurchaseID, '
       +' B.SuppName,ISNULL(A.Stpb,0),0,0,A.PPN,A.DiscAmount,A.TTLpb, '
       +' CASE WHEN A.FgOto=''Y'' THEN ''APPROVED'' '
       +' WHEN A.FgOto=''T'' THEN ''PENDING'' '
       +' ELSE ''REJECTED'' END as Approval,A.Otoby,A.FgOto,A.TransDate '
       +' from aptrpurchasehd A '
       +' inner join APMsSupplier B on A.SuppID=B.SuppID '
       +' ) as K ');
    if RadioGroup2.ItemIndex=0 then
    Add('Where K.FgOto=''T'' ');
    if RadioGroup2.ItemIndex=1 then
    Add('Where K.FgOto=''Y'' ');
    if RadioGroup2.ItemIndex=2 then
    Add('Where K.FgOto=''X'' ');
    if RadioGroup1.ItemIndex=1 then
    Add('AND CONVERT(VARCHAR(10),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dt1.date)+''' AND '''+FormatDateTime('yyyymmdd',dt2.date)+''' ');
    Open;
  end;
  quMain.Requery();
end;

procedure TfmCFOTOFPP.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'CARI NOMOR FPP ';
     SQLString := ' select K.tanggal,K.No_FPP,K.SuppName,K.SubTotal,K.Ongkir,K.PBBKB,K.PPN,K.Disc,K.TTLKs,K.Approval,K.otoby FROM ( '
                 +' select CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,A.KonsinyasiInvId as No_FPP, '
                 +' B.SuppName,A.SubTotal,A.Ongkir,A.PBBKB,A.PPN,A.Disc,A.TTLKS, '
                 +' CASE WHEN A.FgOto=''Y'' THEN ''APPROVED'' '
                 +' WHEN A.FgOto=''T'' THEN ''PENDING'' '
                 +' ELSE ''REJECTED'' END as Approval,A.Otoby,A.FgOto,A.TransDate '
                 +' from APTrKonsinyasiInvHd A '
                 +' inner join APMsSupplier B on A.SuppID=B.SuppID '
                 +' UNION ALL '
                 +' select CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal,A.PurchaseID, '
                 +' B.SuppName,ISNULL(A.Stpb,0),0,0,A.PPN,A.DiscAmount,A.TTLpb, '
                 +' CASE WHEN A.FgOto=''Y'' THEN ''APPROVED'' '
                 +' WHEN A.FgOto=''T'' THEN ''PENDING'' '
                 +' ELSE ''REJECTED'' END as Approval,A.Otoby,A.FgOto,A.TransDate '
                 +' from aptrpurchasehd A '
                 +' inner join APMsSupplier B on A.SuppID=B.SuppID '
                 +' ) as K ';
     if RadioGroup2.ItemIndex=0 then
     SQLString := SQLString + 'Where K.FgOto=''T'' ';
     if RadioGroup2.ItemIndex=1 then
     SQLString := SQLString + 'Where K.FgOto=''Y'' ';
     if RadioGroup2.ItemIndex=2 then
     SQLString := SQLString + 'Where K.FgOto=''X'' ';
     if RadioGroup1.ItemIndex=1 then
     SQLString := SQLString + 'AND CONVERT(VARCHAR(10),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyymmdd',dt1.date)+''' AND '''+FormatDateTime('yyyymmdd',dt2.date)+''' ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('No_FPP',Res[1],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmCFOTOFPP.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmFPPKonfirm.Create (Application) do
   try
     Label2.Caption:=Self.quMainNo_FPP.AsString;
     Label3.Caption:=Self.quMainApproval.AsString;
     Label1.Caption:='Jumlah : Rp '+FormatRptKurung(Self.quMainTTLKS.AsString);
     ShowModal;
   finally
    Free;
   end;
   quMain.Requery();
end;

end.
