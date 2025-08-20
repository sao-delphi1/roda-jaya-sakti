unit ARMsPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBELib, dxEditor, DBCtrls;

type
  TfmARMsPelanggan = class(TfmStdLv4)
    dbgListKdPelanggan: TdxDBGridColumn;
    dbgListNmPelanggan: TdxDBGridColumn;
    dbgListPhone: TdxDBGridColumn;
    dbgListAlamat: TdxDBGridColumn;
    dbgListKota: TdxDBGridColumn;
    dbgListFax: TdxDBGridColumn;
    Label10: TLabel;
    Label12: TLabel;
    dbgListEmail: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    quMainCustID: TStringField;
    quMainCustName: TStringField;
    quMainAddress: TStringField;
    quMainCity: TStringField;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    quMainCustType: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainTipe: TStringField;
    dbgListTipe: TdxDBGridColumn;
    quMainLimitPiutang: TBCDField;
    quMainLimitasli: TBCDField;
    quMainDisc: TBCDField;
    quMainLWilayah: TStringField;
    quMainSalesID: TStringField;
    quMainCPerson: TStringField;
    quMainLSales: TStringField;
    quMainWilayahID: TStringField;
    quMainKodePOS: TStringField;
    quMainPhone: TStringField;
    quMainFax: TStringField;
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
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
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

uses StdLv2, StdLv1, StdLv0, UnitGeneral, ConMain, Search, StdLv3, MyUnit;

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
  if CallAnotherForm then bbnew.OnClick(bbNew);
  TempPlg :='';
  quMainLimitPiutang.DisplayFormat:= sDisFormat;
  quMainLimitPiutang.EditFormat := sEditformat;
  if GroupUser <> 'admin' then
  begin
    dxDBEdit5.ReadOnly := True;
    dxDBEdit5.Color := clSilver;
  end;
end;

procedure TfmARMsPelanggan.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmARMsPelanggan.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARMsPelanggan.quMainBeforePost(DataSet: TDataSet);
var A : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT '''+quMainCustType.AsString+'''+UPPER(LEFT('''+dxDBEdit2.Text+''',1)) as A ');
    Open;
  end;

  if quMain.State = dsInsert then
  begin
    A:= quAct.FieldByName('A').AsString;
    quMainCustID.AsString  := A + FormatFloat('000', RunNumberGL(quAct, 'ARMsCustomer', 'CustID', A, '0') + 1);
  end;

  if Trim(quMainCustID.AsString)='' then
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
      add('SELECT CustId FROM ARMsCustomer WHERE CustId='''+quMainCustID.Value+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode Customer sudah dipakai Kode Customer lain');
        quMainCustID.FocusControl;
        Abort;
      End;
    End;
  End;

  If Trim(quMainCustName.AsString)='' then
  begin
    MsgInfo('Nama Customer tidak boleh kosong');
    quMainCustName.FocusControl;
    Abort;
  end;

  if TRIM(quMainLimitPiutang.AsString)='' then
  Begin
    MsgInfo('Limit piutang tidak boleh kosong');
    quMainLimitPiutang.FocusControl;
    Abort;
  End;

  if quMainLimitPiutang.AsCurrency < 1 then
  Begin
    MsgInfo('Limit piutang tidak boleh lqbih kecil dari 1');
    quMainLimitPiutang.FocusControl;
    Abort;
  End;

  quMainLimitasli.AsCurrency := quMainLimitPiutang.AsCurrency;
  if TRIM(quMainLWilayah.AsString) = '' then
  begin
    pesan('Data Wilayah tidak ada dalam master Wilayah');
    quMainWilayahID.FocusControl;
    Abort;
  end;
  if TRIM(quMainLSales.AsString) = '' then
  begin
    pesan('Data Sales tidak ada dalam master Sales');
    quMainSalesID.FocusControl;
    Abort;
  end;
  if TRIM(quMainDisc.AsString) = '' then quMainDisc.AsCurrency := 0;

  quMainUpdDate.AsDateTime := Date;
  quMainUpdUser.AsString := dmMain.UserId;

end;

procedure TfmARMsPelanggan.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Master Customer';
         SQLString := 'SELECT A.CustID as Kode,A.CustName as Pelanggan,A.Address as Alamat,A.City as Kota,A.Phone as Telepon,A.Fax,'
                     +'A.CPerson as Relasi,B.WilayahName as Wilayah,C.SalesName as Sales FROM ARMsCustomer A '
                     +'LEFT JOIN ARMsWilayah B ON A.WilayahID=B.WilayahID '
                     +'LEFT JOIN ARMsSales C ON A.SalesID=C.SalesID ORDER BY A.CustName';
         if ShowModal = MrOk then
         begin
            qumain.Locate('CustId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmARMsPelanggan.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainCustName.FocusControl;
  quMainCustType.AsString:='U';
  quMainLimitPiutang.AsCurrency := 50000000;
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

procedure TfmARMsPelanggan.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Wilayah';
         SQLString := 'SELECT WilayahName as Wilayah,WilayahID as Kode FROM ARMsWilayah ORDER BY WilayahName';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainCity.Value:= res[1];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmARMsPelanggan.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT WilayahName FROM ARMsWilayah WHERE WilayahID='''+quMainWilayahID.AsString+''' ');
    Open;
  end;
  quMainLWilayah.AsString := quAct.FieldByName('WilayahName').AsString;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SalesName FROM ARMsSales WHERE SalesID='''+quMainSalesID.AsString+''' ');
    Open;
  end;
  quMainLSales.AsString := quAct.FieldByName('SalesName').AsString;
end;

end.
