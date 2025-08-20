unit CFMsBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, dxEdLib, dxDBELib, dxEditor, DB, DBCtrls,
  ActnList, dxCntner, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxPageControl,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, dxDBTLCl,
  dxGrClms;

type
  TfmCFMsBank = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    Label13: TLabel;
    quGroupRek: TADOQuery;
    quMainBankId: TStringField;
    quMainBankName: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainNote: TStringField;
    dbgListBankId: TdxDBGridMaskColumn;
    dbgListBankName: TdxDBGridMaskColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    DBRadioGroup3: TDBRadioGroup;
    quMainFgActive: TStringField;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    quMainRekeningID: TStringField;
    quMainLRekeningName: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    dxDBButtonEdit1: TdxDBButtonEdit;
    quMainFgBank: TStringField;
    quMainNumAll: TAutoIncField;
    quMainKode: TStringField;
    dxDBEdit3: TdxDBEdit;
    Label4: TLabel;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
    StForm,NamaForm : String;
  End;
var
  fmCFMsBank: TfmCFMsBank;

implementation

uses ConMain, UnitGeneral, Search, StdLv2;

{$R *.dfm}
Procedure TfmCFMsBank.Status;
Begin
  // Nanti Dolo INGETTTTTTTTTTT
 { with quAct,sql do
  Begin
    Close;Clear;
    Add('Select RekeningId FROM CFMsRekening WHERE RekeningId='''+quMainRekeningId.Value+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Supplier sudah di pakai di Penjualan');
       Abort;
    End;
 End;}
End;

procedure TfmCFMsBank.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,qumain.state <> dsInsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmCFMsBank.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quMainBankId.Value)='' then
  begin
    MsgInfo('Kode '+NamaForm+' tidak boleh kosong');
    quMainBankId.FocusControl;
    Abort;
  end;

  {
  if Trim(quMainKode.Value)='' then
  begin
    MsgInfo('Kode Penomoran Voucher tidak boleh kosong');
    quMainKode.FocusControl;
    Abort;
  end; }

  if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('Select BankId from CFMsBank Where BankId='''+quMainBankId.Value+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode '+NamaForm+' sudah dipakai Kode '+NamaForm+' lain');
        quMainBankId.FocusControl;
        Abort;
      End;
    End;
  End;

  If Trim(quMainBankName.Value)='' then
  begin
    MsgInfo('Nama '+NamaForm+' tidak boleh kosong');
    quMainBankName.FocusControl;
    Abort;
  end;

  If Trim(quMainRekeningID.Value)='' then
  begin
    MsgInfo('Kode Rekening tidak boleh kosong');
    quMainRekeningID.FocusControl;
    Abort;
  end;

  quMainUpdDate.Value := Date;
  quMainUpdUser.value := dmMain.UserId;

end;

procedure TfmCFMsBank.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmCFMsBank.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  ts01.TabVisible := FALSE;

  if StForm='K' then
  begin
    Caption := 'Master Kas';
    NamaForm := 'Kas';
    Label1.Caption := 'Kode Kas';
    Label2.Caption := 'Nama Kas';
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT * FROm CFMsBank Where FgBank=''T'' ');
      Open;
    end;
  end else
  begin
    Caption := 'Master Bank';
    NamaForm := 'Bank';
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT * FROm CFMsBank Where FgBank=''Y'' ');
      Open;
    end;
  end;

  if CallFromAnotherMenu then
  begin
    ActNewExecute(bbNew);
  End;
end;

procedure TfmCFMsBank.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
  CallFromAnotherMenu:=False;
end;

procedure TfmCFMsBank.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainBankId.FocusControl;
end;

procedure TfmCFMsBank.ActSaveExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmCFMsBank.ActCancelExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmCFMsBank.ActDeleteExecute(Sender: TObject);
begin
   Status;
  inherited;

end;

procedure TfmCFMsBank.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Master '+NamaForm+'';
         SQLString := ' Select BankId as Kode_'+NamaForm+', BankName as Nama_'+NamaForm+','
                     +' Note as Keterangan'
                     +' from CFMsBank ';
                     if StForm='B' then
                     SQLString := SQLString + ' Where FgBank=''Y'' '
                     else
                     SQLString := SQLString + ' Where FgBank=''T'' ';
         if ShowModal = MrOk then
         begin
            qumain.Locate('BankId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmCFMsBank.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainBankId.FocusControl;
  quMainFgActive.AsString := 'Y';
  if StForm='K' then
  quMainFgBank.AsString := 'T'
  else
  quMainFgBank.AsString := 'Y';
end;

procedure TfmCFMsBank.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT BankID FROM CFTrKKBBHd WHERE BankID='''+quMainBankId.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
      ShowMessage('Data sudah dipakai di transaksi lain, tidak bisa dihapus lagi');
      Abort;
    end;
  end;
end;

procedure TfmCFMsBank.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
               +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
               +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId '
               +' ORDER BY A.RekeningID';
       KeyValue := quMainRekeningID.AsString;
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekeningID.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmCFMsBank.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT RekeningName FROM CFMsRekening WHERE RekeningID='''+quMainRekeningID.AsString+''' ');
    Open;
  end;
  quMainLRekeningName.AsString := quAct.FieldByName('RekeningName').AsString;
end;

end.
