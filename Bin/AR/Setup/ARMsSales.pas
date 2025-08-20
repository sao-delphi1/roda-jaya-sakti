unit ARMsSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, dxEdLib, dxDBELib, dxEditor, DB, DBCtrls,
  ActnList, dxCntner, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxPageControl,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, ExtDlgs,
  dxDBTLCl, dxGrClms, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCore;

type
  TfmARMsSales = class(TfmStdLv4)
    quMainSalesID: TStringField;
    quMainSalesName: TStringField;
    quMainAddress: TStringField;
    quMainPhone: TStringField;
    quMainHP: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgListSalesID: TdxDBGridMaskColumn;
    dbgListSalesName: TdxDBGridMaskColumn;
    dbgListAddress: TdxDBGridMaskColumn;
    dbgListPhone: TdxDBGridMaskColumn;
    dbgListHP: TdxDBGridMaskColumn;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    dbgListEmail: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    quJabatan: TADOQuery;
    quMainJabatan: TStringField;
    DBText3: TDBText;
    quMainluJabatan: TStringField;
    quMainUangMakan: TBCDField;
    quMainUangBulanan: TBCDField;
    quMainFgActive: TStringField;
    quMainTglGabung: TDateTimeField;
    quMainLimitKasbon: TBCDField;
    DBRadioGroup3: TDBRadioGroup;
    quMainKerajinan: TBCDField;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    odLogo: TOpenPictureDialog;
    quMainttd: TBlobField;
    quMainfoto: TBlobField;
    quMaintglLahir: TDateTimeField;
    DBImage1: TDBImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DBImage2: TDBImage;
    Label10: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    quMainRekeningID: TStringField;
    quMainagama: TStringField;
    quMainFgStatus: TStringField;
    quMainTLahir: TStringField;
    quMainUmur: TStringField;
    quMainLuAgama: TStringField;
    quMainLuStatus: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBEdit5: TdxDBEdit;
    DBText1: TDBText;
    Label12: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    DBText2: TDBText;
    Label23: TLabel;
    dxDBButtonEdit6: TdxDBButtonEdit;
    DBText6: TDBText;
    quMainLamaKerja: TStringField;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    Label6: TLabel;
    dxDBButtonEdit1: TdxDBButtonEdit;
    DBText4: TDBText;
    quMainBPJSKes: TStringField;
    quMainBPJSKet: TStringField;
    quMainrekening: TStringField;
    quMainbank: TStringField;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    Label18: TLabel;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    Label20: TLabel;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    quMainrekening1: TStringField;
    quMainbank1: TStringField;
    Label15: TLabel;
    Label16: TLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    quMainNIK: TStringField;
    dxDBEdit12: TdxDBEdit;
    Label17: TLabel;
    quMainfgpayroll: TStringField;
    quMaindepartment: TStringField;
    quMainjeniskel: TStringField;
    quMainroster1: TIntegerField;
    quMainroster2: TIntegerField;
    quMainpointhire: TStringField;
    quMainfgtravel: TStringField;
    quMainfgmess: TStringField;
    quMainbreakfast: TStringField;
    quMainlunch: TStringField;
    quMaindinner: TStringField;
    quMainPOP: TStringField;
    quMainPOM: TStringField;
    quMainPOU: TStringField;
    quMaindomisili: TStringField;
    quMainTaxStats: TStringField;
    quMainNPWP: TStringField;
    quMaintglbpjsket: TDateTimeField;
    quMaintglbpjskes: TDateTimeField;
    quMainbpjskescab: TStringField;
    quMainbpjsketcab: TStringField;
    dxDBMemo3: TdxDBMemo;
    Label24: TLabel;
    dxDBEdit16: TdxDBEdit;
    quMainKTP: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    dxDBEdit17: TdxDBEdit;
    Label40: TLabel;
    dxDBDateEdit3: TdxDBDateEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    GroupBox6: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    dxDBEdit18: TdxDBEdit;
    dxDBEdit19: TdxDBEdit;
    dxDBDateEdit4: TdxDBDateEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    DBText5: TDBText;
    Label58: TLabel;
    GroupBox7: TGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit21: TdxDBEdit;
    dxDBImageEdit8: TdxDBImageEdit;
    dxDBImageEdit9: TdxDBImageEdit;
    dxDBImageEdit10: TdxDBImageEdit;
    dxDBImageEdit11: TdxDBImageEdit;
    dxDBImageEdit12: TdxDBImageEdit;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label69: TLabel;
    Label75: TLabel;
    quMainLuDepa: TStringField;
    Label76: TLabel;
    Label77: TLabel;
    quMainfgkerja: TStringField;
    quMaintglpermanent: TDateTimeField;
    quMaintglberhenti: TDateTimeField;
    Label78: TLabel;
    dxDBDateEdit5: TdxDBDateEdit;
    Label79: TLabel;
    Label80: TLabel;
    dxDBDateEdit6: TdxDBDateEdit;
    Label81: TLabel;
    quMainalasan: TStringField;
    Label82: TLabel;
    Label83: TLabel;
    dxDBEdit13: TdxDBEdit;
    DBText7: TDBText;
    quMainLEndDate: TStringField;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Button3: TButton;
    DBRadioGroup2: TDBRadioGroup;
    quMainFgShow: TStringField;
    quMainLocation: TStringField;
    Label84: TLabel;
    DBText10: TDBText;
    Label85: TLabel;
    dxDBButtonEdit5: TdxDBButtonEdit;
    quMainLLocation: TStringField;
    dbgListColumn8: TdxDBGridColumn;
    dbgListColumn9: TdxDBGridDateColumn;
    dbgListColumn10: TdxDBGridColumn;
    dbgListColumn11: TdxDBGridColumn;
    dbgListColumn12: TdxDBGridButtonColumn;
    dbgListColumn13: TdxDBGridButtonColumn;
    dbgListColumn14: TdxDBGridButtonColumn;
    dbgListColumn15: TdxDBGridColumn;
    Panel1: TPanel;
    bbExcel: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    dxDBButtonEdit7: TdxDBButtonEdit;
    DBText11: TDBText;
    quMainLuPayroll: TStringField;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Button2Click(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Button3Click(Sender: TObject);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbExcelClick(Sender: TObject);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
  End;
var
  fmARMsSales: TfmARMsSales;

implementation

uses ConMain, UnitGeneral, Search, MyUnit, UnitDate, DateUtils, ARMsSalesRK, ARMsSalesKK, ARMsSalesDt;

{$R *.dfm}
Procedure TfmARMsSales.Status;
Begin
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select SalesId FROM ARTrPenjualanHd WHERE SalesId='''+quMainSalesID.Value+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Sales sudah di pakai di Penjualan');
       Abort;
    End;
 End;
End;
procedure TfmARMsSales.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dbgListSalesID,TRUE);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmARMsSales.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
{
  if Trim(quMainSalesID.Value)='' then
  begin
    MsgInfo('Kode Karyawan tidak boleh kosong');
    quMainSalesID.FocusControl;
    Abort;
  end;      }

  if TRIM(quMainJabatan.Value) = '' then
  begin
    MsgInfo('Jabatan belum diisi');
    quMainJabatan.FocusControl;
    Abort;
  end;

  if quMainluJabatan.Value = '' then
  begin
    MsgInfo('Jabatan tidak terdaftar');
    quMainJabatan.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('Select NIK from ARMsSales Where NIK='''+quMainNIK.ASString+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode NIK sudah dipakai Karyawan lain');
        quMainSalesID.FocusControl;
        Abort;
      End;
    End;
  End;

  If Trim(quMainSalesName.Value)='' then
  begin
    MsgInfo('Nama Karyawan tidak boleh kosong');
    quMainSalesName.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
    ST :=  'K'+KdCab+'-';
    quMainSalesID.AsString := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARMsSales', 'SalesID', ST, '0') + 1);
  End;

  quMainUpdDate.AsDateTime := Date;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARMsSales.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARMsSales.FormShow(Sender: TObject);
begin
  inherited;
   quMain.Active := TRUE;
   ts01.TabVisible := False;
   dbgList.Enabled := False;
   //WindowState := wsMaximized;
   if CallFromAnotherMenu then
   begin
     ActNewExecute(bbNew);
   End;
end;

procedure TfmARMsSales.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
  CallFromAnotherMenu:=False;
end;

procedure TfmARMsSales.ActSaveExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmARMsSales.ActCancelExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmARMsSales.ActDeleteExecute(Sender: TObject);
begin
   Status;
  inherited;

end;

procedure TfmARMsSales.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Master Karyawan';
         SQLString := ' Select SalesName as Nama_Karyawan,Jabatan,SalesID as Kode_Karyawan,'
                     +' Address as Alamat,HP,Phone as Telepon,Email,Note as Keterangan'
                     +' from ARMsSales ';
         if ShowModal = MrOk then
         begin
            qumain.Locate('SalesId',Res[2],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmARMsSales.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Jabatan';
       SQLString := 'SELECT Jabatan'
                   +' FROM ARMsJabatan'
                   +' ORDER BY Jabatan';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainJabatan.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsSales.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTglGabung.AsDateTime := Date;
  quMaintglLahir.AsDateTime := Date;
  quMainFgActive.AsInteger := 1;
  quMainFgShow.AsString := 'Y';
  quMainNIK.FocusControl;
end;

procedure TfmARMsSales.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if odLogo.Execute then
  begin
    DBImage1.Picture.LoadFromFile(odLogo.FileName);
    DBImage1.Refresh;
  end;
end;

procedure TfmARMsSales.BitBtn2Click(Sender: TObject);
begin
  inherited;
  DBImage1.Picture.Bitmap := nil;
end;

procedure TfmARMsSales.BitBtn4Click(Sender: TObject);
begin
  inherited;
  DBImage2.Picture.Bitmap := nil;
end;

procedure TfmARMsSales.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if odLogo.Execute then
  begin
    DBImage2.Picture.LoadFromFile(odLogo.FileName);
    DBImage2.Refresh;
  end;
end;

procedure TfmARMsSales.quMainCalcFields(DataSet: TDataSet);
var LamaKerja,Tahun,Bulan,Hari,LamaUmur,UmTh,UmBl,Umhr : Integer;
    EndDate : string;
begin
  inherited;
  with quAct, sql do
  begin
    Close;Clear;
    Add('Select NmMaster From AllMaster Where KdMaster='''+quMainAgama.AsString+''' and FgMaster=''A'' ');
    Open;
  end;
  quMainLuAgama.AsString := quAct.FieldByName('NmMaster').AsString;

    with quAct, sql do
  begin
    Close;Clear;
    Add('Select NmMaster From AllMaster Where KdMaster='''+quMainfgpayroll.AsString+''' and FgMaster=''O'' ');
    Open;
  end;
  quMainLuPayroll.AsString := quAct.FieldByName('NmMaster').AsString;

  with quAct, sql do
  begin
    Close;Clear;
    Add('Select NmMaster From AllMaster Where KdMaster='''+quMainFgStatus.AsString+''' and FgMaster=''T'' ');
    Open;
  end;
  quMainLuStatus.AsString := quAct.FieldByName('NmMaster').AsString;

  with quAct, sql do
  begin
    Close;Clear;
    Add('Select DivisiName as NmMaster From INMsDivisi Where DivisiID='''+quMaindepartment.AsString+''' ');
    Open;
  end;
  quMainLuDepa.AsString := quAct.FieldByName('NmMaster').AsString;

  with quAct, sql do
  begin
    Close;Clear;
    Add('Select SiteName as NmMaster From INMsSites Where SiteID='''+quMainLocation.AsString+''' ');
    Open;
  end;
  quMainLLocation.AsString := quAct.FieldByName('NmMaster').AsString;

  LamaUmur := DaysBetween(quMaintglLahir.AsDateTime, Date);
  UmTh := LamaUmur DIV 365;
  UmBl := (LamaUmur MOD 365) DIV 30;
  UmHr := (LamaUmur MOD 365) MOD 30;
  quMainUmur.AsString := IntToStr(UmTh) + ' TH ' + IntToStr(UmBl) + ' BL ' + IntToStr(UmHr) + ' HR';

  LamaKerja := DaysBetween(quMainTglGabung.AsDateTime, Date);
  Tahun := LamaKerja DIV 365;
  Bulan := (LamaKerja MOD 365) DIV 30;
  Hari := (LamaKerja MOD 365) MOD 30;
  quMainLamaKerja.AsString := IntToStr(Tahun) + ' TH ' + IntToStr(Bulan) + ' BL ' + IntToStr(Hari) + ' HR';

  if TRIM(quMaintglpermanent.asString)='' then
  begin
    if TRIM(quMaintglberhenti.asString)='' then
    begin
      with quAct, sql do
      begin
        Close;Clear;
        Add('Select TOP 1 CONVERT(VARCHAR(10),EndDate,103) as EndDate From ARMsSalesKK '
           +'Where SalesID='''+quMainSalesID.AsString+''' ORDER BY EndDate DESC ');
        Open;
      end;
      if quAct.RecordCount=0 then
      begin
        quMainLEndDate.AsString := 'BELUM DITENTUKAN';
      end else
      begin
        quMainLEndDate.AsString := 'Berakhir Pada '+quAct.FieldByName('EndDate').AsString;;
      end;
    end else
    begin
      quMainLEndDate.AsString := 'SUDAH BERHENTI';
    end;
  end else
  begin
    if TRIM(quMaintglberhenti.asString)='' then
    begin
      quMainLEndDate.AsString := 'PERMANENT';
    end else
    begin
      quMainLEndDate.AsString := 'SUDAH BERHENTI';
    end;
  end;





end;

procedure TfmARMsSales.Button1Click(Sender: TObject);
var FgSales,Nota : String;
begin
  inherited;
  FgSales := quMainSalesId.AsString;
  with TfmARMsSalesKK.Create (Application) do
  try
    SalesID := FgSales;
    ShowModal;
  finally
    free;
  end;
  //qumain.Requery();
  qumain.Locate('SalesId',FgSales,[]);
end;

procedure TfmARMsSales.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Agama';
       SQLString := 'SELECT NmMaster as Agama, KdMaster as Kode_Agama FROM AllMaster Where FgMaster=''A'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainAgama.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsSales.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Status';
       SQLString := 'SELECT NmMaster as Status, KdMaster as Kode_Status FROM AllMaster Where FgMaster=''T'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainFgStatus.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsSales.Button2Click(Sender: TObject);
var FgSales : string;
begin
  inherited;
  FgSales := quMainSalesId.AsString;
  with TfmARMsSalesRK.Create (Application) do
  try
    SalesID := FgSales;
    ShowModal;
  finally
    free;
  end;
  qumain.Requery();
end;

procedure TfmARMsSales.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Department';
       SQLString := 'SELECT DivisiName as Department, DivisiID as Kode_Department FROM INMsDivisi ORDER BY DivisiName';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMaindepartment.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsSales.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Lokasi';
       SQLString := 'SELECT Lokasi as Point_of_Hire'
                   +' FROM ARMsHire'
                   +' ORDER BY Lokasi';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainpointhire.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsSales.Button3Click(Sender: TObject);
var FgSales : string;
begin
  inherited;
  FgSales := quMainSalesId.AsString;
  with TfmARMsSalesDt.Create (Application) do
  try
    SalesID := FgSales;
    ShowModal;
  finally
    free;
  end;
  qumain.Requery();

end;

procedure TfmARMsSales.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
     try
        Title := 'Pilih Sites';
        SQLString := 'SELECT SiteID as Kode_Sites, SiteName as Nama_Sites'
                    +' FROM INMSSites ORDER BY SiteName';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainLocation.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmARMsSales.bbExcelClick(Sender: TObject);
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

procedure TfmARMsSales.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Payroll Gaji';
       SQLString := 'SELECT NmMaster as Payroll, KdMaster as Kode_Payroll FROM AllMaster Where FgMaster=''O'' ORDER BY NmMaster';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainfgpayroll.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsSales.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainSalesID.ASString+''',''Delete'',''Hapus Karyawan'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
end;

end.
