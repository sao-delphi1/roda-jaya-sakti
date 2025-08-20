unit OPRptBOD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxTL, dxDBCtrl, dxDBGrid, dxPSCore, ComCtrls, dxEditor, dxEdLib;

type
  TfmOPRPtBOD = class(TfmRptDlg)
    bbExcel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
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
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    dxDBGrid1Column13: TdxDBGridColumn;
    dxDBGrid1Column14: TdxDBGridColumn;
    dxDBGrid1Column15: TdxDBGridColumn;
    dxDBGrid1Column16: TdxDBGridColumn;
    dxDBGrid1Column17: TdxDBGridColumn;
    dxDBGrid1Column18: TdxDBGridColumn;
    dxDBGrid1Column19: TdxDBGridColumn;
    dxDBGrid1Column20: TdxDBGridColumn;
    dxDBGrid1Column21: TdxDBGridColumn;
    dxDBGrid1Column22: TdxDBGridColumn;
    dxDBGrid1Column23: TdxDBGridColumn;
    dxDBGrid1Column24: TdxDBGridColumn;
    dxDBGrid1Column25: TdxDBGridColumn;
    dxDBGrid1Column26: TdxDBGridColumn;
    dxDBGrid1Column27: TdxDBGridColumn;
    dxDBGrid1Column28: TdxDBGridColumn;
    dxDBGrid1Column29: TdxDBGridColumn;
    dxDBGrid1Column30: TdxDBGridColumn;
    dxDBGrid1Column31: TdxDBGridColumn;
    dxDBGrid1Column32: TdxDBGridColumn;
    dxDBGrid1Column33: TdxDBGridColumn;
    quActKdMaster: TStringField;
    quActNmMaster: TStringField;
    quActTotal: TBCDField;
    quActA: TBCDField;
    quActB: TBCDField;
    quActC: TBCDField;
    quActD: TBCDField;
    quActE: TBCDField;
    quActF: TBCDField;
    quActG: TBCDField;
    quActH: TBCDField;
    quActI: TBCDField;
    quActJ: TBCDField;
    quActK: TBCDField;
    quActL: TBCDField;
    quActM: TBCDField;
    quActN: TBCDField;
    quActO: TBCDField;
    quActP: TBCDField;
    quActQ: TBCDField;
    quActR: TBCDField;
    quActS: TBCDField;
    quActT: TBCDField;
    quActU: TBCDField;
    quActV: TBCDField;
    quActW: TBCDField;
    quActX: TBCDField;
    quActY: TBCDField;
    quActZ: TBCDField;
    quActAA: TBCDField;
    quActBB: TBCDField;
    quActCC: TBCDField;
    quActDD: TBCDField;
    quActEE: TBCDField;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dxSETahun: TdxSpinEdit;
    dxSEBulan: TdxSpinEdit;
    quAct2: TADOQuery;
    procedure bbExcelClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOPRPtBOD: TfmOPRPtBOD;

implementation

uses MyUnit, UnitGeneral;

{$R *.dfm}

procedure TfmOPRPtBOD.bbExcelClick(Sender: TObject);
begin
  inherited;
     if saveDlg.Execute then
  begin
    if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
      dxDBGrid1.SaveToXLS(saveDlg.FileName, true)
    else
      dxDBGrid1.SaveToXLS(saveDlg.FileName + '.xls', true);
  end;
end;

procedure TfmOPRPtBOD.bbRefreshClick(Sender: TObject);
var NamaB : string;
begin
  inherited;

  with quAct2,SQL do
  begin
    Close;Clear;
    Add('SELECT COUNT(*) as Jumlah FROM Calendar WHERE Bulan='''+dxSEBulan.Text+''' AND Tahun='''+dxSETahun.Text+''' ');
    Open;
  end;
  if quAct2.FieldByName('Jumlah').AsInteger<29 then
  Begin
  dxDBGrid1Column31.Visible := FALSE;
  dxDBGrid1Column32.Visible := FALSE;
  dxDBGrid1Column33.Visible := FALSE;
  end else
  if quAct2.FieldByName('Jumlah').AsInteger<30 then
  Begin
  dxDBGrid1Column31.Visible := TRUE;
  dxDBGrid1Column32.Visible := FALSE;
  dxDBGrid1Column33.Visible := FALSE;
  end else
  if quAct2.FieldByName('Jumlah').AsInteger<31 then
  Begin
  dxDBGrid1Column31.Visible := TRUE;
  dxDBGrid1Column32.Visible := TRUE;
  dxDBGrid1Column33.Visible := FALSE;
  end else
  Begin
  dxDBGrid1Column31.Visible := TRUE;
  dxDBGrid1Column32.Visible := TRUE;
  dxDBGrid1Column33.Visible := TRUE;
  end;

  if dxSEBulan.Text = '1' then NamaB :=' - Jan'
  else
  if dxSEBulan.Text = '2' then  NamaB :=' - Feb'
  else
  if dxSEBulan.Text = '3' then  NamaB :=' - Mar'
  else
  if dxSEBulan.Text = '4' then  NamaB :=' - Apr'
  else
  if dxSEBulan.Text = '5' then  NamaB :=' - Mei'
  else
  if dxSEBulan.Text = '6' then  NamaB :=' - Jun'
  else
  if dxSEBulan.Text = '7' then  NamaB :=' - Jul'
  else
  if dxSEBulan.Text = '8' then  NamaB :=' - Aug'
  else
  if dxSEBulan.Text = '9' then  NamaB :=' - Sept'
  else
  if dxSEBulan.Text = '10' then  NamaB :=' - Oct'
  else
  if dxSEBulan.Text = '11' then  NamaB :=' - Nov'
  else
  if dxSEBulan.Text = '12' then  NamaB :=' - Des'
  else
   NamaB :='';

  //Penamaan Bulan
  dxDBGrid1Column3.Caption := '1'+NamaB; dxDBGrid1Column4.Caption := '2'+NamaB;
  dxDBGrid1Column5.Caption := '3'+NamaB; dxDBGrid1Column6.Caption := '4'+NamaB;
  dxDBGrid1Column7.Caption := '5'+NamaB; dxDBGrid1Column8.Caption := '6'+NamaB;
  dxDBGrid1Column9.Caption := '7'+NamaB; dxDBGrid1Column10.Caption := '8'+NamaB;
  dxDBGrid1Column11.Caption := '9'+NamaB; dxDBGrid1Column12.Caption := '10'+NamaB;
  dxDBGrid1Column13.Caption := '11'+NamaB; dxDBGrid1Column14.Caption := '12'+NamaB;
  dxDBGrid1Column15.Caption := '13'+NamaB; dxDBGrid1Column16.Caption := '14'+NamaB;
  dxDBGrid1Column17.Caption := '15'+NamaB; dxDBGrid1Column18.Caption := '16'+NamaB;
  dxDBGrid1Column19.Caption := '17'+NamaB; dxDBGrid1Column20.Caption := '18'+NamaB;
  dxDBGrid1Column21.Caption := '19'+NamaB; dxDBGrid1Column22.Caption := '20'+NamaB;
  dxDBGrid1Column23.Caption := '21'+NamaB; dxDBGrid1Column24.Caption := '22'+NamaB;
  dxDBGrid1Column25.Caption := '23'+NamaB; dxDBGrid1Column26.Caption := '24'+NamaB;
  dxDBGrid1Column27.Caption := '25'+NamaB; dxDBGrid1Column28.Caption := '26'+NamaB;
  dxDBGrid1Column29.Caption := '27'+NamaB; dxDBGrid1Column30.Caption := '28'+NamaB;
  dxDBGrid1Column31.Caption := '29'+NamaB; dxDBGrid1Column32.Caption := '30'+NamaB;
  dxDBGrid1Column33.Caption := '31'+NamaB;

  dxSEBulan.Text := FormatCurr('00',StrToInt(dxSEBulan.Text));

     with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT A.KdMaster,A.NmMaster, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112) BETWEEN '+dxSETahun.Text+''+dxSEBulan.Text+'01 AND '+dxSETahun.Text+''+dxSEBulan.Text+'31) as Total, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'01) as A, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'02) as B, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'03) as C, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'04) as D, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'05) as E, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'06) as F, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'07) as G, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'08) as H, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'09) as I, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'10) as J, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'11) as K, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'12) as L, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'13) as M, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'14) as N, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'15) as O, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'16) as P, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'17) as Q, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'18) as R, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'19) as S, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'20) as T, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'21) as U, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'22) as V, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'23) as W, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'24) as X, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'25) as Y, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'26) as Z, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'27) as AA, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'28) as BB, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'29) as CC, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'30) as DD, '
      +' (SELECT ISNULL(SUM(X.Jumlah),0) FROM OPTrProduksiDt X INNER JOIN OPTrProduksiHd Y ON X.ProdID=Y.ProdID '
      +' WHERE X.ItemID=A.KdMaster AND CONVERT(varchar(20),Y.TransDate,112)='+dxSETahun.Text+''+dxSEBulan.Text+'31) as EE '
      +' FROM AllMaster A  INNER JOIN OPTrProduksiDt B ON A.KdMaster=B.ItemID '
      +' WHERE A.FgMaster=''H'' '
      +' GROUP BY A.KdMaster,A.NmMaster ');
    Open;
  end;
end;

procedure TfmOPRPtBOD.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dxDBGrid1Column1,TRUE);
  SetReadOnly2(dxDBGrid1Column2,TRUE);
  SetReadOnly2(dxDBGrid1Column3,TRUE);
  SetReadOnly2(dxDBGrid1Column4,TRUE);
  SetReadOnly2(dxDBGrid1Column5,TRUE);
  SetReadOnly2(dxDBGrid1Column6,TRUE);
  SetReadOnly2(dxDBGrid1Column7,TRUE);
  SetReadOnly2(dxDBGrid1Column8,TRUE);
  SetReadOnly2(dxDBGrid1Column9,TRUE);
  SetReadOnly2(dxDBGrid1Column10,TRUE);
  SetReadOnly2(dxDBGrid1Column11,TRUE);
  SetReadOnly2(dxDBGrid1Column12,TRUE);
  SetReadOnly2(dxDBGrid1Column13,TRUE);
  SetReadOnly2(dxDBGrid1Column14,TRUE);
  SetReadOnly2(dxDBGrid1Column15,TRUE);
  SetReadOnly2(dxDBGrid1Column16,TRUE);
  SetReadOnly2(dxDBGrid1Column17,TRUE);
  SetReadOnly2(dxDBGrid1Column18,TRUE);
  SetReadOnly2(dxDBGrid1Column19,TRUE);
  SetReadOnly2(dxDBGrid1Column20,TRUE);
  SetReadOnly2(dxDBGrid1Column21,TRUE);
  SetReadOnly2(dxDBGrid1Column22,TRUE);
  SetReadOnly2(dxDBGrid1Column23,TRUE);
  SetReadOnly2(dxDBGrid1Column24,TRUE);
  SetReadOnly2(dxDBGrid1Column25,TRUE);
  SetReadOnly2(dxDBGrid1Column26,TRUE);
  SetReadOnly2(dxDBGrid1Column27,TRUE);
  SetReadOnly2(dxDBGrid1Column28,TRUE);
  SetReadOnly2(dxDBGrid1Column29,TRUE);
  SetReadOnly2(dxDBGrid1Column30,TRUE);
  SetReadOnly2(dxDBGrid1Column31,TRUE);
  SetReadOnly2(dxDBGrid1Column32,TRUE);
  SetReadOnly2(dxDBGrid1Column33,TRUE);

end;

procedure TfmOPRPtBOD.bbExitClick(Sender: TObject);
begin
  inherited;
    close;
end;

procedure TfmOPRPtBOD.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  dxSETahun.Text := FormatDateTime('yyyy',Date);
  dxSEBulan.Text := FormatDateTime('M',Date);
  bbRefreshClick(bbRefresh);
end;

end.
