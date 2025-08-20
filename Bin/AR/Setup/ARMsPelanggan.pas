unit ARMsPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBELib, dxEditor, DBCtrls;

type
  TfmARMsPelanggan = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgListKdPelanggan: TdxDBGridColumn;
    dbgListNmPelanggan: TdxDBGridColumn;
    dbgListPhone: TdxDBGridColumn;
    dbgListAlamat: TdxDBGridColumn;
    dbgListKota: TdxDBGridColumn;
    dbgListFax: TdxDBGridColumn;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    dbgListEmail: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    dbgListTipe: TdxDBGridColumn;
    Label6: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Label32: TLabel;
    Label33: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    dxButton2: TdxButton;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    dxDBImageEdit1: TdxDBImageEdit;
    Label36: TLabel;
    quMainCustID: TStringField;
    quMainCustName: TStringField;
    quMainCity: TStringField;
    quMainPhone1: TStringField;
    quMainFax: TStringField;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    quMainCustType: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainLimitPiutang: TBCDField;
    quMainLimitasli: TBCDField;
    quMainDisc: TBCDField;
    quMainSalesID: TStringField;
    quMainCPerson: TStringField;
    quMainWilayahID: TStringField;
    quMainKodePOS: TStringField;
    quMainNPWP: TStringField;
    quMainFgPass: TStringField;
    quMainPhone2: TStringField;
    quMainTelp: TStringField;
    quMainFgTerm: TStringField;
    quMainLSales: TStringField;
    quMainLWilayah: TStringField;
    quMainAddress: TStringField;
    quMainTerm: TIntegerField;
    Label37: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    DBText6: TDBText;
    quMainRekeningID: TStringField;
    quMainLRekeningName: TStringField;
    dbgListColumn10: TdxDBGridColumn;
    dbgListColumn11: TdxDBGridColumn;
    dbgProduct: TdxDBGrid;
    dbgProductProductID: TdxDBGridColumn;
    dbgProductName: TdxDBGridColumn;
    dbgProductUpdDate: TdxDBGridColumn;
    dbgProductUser: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure ActDeleteExecute(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxButton2Click(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallAnotherForm : Boolean;
    TempPlg : string;
  end;

var
  fmARMsPelanggan: TfmARMsPelanggan;

implementation

uses StdLv2, StdLv1, StdLv0, UnitGeneral, ConMain, Search, StdLv3, MyUnit,
  ARQrRptCetakAmplop;

{$R *.dfm}
Procedure TfmARMsPelanggan.Status;
Begin
 with quact,sql do
  Begin
    Close;Clear;
    Add(' Select CustId FROM ARTrPenjualanHd WHERE CustId='''+quMainCustID.Value+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Customer sudah di pakai di penjualan');
       Abort;
    End;
 End;
 with quact,sql do
  Begin
    Close;Clear;
    Add(' Select CustId FROM ARTrKonTransBrgHd WHERE CustId='''+quMainCustID.Value+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Customer sudah di pakai di Konsinyasi');
       Abort;
    End;
 End;
End;
procedure TfmARMsPelanggan.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  CallAnotherForm := false;
end;

procedure TfmARMsPelanggan.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  //ts01.TabVisible := False;
  if CallAnotherForm then bbnew.OnClick(bbNew);
  TempPlg :='';
  if GroupUser <> 'admin' then
  begin
    dxDBEdit5.ReadOnly := True;
    dxDBEdit5.Color := clSilver;
    dxDBEdit11.ReadOnly := True;
    dxDBEdit11.Color := clSilver;
  end;
  ts01.TabVisible := False;
end;

procedure TfmARMsPelanggan.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,quMain.State<>dsInsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dbgProductProductID,quMain.State<>dsInsert);
  SetReadOnly(dbgProductUpdDate,TRUE);
  SetReadOnly(dbgProductUser,TRUE);
end;

procedure TfmARMsPelanggan.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARMsPelanggan.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainKodePOS.AsString) = '' then quMainKodePOS.AsString := '';
  
  if Trim(quMainCustID.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('Select CustId from ARMsCustomer Where CustId='''+quMainCustID.Value+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode Customer sudah dipakai Kode Sites lain');
        quMainCustID.FocusControl;
        Abort;
      End;
    End;
  End;

  If Trim(quMainCustName.Value)='' then
  begin
    MsgInfo('Nama Customer tidak boleh kosong');
    quMainCustName.FocusControl;
    Abort;
  end;

 { if TRIM(quMainLimitPiutang.AsString)='' then
  Begin
    MsgInfo('Limit piutang tidak boleh kosong');
    quMainLimitPiutang.FocusControl;
    Abort;
  End;

  if quMainLimitPiutang.AsCurrency < 1 then
  Begin
    MsgInfo('Limit piutang harus lebih besar dari 0 (nol)');
    quMainLimitPiutang.FocusControl;
    Abort;
  End;       }

{  if TRIM(quMainSalesID.AsString) = '' then
  begin
    pesan('Sales tidak boleh kosong');
    quMainSalesID.FocusControl;
    Abort;
  end;
  if TRIM(quMainLSales.AsString) = '' then
  begin
    pesan('Sales belum terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  end;

  if TRIM(quMainWilayahID.AsString) = '' then
  begin
    pesan('Wilayah tidak boleh kosong');
    quMainWilayahID.FocusControl;
    Abort;
  end;
  if TRIM(quMainLWilayah.AsString) = '' then
  begin
    pesan('Wilayah belum terdaftar');
    quMainWilayahID.FocusControl;
    Abort;
  end;      }
  if TRIM(quMainLimitasli.AsString) = '' then quMainLimitasli.AsInteger := 0;

 { if TRIM(quMainCity.AsString) = '' then
  begin
    pesan('Kota tidak boleh kosong');
    quMainCity.FocusControl;
    Abort;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT UPPER(LEFT('''+dxDBEdit2.Text+''',1)) as A');
    OPen;
  end; }
  {
  if quMain.State = dsInsert then
  begin
    ST := 'C';
    quMainCustID.AsString := ST+ FormatFloat('0000', RunNumberGL(quAct, 'ARMsCustomer','CustID',ST,'0') + 1);
  end;  }

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARMsPelanggan.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Master Customer';
         SQLString := ' Select CustName as Nama_Customer,CustID as Kode_Customer '
                     +' FROM ARMsCustomer ORDER BY CustID';
         if ShowModal = MrOk then
         begin
            qumain.Locate('CustId',Res[1],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmARMsPelanggan.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainCustID.FocusControl;
  quMainCustType.AsString:='U';
  quMainFgPass.AsString := 'Y';
  quMainDisc.AsCurrency := 0;
  quMainLimitPiutang.AsCurrency := 50000000;
  quMainLimitasli.AsInteger := 100;
  quMainRekeningID.AsString := sDGRPj;
end;

procedure TfmARMsPelanggan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CallAnotherForm := false;
end;

procedure TfmARMsPelanggan.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  if CallAnotherForm then
  Begin
   TempPlg:=quMainCustID.Value;
   Close;
  End;
end;

procedure TfmARMsPelanggan.ActDeleteExecute(Sender: TObject);
begin
  Status;
  inherited;

end;

procedure TfmARMsPelanggan.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesID as Kode_Sales, Salesname as Nama_Sales,Address, Phone, HP FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSalesID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsPelanggan.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Wilayah';
       SQLString := 'SELECT WilayahID as Kode, WilayahName as Wilayah FROM ARMsWilayah ORDER BY WilayahID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainWilayahID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsPelanggan.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROM ARMsSales WHERE SalesID='''+quMainSalesID.AsString+''' ');
    Open;
  end;
  quMainLSales.AsString := quAct.FieldByName('SalesName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT WilayahName FROM ARMsWilayah WHERE WilayahID='''+quMainWilayahID.AsString+''' ');
    Open;
  end;
  quMainLWilayah.AsString := quAct.FieldByName('WilayahName').AsString;


  if quMainRekeningID.asString = '' then
  begin
        quMainLRekeningName.AsString := 'Rekening Belum Dipilih';
        DBText6.Font.Color := clRed;
  end else
  begin
  With quAct,Sql do
    Begin
      Close;Clear;
      add('SELECT RekeningName FROM CFMsRekening Where RekeningId='''+quMainRekeningID.AsString+''' ');
      Open;
    End;
    quMainLRekeningName.AsString := quAct.FieldByName('RekeningName').asString;
  End;
end;

procedure TfmARMsPelanggan.dxButton2Click(Sender: TObject);
begin
  inherited;
   with TfmARQrRptAmplop.Create(Self) do
   try
     with qu001,SQL do
     Begin
       Close;Clear;
       add('SELECT CustName,Address FROM ARMsCustomer WHERE CustID='''+quMainCustID.AsString+''' ');
       Open;
     End;

     if sCetak = '0' then
       MyReport.PreviewModal
     else
       MyReport.Print;

   finally
      free;
   end;
end;

procedure TfmARMsPelanggan.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening Supplier';
       SQLString := 'SELECT  RekeningName, RekeningID, GroupRekID FROM CFMsRekening';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainRekeningID.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsPelanggan.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  Begin
    Close;Clear;
    add('Insert AllLogData (VoucherID,Jenis,Keterangan,upddate,upduser) '
       +'select '''+quMainCustID.ASString+''',''Delete'',''Hapus Pelanggan'',getdate(),'''+dmMain.UserId+''' ');
    ExecSQL;
  End;
end;

end.
