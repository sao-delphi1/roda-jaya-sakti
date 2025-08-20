unit INRptMsItem2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, DB, ADODB,
  StdCtrls, Buttons, ExtCtrls, dxCore, dxButton, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmINRptMsItem2 = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
    quActGroupID: TStringField;
    quActItemId: TStringField;
    quActItemName: TStringField;
    quActTypeUnit: TStringField;
    quActDescription: TStringField;
    quActUOMID: TStringField;
    quActdealerPrice: TBCDField;
    quActmerk: TStringField;
    quActStatus: TStringField;
    quActFgActive: TStringField;
    quActJenis: TStringField;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    RadioGroup2: TRadioGroup;
    bbRefresh: TBitBtn;
    quActNmMaster: TStringField;
    quActFgMaster: TStringField;
    bbFind: TdxButton;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptMsItem2: TfmINRptMsItem2;

implementation

uses StdLv0,MyUnit,Search,UnitGeneral;

{$R *.dfm}

procedure TfmINRptMsItem2.bbRefreshClick(Sender: TObject);
begin
  inherited;
  with quAct, SQL do
  begin
  close;clear;
    add('SELECT K.* FROM (  '
        +'select ''A'' as GroupID,A.ItemId,A.ItemName,A.TypeUnit,B.Description,A.UOMID,A.dealerPrice,A.merk, '
        +'CASE WHEN A.FgActive=''Y'' THEN ''AKTIF'' ELSE ''TDK AKTIF'' END as Status,A.FgActive,A.Jenis,c.NmMaster,c.FgMaster '
        +'FROM INMsItem A LEFT JOIN INMsTypeUnit B on A.TypeUnit=B.TypeUnit '
        +'INNER JOIN AllMaster C ON A.Jenis=C.KdMaster) as K ');
        if RadioGroup2.ItemIndex=1 then
          add('WHERE K.Jenis=''S'' Order By K.ItemID ');
        if RadioGroup2.ItemIndex=2 then
          add('WHERE K.Jenis=''I'' Order By K.ItemID ');
        if RadioGroup2.ItemIndex=0 then
          add('Order By K.ItemID ');

    open;
  end;
end;

procedure TfmINRptMsItem2.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active:= TRUE;
  bbRefreshClick(bbRefresh);
end;

procedure TfmINRptMsItem2.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Master Barang';
       SQLString := ' SELECT ItemName as Nama_Barang ,ItemID as Kode_Barang'
                   +' FROM INMsItem '
                   +' ORDER BY ItemID';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('ItemID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmINRptMsItem2.bbCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmINRptMsItem2.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dgrReport.SaveToXLS(saveDlg.FileName, true)
      else
        dgrReport.SaveToXLS(saveDlg.FileName + '.xls', true);
    end;
end;

procedure TfmINRptMsItem2.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dgrReportColumn1,TRUE);
  SetReadOnly(dgrReportColumn2,TRUE);
  SetReadOnly(dgrReportColumn3,TRUE);
  SetReadOnly(dgrReportColumn4,TRUE);
  SetReadOnly(dgrReportColumn5,TRUE);
  SetReadOnly(dgrReportColumn6,TRUE);
  SetReadOnly(dgrReportColumn7,TRUE);
end;

end.
