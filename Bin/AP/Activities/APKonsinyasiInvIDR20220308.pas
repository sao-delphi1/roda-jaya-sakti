{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
unit APKonsinyasiInvIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, DateUtils,dxEditor, dxDBELib, DBCtrls;

type

  TfmAPKonsinyasiInvIDR = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    bbCancel: TdxButton;
    dbgListTransferID: TdxDBGridMaskColumn;
    dbgListTransferDate: TdxDBGridDateColumn;
    dbgListCustomerID: TdxDBGridMaskColumn;
    dbgListCustomerName: TdxDBGridLookupColumn;
    quItem: TADOQuery;
    quSupplier: TADOQuery;
    quMainTransDate: TDateTimeField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quKonsinyasi: TADOQuery;
    quKonsinyasiDt: TADOQuery;
    quMainCurrID: TStringField;
    quMainKonsinyasiInvID: TStringField;
    dsTotal: TDataSource;
    quTotal: TADOQuery;
    DBText4: TDBText;
    Label4: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    Shape3: TShape;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgPrice: TdxDBGridColumn;
    dbgTotal: TdxDBGridColumn;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    quMainTTLKS: TBCDField;
    quMainRate: TBCDField;
    quMainJatuhTempo: TIntegerField;
    Label6: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    DBText7: TDBText;
    quMainTglJthTempo: TDateTimeField;
    quMainSuppID: TStringField;
    quMainLSuppName: TStringField;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    bbSave: TdxButton;
    quAct1: TADOQuery;
    Label12: TLabel;
    DBText9: TDBText;
    quMainBPBID: TStringField;
    quMainLDOSupp: TStringField;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText2: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxButton1: TdxButton;
    Shape4: TShape;
    Label13: TLabel;
    DBText3: TDBText;
    Shape5: TShape;
    Label19: TLabel;
    DBText6: TDBText;
    ActPrint: TAction;
    quMainFgTax: TStringField;
    quMainPOID: TStringField;
    quMainSubTotal: TBCDField;
    quMainTBobot: TBCDField;
    quMainPPN: TBCDField;
    quMainKonsinyasiID: TStringField;
    quMainDisc: TBCDField;
    quMainDP: TBCDField;
    quMainPayment: TBCDField;
    quMainPPH: TBCDField;
    quMainFgForm: TStringField;
    quMainTaxID: TStringField;
    quMainRekeningD: TStringField;
    quMainRekeningP: TStringField;
    quMainRekeningU: TStringField;
    quMainRekeningK: TStringField;
    quMainLRekPemb: TStringField;
    quMainLRekPPN: TStringField;
    quMainLRekHutDagang: TStringField;
    DBText11: TDBText;
    dxButton2: TdxButton;
    dxDBEdit5: TdxDBEdit;
    Label31: TLabel;
    quMainFPS: TStringField;
    Shape6: TShape;
    Label32: TLabel;
    Label34: TLabel;
    Shape7: TShape;
    Label36: TLabel;
    dxDBButtonEdit7: TdxDBButtonEdit;
    quMainDPID: TStringField;
    quMainTglDP: TDateTimeField;
    DBText13: TDBText;
    DBText14: TDBText;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Label35: TLabel;
    Label37: TLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    quMainOngkir: TBCDField;
    quMainAdministrasi: TBCDField;
    quMainRepack: TBCDField;
    Label41: TLabel;
    dxDBButtonEdit8: TdxDBButtonEdit;
    DBText15: TDBText;
    quMainRekeningDP: TStringField;
    quMainLDrDP: TStringField;
    quMainFgPerforma: TStringField;
    dbgColumn9: TdxDBGridColumn;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    quMainRekeningO: TStringField;
    quMainRekeningR: TStringField;
    quMainRekeningA: TStringField;
    Label10: TLabel;
    DBText25: TDBText;
    dxDBButtonEdit9: TdxDBButtonEdit;
    Label11: TLabel;
    DBText26: TDBText;
    dxDBButtonEdit10: TdxDBButtonEdit;
    Label14: TLabel;
    DBText27: TDBText;
    dxDBButtonEdit11: TdxDBButtonEdit;
    quMainLRekAdmin: TStringField;
    quMainLRekOng: TStringField;
    quMainLRekRepak: TStringField;
    quMainLAPDisc: TStringField;
    dbgColumn10: TdxDBGridColumn;
    dbgColumn11: TdxDBGridColumn;
    Label16: TLabel;
    dxDBEdit9: TdxDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    dxDBEdit11: TdxDBEdit;
    quMainwarehouseid: TStringField;
    quMainsiteid: TStringField;
    quMaindivisiid: TStringField;
    DBText29: TDBText;
    DBText30: TDBText;
    DBText31: TDBText;
    quMainLwarehouse: TStringField;
    quMainLSites: TStringField;
    quMainLDivisi: TStringField;
    dxDBImageEdit5: TdxDBImageEdit;
    Label23: TLabel;
    quSub: TADOQuery;
    dsSub: TDataSource;
    quSubKonsinyasiInvID: TStringField;
    quSubPOID: TStringField;
    quSubFgTax: TStringField;
    quSubDisc: TBCDField;
    quSubSubtotalM: TBCDField;
    quSubSubtotalU: TBCDField;
    quSubPPN: TBCDField;
    quSubDiscAmount: TBCDField;
    quSubTTLKJ: TBCDField;
    quSubNote: TStringField;
    quSubupddate: TDateTimeField;
    quSubupduser: TStringField;
    quSubSuppID: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGridButtonColumn1: TdxDBGridButtonColumn;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    dxDBGridColumn3: TdxDBGridColumn;
    dxDBGridColumn5: TdxDBGridColumn;
    dxDBGridColumn6: TdxDBGridColumn;
    dxDBGridColumn7: TdxDBGridColumn;
    dxDBGridColumn8: TdxDBGridColumn;
    dxDBGridColumn9: TdxDBGridColumn;
    quSubLtanggal: TStringField;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    quSubfgpph42: TStringField;
    dxDBGrid1Column11: TdxDBGridImageColumn;
    dxDBGridColumn4: TdxDBGridImageColumn;
    quTotalKonsinyasiInvId: TStringField;
    quTotalSubTotal: TBCDField;
    quTotalTotal: TBCDField;
    quTotalDisc: TBCDField;
    quTotalPajak: TBCDField;
    quTotalPPh23: TBCDField;
    quTotalPPh21: TBCDField;
    quTotalPPH42: TBCDField;
    Shape11: TShape;
    Label24: TLabel;
    DBText33: TDBText;
    Shape12: TShape;
    DBText34: TDBText;
    Label25: TLabel;
    DBText35: TDBText;
    Shape13: TShape;
    DBText36: TDBText;
    Label29: TLabel;
    DBText37: TDBText;
    Shape14: TShape;
    DBText38: TDBText;
    Label30: TLabel;
    DBText39: TDBText;
    quTotalGT: TBCDField;
    quMainFgOto: TStringField;
    Label33: TLabel;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    quMainSubTotalJ: TBCDField;
    quMainRekeningJ: TStringField;
    quTotalSubU: TBCDField;
    quMainFGpph21: TStringField;
    quMainFGpph23: TStringField;
    dxDBPajak: TdxDBImageEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    quDetilKonsinyasiInvID: TStringField;
    quDetilPOID: TStringField;
    quDetilSuppID: TStringField;
    quDetilKonsinyasiID: TStringField;
    quDetilItemID: TStringField;
    quDetilPrice: TBCDField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilDisc: TFloatField;
    quDetilNumAll: TAutoIncField;
    quDetilFgNum: TIntegerField;
    quDetilDiscItem: TBCDField;
    quDetiltypeunit: TStringField;
    quDetilnounit: TStringField;
    quDetilPriceU: TBCDField;
    quDetilFgPPH: TStringField;
    quDetilFgNPWP: TStringField;
    quDetilFgJasa: TStringField;
    quDetilLitemName: TStringField;
    quDetilLUOMID: TStringField;
    quDetilCTotal: TCurrencyField;
    dbgColumn12: TdxDBGridImageColumn;
    dbgColumn13: TdxDBGridImageColumn;
    dbgColumn14: TdxDBGridImageColumn;
    quTotalSub: TADOQuery;
    dsTotalSub: TDataSource;
    quTotalSubSubTotal: TBCDField;
    quTotalSubSubTotalU: TBCDField;
    quTotalSubDisc: TBCDField;
    quTotalSubPajak: TBCDField;
    quTotalSubGT: TBCDField;
    quMainotoby: TStringField;
    quMainpph21: TBCDField;
    quMainpph23: TBCDField;
    quMainpph42: TBCDField;
    quMainRekPBBKB: TStringField;
    quSubpbbkb: TBCDField;
    quSubongkir: TBCDField;
    quDetilpbbkb: TBCDField;
    quDetilongkir: TBCDField;
    dxDBGrid1Column12: TdxDBGridColumn;
    dxDBGrid1Column13: TdxDBGridColumn;
    quTotalSubOngkir: TBCDField;
    quTotalSubPBBKB: TBCDField;
    Shape15: TShape;
    DBText10: TDBText;
    Shape16: TShape;
    DBText12: TDBText;
    Label42: TLabel;
    Label43: TLabel;
    quTotalSubP: TBCDField;
    quTotalSubO: TBCDField;
    Shape17: TShape;
    DBText16: TDBText;
    Label44: TLabel;
    dxDBEdit12: TdxDBEdit;
    quMainpbbkb: TBCDField;
    quMainFgpph15: TStringField;
    quMainpph15: TBCDField;
    Shape18: TShape;
    DBText28: TDBText;
    Label45: TLabel;
    dxDBImageEdit2: TdxDBImageEdit;
    quTotalPPh15: TBCDField;
    quSubSiteID: TStringField;
    dxDBButtonEdit16: TdxDBButtonEdit;
    Panel1: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label15: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    dxDBButtonEdit12: TdxDBButtonEdit;
    dxDBButtonEdit13: TdxDBButtonEdit;
    dxDBButtonEdit14: TdxDBButtonEdit;
    dxDBButtonEdit15: TdxDBButtonEdit;
    quCetak: TADOQuery;
    quTotalPPH26: TBCDField;
    Shape19: TShape;
    DBText32: TDBText;
    Label46: TLabel;
    dxDBImageEdit3: TdxDBImageEdit;
    quMainFgPPH26: TStringField;
    quMainPPH26: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure pcMainChanging(Sender: TObject; NewPage: TdxTabSheet;
      var AllowChange: Boolean);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBPBIDChange(Sender: TField);
    procedure quMainCurrIDChange(Sender: TField);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainDPIDChange(Sender: TField);
    procedure quMainPOIDChange(Sender: TField);
    procedure dxButton2Click(Sender: TObject);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit11ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit12ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quSubCalcFields(DataSet: TDataSet);
    procedure dxDBGridButtonColumn1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dsSubStateChange(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure quSubNewRecord(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quSubAfterPost(DataSet: TDataSet);
    procedure quSubBeforeDelete(DataSet: TDataSet);
    procedure quSubBeforePost(DataSet: TDataSet);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure quSubBeforeEdit(DataSet: TDataSet);
    procedure quSubBeforeInsert(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure dxDBButtonEdit16ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    Procedure CekStatus;
    procedure TTLKP;
    procedure TTLKPSub;
    procedure cekoto;

  public
    { Public declarations }
    Status : string;
    FgSub : string;
    StForm : string;
  end;

var
  fmAPKonsinyasiInvIDR: TfmAPKonsinyasiInvIDR;

implementation

uses StdLv2, StdLv1, StdLv0, ConMain, Search, UnitGeneral, MyUnit,StdLv3,
  ARQRRptInvPenjualan, RptGLTrKMKK, APRptFPP;

{$R *.dfm}

Procedure TfmAPKonsinyasiInvIDR.cekoto;
Begin 
  if quMainFgOto.AsString<>'T' then
  begin
    ShowMessage('Data sudah ada otorisasi. tidak bisa diganti');
    Abort;
  end;
End;

Procedure TfmAPKonsinyasiInvIDR.CekStatus;
Begin //cek apakah sudah ada pembayaran kalo sudah ada tidak bisa di utak atik
  with quAct, SQL do
  begin
    Close; Clear;
    Add('SELECT K.PaymentID FROM ('
       +'SELECT A.note as PurchaseID,B.Actor as SuppID,A.VoucherID as PaymentID FROM CFTrKKBBDt A '
       +'INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID ) as K '
       +'WHERE K.PurchaseID='''+quMainKonsinyasiInvID.AsString+''' And K.SuppID='''+ quMainSuppID.AsString +''' ');
    Open;
    if not IsEmpty then
    begin
       MsgInfo('Sudah ada pembayaran ['+quAct.Fieldbyname('PaymentID').AsString +'], tidak bisa edit/Delete lagi');
       Abort;
    end;
  end;
End;

procedure TfmAPKonsinyasiInvIDR.TTLKP;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add('UPDATE APTrKonsinyasiInvHD SET TTLKS='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''',PPN='''+Formatcurr('0.00',quTotalPajak.AsCurrency)+''', '
       +'SubTotal='''+Formatcurr('0.00',quTotalSubTotal.AsCurrency)+''',SubTotalJ='''+Formatcurr('0.00',quTotalSubU.AsCurrency)+''', '
       +'Disc='''+Formatcurr('0.00',quTotalDisc.AsCurrency)+''',PPH42='''+Formatcurr('0.00',quTotalPPH42.AsCurrency)+''', '
       +'PPH21='''+Formatcurr('0.00',quTotalPPh21.AsCurrency)+''',PPH23='''+Formatcurr('0.00',quTotalPPh23.AsCurrency)+''', '
       +'pbbkb='''+Formatcurr('0.00',quTotalSubP.AsCurrency)+''',ongkir='''+Formatcurr('0.00',quTotalSubO.AsCurrency)+''', PPH26='''+Formatcurr('0.00',quTotalPPH26.AsCurrency)+''', '
       +'PPH15='''+Formatcurr('0.00',quTotalPPh15.AsCurrency)+''' '
       +'WHERE KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' AND SuppID='''+quMainSuppID.AsString+'''');
    ExecSQL;
  End;
End;

procedure TfmAPKonsinyasiInvIDR.TTLKPSub;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add('UPDATE APTrKonsinyasiInvSub SET TTLKJ='''+Formatcurr('0.00',quTotalSubGT.AsCurrency)+''',PPN='''+Formatcurr('0.00',quTotalSubPajak.AsCurrency)+''', '
       +'SubTotalM='''+Formatcurr('0.00',quTotalSubSubTotal.AsCurrency)+''','
       +'SubTotalU='''+Formatcurr('0.00',quTotalSubSubTotalU.AsCurrency)+''', '
       +'DiscAmount='''+Formatcurr('0.00',quTotalSubDisc.AsCurrency)+''',PBBKB='''+Formatcurr('0.00',quTotalSubPBBKB.AsCurrency)+''', '
       +'Ongkir='''+Formatcurr('0.00',quTotalSubOngkir.AsCurrency)+''' '
       +'WHERE KonsinyasiInvID='''+quSubKonsinyasiInvID.AsString+''' AND POID='''+quSubPOID.AsString+'''');
    ExecSQL;
  End;
End;

procedure TfmAPKonsinyasiInvIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonsinyasiInvID';
  FFieldTgl   := 'TransDate';
  FAfterWhere := ' AND WareHouseID='''+StForm+''' ';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quSub.Active := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
  quTotalSub.Active := TRUE;
  ts01.TabVisible := FALSE;
end;

procedure TfmAPKonsinyasiInvIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBImageEdit5,TRUE);
  SetReadOnly(dxDBEdit9,TRUE);
  //SetReadOnly(dxDBEdit10,TRUE);
  SetReadOnly(dxDBEdit11,TRUE);
  SetReadOnly(dxDBButtonEdit3,quMain.State <>dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State <>dsInsert);
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Supplier';
    SQLString := 'SELECT A.SuppName as Supplier, A.SuppID as Kode_Supplier, A.RekeningID as COA '
                +'FROM APMsSupplier A '
                +'ORDER BY A.SuppName';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainSuppID.AsString := Res[1];
       quMainRekeningU.AsString := Res[2];
    end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPKonsinyasiInvIDR.pcMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FActDS.State=dsBrowse;
end;

procedure TfmAPKonsinyasiInvIDR.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;

  If TRIM(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If TRIM(quMainSuppID.AsString)='' then
  Begin
    MsgInfo('Supplier tidak boleh kosong');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If TRIM(quMainLSuppName.AsString)='' then
  Begin
    MsgInfo('Supplier tidak ada dalam Master');
    quMainSuppID.FocusControl;
    Abort;
  End;

  If TRIM(quMainsiteid.AsString)='' then
  Begin
    MsgInfo('Site tidak boleh kosong');
    quMainsiteid.FocusControl;
    Abort;
  End;

  If TRIM(quMainLSites.AsString)='' then
  Begin
    MsgInfo('Site tidak ada dalam Master');
    quMainsiteid.FocusControl;
    Abort;
  End;

  If TRIM(quMainCurrID.AsString)='' then quMainCurrID.AsString := 'IDR';

  if quMain.State = dsInsert then
  Begin
    ST := 'FPP/'+quMainwarehouseid.AsString+FormatDateTime('/YYYY/', quMainTransDate.AsDateTime);
    quMainKonsinyasiInvID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrKonsinyasiInvHd', 'KonsinyasiInvID', ST, '0') + 1);
  End;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPKonsinyasiInvIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:= Date;
  quMainKonsinyasiInvID.FocusControl;
  quMainCurrID.AsString := 'IDR';
  quMainJatuhTempo.AsInteger := 0;
  quMainRate.AsCurrency := 1;
  quMainDPID.AsString := '';
  quMainDisc.AsCurrency := 0;
  quMainDP.AsCurrency := 0;
  quMainTglDP.AsDateTime := Date;
  quMainOngkir.AsCurrency := 0;
  quMainpph21.AsCurrency := 0;
  quMainpph23.AsCurrency := 0;
  quMainpph42.AsCurrency := 0;
  quMainpph15.AsCurrency := 0;
  quMainpph26.AsCurrency := 0;
  quMainAdministrasi.AsCurrency := 0;
  quMainRepack.AsCurrency := 0;
  quMainFgOto.AsString := 'T';
  quMainwarehouseid.ASString := StForm;
  quMainRekeningU.AsString := sDRPb;
  quMainRekeningK.AsString := sDGRPb; //pembelian
  quMainRekeningP.AsString := sDGRPLL;
  quMainRekeningD.AsString := APDisc;
  quMainFGpph21.ASString := 'Y';
  quMainFGpph23.ASString := 'Y';
  quMainFGpph15.ASString := 'Y';
  quMainFGpph26.ASString := 'Y';

  quMainRekPBBKB.AsString := spbbkb;
  quMainRekeningJ.AsString := sDRPbJ;
  //quMainRekeningA.AsString := sDRA;
  quMainRekeningO.AsString := sDRO;
  //quMainRekeningR.AsString := sDRR;
end;

procedure TfmAPKonsinyasiInvIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgTotal,TRUE);
  SetReadOnly(dbgColumn9,TRUE);
  SetReadOnly(dbgColumn10,TRUE);
  SetReadOnly(dbgColumn11,TRUE);
  //SetReadOnly(dbgColumn11,TRUE);
  //SetReadOnly(dbgColumn11,TRUE);
end;

procedure TfmAPKonsinyasiInvIDR.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Barang ';
       SQLString := 'SELECT A.KonsinyasiInvID as Invoice,Convert(Varchar(10),A.Transdate,103) as Tgl,'
                   +'B.SuppName as Supplier,A.CurrID as Valuta,A.Note as Keterangan, '
                   +'ISNULL((SELECT SUM(C.Qty) FROM APTrKonsinyasiInvDt C where C.KonsinyasiInvID=A.KonsinyasiInvID),0) as Jumlah, '
                   +'ISNULL((select TOP 1 X.konsinyasiid from aptrkonsinyasihd X where X.poid=A.POID),''-'') as Nota_Terima '
                   +'FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID '
                   +'WHERE '+FSQLWhere
                   +' AND A.WarehouseID='''+StForm+''' '
                   +' GROUP BY A.KonsinyasiInvID,A.Transdate,B.SuppName,A.CurrID,A.Note,A.POID ORDER BY A.KonsinyasiInvID';
                  //showmessage(SQLString);
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonsinyasiInvID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasiInvIDR.quMainBeforeDelete(DataSet: TDataSet);
var nopoid : string;
begin
  inherited;
  CekStatus;
  cekoto;

  if FgDelete<>'Y' then
  begin
    if UpperCase(quMainUpdUser.ASString)<>UpperCase(dmmain.UserID) then
    begin
      ShowMessage('TIDAK BISA HAPUS INPUTAN USER LAIN !');
      Abort;
    end;
  end;

  with quCetak,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainKonsinyasiInvID.ASString+''',''Delete'',''Hapus FPP-PO'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
  nopoid := quMainKonsinyasiInvID.ASString;
  quMain.Locate('KonsinyasiInvId',nopoid,[]);
end;

procedure TfmAPKonsinyasiInvIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  cekoto;

  if FgDelete<>'Y' then
  begin
    if UpperCase(quMainUpdUser.ASString)<>UpperCase(dmmain.UserID) then
    begin
      ShowMessage('TIDAK BISA HAPUS INPUTAN USER LAIN !');
      Abort;
    end;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  qutotalSub.Requery();
  TTLKPSub;
  quTotal.Requery();
  TTLKP;
  quSub.Requery();
end;

procedure TfmAPKonsinyasiInvIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qutotalSub.Requery();
  TTLKPSub;
  quTotal.Requery();
  TTLKP;
  quSub.Requery();
end;

procedure TfmAPKonsinyasiInvIDR.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if FgEdit<>'Y' then
  begin
    if UpperCase(quMainUpdUser.ASString)<>UpperCase(dmmain.UserID) then
    begin
      ShowMessage('TIDAK BISA UBAH INPUTAN USER LAIN !');
      Abort;
    end;
  end;

  if quMain.IsEmpty then Abort;
  CekStatus;
  cekoto;
  Status := 'Ubah';
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta FROM SAMsValuta ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPKonsinyasiInvIDR.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
 quMainTglJthTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT KonsinyasiID FROM APTrKonsinyasiHd WHERE BPBID='''+quMainBPBID.AsString+''' ');
    Open;
  end;
  quMainLDOSupp.AsString := quAct.FieldByName('KonsinyasiID').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningK.AsString+''' ');
    Open;
  end;
  quMainLRekPemb.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningP.AsString+''' ');
    Open;
  end;
  quMainLRekPPN.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningDP.AsString+''' ');
    Open;
  end;
  quMainLDrDP.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningU.AsString+''' ');
    Open;
  end;
  quMainLRekHutDagang.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningA.AsString+''' ');
    Open;
  end;
  quMainLRekAdmin.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningO.AsString+''' ');
    Open;
  end;
  quMainLRekOng.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningR.AsString+''' ');
    Open;
  end;
  quMainLRekRepak.AsString := quAct.FieldByName('RekeningName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningD.AsString+''' ');
    Open;
  end;
  quMainLAPDisc.AsString := quAct.FieldByName('RekeningName').AsString;
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select WareHouseName From INMsWareHouse WHERE WarehouseID='''+quMainwarehouseID.AsString+''' ');
    Open;
  End;
  quMainLwarehouse.asString := quAct.FieldByName('WareHouseName').AsString ;
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select SiteName From INMsSites WHERE SiteID='''+quMainSiteID.AsString+''' ');
    Open;
  End;
  quMainLsites.asString := quAct.FieldByName('SiteName').AsString ;
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Select DivisiName From INMsDivisi WHERE DivisiID='''+quMainDivisiID.AsString+''' ');
    Open;
  End;
  quMainLDivisi.asString := quAct.FieldByName('DivisiName').AsString ;

  if quMainFgOto.ASString ='Y' then
  begin
    Label33.Font.Color := clGreen;
    Label33.Caption := 'APPROVED';
  end else
  if quMainFgOto.ASString ='T' then
  begin
    Label33.Font.Color := clYellow;
    Label33.Caption := 'WAITING';
  end else
  begin
    Label33.Font.Color := clRed;
    Label33.Caption := 'REJECTED';
  end;
end;

procedure TfmAPKonsinyasiInvIDR.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPKonsinyasiInvIDR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPKonsinyasiInvIDR.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsDetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmAPKonsinyasiInvIDR.bbSimpanDetilClick(Sender: TObject);
begin
  inherited;
  if Self.quDetil.State = dsInsert then
  begin
   Self.quDetil.Edit;
   Self.quDetil.Post;
   Self.quDetil.Requery();
  end;
  if Self.quDetil.State = dsEdit then
  begin
   quDetil.Post;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Purchase Order';
    SQLString := 'SELECT K.POID as No_PO,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,L.SuppName as Supplier,K.SuppID,K.CurrID,K.Rate, '
                +'K.WarehouseID as Gudang,K.SiteID,K.DivisiID FROM ('
                +'SELECT B.Kurs as Rate,B.CurrID,B.POID,B.WarehouseID,B.SiteID,B.DivisiID,SUM(A.Jumlah) as Total,B.Transdate,B.SuppID, '
                +'ISNULL((SELECT SUM(X.Qty) FROM APTrKonsinyasiInvDt X '
                +'INNER JOIN APTrKonsinyasiInvHd Y ON X.KonsinyasiInvID=Y.KonsinyasiInvID '
                +'WHERE Y.POID=B.POID AND X.SuppID=B.SuppID),0) as Invoice FROM APTrPurchaseOrderDt A '
                +'INNER JOIN APTrPurchaseOrderHd B ON A.POID=B.POID '
                +'GROUP BY B.Kurs,B.CurrID,B.POID,B.SuppID,B.Transdate,B.WarehouseID,B.SiteID,B.DivisiID) as K INNER JOIN APMsSupplier L ON K.SuppID=L.SuppID '
                +'WHERE K.Total-K.Invoice > 0 AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.SuppID,K.POID';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainPOID.Value := Res[0];
       quMainSuppID.Value := Res[3];
       quMainCurrID.Value := Res[4];
       quMainwarehouseid.Value := Res[6];
       quMainsiteid.Value := Res[7];
       quMaindivisiid.Value := Res[8];
       quMainRate.Value := STrtoCurr(Res[5]);
    end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quMainBPBIDChange(Sender: TField);
var SuppID,FgTax,POID,FPS : string;
    Disc : Currency;
    Term : integer;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT A.SuppID,B.FgTax,ISNULL(B.Term,0)as Term,B.POID,C.FPS,ISNULL(B.Disc,0) as Disc FROM APTrKonsinyasiHd A '
       +'INNER JOIN APTrPurchaseOrderHd B ON A.POID=B.POID '
       +'INNER JOIN ARTrReceiveInvDt C ON A.BPBID=C.NoDO '
       +'WHERE A.BPBID='''+quMainBPBID.AsString+''' ');
    Open;
  end;
  SuppID := quAct.FieldByName('SuppID').AsString;
  FgTax := quAct.FieldByName('FgTax').AsString;
  POID := quAct.FieldByName('POID').AsString;
  FPS := quAct.FieldByName('FPS').AsString;
  Term := quAct.FieldByName('Term').AsInteger;
  Disc := quAct.FieldByName('Disc').AsCurrency;
  quMainSuppID.AsString := SuppID;
  quMainFgTax.AsString := FgTax;
  quMainJatuhTempo.AsInteger := Term;
  quMainFPS.AsString := FPS;
  quMainPOID.AsString := POID;
  quMainDisc.AsCurrency := Disc;
end;

procedure TfmAPKonsinyasiInvIDR.quMainCurrIDChange(Sender: TField);
begin
  inherited;
  CarirateNew(quAct,quMainTransDate.AsDateTime);
  if TRIM(quMainCurrID.AsString) = 'IDR' then
    quMainRate.AsCurrency := 1
  else
    quMainRate.AsCurrency := quAct.FieldByName('Rate').AsCurrency;
end;

procedure TfmAPKonsinyasiInvIDR.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Status <> 'Ubah' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('INSERT APTrKonsinyasiInvDt (KonsinyasiInvID,SuppID,KonsinyasiID,ItemID,Price,Qty,UpdDate,UpdUser,Disc,FgNum,DiscItem,typeunit,nounit) ');

      Add('SELECT DISTINCT '''+quMainKonsinyasiInvID.AsString+''','''+quMainSuppID.AsString+''',K.KonsinyasiID,K.ItemID,ISNULL(K.Price,0),ISNULL(K.Sisa,0),'
         +''''+DatetimetoStr(GetServerDateTime)+''','''+dmMain.UserId+''',K.Disc as Discount,K.NumAll as IDTXN,0,K.TypeUnit,K.NoUnit FROM ( '
         +' SELECT A.KonsinyasiID,B.POID,A.NumAll,B.Transdate,A.ItemID,A.TypeUnit,A.NoUnit,C.ItemName,B.SuppID,E.Price,E.Disc,B.BPBID,ISNULL(E.DiscItem,0) as DiscItem, '
         +' ISNULL(A.Jumlah,0)-(SELECT ISNULL(SUM(Qty),0) FROM APTrKonsinyasiInvDt D '
         +' WHERE D.ItemID=A.ItemID AND A.NumAll=D.FgNum AND D.KonsinyasiID=A.KonsinyasiID)-(SELECT ISNULL(SUM(Qty),0) FROM APTrReturnKonDt G '
         +' WHERE G.ItemID=A.ItemID And G.KonsinyasiID=A.KonsinyasiID) as Sisa,A.CurrID FROM APTrKonsinyasIDt A '
         +' INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID '
         +' INNER JOIN APTrPurchaseOrderDt E ON B.POID=E.POID AND A.ItemID=E.ItemID  And E.NumAll=A.FgNum INNER JOIN INMsItem C ON A.ItemID=C.ItemID) as K '
         +' WHERE K.SuppID = '''+quMainLDOSupp.AsString+''' AND K.Sisa <> 0 AND K.POID='''+quMainPOID.AsString+''' ');
      ExecSQL;
    end;
    quDetil.Requery();
  end;
  quTotal.Requery();
  TTLKP;
end;

procedure TfmAPKonsinyasiInvIDR.dxButton1Click(Sender: TObject);
var sTotal : Currency;
    FgTax : string;
begin
  inherited;
  if (quMain.IsEmpty) and (quDetil.IsEmpty) then Abort;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(round(TTLKs,0),0) as TTLKs,(SELECT FgTax FROM SAMsSet) as FgTax FROM APTrKonsinyasiInvHd Where KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+'''');
    Open;
  end;
  FgTax := quAct.FieldByName('FgTax').AsString;
  if quAct.FieldByName('TTLKs').AsCurrency = 0 then
    stotal := quTotalTotal.AsCurrency
  else
    stotal := quAct.FieldByName('TTLKs').AsCurrency;
     with TfmQRRptInvPenjualan.Create(Self) do
     try
       qlbjatuhTempo.Caption := 'Term Pembayaran : '+quMainJatuhTempo.AsString+' Hari';
       qlbTempo.Caption := FormatDateTime('dd/MM/yyyy', IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger));
       QRLabel1.Caption := 'Serpong, '+FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);
       QRLabel5.Caption := '** PEMBELIAN **'; QRLabel31.Caption := 'No BPB';
         QRLabel31.Top := 72; QRLabel3.Top := 72; QRDBText18.Top := 72;
         QRLabel27.Enabled := False; QRLabel28.Enabled := False; QRDBText15.Enabled := False;
         QRLabel21.Enabled := False; QRLabel22.Enabled := False; qlbKet.Enabled := False;
       if UpperCase(quMainCurrId.Value) ='IDR' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, sTotal))+'rupiah #';
          qlbCurr1.Caption := 'Rp ';
          qlbCurr2.Caption := 'Rp ';
          qlbCurr3.Caption := 'Rp ';
          qlbCurr4.Caption := 'Rp ';
          qlbCurr5.Caption := 'Rp ';
       end;
       if UpperCase(quMainCurrId.Value) ='USD' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
          qlbCurr1.Caption := 'US ';
          qlbCurr2.Caption := 'US ';
          qlbCurr3.Caption := 'US ';
          qlbCurr4.Caption := 'US ';
          qlbCurr5.Caption := 'US ';
       end;
       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT KonsinyasiInvID as SaleID,KonsinyasiInvID,CurrID,0 as Discount,0 as DP,ISNULL(TTLKs,0) as Total,'
            +'CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.SuppID as CustID,C.SuppName as CustName,C.Address,'''' as Sales,'
            +'A.BPBID as SOID,C.City,(SELECT FgTax FROM SAMsSet) as FgTax '
            +'FROM APTrKonsinyasiInvHd A INNER JOIN APMsSupplier C ON A.SuppID=C.SuppID '
            +'WHERE A.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+'''');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add('SELECT A.ItemId,B.ItemName,''KG'' as UOMId,ISNULL(Qty,0) as Qty,A.Price,B.Tipe FROM APTrKonsinyasiInvDt A '
            +'INNER JOIN INMsItem B ON A.Itemid=B.Itemid WHERE A.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' '
            +'ORDER BY A.ItemID');
         Open;
       End;

       LaDiskon.Caption := '0';
       laGT.Caption := quTotalTotal.AsString;
       laSubTotal.Caption := CurrToStr(quTotalSubTotal.AsCurrency);
       laPPN.Caption := CurrToStr(quTotalPajak.AsCurrency);
       qlbNamaRekening.Enabled := True; QRLabel13.Caption := 'Dibuat Oleh :';
       if quMainNote.AsString <> '' then
          qlbKet.Caption := quMainNote.AsString
       else
          qlbKet.Caption := '';

       if FgTax = 'T' then
       begin
         QRLabel18.Enabled := False; QRLabel23.Enabled := False;
         qlbCurr3.Enabled := False; qlbCurr4.Enabled := False;
         laSubTotal.Enabled := False; laPPN.Enabled := False;
         QRLabel20.Top := 41; qlbCurr5.Top := 41; laGT.Top := 41;
         QRShape6.Top := 58; QRShape5.Enabled := False;
       end;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

     finally
        free;
     end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Data Down Payment';
    SQLString := 'SELECT UMID as Nota_Transaksi,CONVERT(VARCHAR(10),Transdate,103) as Tgl,ISNULL(TTLMakan,0) as Jumlah '
                +'FROM CFTrUangMakanHD '
                +'WHERE UMID NOT IN (SELECT DPID FROM APTrKonsinyasiInvHd) AND SalesId='''+qumainSuppId.AsString+''' '
                +'AND CONVERT(Varchar(8),Transdate,112)<='''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                +'AND FgStatus=''S'' '
                +'ORDER BY Transdate';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainDPID.Value := Res[0];
    end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quMainDPIDChange(Sender: TField);
var Nota : string;
begin
  inherited;
  Nota := quMainDPID.AsString;
  if Nota <> '' then
      Begin

      with quAct,sql do
      Begin
        Close;Clear;
        Add('Select TTLmakan FROM CFTrUangMakanHD WHERE UMID='''+qumainDPID.AsString+''' AND SalesID='''+quMainSuppID.AsString+''' ');
        Open;
      End;
         quMainDP.AsCurrency := quAct.FieldByName('TTLMakan').AsCurrency;
      end else
      begin
         quMainDP.AsCurrency := 0;

      end;

end;

procedure TfmAPKonsinyasiInvIDR.quMainPOIDChange(Sender: TField);
var FgTax : string;
    Disc,Repack,Ongkir,Administrasi : currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add(' SELECT FgTax,ISNULL(Disc,0) as Disc,ISNULL(Administrasi,0) as Administrasi,ISNULL(Ongkir,0) as ongkir,ISNULL(Repack,0) as Repack '
        +'FROM APTrPurchaseOrderHd WHERE POID='''+quMainPOID.AsString+''' ');
    Open;
  end;
  Disc := quAct.FieldByName('Disc').AsCurrency;
  Administrasi := quAct.FieldByName('Administrasi').AsCurrency;
  Ongkir := quAct.FieldByName('Ongkir').AsCurrency;
  Repack := quAct.FieldByName('Repack').AsCurrency;
  FgTax := quAct.FieldByName('FgTax').AsString;
  quMainFgTax.AsString := FgTax;
  quMainDisc.AsCurrency := Disc;
  quMainOngkir.AsCurrency := ongkir;
  quMainAdministrasi.AsCurrency := administrasi;
  quMainRepack.AsCurrency := repack;
end;

procedure TfmAPKonsinyasiInvIDR.dxButton2Click(Sender: TObject);
begin
  inherited;
  With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      qlbTitleV.Top := 18;
      qlbTitleV.Caption := 'JURNAL PEMBELIAN';
      qlbTTerBayar.Caption := 'Supplier';
      QRLabel9.Caption := 'Jumlah';
      qlbJourTransID.Caption := ': ' + quMainKonsinyasiInvID.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainLSuppName.AsString;
      if UpperCase(quMainCurrID.AsString) = 'IDR' then
      qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quTotalTotal.AsCurrency))+'Rupiah #'
      else
      qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quTotalTotal.AsCurrency*quMainRate.AsCurrency))+'Rupiah #';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Dibayar oleh';
      if quTotalTotal.AsCurrency >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, quTotalTotal.AsCurrency)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(quTotalTotal.AsCurrency)) + ')';
      if UpperCase(quMainCurrID.AsString) = 'IDR' then
      begin
        With qu001,SQL do
        Begin
          Close;Clear;
          Add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT KonsinyasiInvID,RekeningU as RekeningID,ISNULL(TTLKs,0) as Amount,''K'' as Jenis,6 as Urut,Note FROM APTrKonsinyasiInvHd UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningO,ISNULL(Ongkir,0),''D'',3,''Biaya Pengiriman'' FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningDP,ISNULL(DP,0),''K'',7,''DP:''+DPID FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningD,ISNULL(ROUND(SubTotal*Disc*0.01,2),0),''K'',8,''Discount Pembelian'' FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningR,ISNULL(Repack,0),''D'',4,''Jasa Repacking'' FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningA,ISNULL(Administrasi,0),''D'',5,''Biaya Administrasi'' FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningP,ISNULL(PPN,0),''D'',2,''PPN Masukan - ''+'''+quMainLSuppName.AsString+''' FROM APTrKonsinyasiInvHd UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningK,ISNULL(Subtotal,0),''D'',1,Note FROM APTrKonsinyasiInvHd) as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
             +'WHERE K.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' AND K.Amount <> 0 ORDER BY K.Urut,K.RekeningID');
          Open;
        End;
      end else
      begin
        With qu001,SQL do
        Begin
          Close;Clear;
          Add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT KonsinyasiInvID,RekeningU as RekeningID,ISNULL(TTLKs*rate,0) as Amount,''K'' as Jenis,6 as Urut,Note FROM APTrKonsinyasiInvHd UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningO,ISNULL(Ongkir,0),''D'',3,''Biaya Pengiriman'' FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningDP,ISNULL(DP,0),''K'',7,''DP:''+DPID FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningR,ISNULL(Repack,0),''D'',4,''Jasa Repacking'' FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningD,ISNULL(ROUND(SubTotal*Disc*0.01,2),0),''K'',8,''Discount Pembelian'' FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningA,ISNULL(Administrasi,0),''D'',5,''Biaya Administrasi'' FROM ApTrkonsinyasiInvhD UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningP,ISNULL(PPN*rate,0),''D'',2,''PPN Masukan - ''+'''+quMainLSuppName.AsString+''' FROM APTrKonsinyasiInvHd UNION ALL '
             +'SELECT KonsinyasiInvID,RekeningK,ISNULL((Subtotal)*rate,0),''D'',1,Note FROM APTrKonsinyasiInvHd) as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
             +'WHERE K.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' AND K.Amount <> 0 ORDER BY K.Urut,K.RekeningID');
          Open;
        End;
      end;
      MyReport.Previewmodal
    Finally
      Free;
    End;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit4ButtonClick(Sender: TObject;
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
           quMainRekeningK.Value := Res[1];
           //quMainRekeningD.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit5ButtonClick(Sender: TObject;
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
           quMainRekeningD.Value := Res[1];
           quMainRekeningU.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit6ButtonClick(Sender: TObject;
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
           quMainRekeningU.Value := Res[1];
           quMainRekeningK.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit8ButtonClick(Sender: TObject;
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
           quMainRekeningDP.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit9ButtonClick(Sender: TObject;
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
           quMainRekeningO.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit10ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
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
           quMainRekeningR.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit11ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
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
           quMainRekeningA.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit12ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
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
           quMainRekeningP.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quSubCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT CONVERT(VARCHAR(10),Transdate,103) as Tanggal FROM APTrPurchaseOrderHd Where POID='''+quSubPOID.AsString+''' ');
    Open;
  end;
  quSubLtanggal.AsString := quAct.FieldBYName('Tanggal').AsString;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBGridButtonColumn1ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Purchase Order';
       SQLString := ' Select CONVERT(VARCHAR(10),B.Transdate,103) as Tanggal,A.POID,B.Note,B.Disc,B.FgTax as Pajak, '
                   +' B.STPO as Subtotal, '
                   +' ISNULL(SUM(CASE WHEN C.Ctk<>''Y'' THEN CASE WHEN A.FgOngkir=''T'' THEN A.Jumlah*A.Price ELSE 0 END ELSE 0 END),0) as Nilai_Jasa, '
                    +' ISNULL(SUM(CASE WHEN C.Ctk<>''Y'' THEN CASE WHEN A.FgOngkir=''P'' THEN A.Jumlah*A.Price ELSE 0 END ELSE 0 END),0) as PBBKB, '
                     +' ISNULL(SUM(CASE WHEN C.Ctk<>''Y'' THEN CASE WHEN A.FgOngkir=''O'' THEN A.Jumlah*A.Price ELSE 0 END ELSE 0 END),0) as Ongkir, '
                   +' B.DiscAmount,B.PPN as Nilai_Pajak,B.TTLPO as GrandTotal,B.SiteID as Site '
                   +' from APTrPurchaseOrderDt A '
                   +' inner join APTrPurchaseOrderHd B on A.POID=B.POID AND B.FgOto=''Y'' '
                   +' inner join INMsItem C on A.ItemID=C.ItemID '
                   +' WHERE B.SuppID = '''+quMainSuppID.AsString+''' '
                   +' AND B.WarehouseID = '''+quMainwarehouseid.AsString+''' '
                   +' AND B.SiteID = '''+quMainsiteid.ASString+''' '
                   +' AND A.POID NOT IN (SELECT DISTINCT X.POID FROM APTrKOnsinyasiInvSub X '
                   +' INNER JOIN ApTrKonsinyasiInvHD Y on X.Konsinyasiinvid=Y.KOnsinyasiinvid And Y.FgOto<>''X'') '
                   +' GROUP BY A.POID,B.Transdate,B.FgTax,B.Disc,B.DiscAmount,B.TTLPO,B.StPO,B.Note,B.Disc,B.PPN,B.SiteID ';
       if ShowModal = MrOK then
       begin
          if quSub.State = dsBrowse then quSub.Edit;
          quSubPOID.AsString := Res[1];
          quSubNote.AsString := Res[2];
          quSubDisc.AsCurrency := StrtoCurr(Res[3]);
          quSubFgTax.AsString := Res[4];
          quSubSubtotalM.AsCurrency := StrtoCurr(Res[5])-StrtoCurr(Res[6]);
          quSubSubtotalU.AsCurrency := StrtoCurr(Res[6]);
          quSubpbbkb.AsCurrency := StrtoCurr(Res[7]);
          quSubongkir.AsCurrency := StrtoCurr(Res[8]);
          quSubDiscAmount.AsCurrency := StrtoCurr(Res[9]);
          quSubPPN.AsCurrency := StrtoCurr(Res[10]);
          quSubTTLKJ.AsCurrency := StrtoCurr(Res[11]);
          quSubSiteID.AsString := Res[12];
       end;
    finally
       free;
    end;


end;

procedure TfmAPKonsinyasiInvIDR.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quSub.IsEmpty then quSub.Append;
end;

procedure TfmAPKonsinyasiInvIDR.dsSubStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGridColumn1,TRUE);
  SetReadOnly(dxDBGridColumn3,TRUE);
  SetReadOnly(dxDBGridColumn4,TRUE);
  SetReadOnly(dxDBGridColumn5,TRUE);
  SetReadOnly(dxDBGridColumn6,TRUE);
  SetReadOnly(dxDBGridColumn7,TRUE);
  SetReadOnly(dxDBGridColumn8,TRUE);
  SetReadOnly(dxDBGridColumn9,TRUE);
  SetReadOnly(dxDBGrid1Column12,TRUE);
  SetReadOnly(dxDBGrid1Column13,TRUE);

end;

procedure TfmAPKonsinyasiInvIDR.dxButton3Click(Sender: TObject);
begin
  inherited;
  quSub.Append;
end;

procedure TfmAPKonsinyasiInvIDR.dxButton6Click(Sender: TObject);
begin
  inherited;
  quSub.Cancel;
end;

procedure TfmAPKonsinyasiInvIDR.dxButton4Click(Sender: TObject);
begin
  inherited;
  if quSub.IsEmpty then Abort;
  if (dsSub <> nil) and (dsSub.DataSet <> nil) and
     (MessageDlg('Hapus PO ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSub.DataSet.Delete;
end;

procedure TfmAPKonsinyasiInvIDR.dxButton5Click(Sender: TObject);
begin
  inherited;
  if Self.quSub.State = dsInsert then
  begin
   Self.quSub.Edit;
   Self.quSub.Post;
   Self.quSub.Requery();
  end;
  if Self.quSub.State = dsEdit then
  begin
   quSub.Post;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quSubNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSubFgpph42.AsString:= 'T';
  quSubSubtotalM.AsCurrency := 0;
  quSubSubtotalU.AsCurrency := 0;
  quSubDiscAmount.AsCurrency := 0;
  quSubDisc.AsCurrency := 0;
  quSubFgTax.AsString := 'Y';
  quSubTTLKJ.AsCurrency := 0;
  quSubPPN.AsCurrency := 0;
  quSubPOID.FocusControl;
end;

procedure TfmAPKonsinyasiInvIDR.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    add('select itemname,UOMID from inmsitem where itemid='''+quDetilItemID.AsString +''' ');
    Open;
  end;
  quDetilLItemName.AsString := quact.fieldbyname('itemname').AsString;
  quDetilLUOMID.AsString := quact.fieldbyname('UOMID').AsString;

  quDetilCTotal.AsCurrency := quDetilQty.AsCurrency * quDetilPrice.AsCurrency;
end;

procedure TfmAPKonsinyasiInvIDR.quSubAfterPost(DataSet: TDataSet);
begin
  inherited;
  if FgSub='Baru' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('Insert aptrkonsinyasiinvdt (KonsinyasiInvID,POID,SuppID,KonsinyasiID,ItemID,Price,Qty,UpdDate,UpdUser,Disc,'
         +'FgNum,DiscItem,typeunit,nounit,PriceU,fgjasa,fgpph,fgnpwp) '
         +'select '''+quMainKonsinyasiInvID.AsString+''',A.POID,C.SuppID,A.PRID,A.ItemID,A.Price,A.Jumlah,GETDATE(),'''+dmMain.UserID+''',0,A.NumAll,0,A.TypeUnit,A.NoUnit,A.Price, '
         +'CASE WHEN A.FgOngkir=''T'' THEN (CASE WHEN B.Ctk=''Y'' THEN ''T'' ELSE ''Y'' END) ELSE A.FgOngkir END,'
         +'CASE WHEN A.FgOngkir=''T'' THEN (CASE WHEN B.Ctk=''Y'' THEN ''00'' ELSE (CASE WHEN D.FgCompany=''O'' THEN ''21'' ELSE ''23'' END) END) ELSE ''00'' END,D.FgNPWP '
         +'from APTrPurchaseOrderDt A inner join INMsItem B on A.ItemID=B.ItemID '
         +'inner join APTrPurchaseOrderHd C on A.POID=C.POID '
         +'inner join APMsSupplier D on C.SuppID=D.SuppID '
         +'where A.POID='''+quSubPOID.ASString+''' ');
      ExecSQL;
    end;
  end;
  FgSub := 'Lama';
  quTotal.Requery();
  TTLKP;
  quSub.Append;
end;

procedure TfmAPKonsinyasiInvIDR.quSubBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  cekoto;

  if FgDelete<>'Y' then
  begin
    if UpperCase(quMainUpdUser.ASString)<>UpperCase(dmmain.UserID) then
    begin
      ShowMessage('TIDAK BISA HAPUS INPUTAN USER LAIN !');
      Abort;
    end;
  end;
  
  quTotal.Requery();
  TTLKP;
end;

procedure TfmAPKonsinyasiInvIDR.quSubBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quSubPOID.AsString)='' then
  begin
    ShowMessage('PO tidak boleh kosong');
    quSubPOID.FocusControl;
    Abort;
  end;

  if TRIM(quSubNote.AsString)='' then
  begin
    ShowMessage('Keterangan tidak boleh kosong');
    quSubNote.FocusControl;
    Abort;
  end;

  if TRIM(quSubfgpph42.AsString)='' then
  begin
    ShowMessage('PPH42 tidak boleh kosong. Pilih Ya Atau Tidak');
    quSubfgpph42.FocusControl;
    Abort;
  end;

  quSubupddate.AsDateTime := GetServerDateTime;
  quSubupduser.AsString := dmMain.UserId;
end;

procedure TfmAPKonsinyasiInvIDR.dxButton7Click(Sender: TObject);
begin
  inherited;
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      qlbTitleV.Top := 18;
      qlbTitleV.Caption := 'JURNAL PEMBELIAN';
      qlbTTerBayar.Caption := 'Supplier';
      QRLabel9.Caption := 'Jumlah';
      qlbJourTransID.Caption := ': ' + quMainKonsinyasiInvID.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainLSuppName.AsString;

      qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quTotalTotal.AsCurrency))+'Rupiah #';
      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Dibayar oleh';
      qlbTotal.Caption := FormatFloat(sDisFormat, quTotalTotal.AsCurrency);

      With qu001,SQL do
      Begin
        Close;Clear;
        Add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
           +'SELECT KonsinyasiInvID,RekeningU as RekeningID,ISNULL(TTLKs,0) as Amount,''K'' as Jenis,6 as Urut,Note FROM APTrKonsinyasiInvHd UNION ALL '
           +'SELECT KonsinyasiInvID,RekeningD,ISNULL(Disc,0),''K'',8,''Discount Pembelian'' FROM ApTrkonsinyasiInvhD UNION ALL '
           +'SELECT KonsinyasiInvID,RekeningO,ISNULL(Ongkir,0),''D'',5,''Biaya Angkut ''+'''+quMainLSuppName.AsString+''' FROM APTrKonsinyasiInvHd UNION ALL '
           +'SELECT KonsinyasiInvID,RekPBBKB,ISNULL(PBBKB,0),''D'',4,''PBB-KB ''+'''+quMainLSuppName.AsString+''' FROM APTrKonsinyasiInvHd UNION ALL '
           +'SELECT KonsinyasiInvID,RekeningP,ISNULL(PPN,0),''D'',3,''PPN Masukan - ''+'''+quMainLSuppName.AsString+''' FROM APTrKonsinyasiInvHd UNION ALL '
           +'SELECT KonsinyasiInvID,RekeningJ,ISNULL(SubtotalJ,0),''D'',2,''PPN Masukan - ''+'''+quMainLSuppName.AsString+''' FROM APTrKonsinyasiInvHd UNION ALL '
           +'SELECT KonsinyasiInvID,RekeningK,ISNULL(Subtotal-SubTotalJ,0),''D'',1,Note FROM APTrKonsinyasiInvHd '
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE K.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' AND K.Amount <> 0 ORDER BY K.Urut,K.RekeningID');
        Open;
      End;

      MyReport.Previewmodal
    Finally
      Free;
    End;
end;

procedure TfmAPKonsinyasiInvIDR.dxButton8Click(Sender: TObject);
begin
  inherited;
  with TfmAPRptFPP.Create(Self) do
  try
    qrlPeriode.Caption := FormatDateTime('dd MMMM yyyy',quMainTransDate.AsDateTime);

    if StForm='TIM' then
    begin
      QRImage8.Enabled := True;
      QRImage1.Enabled := False;
      QRLabel27.Enabled := False;
      QRLabel73.Enabled := False;
      QRLabel80.Enabled := False;
      qrlabel70.Left := 600;
      qrlabel71.Left := 600;
      qrlabel78.Left := 600;
      qrlabel63.Left := 300;
      qrlabel64.Left := 300;
      qrlabel65.Left := 290;
    end else
    begin
      QRImage8.Enabled := False;
      QRImage1.Enabled := True;
    end;

    qr1.Caption := CurrToStr(quTotalSubTotal.AsCurrency);
    qr2.Caption := CurrToStr(quTotalDisc.AsCurrency);
    qr3.Caption := CurrToStr(quTotalPajak.AsCurrency);
    qr4.Caption := CurrToStr(quTotalTotal.AsCurrency);
    qr5.Caption := CurrToStr(quTotalPPh21.AsCurrency);
    qr6.Caption := CurrToStr(quTotalPPh23.AsCurrency);
    qr7.Caption := CurrToStr(quTotalPPH42.AsCurrency);
    qr8.Caption := CurrToStr(quTotalGT.AsCurrency);
    qr9.Caption := CurrToStr(quMainPayment.AsCurrency);
    qr10.Caption := CurrToStr(quTotalPPH26.AsCurrency);
    QRLabel18.Caption := CurrToStr(quTotalGT.AsCurrency);
    QRLabel61.Caption := CurrToStr(quTotalPPh15.AsCurrency);
    QRLabel46.Caption := CurrToStr(quTotalSubO.AsCurrency);
    QRLabel47.Caption := CurrToStr(quTotalSubP.AsCurrency);

    //terbilang
    qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, quTotalGT.AsCurrency))+' Rupiah #';

    with qu001,SQL do
    Begin
      Close;Clear;
      add('select A.KonsinyasiInvID,CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,ISNULL(A.SiteID+''-'','''')+A.Note as note,'''' as Lokasi, '
         +'B.SuppName,B.norek,B.bankname,A.FPS as TaxID '
         +'from APTrKonsinyasiInvHd A inner join APMsSupplier B on A.SuppID=B.SuppID '
         +'WHERE A.KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' ');
      Open;
    End;

    With qu002,SQL do
    Begin
      Close;Clear;
      add('select KonsinyasiInvID,POID,Note as Keterangan,ISNULL(SubtotalM+SubtotalU,0) as Jumlah from APTrKonsinyasiInvSub '
         +'WHERE KonsinyasiInvID='''+quMainKonsinyasiInvID.AsString+''' ');
      Open;
    End;

    MyReport.PreviewModal;

    finally
      free;
    end;
end;

procedure TfmAPKonsinyasiInvIDR.quSubBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  cekoto;

  if FgEdit<>'Y' then
  begin
    if UpperCase(quMainUpdUser.ASString)<>UpperCase(dmmain.UserID) then
    begin
      ShowMessage('TIDAK BISA UBAH INPUTAN USER LAIN !');
      Abort;
    end;
  end;
end;

procedure TfmAPKonsinyasiInvIDR.quSubBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  cekoto;
  if FgTambah<>'Y' then
  begin
    if UpperCase(quMainUpdUser.ASString)<>UpperCase(dmmain.UserID) then
    begin
      ShowMessage('TIDAK BISA TAMBAH INPUTAN USER LAIN !');
      Abort;
    end;
  end;
  FgSub := 'Baru';
end;

procedure TfmAPKonsinyasiInvIDR.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TfmAPKonsinyasiInvIDR.dxDBButtonEdit16ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if qudetil.IsEmpty=False then
  begin
    ShowMessage('Data PO sudah ada, tidak bisa ganti Site');
    Abort;
  end;

  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Site';
     SQLString := 'select SiteID,SiteName from INMsSites Order by SiteName ';
     if ShowModal = MrOK then
     begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainsiteid.AsString := Res[0];
     end;
  finally
     Free;
  end;
end;

end.
