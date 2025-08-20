unit CFRptJurnal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxCore, dxButton, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmCFRptJurnal = class(TfmRptDlg)
    PrTanggal: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    dgrReport: TdxDBGrid;
    bbCancel: TdxButton;
    Label1: TLabel;
    cmbDatabase: TComboBox;
    quActTanggal: TStringField;
    quActVoucherNo: TStringField;
    quActKeterangan: TStringField;
    quActrekeningid: TStringField;
    quActrekeningname: TStringField;
    quActjumD: TBCDField;
    quActjumK: TBCDField;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    bbExcel: TBitBtn;
    BitBtn1: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    procedure FormShow(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataB : string;
  end;

var
  fmCFRptJurnal: TfmCFRptJurnal;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, IniFiles;

procedure TfmCFRptJurnal.FormShow(Sender: TObject);
var MyIniFile : TIniFile;
begin
  inherited;
  dt1.Date := Date;
  dt2.Date := Date;

  bbCancelClick(bbCancel);
end;

procedure TfmCFRptJurnal.bbCancelClick(Sender: TObject);
begin
  inherited;
  DataB := cmbdatabase.Text;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,K.VoucherID as VoucherNo,'
       +'K.Note as Keterangan,K.RekeningID,L.RekeningName,CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE 0 END as JumD,'
       +'CASE WHEN K.Jenis=''D'' THEN 0 ELSE K.Amount END as JumK FROM ( '

       //tabel cftrkkbbdt
       +'SELECT ''D'' as Kode,A.RekeningID,B.Transdate,A.Jenis,ISNULL(A.Amount,0) as Amount,A.Note+ISNULL('' - ''+B.Note,'''') as Note,A.VoucherID as VoucherID, '
       +'B.FgPayment,B.VoucherID as BNote,B.CurrID,B.Rate '
       +'FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID WHERE FgPayment=''T'' UNION ALL '

       //tabel bank
       +'SELECT ''H'',B.RekeningID,A.Transdate,CASE WHEN A.FlagKKBB IN (''BM'',''KM'',''ARB'',''ARC'') THEN ''D'' ELSE ''K'' END,'
       +'ISNULL(CASE WHEN A.FlagKKBB IN (''BM'',''KM'',''ARB'',''ARC'') THEN A.JumlahD WHEN A.FlagKKBB IN (''BK'',''KK'',''APB'',''APC'') THEN A.JumlahK END,0),'
       +'A.Note,A.VoucherNo,A.FgPayment,A.VoucherID,A.CurrID,A.Rate '
       +'FROM CFTrKKBBHd A INNER JOIN CFMsBank B ON A.BankID=B.BankID Where A.FgPayment=''T'' UNION ALL '

       //tabel penjualan
       +'SELECT ''D'',RekeningU,Transdate,''D'',ISNULL(TTLKj,0),A.KonInvPelID+(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '
       +'SELECT ''D'',RekeningK,Transdate,''K'',ISNULL(STKJ,0),A.KonInvPelID+(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '
       +'SELECT ''D'',RekeningD,Transdate,''D'',ISNULL(STKJ*Discount*0.01,0),A.KonInvPelID+(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '
       +'SELECT ''D'',RekeningO,Transdate,''K'',ISNULL(Ongkir,0),A.KonInvPelID+(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '
       +'SELECT ''D'',RekeningA,Transdate,''K'',ISNULL(Administrasi,0),A.KonInvPelID+(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '
       +'SELECT ''D'',RekeningR,Transdate,''K'',ISNULL(Repack,0),A.KonInvPelID+(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '
       +'SELECT ''D'',RekeningP,Transdate,''K'',ISNULL(PPN,0),A.KonInvPelID+ '
       +'(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '
       +'SELECT ''D'',RekeningPsd,transdate,''K'',ISNULL(Modal,0),A.KonInvPelID+(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '
       +'SELECT ''D'',RekeningHpp,transdate,''D'',ISNULL(Modal,0),A.KonInvPelID+(select '' - ''+O.CustName FROM ARMsCustomer O Where O.CustId=A.CustId),A.KonInvPelID,''T'',A.KonInvPelID,A.CurrID,A.Rate FROM ARTrKonInvPelHd A UNION ALL '

       //tabel pembelian
       +'SELECT ''P'',RekeningU,Transdate,''K'',ISNULL(TTLks,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekeningK,Transdate,''D'',ISNULL(SubTotal-SubTotalJ,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid ,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekeningP,Transdate,''D'',ISNULL(PPN,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekeningA,Transdate,''D'',ISNULL(Administrasi,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekeningD,Transdate,''K'',ISNULL(Disc,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekeningJ,Transdate,''D'',ISNULL(SubTotalJ,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekeningO,Transdate,''D'',ISNULL(Ongkir,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekPBBKB,Transdate,''D'',ISNULL(PBBKB,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekeningR,Transdate,''D'',ISNULL(Repack,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '
       +'SELECT ''P'',RekeningDP,Transdate,''K'',ISNULL(DP,0),A.konsinyasiinvid+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),A.konsinyasiinvid,''T'',A.konsinyasiinvid,A.CurrID,A.Rate '
       +'FROM ApTrkonsinyasiInvhD A Where A.FgOto=''Y'' UNION ALL '

       +'SELECT ''I'',RekeningU,Transdate,''K'',ISNULL(TTLPb,0),PurchaseID+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),PurchaseID,''T'',PurchaseID,CurrID,Rate '
       +'FROM ApTrPurchaseHD A where FgPajak=''Y'' AND FgOto=''Y'' UNION ALL '
       +'SELECT ''I'',RekeningK,Transdate,''D'',ISNULL(Stpb-SubTotalU,0),PurchaseID+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),PurchaseID,''T'',PurchaseID,CurrID,Rate '
       +'FROM ApTrPurchaseHD A where FgPajak=''Y'' AND FgOto=''Y'' UNION ALL '
       +'SELECT ''I'',RekeningD,Transdate,''K'',ISNULL(DiscAmount,0),PurchaseID+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),PurchaseID,''T'',PurchaseID,CurrID,Rate '
       +'FROM ApTrPurchaseHD A where FgPajak=''Y'' AND FgOto=''Y'' UNION ALL '
       +'SELECT ''I'',RekeningJ,Transdate,''D'',ISNULL(SubTotalU,0),PurchaseID+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),PurchaseID,''T'',PurchaseID,CurrID,Rate '
       +'FROM ApTrPurchaseHD A where FgPajak=''Y'' AND FgOto=''Y'' UNION ALL '
       +'SELECT ''I'',RekeningP,Transdate,''D'',ISNULL(PPN,0),PurchaseID+(select '' - ''+O.SuppName FROM ApMsSupplier O Where O.Suppid=A.Suppid),PurchaseID,''T'',PurchaseID,CurrID,Rate '
       +'FROM ApTrPurchaseHD A where FgPajak=''Y'' AND FgOto=''Y'' '

       +') as K INNER JOIN CFMsRekening L on K.RekeningID=L.RekeningID '
       +'WHERE K.Amount <> 0 AND CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.date)+''' '
       +'AND K.FgPayment=''T'' ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.Jenis,K.VoucherID');
    //showmessage(sql.text);
    Open;
  end;
end;

procedure TfmCFRptJurnal.dsActStateChange(Sender: TObject);
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

procedure TfmCFRptJurnal.bbExcelClick(Sender: TObject);
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

procedure TfmCFRptJurnal.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
