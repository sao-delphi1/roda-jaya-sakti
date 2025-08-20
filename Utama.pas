{
  10 - Setup Acc
  11 - General Ledger
  12 - Account Payable
  13 - Account Receiveable
  14 - Service
  15 - Inventory
  16 - Cash Flow
  17 - Setting
}

unit Utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, dxsbar, Menus, jpeg, dxExEdtr, dxCntner,
  dxTL, dxDBCtrl, dxDBTL, DB, ADODB, dxCore, dxContainer, dxButton, dxBar, StrUtils,
  Buttons, ActnList, StdCtrls, ComCtrls, comObj;

type
  TfmUtama = class(TForm)
    SBMenu: TdxSideBar;
    MenuList: TImageList;
    quMenu: TADOQuery;
    dsMenu: TDataSource;
    quMenuKdMenu: TIntegerField;
    quMenuNmMenu: TStringField;
    quMenuParent: TIntegerField;
    imMenu: TImageList;
    paMenu: TdxContainer;
    TLMenu: TdxDBTreeList;
    TLMenuNmMenu: TdxDBTreeListColumn;
    btnExpand: TdxButton;
    TLMenuKdMenu: TdxDBTreeListColumn;
    paToolbar: TdxContainer;
    dxContainer1: TdxContainer;
    quMenuFormName: TStringField;
    mmMenu: TMainMenu;
    miApplication: TMenuItem;
    miLogout: TMenuItem;
    miExit: TMenuItem;
    miModule: TMenuItem;
    miSetupAcc: TMenuItem;
    miGL: TMenuItem;
    miAP: TMenuItem;
    miInv: TMenuItem;
    bbExit: TdxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    bbJual: TdxButton;
    bbBackUp: TdxButton;
    Action8: TAction;
    Action9: TAction;
    quAct: TADOQuery;
    StBar: TStatusBar;
    bbAbsen: TdxButton;
    bbUtility: TdxButton;
    Action10: TAction;
    bbCreditCard: TdxButton;
    dxButton2: TdxButton;
    dxButton1: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    procedure SBMenuItemClick(Sender: TObject; Item: TdxSideBarItem);
    procedure FormShow(Sender: TObject);
    procedure TLMenuGetStateIndex(Sender: TObject; Node: TdxTreeListNode;
      var Index: Integer);
    procedure btnExpandClick(Sender: TObject);
    procedure TLMenuCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure sbExitClick(Sender: TObject);
    procedure TLMenuDblClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure miLogoutClick(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure SBMenuChangeActiveGroup(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure TLMenuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbJualClick(Sender: TObject);
    procedure bbBackUpClick(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure bbAbsenClick(Sender: TObject);
    procedure bbUtilityClick(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure bbCreditCardClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
  private
    { Private declarations }
    Expanded : Boolean;

    Procedure CallModule10; //SYSTEM
    Procedure CallModule11;
    Procedure CallModule12; //PURCHASING
    Procedure CallModule13; //RECEIVABLE
    Procedure CallModule14; //SAFETY
    Procedure CallModule15; //LOGISTIC
    Procedure CallModule16; //FINANCE
    Procedure CallModule17; //OPERATION                                                                         
    Procedure CallModule18; //HUMAN RESOURCE
    Procedure CallModule19; //MAINTENANCE
    Procedure CallModule20; //MAINTENANCE


    Procedure MakeFormDlg(var ref; FormClass:TFormClass);
    function CompareFormName(Str1, Str2 : String) : boolean;
  public
    { Public declarations }

  end;

var
  fmUtama: TfmUtama;

implementation

uses StdLv3, StdLv31,  SetSecurityAccess,ConMain,StdLv1,RptLv0,PeriodDlg, MyUnit,
  APMsSupplier, ARMsPelanggan, ARMsSales, INMsUOM, INMsProduct, INMsGroup,
  INMsItem, INMsWareHouse, INTrAdjustment, INTransfer,
  ARTrPenjualanIDR, ARTrPiutangIDR, ARTrReturPenjualan,
  APRetur, APPenggantiRetur, APKonsinyasi, APKonsinyasiInvIDR,
  APPembayaranKonsIDR, APReturKon, ARTrKonTransBrg, ARTrKonInvPelIDR,
  ARTrKonPiutangIDR, ARTrKonRetur,
  SAMsCompany, SetWareHouse,
  ARTrTerimaService, ARMsTeknisi,
  RptINStokDlg, INRptHistoryStokDlg,
  SAMsValuta, APPembayaranHutangPengRet,
  QRRptINStokMinim,
  PassChange, INRpMsItemDlg, INRpPriceListDlg, INRptAdjusmentDlg,
  INRptTransferBarangDlg, APRptTerimaBarangDlg, ARRptTransferBarangDlg,
  APRptSisaTerimaBarangDlg, ARRptSisaTransferBarangDlg, APRptRtrBlmGntDlg,
  ARRptRtrBlmGntDlg, ARRptTrInvServiceDlg,
  APRptReturDlg, ARRptReturDlg, APRptPembPerTglDlg,
  APRptPembPerBrgDlg, APRptPembPerSuppDlg, ARRptPenjPerTglDlg,
  ARRptPenjPerBrgDlg, ARRptPenjPerCustDlg, RptAPKartuHutangDlg,
  RptAPKartuHutangDetilDlg, ARRptKartuPiutangDlg, ARRptKartuPiutangDetilDlg,
  RptAPKartuHutangPRDlg, RptAPKartuHutangDetilPRDlg,
  ARRptKartuHutangServiceDlg, ARRptKartuPiutangDetilServiceDlg,
  ARRptPenjPerSalesDlg, ARRptTrInvServicePerTeknisiDlg,
  ARRptKartuTunggakPiutangDlg, ARRptKartuPiutangPRDlg,
  ARRptKartuPiutangPRDetilDlg, RptAPKartuHutangKonsinyasiDlg,
  RptAPKartuHutangKonsinyasiDetilDlg,
  RptARKartuPiutangKonsinyasiDetilDlg, ARRptKartuTunggakPiutangKonsDlg,
  ARRptKartuTunggakPiutangServisDlg, INRptHPPDlg, INRptLBRGDlg,
  CFMsGroupRek, CFMsRekening, CFMsBank, CFTrKKBB, CFRptKeuanganDlg,
  CFRptKeuanganDetDlg, CFRptKeuanganBankDlg, MsMaster,
  CFRptKeuanganDetBankDlg, ARRptPenjPerProductDlg, ARRptSummaryKeuanganDlg,
  APPurchaseOrder, APRptKartuTunggakanHutangDlg,
  BackUp, inifiles, ARRptBukuBesarPiutangDlg, INRptUmurBarangDlg, Absensi,
  ARRptPenjPerCustTunaiDlg, CFRptBiayaDlg, AuditData, Payroll,
  CFTrPiutangInternal, CFRptRekapPiutangInternalDlg, SAMsCalenderKerja,
  ARTrCariModal, CFTrCreditCard, CFTrTransferBalance, CFTrUangMakan,
  INRptSNHistoryDlg, ARMsWilayah, CFTrJurnal,
  APPurchaseRequest, APTrPurchaseOrder,
  ARTRSales, ARTRSaldoAwal,
  ARRptSales, ARRptBuatMR, INRptStockHistory,
  INMsService, CFTrTB,INRptStokMin, ARRptHM,
  PRBlmPO, CFRptAdjusmentKurs, APRptLapPRBlmRealisasi, APRptLaporanPO,
  ImportData, ExportImport, RptSolar, RptBan, INRptUnit, APTrOtorisasi,
  INRptStokGudang, APPrOtorisasi, APRptPenerimaan, APRptPendingBrg,
  APTrKonfirmasiPR, APRptLapMR, INTrKanibal, INRptKanibal, INOtorisasi,
  INTrJadwalDriver, INRptJadwalDriver, RptDataTelp, CFOTOFPP, RptHutang,
  ConfirmMR, APRptConfirmMR, RekapConfirmMR, CFRptPOBlmInv, CFRptFPS,
  SAMsRekJual, ARRptInvoice, INRptPakaiUnit, CFGenerate, CFRptDetailKas,
  INRptInventaris, AROtorisasi, QROtorisasi, INMsNoUnit, INMutasiBan,
  MTMutasiUnit, ARFPS, MTRptMutasiUnit, ARRptKaryawan, HRPromotion,
  MTMsService, HRRptPromotion, HRMsSalary, MsAbsensi, OPTrProduksi,
  OPTrWorkUnit, INMsSites, OPRptProduksi, OPRptProduksiDet,
  OPRptProduksiHaulSum, OPRptProduksiHaulDet, ARMsJenisInvoice,
  HRRptSumAbsen, INRptStockMinimum, OPWorkUnit, OPRptWorkUnit,
  SFTrClearance, SFRptSafetyItem, SFRptPakai, SFRptClearance, APRptBayarPO,
  CFRptJurnal, INRptUnitNew, APTrRental, INRptJadwalDriver2, INRptMsItem2,
  INRptMsCompartment, ARTrSalesKontrak, AROtoSalesInv, APOtoKonsinyasi,
  INMsLayout, INRptStockAkhir, APRptPOBlmTerima, OPRptBOD, SAMsPT;

{$R *.dfm}

function TfmUtama.CompareFormName(Str1, Str2: String): boolean;
begin
   Result := UpperCase(Str1)=UpperCase(Str2);
end;

procedure TfmUtama.MakeFormDlg(var ref; FormClass:TFormClass);
begin
  Application.CreateForm(FormClass,ref);
  TForm(ref).Tag := quMenuKdMenu.Value;
  TForm(ref).ShowModal;
  TForm(ref).Free;
end;

procedure TfmUtama.SBMenuItemClick(Sender: TObject; Item: TdxSideBarItem);
begin
  TLMenu.Bands[0].Caption := 'MENU '+Item.Caption;
  with quMenu,SQL do
  begin
     Close; Clear;
     Add(' SELECT A.*'
        +' FROM SysMenu A'
        +' INNER JOIN SysMsMenuGroupTrustee B ON A.KdMenu = B.KdMenu'
        +' INNER JOIN SysMsUser C ON B.KdGroup = C.KdGroup'
        +' WHERE A.Parent <> 0 AND A.FgActive=''Y'''
        +' AND C.UserId='+QuotedStr(dmMain.UserId)
        +' AND LEFT(CONVERT(VARCHAR(10), A.KdMenu),2)=:Module'
        +' ORDER BY A.KdMenu');

     Parameters.ParamByName('Module').Value := Item.Tag;
     Open;
  end;
  TLMenu.FullExpand;
  Expanded := True;
end;

procedure TfmUtama.FormShow(Sender: TObject);
Var MyIniFile,SetupOto : TIniFile;
    Client,Server : String;
begin
  MyIniFile  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Setting.ini');
  SetupOto  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'setupoto.ini');
  Client := Decrypt(MyIniFile.ReadString('Server','07',''));
  Server := Decrypt(MyIniFile.ReadString('Server','02',''));
  //menentukan kode cabang
  kdcab := MyIniFile.ReadString('Server','10','');
  jenisserver := MyIniFile.ReadString('Server','45','ON');

  if jenisserver='ON' then
  begin
    //dxbutton4.Enabled := False;
    dxbutton6.Enabled := False;
  end;
  if kdcab<>'HO' then
  begin
    dxbutton1.Enabled := False;
    dxbutton7.Enabled := False;
  end;

  //menentukan oto pr
  Oto := SetupOto.ReadString('Server','01','');
  //buat ambil otorisasi
  judul1 := SetupOto.ReadString('Server','10','');
  oto1 := SetupOto.ReadString('Server','11','');
  jab1 := SetupOto.ReadString('Server','12','');
  judul2 := SetupOto.ReadString('Server','20','');
  oto2 := SetupOto.ReadString('Server','21','');
  jab2 := SetupOto.ReadString('Server','22','');
  judul3 := SetupOto.ReadString('Server','30','');
  oto3 := SetupOto.ReadString('Server','31','');
  jab3 := SetupOto.ReadString('Server','32','');
  judul4 := SetupOto.ReadString('Server','40','');
  oto4 := SetupOto.ReadString('Server','41','');
  jab4 := SetupOto.ReadString('Server','42','');
  judul5 := SetupOto.ReadString('Server','50','');
  oto5 := SetupOto.ReadString('Server','51','');
  jab5 := SetupOto.ReadString('Server','52','');
  judul6 := SetupOto.ReadString('Server','60','');
  oto6 := SetupOto.ReadString('Server','61','');
  jab6 := SetupOto.ReadString('Server','62','');
  judul7 := SetupOto.ReadString('Server','70','');
  oto7 := SetupOto.ReadString('Server','71','');
  jab7 := SetupOto.ReadString('Server','72','');
  judul8 := SetupOto.ReadString('Server','80','');
  oto8 := SetupOto.ReadString('Server','81','');
  jab8 := SetupOto.ReadString('Server','82','');
  judul9 := SetupOto.ReadString('Server','90','');
  oto9 := SetupOto.ReadString('Server','91','');
  jab9 := SetupOto.ReadString('Server','92','');

  //menentukan oto po
  po1 := SetupOto.ReadString('PO','100','');
  jabpo1 := SetupOto.ReadString('PO','110','');
  po2 := SetupOto.ReadString('PO','200','');
  jabpo2 := SetupOto.ReadString('PO','210','');
  po3 := SetupOto.ReadString('PO','300','');
  jabpo3 := SetupOto.ReadString('PO','310','');
  po4 := SetupOto.ReadString('PO','400','');
  jabpo4 := SetupOto.ReadString('PO','410','');

  //menentukan laporan unit
  A1 := SetupOto.ReadString('unit','A1','');
  A2 := SetupOto.ReadString('unit','A2','');
  A3 := SetupOto.ReadString('unit','A3','');
  B1 := SetupOto.ReadString('unit','B1','');
  B2 := SetupOto.ReadString('unit','B2','');
  B3 := SetupOto.ReadString('unit','B3','');
  C1 := SetupOto.ReadString('unit','C1','');
  C2 := SetupOto.ReadString('unit','C2','');
  C3 := SetupOto.ReadString('unit','C3','');
  D1 := SetupOto.ReadString('unit','D1','');
  D2 := SetupOto.ReadString('unit','D2','');
  D3 := SetupOto.ReadString('unit','D3','');
  E1 := SetupOto.ReadString('unit','E1','');
  E2 := SetupOto.ReadString('unit','E2','');
  E3 := SetupOto.ReadString('unit','E3','');

 { if kdcab='HO' then
  begin
    dxbutton1.Left :=232;
    dxbutton3.Left :=343;
    dxbutton3.Caption := 'Import PR';
  end;   }

  quMenu.Active := TRUE;
  SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[0];
  SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  {
  with quAct,SQL do
  begin
    Close;Clear;
    Add('IF NOT EXISTS ( '
       +'     SELECT * FROM  INFORMATION_SCHEMA.columns '
       +'     WHERE COLUMN_NAME = ''FgOto'' '
       +'            AND table_name = ''AptrPurchaseOrderHD'' '
       +'   ) '
       +'   BEGIN '
       +'       ALTER TABLE AptrPurchaseOrderHD ADD FgOto varchar(10) '
       +'       ALTER TABLE AptrPurchaseOrderdt ADD FgOto varchar(10) '
       +'       update APTrPurchaseOrderHd set FgOto=''Y'' '
       +'       update APTrPurchaseOrderDt set Fgoto=''Y'' '
       +'   END ');
    ExecSQL;
  end;
  }
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT A.*,B.FgDelete,B.FgEdit,B.FgTambah,ISNULL(B.FGGaji,''T'') as FgGaji '
       +'FROM SysMsUser A INNER JOIN SysMsGroupTrustee B ON A.KdGroup=B.KdGroup '
       +'WHERE A.UserID='''+dmMain.UserId+''' ');
    Open;
  end;
  GroupUser := quAct.FieldByName('KdGroup').AsString;
  FgGaji := quAct.FieldByName('FgGaji').AsString;

    FgHpp    := quAct.FieldByName('FGHPP').AsString;
    FgACCPO  := quAct.FieldByName('FgACCPO').AsString;
    FgACCAR  := quAct.FieldByName('FgACCAR').AsString;
    FGACCFPP := quAct.FieldByName('FGACCFPP').AsString;
    FGACCGRN := quAct.FieldByName('FGACCGRN').AsString;
    FgPRBD   := quAct.FieldByName('FgPRBackDate').AsString;

  if (GroupUser<>'admin') and (GroupUser<>'ST-QC') then
  bbUtility.Enabled := false;
  
  dmNama := quAct.FieldByName('Nama').AsString;
  FgEdit := quAct.FieldByName('FgEdit').AsString;
  FgTambah := quAct.FieldByName('FgTambah').AsString;
  FgDelete := quAct.FieldByName('FgDelete').AsString;
  with StBar.Panels do
  begin
    Items[0].Text := 'User : '+ dmMain.UserId;
    Items[1].Text := 'Group User : '+ GroupUser;
    Items[2].Text := 'SERVER : '+ ServerPath; 
    Items[3].Text := 'Database : '+ dbName;
    Items[4].Text := 'Copyright Software by PT Satu Anugrah Solusindo';
    Items[5].Text := 'Office Code : '+KdCab;
    Items[6].Text := 'Version : '+version;
  end;
  Caption := 'Sale Account Organizer - PT Roda Jaya Sakti';
  if Client = 'CLIENT' then bbBackUp.Enabled := False;
{  if GroupUser <> 'admin' then
  begin
     Application.CreateForm(TfmAbsensi, fmAbsensi);
     fmAbsensi.ShowModal;
  end;}
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT COUNT(VoucherNo) as Total FROM AllItem');
    Open;
    if Not FileExists('c:/windows/sysreg.dll') then
    Begin
      if quAct.FieldByName('Total').AsInteger > 30 then
      begin
        pesan('MAAF KOMPUTER ANDA TIDAK TERDAFTAR DALAM DATABASE KAMI'+#13
             +' HUBUNGI VENDOR ANDA');
        Application.Terminate;
        exit;
      end;
      if quAct.FieldByName('Total').AsInteger > 25 then
         ShowMessage('Masa Pakai Program Anda sudah mau habis, Silahkan hubungi Vendor Anda');
    End;
  end;
end;

procedure TfmUtama.TLMenuGetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Selected then
  begin
     Index := 1;
  end
  else
  begin
     Index := 0;
  end;
end;

procedure TfmUtama.btnExpandClick(Sender: TObject);
begin
   if Expanded then
   begin
      TLMenu.FullCollapse;
      Expanded := False;
   end
   else
   begin
      TLMenu.FullExpand;
      Expanded := True;
   end;
end;

procedure TfmUtama.TLMenuCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
var Temp : String;
begin
  Temp := ANode.Values[TLMenuKdMenu.Index];
  if NOT AFocused then
  begin
     if (Temp[3] = '1') OR (Temp[3] = '3') then
        AFont.Color := clBlack
     else
        AFont.Color := clBlue;
  end else
  begin
     AColor      := clYellow;
     AFont.Color := clRed;
  end;
end;

procedure TfmUtama.sbExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmUtama.TLMenuDblClick(Sender: TObject);
var Module : String;
begin
   paMenu.Visible := FALSE;
   SBMenu.Visible := FALSE;
   Module := LeftStr(quMenuKdMenu.AsString,2);
   if Module = '10' then
      CallModule10
   else
   if Module = '11' then
      CallModule11
   else
   if Module = '12' then
      CallModule12
   else
   if Module = '13' then
      CallModule13
   else
   if Module = '14' then
      CallModule14
   else
   if Module = '15' then
      CallModule15
   else
   if Module = '16' then
      CallModule16
   else
   if Module = '17' then
      CallModule17
   else
   if Module = '18' then
      CallModule18
   else
   if Module = '19' then
      CallModule19
   else
   if Module = '20' then
      CallModule20
  ;
   paMenu.Visible := TRUE;
   SBMenu.Visible := TRUE;
end;

procedure TfmUtama.CallModule11;
begin
   // tidak ada
End;

procedure TfmUtama.CallModule13;
begin

   if CompareFormName(quMenuFormName.Value,'ARMSPelanggan') then
      MakeFormDlg(fmARMsPelanggan,TfmARMsPelanggan)
   else
   if CompareFormName(quMenuFormName.Value,'ARMsWilayah') then
      MakeFormDlg(fmARMsWilayah,TfmARMsWilayah)
   else
    {f CompareFormName(quMenuFormName.Value,'ARTrPenawaran') then
    begin
      with TfmARTrPenawaran.Create (Application) do
      try
        Flag := 'A';
        ShowModal;
      finally
        Free;
      end;
    end
    else  }
   if CompareFormName(quMenuFormName.Value,'ARMSSales') then
      MakeFormDlg(fmARMsSales,TfmARMsSales)
   else
   if CompareFormName(quMenuFormName.Value,'HRRptSales') then
      MakeFormDlg(fmARRptKaryawan,TfmARRptKaryawan)
   else
   if CompareFormName(quMenuFormName.Value,'HRUpload') then
      MakeFormDlg(fmMsAbsensi,TfmMsAbsensi)
   else
   if CompareFormName(quMenuFormName.Value,'HRRptSumAbsen') then
      MakeFormDlg(fmHRRptSumAbsen,TfmHRRptSumAbsen)
   else
   if CompareFormName(quMenuFormName.Value,'HRMutasi') then
      MakeFormDlg(fmHRPromotion,TfmHRPromotion)
   else
   if CompareFormName(quMenuFormName.Value,'HRRptMutasi') then
      MakeFormDlg(fmHRRptPromotion,TfmHRRptPromotion)
   else
   if CompareFormName(quMenuFormName.Value,'ARTrPenIDR') then
      MakeFormDlg(fmARTrPenjualanIDR,TfmARTrPenjualanIDR)
   else
 {  if CompareFormName(quMenuFormName.Value,'ARTrPenjCounter') then
      MakeFormDlg(fmARTrPenjCounter,TfmARTrPenjCounter)
   else   }
   if CompareFormName(quMenuFormName.Value,'ARSaldo') then
    Begin
     with TfmSaldoAwal.Create (Application) do
      try
        StLap := 'AR';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARTrPiutangKas') then
    begin
      with TfmCFTrKKBB.Create (Application) do
//      with TfmARTrPiutangIDR.Create (Application) do
      try
        StatusKKBB := 'ARK';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'ARTrPiutangBank') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'ARB';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'ARTrPiutangCek') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'ARC';
        ShowModal;
      finally
        Free;
      end;
    end
    else
 {  if CompareFormName(quMenuFormName.Value,'ARTrReturPenjualanR') then
   begin
     with TfmARTrReturPenjualan.Create (Application) do
      try
        StatusRetur := 'R';
        ShowModal;
      finally
       Free;
      end;
   end
   else  }
   if CompareFormName(quMenuFormName.Value,'ARTrReturPenjualanB') then
   begin
     with TfmARTrReturPenjualan.Create (Application) do
      try
        StatusRetur := 'B';
        ShowModal;
      finally
       Free;
      end;
   end else
   if CompareFormName(quMenuFormName.Value,'ARTrSalesOrder') then
       MakeFormDlg(fmARTRSales,TfmARTRSales)
   else
   if CompareFormName(quMenuFormName.Value,'ARTrKonTransBrg') then
       MakeFormDlg(fmARTrKonTransBrg,TfmARTrKonTransBrg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptSales') then
       MakeFormDlg(fmARRptSales,TfmARRptSales)
   else
   if CompareFormName(quMenuFormName.Value,'SAMsRekJual') then
       MakeFormDlg(fmSAMsRekJual,TfmSAMsRekJual)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptInvoice') then
       MakeFormDlg(fmARRptInvoice,TfmARRptInvoice)
   else
   if CompareFormName(quMenuFormName.Value,'ARMsJenisInvoice') then
       MakeFormDlg(fmARMsJenisInvoice,TfmARMsJenisInvoice)
   else
   if CompareFormName(quMenuFormName.Value,'AROtoSalesInv') then
       if FgACCAR='T' then
       begin
         ShowMessage('Tidak memiliki hak untuk otorisasi');
         Exit;
       end else
       begin
         MakeFormDlg(fmAROtoSalesInv,TfmAROtoSalesInv)
       end
   else
   if CompareFormName(quMenuFormName.Value,'ARTrSalesKontrak') then
     Begin
     with TfmARTrSalesKontrak.Create (Application) do
      try
       // StLap := 'R'; //Regular atau Rental
        StForm := 'RJS';
        ShowModal;
      finally
        Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARTrSalesKontrakTIM') then
     Begin
     with TfmARTrSalesKontrak.Create (Application) do
      try
       // StLap := 'R'; //Regular atau Rental
        StForm := 'TIM';
        ShowModal;
      finally
        Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARTrKonInvPelIDR') then
     Begin
     with TfmARTrKonInvPelIDR.Create (Application) do
      try
        StLap := 'R'; //Regular atau Rental
        StForm := 'RJS';
        ShowModal;
      finally
        Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARTrKonInvPelIDRTIM') then
     Begin
     with TfmARTrKonInvPelIDR.Create (Application) do
      try
        StLap := 'R'; //Regular atau Rental
        StForm := 'TIM';
        ShowModal;
      finally
        Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARTrKonInvPelIDRT') then
     Begin
     with TfmARTrKonInvPelIDR.Create (Application) do
      try
        StLap := 'T'; //Tambang
        ShowModal;
      finally
        Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARTrKonInvPelIDRH') then
     Begin
     with TfmARTrKonInvPelIDR.Create (Application) do
      try
        StLap := 'H'; //Hauling
        ShowModal;
      finally
        Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARTrKonInvPelIDRH') then
     Begin
     with TfmARTrKonInvPelIDR.Create (Application) do
      try
        StLap := 'A'; //Hauling
        ShowModal;
      finally
        Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARTrKonInvPelIDRH') then
     Begin
     with TfmARTrKonInvPelIDR.Create (Application) do
      try
        StLap := 'O'; //Hauling
        ShowModal;
      finally
        Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARTrKonInvPelIDRH') then
     Begin
     with TfmARTrKonInvPelIDR.Create (Application) do
      try
        StLap := 'S'; //Hauling
        ShowModal;
      finally
        Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARTrKonInvPelIDRM') then
     Begin
     with TfmARTrKonInvPelIDR.Create (Application) do
      try
        StLap := 'M'; //Hauling
        ShowModal;
      finally
        Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARTrKonPiutangIDR') then
       MakeFormDlg(fmARTrKonPiutangIDR,TfmARTrKonPiutangIDR)
   else
   if CompareFormName(quMenuFormName.Value,'ARTrKonRetur') then
       MakeFormDlg(fmARTrKonRetur,TfmARTrKonRetur)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerSalesDlg') then
       MakeFormDlg(fmARRptPenjPerSalesDlg,TfmARRptPenjPerSalesDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerCustDlg') then
    Begin
     with TfmARRptPenjPerCustDlg.Create (Application) do
      try
        StLap := 'Jual';
        ShowModal;
      finally
       Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerCustTunaiDlg') then
       MakeFormDlg(fmARRptPenjPerCustTunaiDlg,TfmARRptPenjPerCustTunaiDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerBrgDlg') then
    Begin
     with TfmARRptPenjPerBrgDlg.Create (Application) do
      try
        StLap := 'Jual';
        ShowModal;
      finally
       Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerGrpBrgDlg') then
       MakeFormDlg(fmARRptPenjPerProductDlg,TfmARRptPenjPerProductDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerTglDlg') then
    Begin
     with TfmARRptPenjPerTglDlg.Create (Application) do
      try
        Status := 'Jual';
        ShowModal;
      finally
       Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARRptKartuTunggakPiutangDlg') then
    Begin
     with TfmARRptKartuTunggakPiutangDlg.Create (Application) do
      try
        StLap := 'Jual';
        ShowModal;
      finally
       Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARRptKartuPiutangDlg') then
    Begin
     with TfmARRptKartuPiutangDlg.Create (Application) do
      try
        StLap := 'Jual';
        ShowModal;
      finally
       Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARRptRekapKartuPiutangDlg') then
    Begin
     with TfmARRptKartuPiutangDetilDlg.Create (Application) do
      try
        StLap := 'Jual';
        ShowModal;
      finally
       Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARRptReturDlg') then
       MakeFormDlg(fmARRptReturPjDlg,TfmARRptReturpjDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptRtrBlmGntDlg') then
       MakeFormDlg(fmARRptRtrBlmGntDlg,TfmARRptRtrBlmGntDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptKartuPiutangPRDlg') then
       MakeFormDlg(fmARRptKartuPiutangPRDlg,TfmARRptKartuPiutangPRDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptBukuBesarPiutangDlg') then
       MakeFormDlg(fmARRptBukuBesarPiutangDlg,TfmARRptBukuBesarPiutangDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptRekapKartuPiutangPRDlg') then
       MakeFormDlg(fmARRptKartuPiutangPRDetilDlg,TfmARRptKartuPiutangPRDetilDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptTransferBarangDlg') then
       MakeFormDlg(fmARRptTransferBarangDlg,TfmARRptTransferBarangDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptSisaTransferBarangDlg') then
       MakeFormDlg(fmARRptSisaTransferBarangDlg,TfmARRptSisaTransferBarangDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptRekapKartuPiutangKonsinyasiDlg') then
       MakeFormDlg(fmARRptKartuPiutangDetilKonsinyasiDlg,TfmARRptKartuPiutangDetilKonsinyasiDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptKartuTunggakPiutangKonsDlg') then
       MakeFormDlg(fmARRptKartuTunggakPiutangKonsDlg,TfmARRptKartuTunggakPiutangKonsDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerProductDlg') then
       MakeFormDlg(fmARRptPenjPerProductDlg,TfmARRptPenjPerProductDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARFPS') then
       MakeFormDlg(fmARFPS,TfmARFPS)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptHM') then
     Begin
     with TfmARRptHM.Create (Application) do
      try
        StLap := 'H'; //HM
        ShowModal;
      finally
        Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARRptHMUnit') then
     Begin
     with TfmARRptHM.Create (Application) do
      try
        StLap := 'U'; //Unit
        ShowModal;
      finally
        Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARRptSummaryKeuanganDlg') then
       MakeFormDlg(fmRptSummaryKeuangan,TfmRptSummaryKeuangan);
end;

procedure TfmUtama.CallModule12;
begin
    if CompareFormName(quMenuFormName.Value,'APMSSupplier') then
       MakeFormDlg(fmAPMsSupplier,TfmAPMsSupplier)
    else
    if CompareFormName(quMenuFormName.Value,'POBlmTerima2') then
       MakeFormDlg(fmAPRptPOBlmTerima,TfmAPRptPOBlmTerima)
    else
    if CompareFormName(quMenuFormName.Value,'POBlmTerima') then
       MakeFormDlg(fmAPRptPendingBrg,TfmAPRptPendingBrg)
    else
    //if CompareFormName(quMenuFormName.Value,'APLapMR') then
      // MakeFormDlg(fmAPRptLapMR,TfmAPRptLapMR)
    //else
    if CompareFormName(quMenuFormName.Value,'APLapMR') then
    begin
      with TfmAPRptLapMR.Create (Application) do
      try
        FgDivisi := 'HO';
        ShowModal;
      finally
        Free;
      end;
    end else
    //if CompareFormName(quMenuFormName.Value,'APBuatMR') then
    //   MakeFormDlg(fmAPRptLapPRBlmRealisasi,TfmAPRptLapPRBlmRealisasi)
    //else
    if CompareFormName(quMenuFormName.Value,'APBuatMRHO') then
    Begin
    with TfmAPRptLapPRBlmRealisasi.Create (Application) do
     try
       FgDivisi := 'HO';
       ShowModal;
     finally
      Free;
     end;
   End else
    if CompareFormName(quMenuFormName.Value,'KonfirmPR') then
       MakeFormDlg(fmAPTrKonfirmasiPR,TfmAPTrKonfirmasiPR)
    else
    if CompareFormName(quMenuFormName.Value,'APBuatMRA') then
       MakeFormDlg(fmARRptBuatMR,TfmARRptBuatMR)
    else
    if CompareFormName(quMenuFormName.Value,'APTrMaterialRequest') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'MR';
        FgDivisi := 'HO';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'APTrPurchaseRequestHO') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'PR';
        FgDivisi := 'HO';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'APTrPurchaseRequestLog') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'PR';
        FgDivisi := 'LOG';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'Realisasi') then
    Begin
    with TfmINTransfer.Create (Application) do
     try
       StLap := 'RL';   //transfer
       FgDivisi := 'HO';
       ShowModal;
     finally
      Free;
     end;
   End else
    if CompareFormName(quMenuFormName.Value,'APTrPurchase') then
    begin
      with TfmAPTrPurchaseOrder.Create (Application) do
      try
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'APPurchaseOrder') then
       MakeFormDlg(fmAPPurchaseOrder,TfmAPPurchaseOrder)
    else
    if CompareFormName(quMenuFormName.Value,'CFRptPOBlmInv') then
      MakeFormDlg(fmCFRptPOBlmInv,TfmCFRptPOBlmInv)
   else
   if CompareFormName(quMenuFormName.Value,'BayarPO') then
      MakeFormDlg(fmAPRptBayarPO,TfmAPRptBayarPO)
   else
    if CompareFormName(quMenuFormName.Value,'APTrOtorisasi') then
       if FgACCPO='T' then
       begin
         ShowMessage('Tidak memiliki hak untuk otorisasi');
         Exit;
       end else
       begin
         MakeFormDlg(fmAPTrOtorisasi,TfmAPTrOtorisasi);
       end
    else
    if CompareFormName(quMenuFormName.Value,'APPrOtorisasi') then
       MakeFormDlg(fmAPPrOtorisasi,TfmAPPrOtorisasi)
    else
    if CompareFormName(quMenuFormName.Value,'PRBlmPO') then
       MakeFormDlg(fmAPRptLaporanPO,TfmAPRptLaporanPO)
    else
    if CompareFormName(quMenuFormName.Value,'APPenggantiRetur') then
       MakeFormDlg(fmAPPenggantiRetur,TfmAPPenggantiRetur)
    else
    if CompareFormName(quMenuFormName.Value,'APPayPenggantiRetur') then
       MakeFormDlg(fmAPPayReturnRep,TfmAPPayReturnRep)
    else
    if CompareFormName(quMenuFormName.Value,'APKonsinyasi') then
       MakeFormDlg(fmAPKonsinyasi,TfmAPKonsinyasi)
    else
    if CompareFormName(quMenuFormName.Value,'APOtoKonsinyasi') then
       MakeFormDlg(fmAPOtoKonsinyasi,TfmAPOtoKonsinyasi)
    else
    if CompareFormName(quMenuFormName.Value,'APKonsinyasiInvIDR') then
       MakeFormDlg(fmAPKonsinyasiInvIDR,TfmAPKonsinyasiInvIDR)
    else
    if CompareFormName(quMenuFormName.Value,'APKonsinyasiInvIDR') then
    Begin
     with TfmAPKonsinyasiInvIDR.Create (Application) do
      try
        StForm := 'RJS';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APKonsinyasiInvIDRTIM') then
    Begin
     with TfmAPKonsinyasiInvIDR.Create (Application) do
      try
        StForm := 'TIM';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APPembayaranKonsIDR') then
       MakeFormDlg(fmAPPembayaranKonsIDR,TfmAPPembayaranKonsIDR)
    else
    if CompareFormName(quMenuFormName.Value,'APReturnKon') then
       MakeFormDlg(fmAPReturKon,TfmAPReturKon)
    else
    if CompareFormName(quMenuFormName.Value,'APRptPembPerSuppDlg') then
    Begin
     with TfmARRptPenjPerCustDlg.Create (Application) do
      try
        StLap := 'Beli';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptPembPerBrgDlg') then
    Begin
     with TfmARRptPenjPerBrgDlg.Create (Application) do
      try
        StLap := 'Beli';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptPembPerTglDlg') then
    Begin
     with TfmAPRptPembPerTglDlg.Create (Application) do
      try
        //Status := 'Beli';
        ShowModal;
      finally
       Free;
      end;
    End
    else
    if CompareFormName(quMenuFormName.Value,'APRptKartuHutangDlg') then
    Begin
     with TfmARRptKartuPiutangDlg.Create (Application) do
      try
        StLap := 'Beli';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptRekapKartuHutangDlg') then
    Begin
     with TfmARRptKartuPiutangDetilDlg.Create (Application) do
      try
        StLap := 'Beli';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptKartuTunggakanHutangDlg') then
    Begin
     with TfmARRptKartuTunggakPiutangDlg.Create (Application) do
      try
        StLap := 'Beli';
        ShowModal;
      finally
       Free;
      end;
    End else
//       MakeFormDlg(fmAPRptKartuTunggakHutangDlg,TfmAPRptKartuTunggakHutangDlg)
//    else
    if CompareFormName(quMenuFormName.Value,'APRptReturDlg') then
       MakeFormDlg(fmAPRptReturPbDlg,TfmAPRptReturPbDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APSaldo') then
    Begin
     with TfmSaldoAwal.Create (Application) do
      try
        StLap := 'AP';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptRtrBlmGntDlg') then
       MakeFormDlg(fmAPRptRtrBlmGntDlg,TfmAPRptRtrBlmGntDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptKartuHutangPRDlg') then
       MakeFormDlg(fmAPRptKartuHutangPRDlg,TfmAPRptKartuHutangPRDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptRekapKartuHutangPRDlg') then
       MakeFormDlg(fmAPRptKartuHutangDetilPRDlg,TfmAPRptKartuHutangDetilPRDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptTerimaBarangDlg') then
    Begin
     with TfmAPRptPenerimaan.Create (Application) do
      try
        StatusLap := 'PN';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptTerimaBarangDlgA') then
    Begin
     with TfmAPRptPenerimaan.Create (Application) do
      try
        StatusLap := 'RL';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptSisaTerimaBarangDlg') then
       MakeFormDlg(fmAPRptSisaTerimaBarangDlg,TfmAPRptSisaTerimaBarangDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptKartuHutangKonsinyasiDlg') then
       MakeFormDlg(fmAPRptKartuHutangKonsinyasiDlg,TfmAPRptKartuHutangKonsinyasiDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptRekapKartuHutangKonsinyasiDlg') then
       MakeFormDlg(fmAPRptKartuHutangDetilKonsinyasiDlg,TfmAPRptKartuHutangDetilKonsinyasiDlg);
end;

procedure TfmUtama.CallModule17;
begin
    if CompareFormName(quMenuFormName.Value,'OPMR') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'MR';
        FgDivisi := 'OP';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'OPKonMR') then
    begin
      with TfmConfirmMR.Create (Application) do
      try
        FgDivisi := 'OP';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'OPMsHasil') then
    begin
      with TfmMsMaster.Create (Application) do
      try
        FgMaster := 'H';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'OPMsArea') then
    begin
      with TfmMsMaster.Create (Application) do
      try
        FgMaster := 'E';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'OPMsDelPoint') then
    begin
      with TfmMsMaster.Create (Application) do
      try
        FgMaster := 'P';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'OpProduksi') then
       MakeFormDlg(fmOPTrProduksi,TfmOPTrProduksi)
    else
    if CompareFormName(quMenuFormName.Value,'OpRptProduksi') then
       MakeFormDlg(fmOPRptProduksi,TfmOPRptProduksi)
    else
    if CompareFormName(quMenuFormName.Value,'OpRptProduksiDet') then
       MakeFormDlg(fmOPRptProduksiDet,TfmOPRptProduksiDet)
    else
    if CompareFormName(quMenuFormName.Value,'OpRptProduksiHaulSum') then
       MakeFormDlg(fmOpRptProduksiHaulSum,TfmOpRptProduksiHaulSum)
    else
    if CompareFormName(quMenuFormName.Value,'OpRptProduksiHaulDet') then
       MakeFormDlg(fmOpRptProduksiHaulDet,TfmOpRptProduksiHaulDet)
    else                                                                    
    if CompareFormName(quMenuFormName.Value,'OPWorkUnit') then
       MakeFormDlg(fmOPWorkUnit,TfmOPWorkUnit)
    else
    if CompareFormName(quMenuFormName.Value,'OPRptWorkUnit') then
       MakeFormDlg(fmOPRptWorkUnit,TfmOPRptWorkUnit)
    else
    if CompareFormName(quMenuFormName.Value,'OPRptKonfirm') then
    begin
      with TfmAPRptConfirmMR.Create (Application) do
      try
        FgDivisi := 'OP';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'INpakai') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PN';   //penerimaan
       FgDivisi := 'OP';
       ShowModal;
     finally
      Free;
     end;
   End else
    if CompareFormName(quMenuFormName.Value,'OPRptMR') then
    begin
      with TfmAPRptLapMR.Create (Application) do
      try
        FgDivisi := 'MT';
        ShowModal;
      finally
        Free;
      end;
    end;
end;

procedure TfmUtama.CallModule20;
Begin
    if CompareFormName(quMenuFormName.Value,'OPRptBOD') then
       MakeFormDlg(fmOPRptBOD,TfmOPRptBOD);
end;

procedure TfmUtama.CallModule10;
begin
    if CompareFormName(quMenuFormName.Value,'SAMsSet') then
       MakeFormDlg(fmSettingGudang,TfmSettingGudang)
    else
    if CompareFormName(quMenuFormName.Value,'SAMsValuta') then
       MakeFormDlg(fmSAMsValuta,TfmSAMsValuta)
    else
    if CompareFormName(quMenuFormName.Value,'SAMsCompany') then
       MakeFormDlg(fmSAMsCompany,TfmSAMsCompany)
    else
    if CompareFormName(quMenuFormName.Value,'SAMsPT') then
       MakeFormDlg(fmSAMsPT,TfmSAMsPT)
    else
    if CompareFormName(quMenuFormName.Value,'SetSecurityAccess') then
       MakeFormDlg(fmSetSecurityAccess,TfmSetSecurityAccess)
    else
    if CompareFormName(quMenuFormName.Value,'SetPass') then
      with TfmPassChange.Create(Self) do
      try
        CallerFromAnotherForm := TRUE;
        FUserId := dmMain.UserId;
        ShowModal;
      finally
        free;
      end
    Else
    if CompareFormName(quMenuFormName.Value,'SetPeriode') then
    Begin
      with TfmPeriodDlg.Create(Self) do
      try
         PrdStart := dmMain.FSysPrd1;
         PrdUntil := dmMain.FSysPrd2;
         if ShowModal = MrOK then
         begin
             dmMain.FSysPrd1 := PrdStart;
             dmMain.FSysPrd2 := PrdUntil;
         end;
      finally
       free;
      end;
    End;
end;

procedure TfmUtama.miExitClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfmUtama.miLogoutClick(Sender: TObject);
begin
    Self.Close;
end;

procedure TfmUtama.CallModule14;
begin
    if CompareFormName(quMenuFormName.Value,'SFMR') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'MR';
        FgDivisi := 'SF';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'SFRptStokGudang') then
       MakeFormDlg(fmINRptStokGudang,TfmINRptStokGudang)
    else
    if CompareFormName(quMenuFormName.Value,'SFRptStokAkhir') then
       MakeFormDlg(fmINRptStokDlg,TfmINRptStokDlg)
    else
    if CompareFormName(quMenuFormName.Value,'SFTerima') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PN';   //penerimaan
       FgDivisi := 'SF';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'SFPakaiUnit') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'SU';  //safety ke unit
       FgDivisi := 'SF';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'SFPakaiOrg') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PI';  //safety ke orang
       FgDivisi := 'SF';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'SFPakaiDep') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'SD';  //safety ke departemen
       FgDivisi := 'SF';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'SFClearance') then
    Begin
    with TfmSFTrClearance.Create (Application) do
     try
       FgDivisi := 'SF';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'SFRptPakai') then
    Begin
    with TfmSFRptPakai.Create (Application) do
     try
       FgDivisi := 'SF';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'SFRptClearance') then
    Begin
    with TfmSFRptClearance.Create (Application) do
     try
       FgDivisi := 'SF';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'SFRptBarang') then
    Begin
    with TfmSFRptSafetyItem.Create (Application) do
     try
       FgDivisi := 'SF';
       ShowModal;
     finally
      Free;
     end;
   End else
    if CompareFormName(quMenuFormName.Value,'SFLapMR') then
    begin
      with TfmAPRptLapMR.Create (Application) do
      try
        FgDivisi := 'SF';
        ShowModal;
      finally
        Free;
      end;
    end;
end;

procedure TfmUtama.CallModule15;
begin
    if CompareFormName(quMenuFormName.Value,'APOtoKonsinyasi') then
    begin
      if FGACCGRN='T' then
       begin
         ShowMessage('Tidak memiliki hak untuk otorisasi');
         Exit;
       end else
       begin
      with TfmAPOtoKonsinyasi.Create (Application) do
      try
        ShowModal;
      finally
        Free;
        end
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'INMsUOM') then
    Begin
    with TfmINMsUOM.Create (Application) do
     try
       StForm := 'S';
       ShowModal;
     finally
      Free;
     end;
    End else
    if CompareFormName(quMenuFormName.Value,'Realisasi') then
    Begin
    with TfmINTransfer.Create (Application) do
     try
       StLap := 'RL';   //transfer
       FgDivisi := 'HO';
       ShowModal;
     finally
      Free;
     end;
    End else
    if CompareFormName(quMenuFormName.Value,'INKonfirmasi') then
    begin
      with TfmConfirmMR.Create (Application) do
      try
        FgDivisi := 'LOG';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'APTrPurchaseRequestLog') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'PR';
        FgDivisi := 'LOG';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'APTrPurchaseRequestHO') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'PR';
        FgDivisi := 'HO';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'APRptTerimaBarangDlg') then
    Begin
     with TfmAPRptPenerimaan.Create (Application) do
      try
        StatusLap := 'PN';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptTerimaBarangDlgA') then
    Begin
     with TfmAPRptPenerimaan.Create (Application) do
      try
        StatusLap := 'RL';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'INRptKonfirmasi') then
    begin
      with TfmAPRptConfirmMR.Create (Application) do
      try
        FgDivisi := 'LOG';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'INRptSolar') then
       MakeFormDlg(fmRptSolar,TfmRptSolar)
    else
    if CompareFormName(quMenuFormName.Value,'INRptPakaiUnit') then
       MakeFormDlg(fmINRptPakaiUnit,TfmINRptPakaiUnit)
    else
    if CompareFormName(quMenuFormName.Value,'RptBerita') then
       MakeFormDlg(fmARRptSales,TfmARRptSales)
    else
    if CompareFormName(quMenuFormName.Value,'APKonsinyasi') then
       MakeFormDlg(fmAPKonsinyasi,TfmAPKonsinyasi)
    else
    if CompareFormName(quMenuFormName.Value,'APOtoKonsinyasi') then
      { if FGACCGRN='T' then
       begin
         ShowMessage('Tidak memiliki hak untuk otorisasi');
         Exit;
       end else
       begin    }
       MakeFormDlg(fmAPOtoKonsinyasi,TfmAPOtoKonsinyasi)
      // end
    else
    if CompareFormName(quMenuFormName.Value,'APPrOtorisasi') then
       MakeFormDlg(fmAPPrOtorisasi,TfmAPPrOtorisasi)
    else
    if CompareFormName(quMenuFormName.Value,'PRBlmPO') then
       MakeFormDlg(fmAPRptLaporanPO,TfmAPRptLaporanPO)
    else
    if CompareFormName(quMenuFormName.Value,'INMSProduct') then
    Begin
    with TfmINMsProduct.Create (Application) do
     try
       StLap := 'PR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'APBuatMRHO') then
    Begin
    with TfmAPRptLapPRBlmRealisasi.Create (Application) do
     try
       FgDivisi := 'HO';
       ShowModal;
     finally
      Free;
     end;
    { if CompareFormName(quMenuFormName.Value,'APBuatMRHO') then
    Begin
    with TfmAPRptLapPRBlmRealisasi.Create (Application) do
     try
       FgDivisi := 'HO';
       ShowModal;
     finally
      Free;
     end;   }
   End else
   if CompareFormName(quMenuFormName.Value,'APBuatMR') then
    Begin
    with TfmAPRptLapPRBlmRealisasi.Create (Application) do
     try
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
  // if CompareFormName(quMenuFormName.Value,'APBuatMR') then
  //    MakeFormDlg(fmAPRptLapPRBlmRealisasi,TfmAPRptLapPRBlmRealisasi)
  //  else
   if CompareFormName(quMenuFormName.Value,'INMSDivisi') then
    Begin
    with TfmINMsProduct.Create (Application) do
     try
       StLap := 'DV';
       ShowModal;
     finally
      Free;
     end;
   End else
    if CompareFormName(quMenuFormName.Value,'INMSGroup') then
    Begin
    with TfmINMsGroup.Create (Application) do
     try
       StLap := 'GR';
       ShowModal;
     finally
      Free;
     end;
   End else
  { if CompareFormName(quMenuFormName.Value,'INMsSites') then
    Begin
    with TfmINMsGroup.Create (Application) do
     try
       StLap := 'ST';
       ShowModal;
     finally
      Free;
     end;
   End else }
   if CompareFormName(quMenuFormName.Value,'INMsSites') then
       MakeFormDlg(fmINMsSites,TfmINMsSites)
   else
   if CompareFormName(quMenuFormName.Value,'APLapMR') then
    begin
      with TfmAPRptLapMR.Create (Application) do
      try
        FgDivisi := 'LOG';
        ShowModal;
      finally
        Free;
      end;
    end else
   if CompareFormName(quMenuFormName.Value,'ARTrSalesOrder') then
       MakeFormDlg(fmARTRSales,TfmARTRSales)
   else
   if CompareFormName(quMenuFormName.Value,'INMutasiBan') then
   Begin
    with TfmINMutasiBan.Create (Application) do
     try
       StLap := 'B';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INMutasiOli') then
   Begin
    with TfmINMutasiBan.Create (Application) do
     try
       StLap := 'O';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INMsTypeUnit') then
    Begin
    with TfmINMsGroup.Create (Application) do
     try
       StLap := 'TU';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INMsTypeClassUnit') then
    Begin
    with TfmINMsGroup.Create (Application) do
     try
       StLap := 'TCU';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INMsNoUnit') then
   MakeFormDlg(fmINMsNoUnit,TfmINMsNoUnit)
   else
    if CompareFormName(quMenuFormName.Value,'INMsItem') then
       MakeFormDlg(fmINMsItem,TfmINMsItem)
    else
    if CompareFormName(quMenuFormName.Value,'INMsLayout') then
       MakeFormDlg(fmINMsLayout,TfmINMsLayout)
    else
    if CompareFormName(quMenuFormName.Value,'QCOtoMR') then
       MakeFormDlg(fmQROtorisasi,TfmQROtorisasi)
    else
    if CompareFormName(quMenuFormName.Value,'MsJenisBarang') then
    begin
      with TfmMsMaster.Create (Application) do
      try
        FgMaster := 'J';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'MsGroupUnit') then
    begin
      with TfmMsMaster.Create (Application) do
      try
        FgMaster := 'U';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'INMsService') then
       MakeFormDlg(fmINMsService,TfmINMsService)
    else
    if CompareFormName(quMenuFormName.Value,'INRptStokGudang') then
       MakeFormDlg(fmINRptStokGudang,TfmINRptStokGudang)
    else
    if CompareFormName(quMenuFormName.Value,'StockAkhir') then
       MakeFormDlg(fmINRptStockAkhir,TfmINRptStockAkhir)
    else
    if CompareFormName(quMenuFormName.Value,'INMsWarehouse') then
       MakeFormDlg(fmINMsWarehouse,TfmINMsWarehouse)
    else
    if CompareFormName(quMenuFormName.Value,'AROtorisasi') then
       MakeFormDlg(fmAROtorisasi,TfmAROtorisasi)
    else
    if CompareFormName(quMenuFormName.Value,'APTrRental') then
       MakeFormDlg(fmAPTrRental,TfmAPTrRental)
    else
    if CompareFormName(quMenuFormName.Value,'INTrAdjustment') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'TR';  //stokopname
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'APTrMaterialRequest') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'MR';
        FgDivisi := 'LOG';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'APTrPurchaseRequest') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'PR';
        FgDivisi := 'LOG';
        ShowModal;
      finally
        Free;
      end;
    end else
   if CompareFormName(quMenuFormName.Value,'INTrOli') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PO';  //stokopname
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
  {if CompareFormName(quMenuFormName.Value,'INTrProduksi') then
    Begin
    with TfmINTrProduksi.Create (Application) do
     try
       StLap := 'PR';   //produksi
       ShowModal;
     finally
      Free;
     end;
   End else  }
   if CompareFormName(quMenuFormName.Value,'INpakai') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PN';   //penerimaan
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INpakaiA') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PG';   //pemakaian
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INSolar') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'TS';   //terima solar
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INSolarT') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PS';   //pakai solar
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INBan') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'TB';   //terima ban
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
    //if CompareFormName(quMenuFormName.Value,'INTransfer') then
    //   MakeFormDlg(fmINTransfer,TfmINTransfer)
    //else
    if CompareFormName(quMenuFormName.Value,'INTransfer') then
    Begin
    with TfmINTransfer.Create (Application) do
     try
       StLap := 'SP';   //transfer
       FgDivisi := 'LOG';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INTransferA') then
    Begin
    with TfmINTransfer.Create (Application) do
     try
       StLap := 'IN';   //terima
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INRptMutasiGudang') then
    Begin
      with TfmAPRptPenerimaan.Create (Application) do
      try
        StatusLap := 'SP';
        Divisi := 'LOG';
        ShowModal;
      finally
       Free;
      end;
   End else
    if CompareFormName(quMenuFormName.Value,'INRptHppDlg') then
       MakeFormDlg(fmINRptHppDlg,TfmINRptHppDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptLBRGDlg') then
       MakeFormDlg(fmINRptLBRGDlg,TfmINRptLBRGDlg)
    else
    //if CompareFormName(quMenuFormName.Value,'INQRRptStokMin') then
    //   MakeFormDlg(fmINRptStokMin,TfmINRptStokMin)
    //else
    if CompareFormName(quMenuFormName.Value,'INQRRptStokMin') then
       MakeFormDlg(fmINRptStockMinimum,TfmINRptStockMinimum)
    else
    if CompareFormName(quMenuFormName.Value,'INRptStokDlg') then
       MakeFormDlg(fmINRptStokDlg,TfmINRptStokDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptAdjusmentDlg') then
       MakeFormDlg(fmINRptAdjustmentDlg,TfmINRptAdjustmentDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptTransferDlg') then
       MakeFormDlg(fmINRptTransferbarangDlg,TfmINRptTransferbarangDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptPriceListDlg') then
       MakeFormDlg(fmINRptPriceListDlg,TfmINRptPriceListDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptMsItemDlg') then
       MakeFormDlg(fmINRptMsItemDlg,TfmINRptMsItemDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptMsItem2') then
       MakeFormDlg(fmINRptMsItem2,TfmINRptMsItem2)
    else
    if CompareFormName(quMenuFormName.Value,'INRptMsCompartment') then
       MakeFormDlg(fmINRptMsCompartment,TfmINRptMsCompartment)
    else
    if CompareFormName(quMenuFormName.Value,'INRptStockHistory') then
       MakeFormDlg(fmINRptStockHistory,TfmINRptStockHistory)
    else
    if CompareFormName(quMenuFormName.Value,'INRptHistoryStokDlg') then
       MakeFormDlg(fmINRptHistoryBarangDlg,TfmINRptHistoryBarangDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptBan') then
       MakeFormDlg(fmRptBan,TfmRptBan)
    else
    if CompareFormName(quMenuFormName.Value,'INRptUnit') then
       MakeFormDlg(fmRptUnit,TfmRptUnit)
    else
    if CompareFormName(quMenuFormName.Value,'INRptUnitNew') then
       MakeFormDlg(fmRptUnitNew,TfmRptUnitNew)
    else
    if CompareFormName(quMenuFormName.Value,'INRptUmurBarangDlg') then
       MakeFormDlg(fmINRptStockHistory,TfmINRptStockHistory);
end;

procedure TfmUtama.CallModule16;
begin
   if CompareFormName(quMenuFormName.Value,'SAMsSet') then
       MakeFormDlg(fmSettingGudang,TfmSettingGudang)
   else
   if CompareFormName(quMenuFormName.Value,'CFMsGroupRek') then
      MakeFormDlg(fmCFMsGroupRek,TfmCFMsGroupRek)
   else
   if CompareFormName(quMenuFormName.Value,'CFMsRekening') then
      MakeFormDlg(fmCFMsRekening,TfmCFMsRekening)
   else
   if CompareFormName(quMenuFormName.Value,'CFOTOFPP') then
      if FGACCFPP='T' then
       begin
         ShowMessage('Tidak memiliki hak untuk otorisasi');
         Exit;
       end else
       begin
         MakeFormDlg(fmCFOTOFPP,TfmCFOTOFPP)
       end
   else
   if CompareFormName(quMenuFormName.Value,'CFMsBank') then
   Begin
    with TFmCFMsBank.Create (Application) do
     try
       StForm := 'B';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFMsKas') then
   Begin
    with TFmCFMsBank.Create (Application) do
     try
       StForm := 'K';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrTransferBalance') then
      MakeFormDlg(fmCFTrTransferBalance,TfmCFTrTransferBalance)
   else
   if CompareFormName(quMenuFormName.Value,'CFTrPiutangInternal') then
      MakeFormDlg(fmCFTrPiutangInternal,TfmCFTrPiutangInternal)
   else
   if CompareFormName(quMenuFormName.Value,'CFTrGeneral') then
      MakeFormDlg(fmCFTrJurnal,TfmCFTrJurnal)
   else
    if CompareFormName(quMenuFormName.Value,'APTrKonsinyasiInv') then
    Begin
     with TfmAPKonsinyasiInvIDR.Create (Application) do
      try
        StForm := 'RJS';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APTrKonsinyasiInvTIM') then
    Begin
     with TfmAPKonsinyasiInvIDR.Create (Application) do
      try
        StForm := 'TIM';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APTrPurchase') then
    Begin
     with TfmAPPurchaseOrder.Create (Application) do
      try
        StForm := 'RJS';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APTrPurchaseTIM') then
    Begin
     with TfmAPPurchaseOrder.Create (Application) do
      try
        StForm := 'TIM';
        ShowModal;
      finally
       Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'CFRptRekapPiutangInternalDlg') then
      MakeFormDlg(fmCFRptRekapPiutangInternalDlg,TfmCFRptRekapPiutangInternalDlg)
   else
   if CompareFormName(quMenuFormName.Value,'Payroll') then
      MakeFormDlg(fmPayroll,TfmPayroll)
   else
   if CompareFormName(quMenuFormName.Value,'UangMakan') then
      MakeFormDlg(fmCFTrUangMakan,TfmCFTrUangMakan)
   else
   if CompareFormName(quMenuFormName.Value,'RptHutang') then
      MakeFormDlg(fmRptHUtang,TfmRptHUtang)
   else
   if CompareFormName(quMenuFormName.Value,'RptFPS') then
      MakeFormDlg(fmCFRptFPS,TfmCFRptFPS)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptPOBlmInv') then
      MakeFormDlg(fmCFRptPOBlmInv,TfmCFRptPOBlmInv)
   else
   if CompareFormName(quMenuFormName.Value,'APBayarKas') then
    begin
//      with TfmAPPembayaranHutangIDR.Create (Application) do
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'APK';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'APBayarBank') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'APB';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'APBayarCek') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'APC';
        ShowModal;
      finally
        Free;
      end;
    end else
   if CompareFormName(quMenuFormName.Value,'CFTrKM') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'KM';
       FgBesar := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrKK') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'KK';
       FgBesar := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrMMM') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'KM';
       FgBesar := 'Y';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrKKK') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'KK';
       FgBesar := 'Y';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrBM') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'BM';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrBK') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'BK';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrJU') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'JU';
       FgPayment := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrTB') then
      MakeFormDlg(fmCFTrTB,TfmCFTrTB)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptAdjustmentKurs') then
      MakeFormDlg(fmCFRptAdjustmentKurs,TfmCFRptAdjustmentKurs)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptDetailKas') then
      MakeFormDlg(fmCFRptDetailKas,TfmCFRptDetailKas)
   else
   if CompareFormName(quMenuFormName.Value,'CFTrSA') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'SA';
       FgPayment := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrPIK') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'PIK';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrPIB') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'PIB';
       ShowModal;
     finally
      Free;
     end;
   end
   else
   if CompareFormName(quMenuFormName.Value,'CFRptKeuanganDlg') then
      MakeFormDlg(fmCFRptKeuanganDlg,TfmCFRptKeuanganDlg)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptJurnal') then
      MakeFormDlg(fmCFRptJurnal,TfmCFRptJurnal)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptKeuanganDetDlg') then
      MakeFormDlg(fmCFRptKeuanganDetDlg,TfmCFRptKeuanganDetDlg)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptTrialBalanceDlg') then
      MakeFormDlg(fmCFRptKeuanganDetDlg,TfmCFRptKeuanganDetDlg)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptKeuanganBankDlg') then
      MakeFormDlg(fmCFRptKeuanganBankDlg,TfmCFRptKeuanganBankDlg)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptNeracaBalanceDlg') then
   Begin
    with TfmINRptHppDlg.Create (Application) do
     try
       Status := 'Neraca';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFRptRugiLabaDlg') then
   Begin
    with TfmAPRptPembPerTglDlg.Create (Application) do
     try
       Status := 'RugiLaba';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFRptKeuanganDetBankDlg') then
   Begin
    with TfmCFRptKeuanganDetBankDlg.Create (Application) do
     try
       Status := 'BukuBesar';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFRptBiayaDlg') then
      MakeFormDlg(fmCFRptBiayaDlg,TfmCFRptBiayaDlg);
End;

procedure TfmUtama.CallModule18;
begin
   if CompareFormName(quMenuFormName.Value,'ARMSSales') then
      MakeFormDlg(fmARMsSales,TfmARMsSales)
   else
   if CompareFormName(quMenuFormName.Value,'INRptInventaris') then
      MakeFormDlg(fmINRptInventaris,TfmINRptInventaris)
   else
   if CompareFormName(quMenuFormName.Value,'HRRptSales') then
      MakeFormDlg(fmARRptKaryawan,TfmARRptKaryawan)
   else
   if CompareFormName(quMenuFormName.Value,'HRUpload') then
      MakeFormDlg(fmMsAbsensi,TfmMsAbsensi)
   else
   if CompareFormName(quMenuFormName.Value,'HRMutasi') then
      MakeFormDlg(fmHRPromotion,TfmHRPromotion)
   else
   {if CompareFormName(quMenuFormName.Value,'MsSalary') then
      MakeFormDlg(fmHRMsSalary,TfmHRMsSalary)
   else }
   if CompareFormName(quMenuFormName.Value,'HRRptSumAbsen') then
      MakeFormDlg(fmHRRptSumAbsen,TfmHRRptSumAbsen)
   else
   if CompareFormName(quMenuFormName.Value,'HRRptClearance') then
    Begin
    with TfmSFRptClearance.Create (Application) do
     try
       FgDivisi := 'HR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'MsSalary') then
   Begin
    if FgGaji='T' then
    begin
      if UpperCase(dmMain.UserId)='SUPER' then
      begin
        ShowMessage('ID Super Tidak Memiliki Akses');
        Exit;
      end else
      begin
        ShowMessage('Anda Tidak Memiliki Akses Database Gaji Karyawan Aktif');
        Exit;
      end;
    end else
    begin
      with TfmHRMsSalary.Create (Application) do
       try
         ShowModal;
       finally
         Free;
       end;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'HRRptMutasi') then
      MakeFormDlg(fmHRRptPromotion,TfmHRRptPromotion)
   else
   if CompareFormName(quMenuFormName.Value,'HRClearance') then
    Begin
    with TfmSFTrClearance.Create (Application) do
     try
       FgDivisi := 'HR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'HRTerima') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PN';   //penerimaan
       FgDivisi := 'HR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'HRPakaiUnit') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'SU';  //safety ke unit
       FgDivisi := 'HR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'HRPakaiOrg') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PI';  //safety ke orang
       FgDivisi := 'HR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'HRPakaiDepa') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'SD';  //safety ke departemen
       FgDivisi := 'HR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'HRRptPakai') then
    Begin
    with TfmSFRptPakai.Create (Application) do
     try
       FgDivisi := 'HR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'HRRptInventaris') then
    Begin
    with TfmSFRptSafetyItem.Create (Application) do
     try
       FgDivisi := 'HR';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'MsAgama') then
  begin
    with TfmMsMaster.Create (Application) do
    try
      FgMaster := 'A';
      ShowModal;
    finally
      Free;
    end;
  end else
   if CompareFormName(quMenuFormName.Value,'MsPay') then
  begin
    with TfmMsMaster.Create (Application) do
    try
      FgMaster := 'O';
      ShowModal;
    finally
      Free;
    end;
  end else
  if CompareFormName(quMenuFormName.Value,'HRMR') then
  begin
    with TfmAPPurchaseRequest.Create (Application) do
    try
      Flag := 'MR';
      FgDivisi := 'HR';
      ShowModal;
    finally
      Free;
    end;
  end else
  if CompareFormName(quMenuFormName.Value,'INMSDivisi') then
    Begin
    with TfmINMsProduct.Create (Application) do
     try
       StLap := 'DV';
       ShowModal;
     finally
      Free;
     end;
   End else
  if CompareFormName(quMenuFormName.Value,'MsDepa') then
  begin
    with TfmMsMaster.Create (Application) do
    try
      FgMaster := 'D';
      ShowModal;
    finally
      Free;
    end;
  end else
  if CompareFormName(quMenuFormName.Value,'MsWilayah') then
  begin
    with TfmMsMaster.Create (Application) do
    try
      FgMaster := 'W';
      ShowModal;
    finally
      Free;
    end;
  end else
  if CompareFormName(quMenuFormName.Value,'MsLokasi') then
  begin
    with TfmMsMaster.Create (Application) do
    try
      FgMaster := 'L';
      ShowModal;
    finally
      Free;
    end;
  end else
  if CompareFormName(quMenuFormName.Value,'MsTanggungan') then
  begin
    with TfmMsMaster.Create (Application) do
    try
      FgMaster := 'F';
      ShowModal;
    finally
      Free;
    end;
  end else
  if CompareFormName(quMenuFormName.Value,'MsSuku') then
  begin
    with TfmMsMaster.Create (Application) do
    try
      FgMaster := 'S';
      ShowModal;
    finally
      Free;
    end;
  end else
  if CompareFormName(quMenuFormName.Value,'MsStatus') then
  begin
    with TfmMsMaster.Create (Application) do
    try
      FgMaster := 'T';
      ShowModal;
    finally
      Free;
    end;
  end else
   if CompareFormName(quMenuFormName.Value,'ARMsJabatan') then
   Begin
     with TfmINMsUOM.Create (Application) do
     try
       StForm := 'K';
       ShowModal;
     finally
       Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'MsHire') then
   Begin
     with TfmINMsUOM.Create (Application) do
     try
       StForm := 'H';
       ShowModal;
     finally
       Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'HRRptMR') then
    begin
      with TfmAPRptLapMR.Create (Application) do
      try
        FgDivisi := 'HR';
        ShowModal;
      finally
        Free;
      end;
    end;
end;

procedure TfmUtama.CallModule19;
begin

    if CompareFormName(quMenuFormName.Value,'MTKanibal') then
       MakeFormDlg(fmINTrKanibal,TfmINTrKanibal)
    else
    if CompareFormName(quMenuFormName.Value,'INMsNoUnit') then
       MakeFormDlg(fmINMsNoUnit,TfmINMsNoUnit)
    else
    if CompareFormName(quMenuFormName.Value,'MTJadwalDriver') then
       MakeFormDlg(fmINTrJadwalDriver,TfmINTrJadwalDriver)
    else
    if CompareFormName(quMenuFormName.Value,'MTMutasiUnit') then
       MakeFormDlg(fmMTMutasiUnit,TfmMTMutasiUnit)
    else
    if CompareFormName(quMenuFormName.Value,'MTRptMutasiUnit') then
       MakeFormDlg(fmMTRptMutasiUnit,TfmMTRptMutasiUnit)
    else
    if CompareFormName(quMenuFormName.Value,'MTMsService') then
       MakeFormDlg(fmMTMsService,TfmMTMsService)
    else
    if CompareFormName(quMenuFormName.Value,'INRptStokGudang') then
       MakeFormDlg(fmINRptStokGudang,TfmINRptStokGudang)
    else
    if CompareFormName(quMenuFormName.Value,'INRptStokDlg') then
       MakeFormDlg(fmINRptStokDlg,TfmINRptStokDlg)
    else
    if CompareFormName(quMenuFormName.Value,'MTMR') then
    begin
      with TfmAPPurchaseRequest.Create (Application) do
      try
        Flag := 'MR';
        FgDivisi := 'MT';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'MTRptMutasiGudang') then
    Begin
      with TfmAPRptPenerimaan.Create (Application) do
      try
        StatusLap := 'SP';
        Divisi := 'MT';
        ShowModal;
      finally
       Free;
      end;
   End else
    if CompareFormName(quMenuFormName.Value,'INTrOli') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PO';  //stokopname
       FgDivisi := 'MT';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INBan') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'TB';   //terima ban
       FgDivisi := 'MT';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INpakai') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PN';   //penerimaan
       FgDivisi := 'MT';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INpakaiA') then
    Begin
    with TfmINTrAdjustment.Create (Application) do
     try
       StLap := 'PG';   //pemakaian
       FgDivisi := 'MT';
       ShowModal;
     finally
      Free;
     end;
   End else
   if CompareFormName(quMenuFormName.Value,'INTransfer') then
    Begin
    with TfmINTransfer.Create (Application) do
     try
       StLap := 'SP';   //transfer
       FgDivisi := 'MT';
       ShowModal;
     finally
      Free;
     end;
   End else
    if CompareFormName(quMenuFormName.Value,'MsGroupUnit') then
    begin
      with TfmMsMaster.Create (Application) do
      try
        FgMaster := 'U';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'MTRptMR') then
    begin
      with TfmAPRptLapMR.Create (Application) do
      try
        FgDivisi := 'MT';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'MTOtorisasi') then
       MakeFormDlg(fmINOtorisasi,TfmINOtorisasi)
    else
    if CompareFormName(quMenuFormName.Value,'MTRptKanibal') then
       MakeFormDlg(fmINRptKanibal,TfmINRptKanibal)
    else
    //if CompareFormName(quMenuFormName.Value,'ConfirmMR') then
    //   MakeFormDlg(fmConfirmMR,TfmConfirmMR)
    //else
    if CompareFormName(quMenuFormName.Value,'MTKonfirmasi') then
    begin
      with TfmConfirmMR.Create (Application) do
      try
        FgDivisi := 'MT';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'MTRptKonfirmasi') then
    begin
      with TfmAPRptConfirmMR.Create (Application) do
      try
        FgDivisi := 'MT';
        ShowModal;
      finally
        Free;
      end;
    end else
    //if CompareFormName(quMenuFormName.Value,'ApRptConfirmMR') then
    //   MakeFormDlg(fmAPRptConfirmMR,TfmAPRptConfirmMR)
    //else
    if CompareFormName(quMenuFormName.Value,'RekapConfirmMR') then
       MakeFormDlg(fmRekapConfirmMR,TfmRekapConfirmMR)
    else
    if CompareFormName(quMenuFormName.Value,'MTRptWorkHour') then
       MakeFormDlg(fmINRptJadwalDriver,TfmINRptJadwalDriver)
       else
    if CompareFormName(quMenuFormName.Value,'MTRptWorkHour2') then
       MakeFormDlg(fmINRptJadwalDriver2,TfmINRptJadwalDriver2);
end;

procedure TfmUtama.bbExitClick(Sender: TObject);
begin
    Self.Close;
end;

procedure TfmUtama.SBMenuChangeActiveGroup(Sender: TObject);
begin
  SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[0];
  SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
end;

procedure TfmUtama.Action1Execute(Sender: TObject);
begin
  SBMenu.ActiveGroupIndex := 0;
end;

procedure TfmUtama.Action2Execute(Sender: TObject);
begin
  SBMenu.ActiveGroupIndex := 1;
end;

procedure TfmUtama.Action3Execute(Sender: TObject);
begin
  SBMenu.ActiveGroupIndex := 2;
end;

//ctrl+1
procedure TfmUtama.Action4Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 0 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[0];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;
end;

//ctrl+2
procedure TfmUtama.Action5Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 1 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[1];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;
end;

//ctrl+3
procedure TfmUtama.Action6Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 2 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[2];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;
end;

//ctrl+4
procedure TfmUtama.Action7Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 3 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[3];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;
end;

//ctrl+5
procedure TfmUtama.Action8Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 4 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[4];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;

end;

//ctrl+6
procedure TfmUtama.Action9Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 5 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[5];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;

end;

procedure TfmUtama.TLMenuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Module : string;
begin
  if Key=vk_return then
  begin
     paMenu.Visible := FALSE;
     SBMenu.Visible := FALSE;
     Module := LeftStr(quMenuKdMenu.AsString,2);
     if Module = '10' then
        CallModule10
     else
     if Module = '11' then
        CallModule11
     else
     if Module = '12' then
        CallModule12
     else
     if Module = '13' then
        CallModule13
     else
     if Module = '14' then
        CallModule14
     else
     if Module = '15' then
        CallModule15
     else
     if Module = '16' then
        CallModule16
     else
     if Module = '17' then
        CallModule17
     else
     if Module = '18' then
        CallModule18
     else
     if Module = '19' then
        CallModule19;
     paMenu.Visible := TRUE;
     SBMenu.Visible := TRUE;
   End;
End;

procedure TfmUtama.bbJualClick(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
 // MakeFormDlg(fmARTrPenjCounter,TfmARTrPenjCounter);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.bbBackUpClick(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmBackUp,TfmBackUp);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.bbAbsenClick(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmAbsensi,TfmAbsensi);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.bbUtilityClick(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmTrAuditData,TfmTrAuditData);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.Action10Execute(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmARTrCariModal,TfmARTrCariModal);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.bbCreditCardClick(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmCFTrCreditCard,TfmCFTrCreditCard);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.dxButton2Click(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmINRptSNHistoryDlg,TfmINRptSNHistoryDlg);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.dxButton1Click(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmImportData,TfmImportData);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.dxButton3Click(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmExportImport,TfmExportImport);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.dxButton4Click(Sender: TObject);
var
  itemid,itemname,typeunit,merk,satuan,descr : string;
  Excel : variant;
  i : integer;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    i:=2;
    ProgressBar1.Visible := True;
    Label1.Visible := True;
    ProgressBar1.Position := 0;
    while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
    begin
      itemid := VarToSTr(Excel.cells.range['A'+inttostr(i)]);
      itemname := VarToSTr(Excel.cells.range['B'+inttostr(i)]);
      typeunit := VarToSTr(Excel.cells.range['C'+inttostr(i)]);
      descr := VarToSTr(Excel.cells.range['D'+inttostr(i)]);
      merk := VarToSTr(Excel.cells.range['E'+inttostr(i)]);
      satuan := VarToSTr(Excel.cells.range['F'+inttostr(i)]);

      with quAct,SQL do
      begin
        Close;Clear;
        Add('IF NOT EXISTS (SELECT itemid From inmsitem WHERE itemid='''+itemid+''' ) '
           +'INSERT INTO inmsitem (itemid,itemname,merk,typeunit,uomid,UpdDate,UpdUser) '
           +'VALUES ('''+itemid+''','''+itemname+''','''+merk+''','''+typeunit+''','''+satuan+''',getdate(),'''+dmmain.userid+''') ');
        Add('IF NOT EXISTS (SELECT typeunit From inmstypeunit WHERE typeunit='''+typeunit+''' ) '
           +'INSERT INTO inmstypeunit (typeunit,description,fggroup,UpdDate,UpdUser) '
           +'VALUES ('''+typeunit+''','''+descr+''',''T'',getdate(),'''+dmmain.userid+''') ');
        Add('UPDATE INMsItem SET garantee=0,currid=''IDR'',FgActive=''Y'',Jenis=''S'',UOMID2=UOMID,Konversi=1,ItemName2=ItemName,FgUOmid=UOMID Where Itemid='''+itemid+''' ');
        //ShowMessage(sql.text);
        ExecSQL;
        i:=i+1;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
    end;

  end;
  ProgressBar1.Visible := False;
  Label1.Visible := False;
  ShowMessage('Data Barang Sudah Berhasil di Upload');
end;

procedure TfmUtama.dxButton5Click(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmINRptStockMinimum,TfmINRptStockMinimum);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
  {
  with TfmRptDataTelp.Create(Self) do
  try
    qrlTitle.Caption := 'DATA KONTAK KARYAWAN AKTIF PT.RODA JAYA SAKTI';

    with qu001,SQL do
    Begin
     Close;Clear;
     add('select SalesName,Phone,HP,Email,Jabatan,Address from ARMsSales WHERE FgActive=''1'' AND FgShow=''Y'' order by SalesName');
     Open;
    End;

    MyReport.PreviewModal;

  finally
    free;
  end;
  }
end;

procedure TfmUtama.dxButton7Click(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmCFgenerate,TfmCFgenerate);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.dxButton6Click(Sender: TObject);
var
  voucherid,rekeningid,note,amount,upddate,upduser,jenis,transdate,actor,bankid,note1,flagkkbb,updu,updd,jumd,jumk,mop,kdcaba : string;
  Excel : variant;
  i : integer;
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    i:=2;
    ProgressBar1.Visible := True;
    Label1.Visible := True;
    ProgressBar1.Position := 0;
    while VarToStr(Excel.Cells.Range['a'+inttostr(i)])<>'' do
    begin
      voucherid := VarToSTr(Excel.cells.range['A'+inttostr(i)]);
      rekeningid := VarToSTr(Excel.cells.range['B'+inttostr(i)]);
      note := VarToSTr(Excel.cells.range['C'+inttostr(i)]);
      amount := VarToSTr(Excel.cells.range['D'+inttostr(i)]);
      upddate := VarToSTr(Excel.cells.range['E'+inttostr(i)]);
      upduser := VarToSTr(Excel.cells.range['F'+inttostr(i)]);
      jenis := VarToSTr(Excel.cells.range['G'+inttostr(i)]);
      transdate := VarToSTr(Excel.cells.range['H'+inttostr(i)]);
      actor := VarToSTr(Excel.cells.range['I'+inttostr(i)]);
      bankid := VarToSTr(Excel.cells.range['J'+inttostr(i)]);
      note1 := VarToSTr(Excel.cells.range['K'+inttostr(i)]);
      flagkkbb := VarToSTr(Excel.cells.range['L'+inttostr(i)]);
      updu := VarToSTr(Excel.cells.range['M'+inttostr(i)]);
      updd := VarToSTr(Excel.cells.range['N'+inttostr(i)]);
      jumd := VarToSTr(Excel.cells.range['O'+inttostr(i)]);
      jumk := VarToSTr(Excel.cells.range['P'+inttostr(i)]);
      mop := VarToSTr(Excel.cells.range['Q'+inttostr(i)]);
      kdcaba := VarToSTr(Excel.cells.range['R'+inttostr(i)]);

      with quAct,SQL do
      begin
        Close;Clear;
        Add('IF NOT EXISTS (SELECT VoucherID From CFTRKKBBHD WHERE VoucherID='''+voucherid+''' ) '
           +'INSERT INTO CFTRKKBBHD (VoucherID,TransDate,Actor,BankID,Note,FlagKKBB,UpdDate,UpdUser,CurrId,Transdate1,JumlahD,JumlahK,FgPayment,VoucherNo,Rate,MOP,kdcab) '
           +'VALUES ('''+voucherid+''','''+transdate+''','''+actor+''','''+bankid+''','''+note1+''','''+flagkkbb+''','''+updd+''','''+updu+''',''IDR'','
           +''''+transdate+''','''+jumd+''','''+jumk+''',''T'','''+voucherid+''',1,'''+mop+''','''+kdcaba+''') ');
        Add('IF NOT EXISTS (SELECT voucherid From CFTRKKBBdt WHERE VoucherID='''+voucherid+''' AND rekeningid='''+rekeningid+''' AND note='''+note+''' AND amount='''+amount+'''  ) '
           +'INSERT INTO CFTRKKBBdt (VoucherID,RekeningID,Note,Amount,UpdDate,UpdUser,Jenis) '
           +'VALUES ('''+voucherid+''','''+rekeningid+''','''+note+''','''+amount+''','''+upddate+''','''+upduser+''','''+jenis+''') ');
        //ShowMessage(sql.text);
        ExecSQL;
        i:=i+1;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if ProgressBar1.Position = 100 then
        ProgressBar1.Position := 0;
      end;
    end;

  end;
  ProgressBar1.Visible := False;
  Label1.Visible := False;
  ShowMessage('Data Kas Sudah Berhasil di Upload');
end;

end.
