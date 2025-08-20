unit Detail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxTL, dxDBCtrl, dxDBGrid,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmDetail = class(TfmStdLv2)
    quMainTanggal: TStringField;
    quMainVoucherID: TStringField;
    quMainRekeningID: TStringField;
    quMainRekeningName: TStringField;
    quMainjenis: TStringField;
    quMainAmount: TBCDField;
    dbgList: TdxDBGrid;
    dbgListColumn1: TdxDBGridColumn;
    dbgListColumn2: TdxDBGridColumn;
    dbgListColumn3: TdxDBGridColumn;
    dbgListColumn4: TdxDBGridColumn;
    dbgListColumn5: TdxDBGridColumn;
    dbgListColumn6: TdxDBGridColumn;
    quMainMOP: TStringField;
    quMainNoBGCek: TStringField;
    dbgListColumn7: TdxDBGridColumn;
    dbgListColumn8: TdxDBGridColumn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExcel: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Kode : string;
  end;

var
  fmDetail: TfmDetail;

implementation

{$R *.dfm}

procedure TfmDetail.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmDetail.FormShow(Sender: TObject);
begin
  inherited;
  with quMain, SQL do
  begin
    Close;Clear;
    Add(' SELECT CONVERT(VARCHAR(10),N.TransDate,103) as Tanggal,N.VoucherID, '
       +' M.RekeningID,O.RekeningName,M.jenis,M.Amount,N.MOP,N.NoBGCek '
       +' FROM CFTrKKBBDt M '
       +' inner join CFMsRekening O on M.RekeningID=O.RekeningID '
       +' inner join CFTrKKBBHd N on M.VoucherID=N.VoucherID '
       +' WHere M.Note='''+Kode+''' ');
    Open;
  End;
end;

procedure TfmDetail.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dbgList.SaveToXLS(saveDlg.FileName, true)
      else
        dbgList.SaveToXLS(saveDlg.FileName + '.xls', true);
    end;
end;

end.
