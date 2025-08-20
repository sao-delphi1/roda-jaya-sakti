unit SetWareHouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, dxButton, ExtCtrls, ActnList, DB, dxExEdtr, dxCntner,
  ADODB, StdCtrls, Buttons, dxCore, dxContainer, DBCtrls, dxEditor,
  dxEdLib, dxDBELib,Printers, dxPageControl;

type
  TfmSettingGudang = class(TfmStdLv2)
    Panel1: TPanel;
    quCust: TADOQuery;
    quWareHouse: TADOQuery;
    quMainLCustName: TStringField;
    quMainLDGPb: TStringField;
    quMainLDGPj: TStringField;
    quMainDGPb: TStringField;
    quMainDGPj: TStringField;
    quMainCustId: TStringField;
    quMainSalesId: TStringField;
    quSales: TADOQuery;
    quMainLsalesName: TStringField;
    quMainDGTr: TStringField;
    quMainDGK: TStringField;
    quMainDGS: TStringField;
    quMainLDGTr: TStringField;
    quMainLDGK: TStringField;
    quMainLDGS: TStringField;
    quMainDGR: TStringField;
    quMainDGPR: TStringField;
    quMainLDGR: TStringField;
    quMainLDGPR: TStringField;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quRek: TADOQuery;
    quMainDRPb: TStringField;
    quMainDRPj: TStringField;
    quMainLDRPb: TStringField;
    quMainLDRPj: TStringField;
    quMainDGRPb: TStringField;
    quMainDGRPj: TStringField;
    quGroupRek: TADOQuery;
    quMainLDRKas: TStringField;
    quMainLDGRPj: TStringField;
    quMainDGC: TStringField;
    quMainLDGC: TStringField;
    quMainsDPB: TStringField;
    quMainDGRBi: TStringField;
    quMainLDGRBi: TStringField;
    quMainDGRPLL: TStringField;
    quMainLDGRPLL: TStringField;
    quMainCetak: TStringField;
    pcMain: TdxPageControl;
    ts01: TdxTabSheet;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    DBText16: TDBText;
    DBText17: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    Label24: TLabel;
    dxDBButtonEdit15: TdxDBButtonEdit;
    dxDBButtonEdit16: TdxDBButtonEdit;
    dxDBButtonEdit17: TdxDBButtonEdit;
    dxDBButtonEdit18: TdxDBButtonEdit;
    dxDBButtonEdit19: TdxDBButtonEdit;
    dxDBButtonEdit20: TdxDBButtonEdit;
    dxDBButtonEdit21: TdxDBButtonEdit;
    dxDBButtonEdit22: TdxDBButtonEdit;
    GroupBox6: TGroupBox;
    Label25: TLabel;
    DBText24: TDBText;
    dxDBButtonEdit23: TdxDBButtonEdit;
    ts02: TdxTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    ts03: TdxTabSheet;
    GroupBox8: TGroupBox;
    Label28: TLabel;
    DBText25: TDBText;
    Label32: TLabel;
    DBText28: TDBText;
    Label34: TLabel;
    DBText30: TDBText;
    dxDBButtonEdit25: TdxDBButtonEdit;
    dxDBButtonEdit27: TdxDBButtonEdit;
    dxDBButtonEdit29: TdxDBButtonEdit;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    cmbPrinterBackOffice: TdxDBPickEdit;
    ts04: TdxTabSheet;
    dxButton12: TdxButton;
    Panel2: TPanel;
    ColorDialog: TColorDialog;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxButton10: TdxButton;
    dxButton11: TdxButton;
    dsSetting: TDataSource;
    quSetting: TADOQuery;
    quSettingCompNameFontName: TStringField;
    quSettingCompNameFontSize: TLargeintField;
    quSettingLineLeftVisible: TStringField;
    quSettingLineRightVisible: TStringField;
    quSettingLineSeparatorVisible: TStringField;
    quSettingClFooter: TLargeintField;
    quSettingClTitle: TLargeintField;
    quSettingRptTitleFontName: TStringField;
    quSettingRptTitleFontSize: TLargeintField;
    quSettingClAtas: TLargeintField;
    quSettingClSamping: TLargeintField;
    quSettingClContent: TLargeintField;
    quSettingClList: TLargeintField;
    dxDBSpinEdit1: TdxDBSpinEdit;
    quMainFixPrice: TBCDField;
    Label1: TLabel;
    dxDBSpinEdit2: TdxDBSpinEdit;
    Label2: TLabel;
    quMainHPrice: TBCDField;
    quMainDRKas: TStringField;
    Label3: TLabel;
    DBText1: TDBText;
    ButtonPPNMasukan: TdxDBButtonEdit;
    quMainLRekPembelian: TStringField;
    quMainDRDp: TStringField;
    Label5: TLabel;
    dxDBButtonEdit1: TdxDBButtonEdit;
    DBText3: TDBText;
    quMainLDGDP: TStringField;
    Action1: TAction;
    Action2: TAction;
    Label6: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    DBText4: TDBText;
    Label7: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    DBText5: TDBText;
    Label8: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    DBText6: TDBText;
    quMainDRO: TStringField;
    quMainDRA: TStringField;
    quMainDRR: TStringField;
    quMainLDro: TStringField;
    quMainLdrr: TStringField;
    quMainLDra: TStringField;
    quMainDRARA: TStringField;
    quMainDRARO: TStringField;
    quMainDRARR: TStringField;
    quMainDRRetAP: TStringField;
    quMainDRRetAR: TStringField;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBText8: TDBText;
    Label11: TLabel;
    DBText9: TDBText;
    Label13: TLabel;
    DBText11: TDBText;
    Label26: TLabel;
    DBText14: TDBText;
    Label30: TLabel;
    DBText31: TDBText;
    Label35: TLabel;
    DBText32: TDBText;
    Label36: TLabel;
    DBText33: TDBText;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBButtonEdit7: TdxDBButtonEdit;
    dxDBButtonEdit9: TdxDBButtonEdit;
    dxDBButtonEdit12: TdxDBButtonEdit;
    dxDBButtonEdit14: TdxDBButtonEdit;
    dxDBButtonEdit30: TdxDBButtonEdit;
    dxDBButtonEdit31: TdxDBButtonEdit;
    Label4: TLabel;
    dxDBButtonEdit6: TdxDBButtonEdit;
    DBText2: TDBText;
    Label9: TLabel;
    dxDBButtonEdit8: TdxDBButtonEdit;
    DBText7: TDBText;
    quMainLDRARA: TStringField;
    quMainLDRARO: TStringField;
    quMainLDRARR: TStringField;
    quMainLDRRetAP: TStringField;
    quMainLDRRetAR: TStringField;
    Label12: TLabel;
    dxDBButtonEdit10: TdxDBButtonEdit;
    DBText10: TDBText;
    Label15: TLabel;
    dxDBButtonEdit11: TdxDBButtonEdit;
    DBText12: TDBText;
    quMainAPDisc: TStringField;
    quMainARDisc: TStringField;
    quMainLAPDisc: TStringField;
    quMainLARDisc: TStringField;
    Label16: TLabel;
    dxDBButtonEdit13: TdxDBButtonEdit;
    DBText13: TDBText;
    quMainDRHpp: TStringField;
    quMainLDrhpp: TStringField;
    Label27: TLabel;
    DBText15: TDBText;
    dxDBButtonEdit24: TdxDBButtonEdit;
    quMainDRPbJ: TStringField;
    quMainLDRPbJ: TStringField;
    quMainDRPjT: TStringField;
    quMainDRPjH: TStringField;
    quMainLDRPjT: TStringField;
    quMainLDRPjH: TStringField;
    Label29: TLabel;
    DBText26: TDBText;
    dxDBButtonEdit26: TdxDBButtonEdit;
    Label31: TLabel;
    DBText27: TDBText;
    dxDBButtonEdit28: TdxDBButtonEdit;
    quMainRekPBBKB: TStringField;
    Label33: TLabel;
    DBText29: TDBText;
    dxDBButtonEdit32: TdxDBButtonEdit;
    quMainLPBBKB: TStringField;
    GroupBox2: TGroupBox;
    Label37: TLabel;
    DBText34: TDBText;
    Label38: TLabel;
    DBText35: TDBText;
    Label39: TLabel;
    DBText36: TDBText;
    Label41: TLabel;
    DBText38: TDBText;
    Label42: TLabel;
    DBText39: TDBText;
    Label43: TLabel;
    DBText40: TDBText;
    Label44: TLabel;
    DBText41: TDBText;
    Label46: TLabel;
    DBText43: TDBText;
    Label48: TLabel;
    DBText45: TDBText;
    dxDBButtonEdit33: TdxDBButtonEdit;
    dxDBButtonEdit34: TdxDBButtonEdit;
    dxDBButtonEdit35: TdxDBButtonEdit;
    dxDBButtonEdit37: TdxDBButtonEdit;
    dxDBButtonEdit38: TdxDBButtonEdit;
    dxDBButtonEdit39: TdxDBButtonEdit;
    dxDBButtonEdit40: TdxDBButtonEdit;
    dxDBButtonEdit42: TdxDBButtonEdit;
    dxDBButtonEdit44: TdxDBButtonEdit;
    quMainRekLaba: TStringField;
    quMainLRekLaba: TStringField;
    GroupBox3: TGroupBox;
    Label40: TLabel;
    DBText37: TDBText;
    Label45: TLabel;
    DBText42: TDBText;
    Label47: TLabel;
    DBText44: TDBText;
    Label49: TLabel;
    DBText46: TDBText;
    Label50: TLabel;
    DBText47: TDBText;
    Label51: TLabel;
    DBText48: TDBText;
    Label52: TLabel;
    DBText49: TDBText;
    Label53: TLabel;
    DBText50: TDBText;
    Label54: TLabel;
    DBText51: TDBText;
    dxDBButtonEdit36: TdxDBButtonEdit;
    dxDBButtonEdit41: TdxDBButtonEdit;
    dxDBButtonEdit43: TdxDBButtonEdit;
    dxDBButtonEdit45: TdxDBButtonEdit;
    dxDBButtonEdit46: TdxDBButtonEdit;
    dxDBButtonEdit47: TdxDBButtonEdit;
    dxDBButtonEdit48: TdxDBButtonEdit;
    dxDBButtonEdit49: TdxDBButtonEdit;
    dxDBButtonEdit50: TdxDBButtonEdit;
    quMainRekJual: TStringField;
    quMainLRekJual: TStringField;
    quMainRekJualTIM: TStringField;
    quMainLRekJualTIM: TStringField;
    Label55: TLabel;
    DBText52: TDBText;
    dxDBButtonEdit51: TdxDBButtonEdit;
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buttonPPNKeluaranKeyPress(Sender: TObject; var Key: Char);
    procedure bbSaveClick(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit11ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit12ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit13ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit14ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrPendLLButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton12Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton11Click(Sender: TObject);
    procedure dxDBButtonEdit28ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure buttonPPNKeluaranButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit16ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ButtonPPNMasukanButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit15ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit25ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit27ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit29ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit30ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit31ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit17ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit18ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit24ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit26ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit32ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit33ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit36ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxDBButtonEdit51ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSettingGudang: TfmSettingGudang;

implementation

uses UnitGeneral, Search, MyUnit, RptDlg1, StdLv1;

{$R *.dfm}

procedure TfmSettingGudang.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  {
  if TRIM(quMainDGPb.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Pembelian tidak boleh kosong');
    quMainDGPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGPb.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Pembelian tidak ada dalam Master');
    quMainDGPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGPj.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Penjualan tidak boleh kosong');
    quMainDGPj.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGPj.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Penjualan tidak ada dalam Master');
    quMainDGPj.FocusControl;
    Abort;
  End;


  if TRIM(quMainDGK.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Konsinyasi tidak boleh kosong');
    quMainDGK.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGK.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Konsinyasi tidak ada dalam Master');
    quMainDGK.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGTr.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Transfer tidak boleh kosong');
    quMainDGTr.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGTr.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Transfer tidak ada dalam Master');
    quMainDGTr.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGR.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Retur tidak boleh kosong');
    quMainDGR.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGR.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Retur tidak ada dalam Master');
    quMainDGR.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGPR.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Pengganti Retur tidak boleh kosong');
    quMainDGPR.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGPR.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Pengganti Retur tidak ada dalam Master');
    quMainDGPR.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGS.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Service tidak boleh kosong');
    quMainDGS.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGS.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Service tidak ada dalam Master');
    quMainDGS.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGRPb.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Rekening Pembelian tidak boleh kosong');
    quMainDGRPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGRPb.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Rekening Pembelian tidak ada dalam Master');
    quMainDGRPb.FocusControl;
    Abort;
  End; }

  {
  if TRIM(quMainDGRPj.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Potongan Penjualan tidak boleh kosong');
    quMainDGRPj.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGRPj.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Potongan Penjualan tidak ada dalam Master');
    quMainDGRPj.FocusControl;
    Abort;
  End;

  if TRIM(quMainDRPb.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Pembelian tidak boleh kosong');
    quMainDRPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDRPb.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Pembelian tidak ada dalam Master');
    quMainDRPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainDRPj.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Penjualan tidak boleh kosong');
    quMainDRPj.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDRPj.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Penjualan tidak ada dalam Master');
    quMainDRPj.FocusControl;
    Abort;
  End;

  if TRIM(cmbPrinterBackOffice.Text) <> '' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE SAMsSET set sDPB = '+QuotedStr(cmbPrinterBackOffice.Text)+' ');
      ExecSQL;
    end;
  end;
  }
end;

procedure TfmSettingGudang.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetBtnOperationVisible(dxButton1,dxButton2,FActDS);
  SetBtnOperationVisible(dxButton3,dxButton4,FActDS);
  SetBtnOperationVisible(dxButton5,dxButton6,FActDS);
end;

procedure TfmSettingGudang.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Open;
  quSetting.Active := TRUE;
  cmbPrinterBackOffice.Items := printer.Printers;
  dxButton10.Visible := False;
  dxButton11.Visible := False;
  ts01.TabVisible := False;
  ts02.TabVisible := False;
  ts04.TabVisible := False;
  Panel2.Color := quSettingClAtas.Value;
  Panel3.Color := quSettingClSamping.Value;
  Panel4.Color := quSettingClContent.Value;
  Panel5.Color := quSettingClList.Value;
//  Panel2.Color := quSettingClAtas.Value;
end;

procedure TfmSettingGudang.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmSettingGudang.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRO.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRA.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.buttonPPNKeluaranKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSettingGudang.bbSaveClick(Sender: TObject);
begin
  inherited;
  quMain.Post;
end;

procedure TfmSettingGudang.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
    sDGPb   := quMainDGPb.Value;
    sDGPj   := quMainDGPj.Value;
    sCustC  := quMainCustId.Value;
    sSalesC := quMainSalesId.Value;
    sDGK    := quMainDGK.Value;
    sDGTr   := quMainDGTr.Value;
    sDGS    := quMainDGS.Value;
    sDGR    := quMainDGR.Value;
    sDGPR   := quMainDGPR.Value;
    sDRPb   := quMainDRPb.Value;
    sDRPj   := quMainDRPj.Value;
    sDGRPb  := quMainDGRPb.Value;
    sDGRPj  := quMainDGRPj.Value;
    sDGC    := quMainDGC.Value;
    sDPB    := quMainsDPB.Value;
    sCetak  := quMainCetak.Value;
end;

procedure TfmSettingGudang.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRR.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDGRPj.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRRetAP.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRKas.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRRetAR.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit10ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainAPDisc.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit11ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainARDisc.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit12ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainCustId.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit13ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRHpp.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit14ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRARO.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBGrPendLLButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Group';
         SQLString := 'SELECT GroupRekID as Kode_Group_Rekening, GroupRekName as Description'
                     +' FROM CFMsGroupRek'
                     +' ORDER BY GroupRekID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainDGRPLL.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmSettingGudang.dxButton12Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := Panel2.Color;
  if ColorDialog.Execute then
  begin
     Panel2.Color := ColorDialog.Color;
     if quSetting.State = dsBrowse then quSetting.Edit;
     quSettingClAtas.Value := ColorDialog.Color;
  end;
  dxButton10.Visible := True;
  dxButton11.Visible := True;
end;

procedure TfmSettingGudang.dxButton7Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := Panel3.Color;
  if ColorDialog.Execute then
  begin
     Panel3.Color := ColorDialog.Color;
     if quSetting.State = dsBrowse then quSetting.Edit;
     quSettingClSamping.Value := ColorDialog.Color;
  end;
  dxButton10.Visible := True;
  dxButton11.Visible := True;
end;

procedure TfmSettingGudang.dxButton8Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := Panel4.Color;
  if ColorDialog.Execute then
  begin
     Panel4.Color := ColorDialog.Color;
     if quSetting.State = dsBrowse then quSetting.Edit;
     quSettingClContent.Value := ColorDialog.Color;
  end;
  dxButton10.Visible := True;
  dxButton11.Visible := True;
end;

procedure TfmSettingGudang.dxButton9Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := Panel5.Color;
  if ColorDialog.Execute then
  begin
     Panel5.Color := ColorDialog.Color;
     if quSetting.State = dsBrowse then quSetting.Edit;
     quSettingClList.Value := ColorDialog.Color;
  end;
  dxButton10.Visible := True;
  dxButton11.Visible := True;
end;

procedure TfmSettingGudang.dxButton10Click(Sender: TObject);
begin
  inherited;
  if quSetting.State in dsEditModes then quSetting.Post;
  if quMain.State <> dsEdit then
  begin
    quMain.Edit;
    quMain.Post;
  end;
  pcMain.ActivePage := ts04;
  dxButton10.Visible := False;
  dxButton11.Visible := False;
end;

procedure TfmSettingGudang.dxButton4Click(Sender: TObject);
begin
  inherited;
  quMain.Cancel;
end;

procedure TfmSettingGudang.dxButton11Click(Sender: TObject);
begin
  inherited;
  quMain.Cancel;
  quSetting.Cancel;
  dxButton10.Visible := False;
  dxButton11.Visible := False;
end;

procedure TfmSettingGudang.dxDBButtonEdit28ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRPjT.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.buttonPPNKeluaranButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
      begin
       try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct A.RekeningId as Kode_Rekening, RekeningName as Nama_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainCustId.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit16ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGPj.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.ButtonPPNMasukanButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDGRPLL.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRDp.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit15ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGPb.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit25ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRPb.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit27ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDGRBi.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit29ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDGRPb.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit30ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRARA.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit31ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRARR.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit17ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGTr.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit18ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGR.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRPjH.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit24ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRPbJ.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit26ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainDRPj.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit32ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekPBBKB.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit33ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Rekening';
     SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                 +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                 +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                 +' ORDER BY A.RekeningID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
           quMainRekLaba.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit36ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Rekening Penjualan';
       SQLString := ' SELECT RekJualID as ID, Rekening, Bank, Cabang, Nama '
                   +' FROM SAMsRekJual WHERE FgActive=''Y'' '
                   +' ORDER BY RekJualID';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekJual.ASString := Res[0];
       end;
  finally
       free;
  end;
end;

procedure TfmSettingGudang.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT Bank+'' - ''+Rekening+'' - ''+Nama as Keterangan FROM SAMsRekJual WHERE RekJualID='''+quMainRekJual.AsString+''' ');
    Open;
  end;
  quMainLRekJual.AsString := quAct.FieldByName('Keterangan').AsString;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT Bank+'' - ''+Rekening+'' - ''+Nama as Keterangan FROM SAMsRekJual WHERE RekJualID='''+quMainRekJualTIM.AsString+''' ');
    Open;
  end;
  quMainLRekJualTIM.AsString := quAct.FieldByName('Keterangan').AsString;
end;

procedure TfmSettingGudang.dxDBButtonEdit51ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Rekening Penjualan';
       SQLString := ' SELECT RekJualID as ID, Rekening, Bank, Cabang, Nama '
                   +' FROM SAMsRekJual WHERE FgActive=''Y'' '
                   +' ORDER BY RekJualID';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekJualTIM.ASString := Res[0];
       end;
  finally
       free;
  end;
end;

end.
