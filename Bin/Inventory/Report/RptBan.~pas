unit RptBan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxTL, dxDBCtrl, dxDBGrid, dxPSCore, ComCtrls, DBCtrls;

type
  TfmRptBan = class(TfmRptDlg)
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    quReport: TADOQuery;
    dsReport: TDataSource;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExp: TBitBtn;
    bbColp: TBitBtn;
    quReportTgl: TStringField;
    quReportTransID: TStringField;
    quReportNoUnit: TStringField;
    quReportKM: TStringField;
    quReportMerk: TStringField;
    quReportItemID: TStringField;
    quReportserial: TStringField;
    quReportJumlah: TBCDField;
    quReportPosisi: TStringField;
    quReportKondisi: TStringField;
    quReportStatus: TStringField;
    quReportNote: TStringField;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    dgrReportColumn11: TdxDBGridColumn;
    dgrReportColumn12: TdxDBGridColumn;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    quReportWarehouseID: TStringField;
    dgrReportColumn13: TdxDBGridColumn;
    quReportUpdDate: TDateTimeField;
    quReportUpdUser: TStringField;
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn15: TdxDBGridColumn;
    dbgList: TdxDBGrid;
    dbgListSalesID: TdxDBGridMaskColumn;
    dbgListSalesName: TdxDBGridMaskColumn;
    quItem: TADOQuery;
    dsItem: TDataSource;
    quSite: TADOQuery;
    dsSite: TDataSource;
    quItemItemID: TStringField;
    quItemItemName: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Panel2: TPanel;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    quSiteWarehouseID: TStringField;
    quSiteWarehouseName: TStringField;
    Button1: TButton;
    Button2: TButton;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label6: TLabel;
    DBText4: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    quTotalLepas: TBCDField;
    quTotalPasang: TBCDField;
    quTotalSpare: TBCDField;
    quTotalRotasi: TBCDField;
    quTotalStok: TBCDField;
    quReportNmMaster: TStringField;
    dgrReportColumn16: TdxDBGridColumn;
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    sQuery : string;
  public
    { Public declarations }
  end;

var
  fmRptBan: TfmRptBan;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, ConMain, Unitdate;

procedure TfmRptBan.bbExcelClick(Sender: TObject);
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

procedure TfmRptBan.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmRptBan.bbRefreshClick(Sender: TObject);
begin
  inherited;

  sQuery := 'select CONVERT(VARCHAR(12),B.TransDate,111) as Tgl,A.TransID,A.NoUnit,A.KMawal as KM,'
           +'C.Merk,A.ItemID,A.serial,A.Qty as Jumlah,A.Nomorban as Posisi,'
           +'CASE WHEN A.Statusban=''BR'' THEN ''Baru'' ELSE ''Bekas'' END as Kondisi,'
           +'CASE WHEN A.FgStatus=''K'' THEN ''Pasang''  '
           +'     WHEN A.FgStatus=''L'' THEN ''Spare'' END as Status,A.Alasan as Note,B.WarehouseID, '
           +'A.UpdDate,A.UpdUser,E.NmMaster '
           +'from INTrAdjustmentDt A '
           +'inner join INTrAdjustmentHd B on A.TransID=B.TransID '
           +'inner join INMsItem C on A.ItemID=C.ItemID '
           +'inner join INMsNoUnit D on A.NoUnit=D.NoUnit '
           +'left join AllMaster E on D.groupid=E.KdMaster AND E.FgMaster=''U'' '
           +'WHERE B.FlagIN=''TB'' '
           +'AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
           +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ';
  if rbSelect.Checked then
  sQuery := sQuery + ' AND A.ItemID IN '+SelGrid(quItem,dbgList,'ItemID');
  if RadioButton2.Checked then
  sQuery := sQuery + ' AND B.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID');
  sQuery := sQuery + ' ORDER BY B.TransDate';

  with quReport do
  begin
    if active then close;
    SQL.Text := sQuery;
    Open;
  end;

  with qutotal,SQL do
  begin
    Close;Clear;
    Add(' select '
       +' ISNULL((select SUM(A.Qty) as Jumlah '
       +' from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID '
       +' Where B.FlagIN=''TB'' AND A.FgStatus=''T'' '
       +' AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
       +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ');
    if rbSelect.Checked then
    Add(' AND A.ItemID IN '+SelGrid(quItem,dbgList,'ItemID'));
    if RadioButton2.Checked then
    Add(' AND B.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
    Add(' ),0) as Lepas, '
       +' ISNULL((select SUM(A.Qty) as Jumlah '
       +' from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID '
       +' Where B.FlagIN=''TB'' AND A.FgStatus=''K'' '
       +' AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
       +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ');
    if rbSelect.Checked then
    Add(' AND A.ItemID IN '+SelGrid(quItem,dbgList,'ItemID'));
    if RadioButton2.Checked then
    Add(' AND B.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
    Add(' ),0) as Pasang, '
       +' ISNULL((select SUM(A.Qty) as Jumlah '
       +' from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID '
       +' Where B.FlagIN=''TB'' AND A.FgStatus=''S'' '
       +' AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
       +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ');
    if rbSelect.Checked then
    Add(' AND A.ItemID IN '+SelGrid(quItem,dbgList,'ItemID'));
    if RadioButton2.Checked then
    Add(' AND B.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
    Add(' ),0) as Spare, '
       +' ISNULL((select SUM(A.Qty) as Jumlah '
       +' from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID '
       +' Where B.FlagIN=''TB'' AND A.FgStatus=''R'' '
       +' AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
       +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ');
    if rbSelect.Checked then
    Add(' AND A.ItemID IN '+SelGrid(quItem,dbgList,'ItemID'));
    if RadioButton2.Checked then
    Add(' AND B.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
    Add(' ),0) as Rotasi, '
       +' ISNULL((select SUM(A.Qty) as Jumlah '
       +' from INTrAdjustmentDt A inner join INTrAdjustmentHd B on A.TransID=B.TransID '
       +' Where B.FlagIN=''TB'' AND A.FgStatus=''L'' '
       +' AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
       +' AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ');
    if rbSelect.Checked then
    Add(' AND A.ItemID IN '+SelGrid(quItem,dbgList,'ItemID'));
    if RadioButton2.Checked then
    Add(' AND B.WarehouseID IN '+SelGrid(quSite,dxDBGrid1,'WarehouseID'));
    Add(' ),0) as Stok ');
    Open;
  end;
end;

procedure TfmRptBan.FormShow(Sender: TObject);
begin
  inherited;
  quReport.Open;
  quItem.Open;
  quSite.Open;
  qutotal.Open;
  dtpDari.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dtpSmp.Date := date;
  dtpDari.SetFocus;
  bbRefreshClick(bbRefresh);
  Button1Click(Button1);
  Button2Click(Button2);
end;

procedure TfmRptBan.rbAllClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmRptBan.RadioButton1Click(Sender: TObject);
begin
  inherited;
  if Sender=RadioButton1 then
  begin
     dxDBGrid1.OptionsBehavior := dxDBGrid1.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=RadioButton2 then
  begin
     dxDBGrid1.OptionsBehavior := dxDBGrid1.OptionsBehavior + [edgoMultiSelect];
     if dxDBGrid1.FocusedNode <> nil then
       dxDBGrid1.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmRptBan.Button1Click(Sender: TObject);
begin
  inherited;
  with quItem,SQL do
  begin
    Close;Clear;
    Add('select DISTINCT A.ItemID,C.ItemName '
       +'from INTrAdjustmentDt A '
       +'inner join INTrAdjustmentHd B on A.TransID=B.TransID '
       +'inner join INMsItem C on A.ItemID=C.ItemID '
       +'WHERE B.FlagIN=''TB'' '
       +'AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
       +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+''' ');
    Open;
  end;
end;

procedure TfmRptBan.Button2Click(Sender: TObject);
begin
  inherited;
  with quSite,SQL do
  begin
    Close;Clear;
    Add('select DISTINCT B.WarehouseID,C.WarehouseName '
       +'from INTrAdjustmentHd B '
       +'inner join INMsWarehouse C on B.WarehouseID=C.WarehouseID '
       +'WHERE B.FlagIN=''TB'' '
       +'AND CONVERT(VARCHAR(8),B.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' '
       +'AND '''+FormatDateTime('yyyyMMdd',dtpSmp.Date)+'''');
    Open;
  end;
end;

end.
